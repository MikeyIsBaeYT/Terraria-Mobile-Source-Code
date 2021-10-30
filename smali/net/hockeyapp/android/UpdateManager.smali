.class public Lnet/hockeyapp/android/UpdateManager;
.super Ljava/lang/Object;
.source "UpdateManager.java"


# static fields
.field private static lastListener:Lnet/hockeyapp/android/UpdateManagerListener;

.field private static updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    sput-object v0, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    .line 62
    sput-object v0, Lnet/hockeyapp/android/UpdateManager;->lastListener:Lnet/hockeyapp/android/UpdateManagerListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkExpiryDate(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/UpdateManagerListener;)Z
    .locals 2
    .param p1, "listener"    # Lnet/hockeyapp/android/UpdateManagerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;",
            "Lnet/hockeyapp/android/UpdateManagerListener;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    const/4 v0, 0x0

    .line 172
    .local v0, "handle":Z
    invoke-static {p1}, Lnet/hockeyapp/android/UpdateManager;->checkExpiryDateForBackground(Lnet/hockeyapp/android/UpdateManagerListener;)Z

    move-result v1

    .line 173
    .local v1, "hasExpired":Z
    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {p1}, Lnet/hockeyapp/android/UpdateManagerListener;->onBuildExpired()Z

    move-result v0

    .line 177
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 178
    invoke-static {p0}, Lnet/hockeyapp/android/UpdateManager;->startExpiryInfoIntent(Ljava/lang/ref/WeakReference;)V

    .line 181
    :cond_1
    return v1
.end method

.method private static checkExpiryDateForBackground(Lnet/hockeyapp/android/UpdateManagerListener;)Z
    .locals 3
    .param p0, "listener"    # Lnet/hockeyapp/android/UpdateManagerListener;

    .prologue
    .line 189
    const/4 v1, 0x0

    .line 191
    .local v1, "result":Z
    if-eqz p0, :cond_0

    .line 192
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateManagerListener;->getExpiryDate()Ljava/util/Date;

    move-result-object v0

    .line 193
    .local v0, "expiryDate":Ljava/util/Date;
    if-eqz v0, :cond_1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    .line 196
    .end local v0    # "expiryDate":Ljava/util/Date;
    :cond_0
    :goto_0
    return v1

    .line 193
    .restart local v0    # "expiryDate":Ljava/util/Date;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static dialogShown(Ljava/lang/ref/WeakReference;)Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    const/4 v2, 0x0

    .line 268
    if-eqz p0, :cond_0

    .line 269
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 270
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "hockey_update_dialog"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 272
    .local v1, "existingFragment":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 276
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "existingFragment":Landroid/app/Fragment;
    :cond_0
    return v2
.end method

.method public static getLastListener()Lnet/hockeyapp/android/UpdateManagerListener;
    .locals 1

    .prologue
    .line 285
    sget-object v0, Lnet/hockeyapp/android/UpdateManager;->lastListener:Lnet/hockeyapp/android/UpdateManagerListener;

    return-object v0
.end method

.method private static installedFromMarket(Ljava/lang/ref/WeakReference;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<+",
            "Landroid/content/Context;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<+Landroid/content/Context;>;"
    const/4 v2, 0x0

    .line 205
    .local v2, "result":Z
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 206
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 208
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "installer":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    .line 215
    .end local v1    # "installer":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 209
    .restart local v1    # "installer":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 211
    .end local v1    # "installer":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static register(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appIdentifier"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lnet/hockeyapp/android/UpdateManager;->register(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 72
    return-void
.end method

.method public static register(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;Z)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "appIdentifier"    # Ljava/lang/String;
    .param p3, "listener"    # Lnet/hockeyapp/android/UpdateManagerListener;
    .param p4, "isDialogRequired"    # Z

    .prologue
    .line 107
    invoke-static {p2}, Lnet/hockeyapp/android/utils/Util;->sanitizeAppIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 109
    sput-object p3, Lnet/hockeyapp/android/UpdateManager;->lastListener:Lnet/hockeyapp/android/UpdateManagerListener;

    .line 111
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 112
    .local v0, "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    invoke-static {}, Lnet/hockeyapp/android/utils/Util;->fragmentsSupported()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lnet/hockeyapp/android/UpdateManager;->dialogShown(Ljava/lang/ref/WeakReference;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-static {v0, p3}, Lnet/hockeyapp/android/UpdateManager;->checkExpiryDate(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/UpdateManagerListener;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lnet/hockeyapp/android/UpdateManagerListener;->canUpdateInMarket()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-static {v0}, Lnet/hockeyapp/android/UpdateManager;->installedFromMarket(Ljava/lang/ref/WeakReference;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    :cond_3
    invoke-static {v0, p1, p2, p3, p4}, Lnet/hockeyapp/android/UpdateManager;->startUpdateTask(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;Z)V

    goto :goto_0
.end method

.method public static register(Landroid/app/Activity;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;Z)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appIdentifier"    # Ljava/lang/String;
    .param p2, "listener"    # Lnet/hockeyapp/android/UpdateManagerListener;
    .param p3, "isDialogRequired"    # Z

    .prologue
    .line 94
    const-string v0, "https://sdk.hockeyapp.net/"

    invoke-static {p0, v0, p1, p2, p3}, Lnet/hockeyapp/android/UpdateManager;->register(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;Z)V

    .line 95
    return-void
.end method

.method public static register(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appIdentifier"    # Ljava/lang/String;
    .param p2, "isDialogRequired"    # Z

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lnet/hockeyapp/android/UpdateManager;->register(Landroid/app/Activity;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;Z)V

    .line 83
    return-void
.end method

.method public static registerForBackground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;)V
    .locals 2
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "appIdentifier"    # Ljava/lang/String;
    .param p3, "listener"    # Lnet/hockeyapp/android/UpdateManagerListener;

    .prologue
    .line 141
    invoke-static {p2}, Lnet/hockeyapp/android/utils/Util;->sanitizeAppIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 143
    sput-object p3, Lnet/hockeyapp/android/UpdateManager;->lastListener:Lnet/hockeyapp/android/UpdateManagerListener;

    .line 145
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 147
    .local v0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    invoke-static {p3}, Lnet/hockeyapp/android/UpdateManager;->checkExpiryDateForBackground(Lnet/hockeyapp/android/UpdateManagerListener;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lnet/hockeyapp/android/UpdateManagerListener;->canUpdateInMarket()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {v0}, Lnet/hockeyapp/android/UpdateManager;->installedFromMarket(Ljava/lang/ref/WeakReference;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 148
    :cond_1
    invoke-static {v0, p1, p2, p3}, Lnet/hockeyapp/android/UpdateManager;->startUpdateTaskForBackground(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;)V

    .line 150
    :cond_2
    return-void
.end method

.method public static registerForBackground(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;)V
    .locals 1
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "appIdentifier"    # Ljava/lang/String;
    .param p2, "listener"    # Lnet/hockeyapp/android/UpdateManagerListener;

    .prologue
    .line 129
    const-string v0, "https://sdk.hockeyapp.net/"

    invoke-static {p0, v0, p1, p2}, Lnet/hockeyapp/android/UpdateManager;->registerForBackground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;)V

    .line 130
    return-void
.end method

.method private static startExpiryInfoIntent(Ljava/lang/ref/WeakReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    if-eqz p0, :cond_0

    .line 224
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 225
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 228
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lnet/hockeyapp/android/ExpiryInfoActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 230
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 233
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private static startUpdateTask(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;Z)V
    .locals 6
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "appIdentifier"    # Ljava/lang/String;
    .param p3, "listener"    # Lnet/hockeyapp/android/UpdateManagerListener;
    .param p4, "isDialogRequired"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lnet/hockeyapp/android/UpdateManagerListener;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    sget-object v0, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    invoke-virtual {v0}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 241
    :cond_0
    new-instance v0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;Z)V

    sput-object v0, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    .line 242
    sget-object v0, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    invoke-static {v0}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_1
    sget-object v0, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    invoke-virtual {v0, p0}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->attach(Ljava/lang/ref/WeakReference;)V

    goto :goto_0
.end method

.method private static startUpdateTaskForBackground(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;)V
    .locals 2
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "appIdentifier"    # Ljava/lang/String;
    .param p3, "listener"    # Lnet/hockeyapp/android/UpdateManagerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lnet/hockeyapp/android/UpdateManagerListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 254
    .local p0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    sget-object v0, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    invoke-virtual {v0}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 255
    :cond_0
    new-instance v0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;)V

    sput-object v0, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    .line 256
    sget-object v0, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    invoke-static {v0}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_1
    sget-object v0, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    invoke-virtual {v0, p0}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->attach(Ljava/lang/ref/WeakReference;)V

    goto :goto_0
.end method

.method public static unregister()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 156
    sget-object v0, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    if-eqz v0, :cond_0

    .line 157
    sget-object v0, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->cancel(Z)Z

    .line 158
    sget-object v0, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    invoke-virtual {v0}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->detach()V

    .line 159
    sput-object v2, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    .line 162
    :cond_0
    sput-object v2, Lnet/hockeyapp/android/UpdateManager;->lastListener:Lnet/hockeyapp/android/UpdateManagerListener;

    .line 163
    return-void
.end method
