.class Lcom/codeglue/terraria/OctarineBridge;
.super Ljava/lang/Object;
.source "OctarineBridge.java"


# static fields
.field public static activity:Lcom/codeglue/terraria/OctarineActivity;

.field public static context:Landroid/content/Context;

.field public static imm:Landroid/view/inputmethod/InputMethodManager;

.field public static metrics:Landroid/util/DisplayMetrics;

.field public static renderer:Lcom/codeglue/terraria/OctarineRenderer;

.field public static view:Lcom/codeglue/terraria/OctarineView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-object v0, Lcom/codeglue/terraria/OctarineBridge;->activity:Lcom/codeglue/terraria/OctarineActivity;

    .line 23
    sput-object v0, Lcom/codeglue/terraria/OctarineBridge;->context:Landroid/content/Context;

    .line 24
    sput-object v0, Lcom/codeglue/terraria/OctarineBridge;->view:Lcom/codeglue/terraria/OctarineView;

    .line 25
    sput-object v0, Lcom/codeglue/terraria/OctarineBridge;->renderer:Lcom/codeglue/terraria/OctarineRenderer;

    .line 26
    sput-object v0, Lcom/codeglue/terraria/OctarineBridge;->metrics:Landroid/util/DisplayMetrics;

    .line 27
    sput-object v0, Lcom/codeglue/terraria/OctarineBridge;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DisplayInterstitial()V
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/codeglue/terraria/OctarineBridge;->activity:Lcom/codeglue/terraria/OctarineActivity;

    invoke-virtual {v0}, Lcom/codeglue/terraria/OctarineActivity;->DisplayInterstitial()V

    .line 122
    return-void
.end method

.method public static Finish()V
    .locals 2

    .prologue
    .line 143
    sget-object v0, Lcom/codeglue/terraria/OctarineBridge;->activity:Lcom/codeglue/terraria/OctarineActivity;

    new-instance v1, Lcom/codeglue/terraria/OctarineBridge$1;

    invoke-direct {v1}, Lcom/codeglue/terraria/OctarineBridge$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/codeglue/terraria/OctarineActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 152
    return-void
.end method

.method public static FlurryLogEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "inEvent"    # Ljava/lang/String;
    .param p1, "inParameterName"    # Ljava/lang/String;
    .param p2, "inParameterValue"    # Ljava/lang/String;

    .prologue
    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FlurryLogEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/codeglue/terraria/OctarineBridge;->nativePrint(Ljava/lang/String;)V

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 84
    .local v0, "parameter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 86
    return-void
.end method

.method public static GetDeviceID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 197
    :try_start_0
    sget-object v2, Lcom/codeglue/terraria/OctarineBridge;->activity:Lcom/codeglue/terraria/OctarineActivity;

    invoke-virtual {v2}, Lcom/codeglue/terraria/OctarineActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 206
    .local v0, "deviceID":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 199
    .end local v0    # "deviceID":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 201
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 202
    const-string v2, "Assigning fake deviceID"

    invoke-static {v2}, Lcom/codeglue/terraria/OctarineBridge;->nativePrint(Ljava/lang/String;)V

    .line 203
    const-string v0, "0000-0000-0000-0000"

    .restart local v0    # "deviceID":Ljava/lang/String;
    goto :goto_0
.end method

.method public static GoogleSignedIn()Z
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/codeglue/terraria/OctarineBridge;->activity:Lcom/codeglue/terraria/OctarineActivity;

    invoke-virtual {v0}, Lcom/codeglue/terraria/OctarineActivity;->GoogleSignedIn()Z

    move-result v0

    return v0
.end method

.method public static KeyboardHide()V
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/codeglue/terraria/OctarineBridge;->activity:Lcom/codeglue/terraria/OctarineActivity;

    invoke-virtual {v0}, Lcom/codeglue/terraria/OctarineActivity;->KeyboardHide()V

    .line 72
    return-void
.end method

.method public static KeyboardShow(Ljava/lang/String;)V
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 65
    sget-object v0, Lcom/codeglue/terraria/OctarineBridge;->activity:Lcom/codeglue/terraria/OctarineActivity;

    invoke-virtual {v0, p0}, Lcom/codeglue/terraria/OctarineActivity;->KeyboardShow(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static LinkGame()V
    .locals 3

    .prologue
    .line 157
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/codeglue/terraria/OctarineBridge;->activity:Lcom/codeglue/terraria/OctarineActivity;

    invoke-virtual {v2}, Lcom/codeglue/terraria/OctarineActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Paid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 159
    sget-object v1, Lcom/codeglue/terraria/OctarineBridge;->activity:Lcom/codeglue/terraria/OctarineActivity;

    invoke-virtual {v1, v0}, Lcom/codeglue/terraria/OctarineActivity;->startActivity(Landroid/content/Intent;)V

    .line 160
    return-void
.end method

.method public static LoginGoogleServices()V
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/codeglue/terraria/OctarineBridge;->activity:Lcom/codeglue/terraria/OctarineActivity;

    invoke-virtual {v0}, Lcom/codeglue/terraria/OctarineActivity;->LoginGoogleServices()V

    .line 92
    return-void
.end method

.method public static LogoutGoogleServices()V
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/codeglue/terraria/OctarineBridge;->activity:Lcom/codeglue/terraria/OctarineActivity;

    invoke-virtual {v0}, Lcom/codeglue/terraria/OctarineActivity;->LogoutGoogleServices()V

    .line 97
    return-void
.end method

.method public static ShareScreenshot()V
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/codeglue/terraria/OctarineBridge;->renderer:Lcom/codeglue/terraria/OctarineRenderer;

    invoke-virtual {v0}, Lcom/codeglue/terraria/OctarineRenderer;->TakeScreenshot()V

    .line 138
    return-void
.end method

.method public static ShowAchievements()V
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/codeglue/terraria/OctarineBridge;->activity:Lcom/codeglue/terraria/OctarineActivity;

    invoke-virtual {v0}, Lcom/codeglue/terraria/OctarineActivity;->ShowAchievements()V

    .line 102
    return-void
.end method

.method public static ShowLeaderboards()V
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/codeglue/terraria/OctarineBridge;->activity:Lcom/codeglue/terraria/OctarineActivity;

    invoke-virtual {v0}, Lcom/codeglue/terraria/OctarineActivity;->ShowLeaderboards()V

    .line 107
    return-void
.end method

.method public static ShowMoreGames()V
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/codeglue/terraria/OctarineBridge;->activity:Lcom/codeglue/terraria/OctarineActivity;

    invoke-virtual {v0}, Lcom/codeglue/terraria/OctarineActivity;->ShowMoreGames()V

    .line 117
    return-void
.end method

.method public static SubmitScore(Ljava/lang/String;J)V
    .locals 1
    .param p0, "inLeaderboardID"    # Ljava/lang/String;
    .param p1, "inScore"    # J

    .prologue
    .line 132
    sget-object v0, Lcom/codeglue/terraria/OctarineBridge;->activity:Lcom/codeglue/terraria/OctarineActivity;

    invoke-virtual {v0, p0, p1, p2}, Lcom/codeglue/terraria/OctarineActivity;->SubmitScore(Ljava/lang/String;J)V

    .line 133
    return-void
.end method

.method public static TriggerBuyFullVersion()V
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/codeglue/terraria/OctarineBridge;->activity:Lcom/codeglue/terraria/OctarineActivity;

    invoke-virtual {v0}, Lcom/codeglue/terraria/OctarineActivity;->StartPurchaseIntent()V

    .line 181
    return-void
.end method

.method public static UnlockAchievement(Ljava/lang/String;)V
    .locals 1
    .param p0, "inAchievementID"    # Ljava/lang/String;

    .prologue
    .line 127
    sget-object v0, Lcom/codeglue/terraria/OctarineBridge;->activity:Lcom/codeglue/terraria/OctarineActivity;

    invoke-virtual {v0, p0}, Lcom/codeglue/terraria/OctarineActivity;->UnlockAchievement(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public static UpdateGamePad()V
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/codeglue/terraria/OctarineBridge;->activity:Lcom/codeglue/terraria/OctarineActivity;

    invoke-virtual {v0}, Lcom/codeglue/terraria/OctarineActivity;->UpdateGamePad()V

    .line 77
    return-void
.end method

.method public static displayMessage(Ljava/lang/String;)V
    .locals 0
    .param p0, "inMessage"    # Ljava/lang/String;

    .prologue
    .line 175
    return-void
.end method

.method public static native nativeDone()V
.end method

.method public static native nativeGamePadUpdate(IIIIIIIFIIFIIIIIFFFFI)V
.end method

.method public static native nativeGoogleLoggedInEvent()V
.end method

.method public static native nativeIsCharacterValid(C)Z
.end method

.method public static native nativeKeyEvent(ICI)V
.end method

.method public static native nativeLoadGame(II)V
.end method

.method public static native nativeOnCreateActivity(Landroid/content/res/AssetManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeOnExpansionFileExtracted(Ljava/lang/String;)V
.end method

.method public static native nativeOnGesture(IIIF)V
.end method

.method public static native nativeOnHeadTracking(ZZFFF)V
.end method

.method public static native nativeOnPause()V
.end method

.method public static native nativeOnPurchase(Ljava/lang/String;)V
.end method

.method public static native nativeOnResizeSurface(IIFFF)V
.end method

.method public static native nativeOnResume()V
.end method

.method public static native nativeOnStop()V
.end method

.method public static native nativeOnSurfaceChanged()V
.end method

.method public static native nativeOnSurfaceDestroyed()V
.end method

.method public static native nativeOnUpdate(II)V
.end method

.method public static native nativePrint(Ljava/lang/String;)V
.end method

.method public static native nativeTouchEvent(IIFFF)V
.end method

.method public static native nativeUnlockGame(ZLjava/lang/String;)V
.end method

.method public static native setMemoryInformation(DD)V
.end method

.method public static tjAuthenticationCallback(ZLjava/lang/String;)V
    .locals 1
    .param p0, "inIsFull"    # Z
    .param p1, "inSignature"    # Ljava/lang/String;

    .prologue
    .line 186
    sget-object v0, Lcom/codeglue/terraria/OctarineBridge;->activity:Lcom/codeglue/terraria/OctarineActivity;

    invoke-virtual {v0, p0, p1}, Lcom/codeglue/terraria/OctarineActivity;->onAuthenticate(ZLjava/lang/String;)V

    .line 187
    const-string v0, "Authenticated!!!"

    invoke-static {v0}, Lcom/codeglue/terraria/OctarineBridge;->nativePrint(Ljava/lang/String;)V

    .line 188
    return-void
.end method
