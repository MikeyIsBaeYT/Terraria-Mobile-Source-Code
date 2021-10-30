.class public Lcom/codeglue/terraria/Terraria;
.super Lcom/codeglue/terraria/OctarineActivity;
.source "Terraria.java"


# static fields
.field private static final HOCKEY_APP_ID:Ljava/lang/String; = "1ca06cee4f55aa1c9cae2a9b549e0080"

.field private static final USE_HOCKEY_APP:Z


# instance fields
.field private activityManager:Landroid/app/ActivityManager;

.field public billing:Lcom/codeglue/terraria/AndroidBilling;

.field private chartBoostStarted:Z

.field private drive:Lcom/codeglue/terraria/GoogleDrive;

.field private expansionDownloader:Lcom/codeglue/terraria/ExpansionDownloader;

.field private gamepad:Lcom/codeglue/terraria/Gamepad;

.field private googlePlayServices:Lcom/codeglue/terraria/PlayService;

.field isLoggedIn:Z

.field private lowMemory:Z

.field private mi:Landroid/app/ActivityManager$MemoryInfo;

.field skuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "Terraria"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Lcom/codeglue/terraria/OctarineActivity;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codeglue/terraria/Terraria;->skuList:Ljava/util/List;

    .line 47
    iput-boolean v1, p0, Lcom/codeglue/terraria/Terraria;->chartBoostStarted:Z

    .line 48
    iput-boolean v1, p0, Lcom/codeglue/terraria/Terraria;->lowMemory:Z

    .line 51
    iput-object v2, p0, Lcom/codeglue/terraria/Terraria;->gamepad:Lcom/codeglue/terraria/Gamepad;

    .line 52
    iput-object v2, p0, Lcom/codeglue/terraria/Terraria;->googlePlayServices:Lcom/codeglue/terraria/PlayService;

    .line 54
    iput-object v2, p0, Lcom/codeglue/terraria/Terraria;->drive:Lcom/codeglue/terraria/GoogleDrive;

    .line 56
    iput-boolean v1, p0, Lcom/codeglue/terraria/Terraria;->isLoggedIn:Z

    return-void
.end method

.method private CheckAvailableMemory()V
    .locals 15

    .prologue
    .line 121
    const/4 v6, 0x0

    .line 122
    .local v6, "reader":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    .line 123
    .local v1, "load":Ljava/lang/String;
    new-instance v10, Ljava/text/DecimalFormat;

    const-string v12, "#.##"

    invoke-direct {v10, v12}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 124
    .local v10, "twoDecimalForm":Ljava/text/DecimalFormat;
    const-wide/16 v8, 0x0

    .line 128
    .local v8, "totalRam":D
    :try_start_0
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v12, "/proc/meminfo"

    const-string v13, "r"

    invoke-direct {v7, v12, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    .end local v6    # "reader":Ljava/io/RandomAccessFile;
    .local v7, "reader":Ljava/io/RandomAccessFile;
    :try_start_1
    const-string v12, "Octarine"

    const-string v13, "Opened random access file"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 133
    const-string v12, "(\\d+)"

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 134
    .local v3, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 135
    .local v2, "m":Ljava/util/regex/Matcher;
    const-string v11, ""

    .line 136
    .local v11, "value":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 138
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 139
    const-string v12, "Octarine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "RAM: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 146
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "p":Ljava/util/regex/Pattern;
    .end local v11    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v6, v7

    .line 148
    .end local v7    # "reader":Ljava/io/RandomAccessFile;
    .local v0, "ex":Ljava/io/IOException;
    .restart local v6    # "reader":Ljava/io/RandomAccessFile;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    if-eqz v6, :cond_0

    .line 156
    :try_start_3
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    .line 157
    const-string v12, "Octarine"

    const-string v13, "Closed random access file"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 165
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_0
    :goto_2
    return-void

    .line 142
    .end local v6    # "reader":Ljava/io/RandomAccessFile;
    .restart local v2    # "m":Ljava/util/regex/Matcher;
    .restart local v3    # "p":Ljava/util/regex/Pattern;
    .restart local v7    # "reader":Ljava/io/RandomAccessFile;
    .restart local v11    # "value":Ljava/lang/String;
    :cond_1
    :try_start_4
    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 143
    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    div-double v4, v8, v12

    .line 144
    .local v4, "mb":D
    invoke-static {v4, v5, v8, v9}, Lcom/codeglue/terraria/OctarineBridge;->setMemoryInformation(DD)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 152
    if-eqz v7, :cond_3

    .line 156
    :try_start_5
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 157
    const-string v12, "Octarine"

    const-string v13, "Closed random access file"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v6, v7

    .line 162
    .end local v7    # "reader":Ljava/io/RandomAccessFile;
    .restart local v6    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 159
    .end local v6    # "reader":Ljava/io/RandomAccessFile;
    .restart local v7    # "reader":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v0

    .line 161
    .restart local v0    # "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .line 162
    .end local v7    # "reader":Ljava/io/RandomAccessFile;
    .restart local v6    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 159
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "p":Ljava/util/regex/Pattern;
    .end local v4    # "mb":D
    .end local v11    # "value":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 161
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 152
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_3
    if-eqz v6, :cond_2

    .line 156
    :try_start_6
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    .line 157
    const-string v13, "Octarine"

    const-string v14, "Closed random access file"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 162
    :cond_2
    :goto_4
    throw v12

    .line 159
    :catch_3
    move-exception v0

    .line 161
    .restart local v0    # "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 152
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v6    # "reader":Ljava/io/RandomAccessFile;
    .restart local v7    # "reader":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v12

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/RandomAccessFile;
    .restart local v6    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 146
    :catch_4
    move-exception v0

    goto :goto_1

    .end local v6    # "reader":Ljava/io/RandomAccessFile;
    .restart local v2    # "m":Ljava/util/regex/Matcher;
    .restart local v3    # "p":Ljava/util/regex/Pattern;
    .restart local v4    # "mb":D
    .restart local v7    # "reader":Ljava/io/RandomAccessFile;
    .restart local v11    # "value":Ljava/lang/String;
    :cond_3
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/RandomAccessFile;
    .restart local v6    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method


# virtual methods
.method public DisplayInterstitial()V
    .locals 2

    .prologue
    .line 384
    const-string v0, "Octarine"

    const-string v1, "DisplayInterstitial"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    new-instance v0, Lcom/codeglue/terraria/Terraria$3;

    invoke-direct {v0, p0}, Lcom/codeglue/terraria/Terraria$3;-><init>(Lcom/codeglue/terraria/Terraria;)V

    invoke-virtual {p0, v0}, Lcom/codeglue/terraria/Terraria;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 394
    return-void
.end method

.method public GoogleSignedIn()Z
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/codeglue/terraria/Terraria;->googlePlayServices:Lcom/codeglue/terraria/PlayService;

    if-nez v0, :cond_0

    .line 468
    const/4 v0, 0x0

    .line 471
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/codeglue/terraria/Terraria;->googlePlayServices:Lcom/codeglue/terraria/PlayService;

    invoke-virtual {v0}, Lcom/codeglue/terraria/PlayService;->IsSignedIn()Z

    move-result v0

    goto :goto_0
.end method

.method public LoginGoogleServices()V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/codeglue/terraria/Terraria;->googlePlayServices:Lcom/codeglue/terraria/PlayService;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/codeglue/terraria/Terraria;->googlePlayServices:Lcom/codeglue/terraria/PlayService;

    invoke-virtual {v0}, Lcom/codeglue/terraria/PlayService;->Login()V

    .line 438
    :cond_0
    return-void
.end method

.method public LogoutGoogleServices()V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/codeglue/terraria/Terraria;->googlePlayServices:Lcom/codeglue/terraria/PlayService;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/codeglue/terraria/Terraria;->googlePlayServices:Lcom/codeglue/terraria/PlayService;

    invoke-virtual {v0}, Lcom/codeglue/terraria/PlayService;->Logout()V

    .line 446
    :cond_0
    return-void
.end method

.method public ShowAchievements()V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/codeglue/terraria/Terraria;->googlePlayServices:Lcom/codeglue/terraria/PlayService;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/codeglue/terraria/Terraria;->googlePlayServices:Lcom/codeglue/terraria/PlayService;

    invoke-virtual {v0}, Lcom/codeglue/terraria/PlayService;->ShowAchievements()V

    .line 454
    :cond_0
    return-void
.end method

.method public ShowLeaderboards()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/codeglue/terraria/Terraria;->googlePlayServices:Lcom/codeglue/terraria/PlayService;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/codeglue/terraria/Terraria;->googlePlayServices:Lcom/codeglue/terraria/PlayService;

    invoke-virtual {v0}, Lcom/codeglue/terraria/PlayService;->ShowLeaderboards()V

    .line 462
    :cond_0
    return-void
.end method

.method public ShowMoreGames()V
    .locals 1

    .prologue
    .line 372
    new-instance v0, Lcom/codeglue/terraria/Terraria$2;

    invoke-direct {v0, p0}, Lcom/codeglue/terraria/Terraria$2;-><init>(Lcom/codeglue/terraria/Terraria;)V

    invoke-virtual {p0, v0}, Lcom/codeglue/terraria/Terraria;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 380
    return-void
.end method

.method public StartPurchaseIntent()V
    .locals 2

    .prologue
    .line 399
    const-string v0, "Octarine"

    const-string v1, "[LIFE] StartPurchaseIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-static {}, Lcom/codeglue/terraria/OctarineBridge;->LinkGame()V

    .line 414
    return-void
.end method

.method public SubmitScore(Ljava/lang/String;J)V
    .locals 2
    .param p1, "inLeaderboardID"    # Ljava/lang/String;
    .param p2, "inScore"    # J

    .prologue
    .line 426
    iget-object v0, p0, Lcom/codeglue/terraria/Terraria;->googlePlayServices:Lcom/codeglue/terraria/PlayService;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/codeglue/terraria/Terraria;->googlePlayServices:Lcom/codeglue/terraria/PlayService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/codeglue/terraria/PlayService;->SubmitScore(Ljava/lang/String;J)V

    .line 430
    :cond_0
    return-void
.end method

.method public UnlockAchievement(Ljava/lang/String;)V
    .locals 1
    .param p1, "inAchievementID"    # Ljava/lang/String;

    .prologue
    .line 418
    iget-object v0, p0, Lcom/codeglue/terraria/Terraria;->googlePlayServices:Lcom/codeglue/terraria/PlayService;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/codeglue/terraria/Terraria;->googlePlayServices:Lcom/codeglue/terraria/PlayService;

    invoke-virtual {v0, p1}, Lcom/codeglue/terraria/PlayService;->UnlockAchievement(Ljava/lang/String;)V

    .line 422
    :cond_0
    return-void
.end method

.method public UpdateGamePad()V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/codeglue/terraria/Terraria;->virtualKeyboard:Lcom/codeglue/terraria/VirtualKeyboard;

    invoke-virtual {v0}, Lcom/codeglue/terraria/VirtualKeyboard;->Visible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/codeglue/terraria/Terraria;->gamepad:Lcom/codeglue/terraria/Gamepad;

    invoke-virtual {v0}, Lcom/codeglue/terraria/Gamepad;->ResetControllerData()V

    .line 484
    :goto_0
    return-void

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/codeglue/terraria/Terraria;->gamepad:Lcom/codeglue/terraria/Gamepad;

    invoke-virtual {v0}, Lcom/codeglue/terraria/Gamepad;->UpdateControllerData()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "request"    # I
    .param p2, "response"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/codeglue/terraria/Terraria;->billing:Lcom/codeglue/terraria/AndroidBilling;

    invoke-virtual {v0, p1, p2, p3}, Lcom/codeglue/terraria/AndroidBilling;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    invoke-super {p0, p1, p2, p3}, Lcom/codeglue/terraria/OctarineActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 363
    iget-object v0, p0, Lcom/codeglue/terraria/Terraria;->googlePlayServices:Lcom/codeglue/terraria/PlayService;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/codeglue/terraria/Terraria;->googlePlayServices:Lcom/codeglue/terraria/PlayService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/codeglue/terraria/PlayService;->onActivityResult(IILandroid/content/Intent;)V

    .line 368
    :cond_0
    return-void
.end method

.method public onAuthenticate(ZLjava/lang/String;)V
    .locals 2
    .param p1, "inIsFull"    # Z
    .param p2, "inSignature"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 169
    iget-boolean v0, p0, Lcom/codeglue/terraria/Terraria;->chartBoostStarted:Z

    if-ne v0, v1, :cond_0

    .line 197
    :goto_0
    return-void

    .line 174
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->setReportLocation(Z)V

    .line 176
    iput-boolean v1, p0, Lcom/codeglue/terraria/Terraria;->chartBoostStarted:Z

    .line 183
    if-eq p1, v1, :cond_1

    .line 191
    const-string v0, "Octarine"

    const-string v1, "[LIFE] onAuthenticate FREE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const-string v0, "5RF35CQ25MBG39H7DWPY"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 193
    const-string v0, "Chartboost::Free"

    invoke-static {v0}, Lcom/codeglue/terraria/OctarineBridge;->nativePrint(Ljava/lang/String;)V

    .line 196
    :goto_1
    const-string v0, "Octarine"

    const-string v1, "[LIFE] onAuthenticate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    :cond_1
    const-string v0, "Octarine"

    const-string v1, "[LIFE] onAuthenticate FULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v0, "DSXQFB7NVH8V7V7F5KWP"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 187
    const-string v0, "Chartboost::Full"

    invoke-static {v0}, Lcom/codeglue/terraria/OctarineBridge;->nativePrint(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 296
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_0
    invoke-super {p0}, Lcom/codeglue/terraria/OctarineActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 64
    invoke-super {p0, p1}, Lcom/codeglue/terraria/OctarineActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const-string v1, "Octarine"

    const-string v2, "Terraria - [LIFE] OnCreate START"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-direct {p0}, Lcom/codeglue/terraria/Terraria;->CheckAvailableMemory()V

    .line 73
    const-string v1, ""

    invoke-static {v1}, Lcom/codeglue/terraria/OctarineBridge;->nativeOnExpansionFileExtracted(Ljava/lang/String;)V

    .line 82
    new-instance v1, Lcom/codeglue/terraria/VirtualKeyboardNormal;

    invoke-direct {v1}, Lcom/codeglue/terraria/VirtualKeyboardNormal;-><init>()V

    iput-object v1, p0, Lcom/codeglue/terraria/Terraria;->virtualKeyboard:Lcom/codeglue/terraria/VirtualKeyboard;

    .line 85
    iget-object v1, p0, Lcom/codeglue/terraria/Terraria;->virtualKeyboard:Lcom/codeglue/terraria/VirtualKeyboard;

    invoke-virtual {v1, p0}, Lcom/codeglue/terraria/VirtualKeyboard;->Initialize(Lcom/codeglue/terraria/OctarineActivity;)V

    .line 87
    new-instance v1, Lcom/codeglue/terraria/ExpansionDownloader;

    invoke-direct {v1, p0}, Lcom/codeglue/terraria/ExpansionDownloader;-><init>(Lcom/codeglue/terraria/OctarineActivity;)V

    iput-object v1, p0, Lcom/codeglue/terraria/Terraria;->expansionDownloader:Lcom/codeglue/terraria/ExpansionDownloader;

    .line 89
    new-instance v1, Lcom/codeglue/terraria/PlayService;

    invoke-direct {v1}, Lcom/codeglue/terraria/PlayService;-><init>()V

    iput-object v1, p0, Lcom/codeglue/terraria/Terraria;->googlePlayServices:Lcom/codeglue/terraria/PlayService;

    .line 90
    iget-object v1, p0, Lcom/codeglue/terraria/Terraria;->googlePlayServices:Lcom/codeglue/terraria/PlayService;

    invoke-virtual {v1, p0}, Lcom/codeglue/terraria/PlayService;->onCreate(Landroid/app/Activity;)V

    .line 97
    iget-object v1, p0, Lcom/codeglue/terraria/Terraria;->skuList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 98
    iget-object v1, p0, Lcom/codeglue/terraria/Terraria;->skuList:Ljava/util/List;

    const-string v2, "terraria_google_play_store_full_game"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v1, Lcom/codeglue/terraria/AndroidBilling;

    iget-object v2, p0, Lcom/codeglue/terraria/Terraria;->skuList:Ljava/util/List;

    const-string v3, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnX1uLq/FJRo9Jant/iR4IFofwUp7pdv3/MSOK0U240TSP99przQjFF09cXP3NC/GesDTAUE8fX09MGuY+aWlujU3kF1Xp2YwJx5p4HJCUclgQxB7XP3jjW0CcLjmLSxbNTK2XEX3Bpc5RITcrdtG3jLKWYe3pOGU24dw8lmj/aEF7E0IIFb4H2xKB5huFA+nfLPJn95A6HfiD7nc4xZnxB2A5rqcHUeiE2Sa/kFDmoOdTBck7Nn+OlztRkFeWGAbJPwyyyEAZ7dCdJdNxpvDAqrMlEQGDBX7f0GPXSCqWW2SVIqK85cra3aDucVYlzedt6osV4BoROEmGv3KnndikQIDAQAB"

    invoke-direct {v1, p0, v2, v3}, Lcom/codeglue/terraria/AndroidBilling;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/codeglue/terraria/Terraria;->billing:Lcom/codeglue/terraria/AndroidBilling;

    .line 102
    const v1, 0x7f0c0015

    invoke-virtual {p0, v1}, Lcom/codeglue/terraria/Terraria;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c0017

    invoke-virtual {p0, v2}, Lcom/codeglue/terraria/Terraria;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/chartboost/sdk/Chartboost;->startWithAppId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onCreate(Landroid/app/Activity;)V

    .line 104
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/chartboost/sdk/Chartboost;->setImpressionsUseActivities(Z)V

    .line 106
    new-instance v1, Lcom/codeglue/terraria/GoogleDrive;

    iget-object v2, p0, Lcom/codeglue/terraria/Terraria;->googlePlayServices:Lcom/codeglue/terraria/PlayService;

    invoke-direct {v1, p0, v2}, Lcom/codeglue/terraria/GoogleDrive;-><init>(Landroid/app/Activity;Lcom/codeglue/terraria/PlayService;)V

    iput-object v1, p0, Lcom/codeglue/terraria/Terraria;->drive:Lcom/codeglue/terraria/GoogleDrive;

    .line 108
    invoke-virtual {p0, v4}, Lcom/codeglue/terraria/Terraria;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 109
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "isLoggedIn"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/codeglue/terraria/Terraria;->isLoggedIn:Z

    .line 116
    const-string v1, "Octarine"

    const-string v2, "Terraria - [LIFE] OnCreate END"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/codeglue/terraria/Terraria;->billing:Lcom/codeglue/terraria/AndroidBilling;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/codeglue/terraria/Terraria;->billing:Lcom/codeglue/terraria/AndroidBilling;

    invoke-virtual {v0}, Lcom/codeglue/terraria/AndroidBilling;->onDestroy()V

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/codeglue/terraria/Terraria;->billing:Lcom/codeglue/terraria/AndroidBilling;

    .line 268
    :cond_0
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onDestroy(Landroid/app/Activity;)V

    .line 270
    invoke-super {p0}, Lcom/codeglue/terraria/OctarineActivity;->onDestroy()V

    .line 271
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 342
    const-string v1, "Octarine"

    const-string v2, "onGenericMotionEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v1, p0, Lcom/codeglue/terraria/Terraria;->virtualKeyboard:Lcom/codeglue/terraria/VirtualKeyboard;

    invoke-virtual {v1}, Lcom/codeglue/terraria/VirtualKeyboard;->Visible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/codeglue/terraria/Terraria;->gamepad:Lcom/codeglue/terraria/Gamepad;

    invoke-virtual {v1, p1}, Lcom/codeglue/terraria/Gamepad;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 347
    .local v0, "handled":Z
    if-eqz v0, :cond_0

    .line 349
    const/4 v1, 0x1

    .line 353
    .end local v0    # "handled":Z
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/codeglue/terraria/OctarineActivity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 309
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 311
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-super {p0, p1, p2}, Lcom/codeglue/terraria/OctarineActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 325
    :goto_0
    return v0

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/codeglue/terraria/Terraria;->virtualKeyboard:Lcom/codeglue/terraria/VirtualKeyboard;

    invoke-virtual {v0}, Lcom/codeglue/terraria/VirtualKeyboard;->Visible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/codeglue/terraria/Terraria;->gamepad:Lcom/codeglue/terraria/Gamepad;

    invoke-virtual {v0, p1, p2}, Lcom/codeglue/terraria/Gamepad;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    const/4 v0, 0x1

    goto :goto_0

    .line 325
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/codeglue/terraria/OctarineActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/codeglue/terraria/Terraria;->virtualKeyboard:Lcom/codeglue/terraria/VirtualKeyboard;

    invoke-virtual {v0}, Lcom/codeglue/terraria/VirtualKeyboard;->Visible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/codeglue/terraria/Terraria;->gamepad:Lcom/codeglue/terraria/Gamepad;

    invoke-virtual {v0, p1, p2}, Lcom/codeglue/terraria/Gamepad;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 336
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/codeglue/terraria/OctarineActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 220
    invoke-super {p0}, Lcom/codeglue/terraria/OctarineActivity;->onPause()V

    .line 222
    iget-object v0, p0, Lcom/codeglue/terraria/Terraria;->gamepad:Lcom/codeglue/terraria/Gamepad;

    invoke-virtual {v0}, Lcom/codeglue/terraria/Gamepad;->onPause()V

    .line 223
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onPause(Landroid/app/Activity;)V

    .line 229
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 234
    invoke-super {p0}, Lcom/codeglue/terraria/OctarineActivity;->onResume()V

    .line 235
    iget-object v0, p0, Lcom/codeglue/terraria/Terraria;->gamepad:Lcom/codeglue/terraria/Gamepad;

    invoke-virtual {v0}, Lcom/codeglue/terraria/Gamepad;->onResume()V

    .line 246
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onResume(Landroid/app/Activity;)V

    .line 247
    iget-object v0, p0, Lcom/codeglue/terraria/Terraria;->expansionDownloader:Lcom/codeglue/terraria/ExpansionDownloader;

    invoke-virtual {v0}, Lcom/codeglue/terraria/ExpansionDownloader;->onResume()V

    .line 249
    sget-object v0, Lcom/codeglue/terraria/OctarineBridge;->view:Lcom/codeglue/terraria/OctarineView;

    invoke-virtual {v0, v1}, Lcom/codeglue/terraria/OctarineView;->setFocusable(Z)V

    .line 250
    sget-object v0, Lcom/codeglue/terraria/OctarineBridge;->view:Lcom/codeglue/terraria/OctarineView;

    invoke-virtual {v0, v1}, Lcom/codeglue/terraria/OctarineView;->setFocusableInTouchMode(Z)V

    .line 251
    sget-object v0, Lcom/codeglue/terraria/OctarineBridge;->view:Lcom/codeglue/terraria/OctarineView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/codeglue/terraria/OctarineView;->requestFocus(I)Z

    .line 253
    iget-object v0, p0, Lcom/codeglue/terraria/Terraria;->billing:Lcom/codeglue/terraria/AndroidBilling;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Lcom/codeglue/terraria/AndroidBilling;

    iget-object v1, p0, Lcom/codeglue/terraria/Terraria;->skuList:Ljava/util/List;

    const-string v2, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnX1uLq/FJRo9Jant/iR4IFofwUp7pdv3/MSOK0U240TSP99przQjFF09cXP3NC/GesDTAUE8fX09MGuY+aWlujU3kF1Xp2YwJx5p4HJCUclgQxB7XP3jjW0CcLjmLSxbNTK2XEX3Bpc5RITcrdtG3jLKWYe3pOGU24dw8lmj/aEF7E0IIFb4H2xKB5huFA+nfLPJn95A6HfiD7nc4xZnxB2A5rqcHUeiE2Sa/kFDmoOdTBck7Nn+OlztRkFeWGAbJPwyyyEAZ7dCdJdNxpvDAqrMlEQGDBX7f0GPXSCqWW2SVIqK85cra3aDucVYlzedt6osV4BoROEmGv3KnndikQIDAQAB"

    invoke-direct {v0, p0, v1, v2}, Lcom/codeglue/terraria/AndroidBilling;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codeglue/terraria/Terraria;->billing:Lcom/codeglue/terraria/AndroidBilling;

    .line 257
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 202
    invoke-super {p0}, Lcom/codeglue/terraria/OctarineActivity;->onStart()V

    .line 204
    iget-object v0, p0, Lcom/codeglue/terraria/Terraria;->googlePlayServices:Lcom/codeglue/terraria/PlayService;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/codeglue/terraria/Terraria;->googlePlayServices:Lcom/codeglue/terraria/PlayService;

    iget-boolean v1, p0, Lcom/codeglue/terraria/Terraria;->isLoggedIn:Z

    invoke-virtual {v0, p0, v1}, Lcom/codeglue/terraria/PlayService;->onStart(Landroid/app/Activity;Z)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/codeglue/terraria/Terraria;->gamepad:Lcom/codeglue/terraria/Gamepad;

    if-nez v0, :cond_1

    .line 211
    new-instance v0, Lcom/codeglue/terraria/Gamepad;

    invoke-direct {v0, p0}, Lcom/codeglue/terraria/Gamepad;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/codeglue/terraria/Terraria;->gamepad:Lcom/codeglue/terraria/Gamepad;

    .line 214
    :cond_1
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onStart(Landroid/app/Activity;)V

    .line 215
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/codeglue/terraria/Terraria;->gamepad:Lcom/codeglue/terraria/Gamepad;

    invoke-virtual {v0}, Lcom/codeglue/terraria/Gamepad;->onStop()V

    .line 278
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 280
    iget-object v0, p0, Lcom/codeglue/terraria/Terraria;->expansionDownloader:Lcom/codeglue/terraria/ExpansionDownloader;

    invoke-virtual {v0}, Lcom/codeglue/terraria/ExpansionDownloader;->onStop()V

    .line 282
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onStop(Landroid/app/Activity;)V

    .line 284
    iget-object v0, p0, Lcom/codeglue/terraria/Terraria;->googlePlayServices:Lcom/codeglue/terraria/PlayService;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/codeglue/terraria/Terraria;->googlePlayServices:Lcom/codeglue/terraria/PlayService;

    invoke-virtual {v0, p0}, Lcom/codeglue/terraria/PlayService;->onStop(Landroid/app/Activity;)V

    .line 289
    :cond_0
    invoke-super {p0}, Lcom/codeglue/terraria/OctarineActivity;->onStop()V

    .line 290
    return-void
.end method
