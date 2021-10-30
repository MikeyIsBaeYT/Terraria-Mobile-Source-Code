.class public Lcom/codeglue/terraria/OctarineActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "OctarineActivity.java"


# static fields
.field protected static hasFocus:Z

.field protected static onResumeCalled:Z


# instance fields
.field public FoundMusic:Z

.field protected lowMemory:Z

.field protected virtualKeyboard:Lcom/codeglue/terraria/VirtualKeyboard;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 38
    sput-boolean v0, Lcom/codeglue/terraria/OctarineActivity;->onResumeCalled:Z

    .line 39
    sput-boolean v0, Lcom/codeglue/terraria/OctarineActivity;->hasFocus:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/codeglue/terraria/OctarineActivity;->lowMemory:Z

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/codeglue/terraria/OctarineActivity;->FoundMusic:Z

    return-void
.end method


# virtual methods
.method public DisplayInterstitial()V
    .locals 0

    .prologue
    .line 356
    return-void
.end method

.method public GoogleSignedIn()Z
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x0

    return v0
.end method

.method protected InternalResume()V
    .locals 2

    .prologue
    .line 142
    sget-boolean v0, Lcom/codeglue/terraria/OctarineActivity;->onResumeCalled:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/codeglue/terraria/OctarineActivity;->hasFocus:Z

    if-eqz v0, :cond_0

    .line 144
    const-string v0, "Octarine"

    const-string v1, "InternalResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-static {}, Lcom/codeglue/terraria/OctarineBridge;->nativeOnResume()V

    .line 147
    sget-object v0, Lcom/codeglue/terraria/OctarineBridge;->view:Lcom/codeglue/terraria/OctarineView;

    invoke-virtual {v0}, Lcom/codeglue/terraria/OctarineView;->onResume()V

    .line 148
    const/4 v0, 0x0

    sput-boolean v0, Lcom/codeglue/terraria/OctarineActivity;->onResumeCalled:Z

    .line 150
    :cond_0
    return-void
.end method

.method public KeyboardHide()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/codeglue/terraria/OctarineActivity;->virtualKeyboard:Lcom/codeglue/terraria/VirtualKeyboard;

    invoke-virtual {v0}, Lcom/codeglue/terraria/VirtualKeyboard;->Hide()V

    .line 342
    invoke-virtual {p0}, Lcom/codeglue/terraria/OctarineActivity;->SetViewOptions()V

    .line 343
    return-void
.end method

.method public KeyboardShow(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/codeglue/terraria/OctarineActivity;->virtualKeyboard:Lcom/codeglue/terraria/VirtualKeyboard;

    invoke-virtual {v0, p1}, Lcom/codeglue/terraria/VirtualKeyboard;->ShowWithString(Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public LoginGoogleServices()V
    .locals 0

    .prologue
    .line 372
    return-void
.end method

.method public LogoutGoogleServices()V
    .locals 0

    .prologue
    .line 376
    return-void
.end method

.method protected SetViewOptions()V
    .locals 2

    .prologue
    .line 289
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 332
    :goto_0
    return-void

    .line 292
    :cond_0
    new-instance v0, Lcom/codeglue/terraria/OctarineActivity$2;

    invoke-direct {v0, p0}, Lcom/codeglue/terraria/OctarineActivity$2;-><init>(Lcom/codeglue/terraria/OctarineActivity;)V

    invoke-virtual {p0, v0}, Lcom/codeglue/terraria/OctarineActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public ShowAchievements()V
    .locals 0

    .prologue
    .line 380
    return-void
.end method

.method public ShowLeaderboards()V
    .locals 0

    .prologue
    .line 384
    return-void
.end method

.method public ShowMoreGames()V
    .locals 0

    .prologue
    .line 352
    return-void
.end method

.method public StartPurchaseIntent()V
    .locals 0

    .prologue
    .line 360
    return-void
.end method

.method public SubmitScore(Ljava/lang/String;J)V
    .locals 0
    .param p1, "inLeaderboardID"    # Ljava/lang/String;
    .param p2, "inScore"    # J

    .prologue
    .line 368
    return-void
.end method

.method public UnlockAchievement(Ljava/lang/String;)V
    .locals 0
    .param p1, "inAchievementID"    # Ljava/lang/String;

    .prologue
    .line 364
    return-void
.end method

.method public UpdateGamePad()V
    .locals 0

    .prologue
    .line 393
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "request"    # I
    .param p2, "response"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 283
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 284
    return-void
.end method

.method public onAuthenticate(ZLjava/lang/String;)V
    .locals 0
    .param p1, "inIsFull"    # Z
    .param p2, "inSignature"    # Ljava/lang/String;

    .prologue
    .line 348
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 253
    const-string v0, "Octarine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LIFE] onBackPressed | FoundMusic:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/codeglue/terraria/OctarineActivity;->FoundMusic:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-boolean v0, p0, Lcom/codeglue/terraria/OctarineActivity;->FoundMusic:Z

    if-nez v0, :cond_0

    .line 257
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 258
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x0

    .line 98
    const-string v0, "Octarine"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 101
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 103
    const-string v0, "landscape"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 107
    const-string v0, "portrait"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    const-string v1, "Octarine"

    const-string v2, "OctarineActivity - [LIFE] onCreate - START"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/codeglue/terraria/OctarineActivity;->SetViewOptions()V

    .line 55
    invoke-virtual {p0}, Lcom/codeglue/terraria/OctarineActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Lcom/codeglue/terraria/OctarineActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com/codeglue/terraria"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/codeglue/terraria/OctarineBridge;->nativeOnCreateActivity(Landroid/content/res/AssetManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sput-object p0, Lcom/codeglue/terraria/OctarineBridge;->activity:Lcom/codeglue/terraria/OctarineActivity;

    .line 58
    sput-object p0, Lcom/codeglue/terraria/OctarineBridge;->context:Landroid/content/Context;

    .line 61
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/codeglue/terraria/OctarineActivity;->setRequestedOrientation(I)V

    .line 63
    new-instance v1, Lcom/codeglue/terraria/OctarineView;

    invoke-direct {v1, p0}, Lcom/codeglue/terraria/OctarineView;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/codeglue/terraria/OctarineBridge;->view:Lcom/codeglue/terraria/OctarineView;

    .line 64
    sget-object v1, Lcom/codeglue/terraria/OctarineBridge;->view:Lcom/codeglue/terraria/OctarineView;

    invoke-virtual {p0, v1}, Lcom/codeglue/terraria/OctarineActivity;->setContentView(Landroid/view/View;)V

    .line 66
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v1, Lcom/codeglue/terraria/OctarineBridge;->metrics:Landroid/util/DisplayMetrics;

    .line 67
    invoke-virtual {p0}, Lcom/codeglue/terraria/OctarineActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    sget-object v2, Lcom/codeglue/terraria/OctarineBridge;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 70
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/codeglue/terraria/OctarineActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    sput-object v1, Lcom/codeglue/terraria/OctarineBridge;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 72
    invoke-virtual {p0}, Lcom/codeglue/terraria/OctarineActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 74
    invoke-virtual {p0}, Lcom/codeglue/terraria/OctarineActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/codeglue/terraria/OctarineBridge;->nativeOnExpansionFileExtracted(Ljava/lang/String;)V

    .line 75
    const-string v1, "Octarine"

    const-string v2, "OctarineActivity - [LIFE] onCreate - END"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/codeglue/terraria/OctarineActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, "decorView":Landroid/view/View;
    new-instance v1, Lcom/codeglue/terraria/OctarineActivity$1;

    invoke-direct {v1, p0}, Lcom/codeglue/terraria/OctarineActivity$1;-><init>(Lcom/codeglue/terraria/OctarineActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 93
    .end local v0    # "decorView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 233
    const-string v0, "Octarine"

    const-string v1, "[LIFE] onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    sput-boolean v2, Lcom/codeglue/terraria/OctarineActivity;->hasFocus:Z

    .line 236
    sput-boolean v2, Lcom/codeglue/terraria/OctarineActivity;->onResumeCalled:Z

    .line 238
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 239
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 277
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/codeglue/terraria/OctarineActivity;->virtualKeyboard:Lcom/codeglue/terraria/VirtualKeyboard;

    invoke-virtual {v0, p1, p2}, Lcom/codeglue/terraria/VirtualKeyboard;->OnKeyDown(ILandroid/view/KeyEvent;)V

    .line 264
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/codeglue/terraria/OctarineActivity;->virtualKeyboard:Lcom/codeglue/terraria/VirtualKeyboard;

    invoke-virtual {v0, p1, p2}, Lcom/codeglue/terraria/VirtualKeyboard;->OnKeyUp(ILandroid/view/KeyEvent;)V

    .line 271
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/codeglue/terraria/OctarineActivity;->lowMemory:Z

    .line 195
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onLowMemory()V

    .line 196
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 122
    const-string v0, "Octarine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LIFE] onPause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/codeglue/terraria/OctarineActivity;->onResumeCalled:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/codeglue/terraria/OctarineActivity;->hasFocus:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {}, Lcom/codeglue/terraria/OctarineBridge;->nativeOnPause()V

    .line 126
    invoke-static {v3, v3}, Lcom/codeglue/terraria/OctarineBridge;->nativeOnUpdate(II)V

    .line 128
    sget-object v0, Lcom/codeglue/terraria/OctarineBridge;->view:Lcom/codeglue/terraria/OctarineView;

    invoke-virtual {v0}, Lcom/codeglue/terraria/OctarineView;->onPause()V

    .line 130
    iget-boolean v0, p0, Lcom/codeglue/terraria/OctarineActivity;->lowMemory:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 132
    const-string v0, "Octarine"

    const-string v1, "[LIFE] onPause lowMemory, finishing activity!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {}, Lcom/codeglue/terraria/OctarineBridge;->Finish()V

    .line 136
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 138
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 187
    const-string v0, "[LIFE] onRestoreInstanceState"

    invoke-static {v0}, Lcom/codeglue/terraria/OctarineBridge;->nativePrint(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/codeglue/terraria/OctarineActivity;->SetViewOptions()V

    .line 189
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 155
    const/4 v0, 0x1

    sput-boolean v0, Lcom/codeglue/terraria/OctarineActivity;->onResumeCalled:Z

    .line 156
    const-string v0, "Octarine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LIFE] onResume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/codeglue/terraria/OctarineActivity;->onResumeCalled:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/codeglue/terraria/OctarineActivity;->hasFocus:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0}, Lcom/codeglue/terraria/OctarineActivity;->InternalResume()V

    .line 160
    invoke-virtual {p0}, Lcom/codeglue/terraria/OctarineActivity;->SetViewOptions()V

    .line 162
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 163
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 181
    const-string v0, "[LIFE] onSaveInstanceState"

    invoke-static {v0}, Lcom/codeglue/terraria/OctarineBridge;->nativePrint(Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 114
    const-string v0, "Octarine"

    const-string v1, "[LIFE] onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 117
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 244
    const-string v0, "Octarine"

    const-string v1, "[LIFE] onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-static {}, Lcom/codeglue/terraria/OctarineBridge;->nativeOnStop()V

    .line 247
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 248
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 201
    sparse-switch p1, :sswitch_data_0

    .line 227
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onTrimMemory(I)V

    .line 228
    return-void

    .line 204
    :sswitch_0
    const-string v0, "Octarine"

    const-string v1, "The process is nearing the end of the background LRU list, and if more memory isn\'t found soon it will be killed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 207
    :sswitch_1
    const-string v0, "Octarine"

    const-string v1, "The process is around the middle of the background LRU list; freeing memory can help the system keep other processes running later in the list for better overall performance."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    :sswitch_2
    const-string v0, "Octarine"

    const-string v1, "The process has gone on to the LRU list. This is a good opportunity to clean up resources that can efficiently and quickly be re-built if the user returns to the app."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 213
    :sswitch_3
    const-string v0, "Octarine"

    const-string v1, "The process had been showing a user interface, and is no longer doing so. Large allocations with the UI should be released at this point to allow memory to be better managed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    :sswitch_4
    const-string v0, "Octarine"

    const-string v1, "The process is not an expendable background process, but the device is running extremely low on memory and is about to not be able to keep any background processes running. Your running process should free up as many non-critical resources as it can to allow that memory to be used elsewhere."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 219
    :sswitch_5
    const-string v0, "Octarine"

    const-string v1, "The process is not an expendable background process, but the device is running low on memory. Your running process should free up unneeded resources to allow that memory to be used elsewhere."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 222
    :sswitch_6
    const-string v0, "Octarine"

    const-string v1, "The process is not an expendable background process, but the device is running moderately low on memory. Your running process may want to release some unneeded resources for use elsewhere."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 201
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_6
        0xa -> :sswitch_5
        0xf -> :sswitch_4
        0x14 -> :sswitch_3
        0x28 -> :sswitch_2
        0x3c -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "gainedFocus"    # Z

    .prologue
    .line 168
    sput-boolean p1, Lcom/codeglue/terraria/OctarineActivity;->hasFocus:Z

    .line 169
    const-string v0, "Octarine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LIFE] onWindowFocusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/codeglue/terraria/OctarineActivity;->onResumeCalled:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/codeglue/terraria/OctarineActivity;->hasFocus:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {p0}, Lcom/codeglue/terraria/OctarineActivity;->InternalResume()V

    .line 173
    invoke-virtual {p0}, Lcom/codeglue/terraria/OctarineActivity;->SetViewOptions()V

    .line 175
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onWindowFocusChanged(Z)V

    .line 176
    return-void
.end method
