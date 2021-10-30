.class final Lcom/flurry/android/et;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/flurry/android/et;->mContext:Landroid/content/Context;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized A(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 61
    const-class v1, Lcom/flurry/android/et;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/android/et;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 70
    :goto_0
    monitor-exit v1

    return-void

    .line 64
    :cond_0
    :try_start_1
    sget-object v0, Lcom/flurry/android/et;->mContext:Landroid/content/Context;

    const-string v2, "FLURRY_SHARED_PREFERENCES"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 65
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 67
    const-string v2, "flurry_last_user_pass"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 69
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized aX()V
    .locals 4

    .prologue
    .line 73
    const-class v1, Lcom/flurry/android/et;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/android/et;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 82
    :goto_0
    monitor-exit v1

    return-void

    .line 76
    :cond_0
    :try_start_1
    sget-object v0, Lcom/flurry/android/et;->mContext:Landroid/content/Context;

    const-string v2, "FLURRY_SHARED_PREFERENCES"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 78
    const-string v2, "flurry_last_user_session"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 80
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized aY()Lcom/flurry/android/AppCloudUser;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 85
    const-class v2, Lcom/flurry/android/et;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/flurry/android/et;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 106
    :cond_0
    :goto_0
    monitor-exit v2

    return-object v0

    .line 88
    :cond_1
    :try_start_1
    new-instance v1, Lcom/flurry/android/AppCloudUser;

    invoke-direct {v1}, Lcom/flurry/android/AppCloudUser;-><init>()V

    .line 90
    invoke-static {}, Lcom/flurry/android/et;->aZ()Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 92
    invoke-virtual {v1, v3}, Lcom/flurry/android/AppCloudUser;->setId(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/flurry/android/et;->ba()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 98
    invoke-virtual {v1, v0}, Lcom/flurry/android/AppCloudUser;->setUsername(Ljava/lang/String;)V

    .line 100
    :cond_2
    invoke-static {}, Lcom/flurry/android/et;->bb()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 102
    invoke-virtual {v1, v0}, Lcom/flurry/android/AppCloudUser;->setEmail(Ljava/lang/String;)V

    .line 104
    :cond_3
    invoke-static {}, Lcom/flurry/android/et;->bc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/flurry/android/AppCloudUser;->password:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 106
    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method static declared-synchronized aZ()Ljava/lang/String;
    .locals 4

    .prologue
    .line 110
    const-class v1, Lcom/flurry/android/et;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/android/et;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 111
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :goto_0
    monitor-exit v1

    return-object v0

    .line 113
    :cond_0
    :try_start_1
    sget-object v0, Lcom/flurry/android/et;->mContext:Landroid/content/Context;

    const-string v2, "FLURRY_SHARED_PREFERENCES"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 114
    const-string v2, "flurry_last_user_id"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized ba()Ljava/lang/String;
    .locals 4

    .prologue
    .line 121
    const-class v1, Lcom/flurry/android/et;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/android/et;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 122
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :goto_0
    monitor-exit v1

    return-object v0

    .line 124
    :cond_0
    :try_start_1
    sget-object v0, Lcom/flurry/android/et;->mContext:Landroid/content/Context;

    const-string v2, "FLURRY_SHARED_PREFERENCES"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 125
    const-string v2, "flurry_last_user_name"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized bb()Ljava/lang/String;
    .locals 4

    .prologue
    .line 132
    const-class v1, Lcom/flurry/android/et;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/android/et;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 133
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :goto_0
    monitor-exit v1

    return-object v0

    .line 135
    :cond_0
    :try_start_1
    sget-object v0, Lcom/flurry/android/et;->mContext:Landroid/content/Context;

    const-string v2, "FLURRY_SHARED_PREFERENCES"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 136
    const-string v2, "flurry_last_user_email"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized bc()Ljava/lang/String;
    .locals 4

    .prologue
    .line 143
    const-class v1, Lcom/flurry/android/et;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/android/et;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 144
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :goto_0
    monitor-exit v1

    return-object v0

    .line 146
    :cond_0
    :try_start_1
    sget-object v0, Lcom/flurry/android/et;->mContext:Landroid/content/Context;

    const-string v2, "FLURRY_SHARED_PREFERENCES"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 147
    const-string v2, "flurry_last_user_pass"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized bd()Ljava/lang/String;
    .locals 5

    .prologue
    .line 154
    const-class v1, Lcom/flurry/android/et;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/android/et;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 155
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :goto_0
    monitor-exit v1

    return-object v0

    .line 157
    :cond_0
    :try_start_1
    sget-object v0, Lcom/flurry/android/et;->mContext:Landroid/content/Context;

    const-string v2, "FLURRY_SHARED_PREFERENCES"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 158
    const-string v2, "flurry_last_user_session"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    const-string v2, "AppCloudUserHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User Session = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized be()V
    .locals 4

    .prologue
    .line 165
    const-class v1, Lcom/flurry/android/et;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/android/et;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 171
    :goto_0
    monitor-exit v1

    return-void

    .line 168
    :cond_0
    :try_start_1
    sget-object v0, Lcom/flurry/android/et;->mContext:Landroid/content/Context;

    const-string v2, "FLURRY_SHARED_PREFERENCES"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 169
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 170
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 44
    const-class v1, Lcom/flurry/android/et;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/android/et;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 58
    :goto_0
    monitor-exit v1

    return-void

    .line 47
    :cond_0
    :try_start_1
    sget-object v0, Lcom/flurry/android/et;->mContext:Landroid/content/Context;

    const-string v2, "FLURRY_SHARED_PREFERENCES"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 48
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 49
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 50
    const-string v2, "flurry_last_user_name"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 51
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 52
    const-string v2, "flurry_last_user_email"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 53
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 54
    const-string v2, "flurry_last_user_session"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 56
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 57
    const-string v0, "AppCloudUserHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveLastLoggedInUserData, (Name, Email, Token) = ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static g(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    sput-object p0, Lcom/flurry/android/et;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method static declared-synchronized z(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 30
    const-class v1, Lcom/flurry/android/et;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/android/et;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 41
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 33
    :cond_1
    :try_start_1
    sget-object v0, Lcom/flurry/android/et;->mContext:Landroid/content/Context;

    const-string v2, "FLURRY_SHARED_PREFERENCES"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 34
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 35
    const-string v2, "flurry_last_user_id"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 36
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    sget-object v0, Lcom/flurry/android/et;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/flurry/android/FlurryAppCloud;->d(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
