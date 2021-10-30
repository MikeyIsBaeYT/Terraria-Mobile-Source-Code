.class public Lcom/codeglue/terraria/PlayService;
.super Ljava/lang/Object;
.source "PlayService.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field private static final RC_SIGN_IN:I = 0x0

.field private static final REQUEST_ACHIEVEMENTS:I = 0x4e

.field private static final REQUEST_LEADERBOARDS:I = 0x43


# instance fields
.field activity:Landroid/app/Activity;

.field client:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private connectThread:Ljava/lang/Thread;

.field private intentInProgress:Z

.field private pollConnect:Z

.field private pollTimeIntervalInMs:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/codeglue/terraria/PlayService;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 35
    iput-boolean v1, p0, Lcom/codeglue/terraria/PlayService;->intentInProgress:Z

    .line 36
    iput-boolean v1, p0, Lcom/codeglue/terraria/PlayService;->pollConnect:Z

    .line 37
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/codeglue/terraria/PlayService;->pollTimeIntervalInMs:I

    .line 39
    new-instance v0, Lcom/codeglue/terraria/PlayService$1;

    invoke-direct {v0, p0}, Lcom/codeglue/terraria/PlayService$1;-><init>(Lcom/codeglue/terraria/PlayService;)V

    iput-object v0, p0, Lcom/codeglue/terraria/PlayService;->connectThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$000(Lcom/codeglue/terraria/PlayService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/codeglue/terraria/PlayService;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/codeglue/terraria/PlayService;->pollConnect:Z

    return v0
.end method

.method static synthetic access$100(Lcom/codeglue/terraria/PlayService;)I
    .locals 1
    .param p0, "x0"    # Lcom/codeglue/terraria/PlayService;

    .prologue
    .line 24
    iget v0, p0, Lcom/codeglue/terraria/PlayService;->pollTimeIntervalInMs:I

    return v0
.end method


# virtual methods
.method public IsSignedIn()Z
    .locals 3

    .prologue
    .line 323
    const-string v0, "Octarine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PLAY] IsSignedIn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/codeglue/terraria/PlayService;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/codeglue/terraria/PlayService;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    return v0
.end method

.method public Login()V
    .locals 2

    .prologue
    .line 252
    const-string v0, "Octarine"

    const-string v1, "[PLAY] Login"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/codeglue/terraria/PlayService;->pollConnect:Z

    .line 254
    iget-object v0, p0, Lcom/codeglue/terraria/PlayService;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->reconnect()V

    .line 255
    return-void
.end method

.method public LoginOnlyIfPreviouslyDoneByUser()V
    .locals 5

    .prologue
    .line 272
    :try_start_0
    iget-object v3, p0, Lcom/codeglue/terraria/PlayService;->activity:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 273
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "isLoggedIn"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 275
    .local v0, "canLogin":Z
    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/codeglue/terraria/PlayService;->Login()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    .end local v0    # "canLogin":Z
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v1

    .line 282
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Octarine"

    const-string v4, "[PLAY] LoginOnlyIfPreviouslyDoneByUser exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public Logout()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 259
    const-string v2, "Octarine"

    const-string v3, "[PLAY] Logout"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v2, p0, Lcom/codeglue/terraria/PlayService;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 262
    iget-object v2, p0, Lcom/codeglue/terraria/PlayService;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 263
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 264
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "isLoggedIn"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 265
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 266
    return-void
.end method

.method public RecreateClient()V
    .locals 2

    .prologue
    .line 219
    const-string v0, "Octarine"

    const-string v1, "[PLAY] Recreating Google Play client"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v1, p0, Lcom/codeglue/terraria/PlayService;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/plus/Plus;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/plus/Plus;->SCOPE_PLUS_LOGIN:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/drive/Drive;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/drive/Drive;->SCOPE_FILE:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/games/Games;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/games/Games;->SCOPE_GAMES:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/codeglue/terraria/PlayService;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 230
    return-void
.end method

.method public ShowAchievements()V
    .locals 4

    .prologue
    .line 291
    :try_start_0
    const-string v1, "Octarine"

    const-string v2, "[PLAY] ShowAchievements"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {p0}, Lcom/codeglue/terraria/PlayService;->IsSignedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/codeglue/terraria/PlayService;->activity:Landroid/app/Activity;

    sget-object v2, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    iget-object v3, p0, Lcom/codeglue/terraria/PlayService;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2, v3}, Lcom/google/android/gms/games/achievement/Achievements;->getAchievementsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x4e

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 298
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public ShowLeaderboards()V
    .locals 4

    .prologue
    .line 308
    :try_start_0
    const-string v1, "Octarine"

    const-string v2, "[PLAY] ShowLeaderboards"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {p0}, Lcom/codeglue/terraria/PlayService;->IsSignedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/codeglue/terraria/PlayService;->activity:Landroid/app/Activity;

    sget-object v2, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    iget-object v3, p0, Lcom/codeglue/terraria/PlayService;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2, v3}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->getAllLeaderboardsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x43

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public SubmitScore(Ljava/lang/String;J)V
    .locals 2
    .param p1, "inLeaderboardID"    # Ljava/lang/String;
    .param p2, "inScore"    # J

    .prologue
    .line 243
    const-string v0, "Octarine"

    const-string v1, "[PLAY] SubmitScore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {p0}, Lcom/codeglue/terraria/PlayService;->IsSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    iget-object v1, p0, Lcom/codeglue/terraria/PlayService;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->submitScore(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;J)V

    .line 248
    :cond_0
    return-void
.end method

.method public UnlockAchievement(Ljava/lang/String;)V
    .locals 2
    .param p1, "inAchievement"    # Ljava/lang/String;

    .prologue
    .line 234
    const-string v0, "Octarine"

    const-string v1, "[PLAY] UnlockAchievement"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {p0}, Lcom/codeglue/terraria/PlayService;->IsSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    iget-object v1, p0, Lcom/codeglue/terraria/PlayService;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 239
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "responseCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 100
    const-string v0, "Octarine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PLAY] onActivityResult requestCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v0, "Octarine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PLAY] onActivityResult responseCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v2, "Octarine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PLAY] requestCode == RC_SIGN_IN: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    if-nez p1, :cond_2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 106
    iput-boolean v1, p0, Lcom/codeglue/terraria/PlayService;->intentInProgress:Z

    .line 108
    iget-object v0, p0, Lcom/codeglue/terraria/PlayService;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/codeglue/terraria/PlayService;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 117
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 102
    goto :goto_0

    .line 115
    :cond_2
    iput-boolean v1, p0, Lcom/codeglue/terraria/PlayService;->intentInProgress:Z

    goto :goto_1
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 180
    const-string v3, "Octarine"

    const-string v4, "[PLAY] onConnected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iput-boolean v5, p0, Lcom/codeglue/terraria/PlayService;->pollConnect:Z

    .line 184
    iget-object v3, p0, Lcom/codeglue/terraria/PlayService;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 185
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 186
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "isLoggedIn"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 187
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 189
    new-instance v2, Lcom/codeglue/terraria/PlayService$2;

    invoke-direct {v2, p0}, Lcom/codeglue/terraria/PlayService$2;-><init>(Lcom/codeglue/terraria/PlayService;)V

    .line 205
    .local v2, "t":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 207
    invoke-static {}, Lcom/codeglue/terraria/OctarineBridge;->nativeGoogleLoggedInEvent()V

    .line 208
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 7
    .param p1, "result"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 122
    const-string v1, "Octarine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PLAY] onConnectionFailed: intentInProgress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/codeglue/terraria/PlayService;->intentInProgress:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v1, "Octarine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PLAY] onConnectionFailed: result.hasResolution(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v1, "Octarine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PLAY] onConnectionFailed: result.getErrorCode(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-boolean v1, p0, Lcom/codeglue/terraria/PlayService;->intentInProgress:Z

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 130
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 132
    const-string v1, "Octarine"

    const-string v2, "[PLAY] Try polling for connection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/codeglue/terraria/PlayService;->pollConnect:Z

    .line 135
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/codeglue/terraria/PlayService;->intentInProgress:Z

    .line 136
    iget-object v1, p0, Lcom/codeglue/terraria/PlayService;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/codeglue/terraria/PlayService;->connectThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/codeglue/terraria/PlayService;->connectThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/codeglue/terraria/PlayService;->connectThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v1, v2, :cond_3

    .line 167
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/codeglue/terraria/PlayService;->connectThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 168
    iget-object v1, p0, Lcom/codeglue/terraria/PlayService;->connectThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 175
    :cond_3
    :goto_1
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v1, "Octarine"

    const-string v2, "[PLAY] SendIntentException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iput-boolean v5, p0, Lcom/codeglue/terraria/PlayService;->intentInProgress:Z

    .line 143
    iget-object v1, p0, Lcom/codeglue/terraria/PlayService;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0

    .line 146
    .end local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    :cond_4
    iget-boolean v1, p0, Lcom/codeglue/terraria/PlayService;->intentInProgress:Z

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    .line 148
    const-string v1, "Octarine"

    const-string v2, "[PLAY] InternalError, retrying.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 152
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    if-ne v1, v6, :cond_1

    iget-boolean v1, p0, Lcom/codeglue/terraria/PlayService;->pollConnect:Z

    if-eq v1, v4, :cond_1

    .line 154
    const-string v1, "Octarine"

    const-string v2, "[PLAY] Did not receive login data - recreating client to ask again..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iput-boolean v5, p0, Lcom/codeglue/terraria/PlayService;->intentInProgress:Z

    .line 156
    invoke-virtual {p0}, Lcom/codeglue/terraria/PlayService;->RecreateClient()V

    .line 157
    iput-boolean v4, p0, Lcom/codeglue/terraria/PlayService;->pollConnect:Z

    goto :goto_0

    .line 170
    :catch_1
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onConnectionSuspended(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 213
    const-string v0, "Octarine"

    const-string v1, "[PLAY] onConnectionSuspended"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/codeglue/terraria/PlayService;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 215
    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 62
    const-string v0, "Octarine"

    const-string v1, "[PLAY] onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iput-object p1, p0, Lcom/codeglue/terraria/PlayService;->activity:Landroid/app/Activity;

    .line 65
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/plus/Plus;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/plus/Plus;->SCOPE_PLUS_LOGIN:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/drive/Drive;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/drive/Drive;->SCOPE_FILE:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/games/Games;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/games/Games;->SCOPE_GAMES:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/codeglue/terraria/PlayService;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 75
    return-void
.end method

.method public onStart(Landroid/app/Activity;Z)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isLoggedIn"    # Z

    .prologue
    .line 79
    const-string v0, "Octarine"

    const-string v1, "[PLAY] onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iput-object p1, p0, Lcom/codeglue/terraria/PlayService;->activity:Landroid/app/Activity;

    .line 82
    if-eqz p2, :cond_0

    .line 84
    iget-object v0, p0, Lcom/codeglue/terraria/PlayService;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 86
    :cond_0
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 90
    const-string v0, "Octarine"

    const-string v1, "[PLAY] onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iput-object p1, p0, Lcom/codeglue/terraria/PlayService;->activity:Landroid/app/Activity;

    .line 92
    invoke-virtual {p0}, Lcom/codeglue/terraria/PlayService;->IsSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/codeglue/terraria/PlayService;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 96
    :cond_0
    return-void
.end method
