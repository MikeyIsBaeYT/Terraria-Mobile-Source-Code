.class public Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;
.super Lnet/hockeyapp/android/tasks/CheckUpdateTask;
.source "CheckUpdateTaskWithUI.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private dialog:Landroid/app/AlertDialog;

.field protected isDialogRequired:Z


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;Z)V
    .locals 1
    .param p2, "urlString"    # Ljava/lang/String;
    .param p3, "appIdentifier"    # Ljava/lang/String;
    .param p4, "listener"    # Lnet/hockeyapp/android/UpdateManagerListener;
    .param p5, "isDialogRequired"    # Z
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
    .local p1, "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;)V

    .line 65
    iput-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->activity:Landroid/app/Activity;

    .line 66
    iput-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->dialog:Landroid/app/AlertDialog;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->isDialogRequired:Z

    .line 72
    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->activity:Landroid/app/Activity;

    .line 76
    :cond_0
    iput-boolean p5, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->isDialogRequired:Z

    .line 77
    return-void
.end method

.method static synthetic access$000(Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;

    .prologue
    .line 63
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->showUpdateFragment(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$200(Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;Lorg/json/JSONArray;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;
    .param p1, "x1"    # Lorg/json/JSONArray;
    .param p2, "x2"    # Ljava/lang/Boolean;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->startUpdateIntent(Lorg/json/JSONArray;Ljava/lang/Boolean;)V

    return-void
.end method

.method private showDialog(Lorg/json/JSONArray;)V
    .locals 5
    .param p1, "updateInfo"    # Lorg/json/JSONArray;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 101
    invoke-virtual {p0}, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->getCachingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/hockeyapp/android/utils/VersionCache;->setVersionInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    :cond_0
    iget-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    :cond_1
    :goto_0
    return-void

    .line 109
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->listener:Lnet/hockeyapp/android/UpdateManagerListener;

    const/16 v2, 0x201

    invoke-static {v1, v2}, Lnet/hockeyapp/android/Strings;->get(Lnet/hockeyapp/android/StringListener;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 112
    iget-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->mandatory:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 113
    iget-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->listener:Lnet/hockeyapp/android/UpdateManagerListener;

    const/16 v2, 0x202

    invoke-static {v1, v2}, Lnet/hockeyapp/android/Strings;->get(Lnet/hockeyapp/android/StringListener;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 115
    iget-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->listener:Lnet/hockeyapp/android/UpdateManagerListener;

    const/16 v2, 0x203

    invoke-static {v1, v2}, Lnet/hockeyapp/android/Strings;->get(Lnet/hockeyapp/android/StringListener;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI$1;

    invoke-direct {v2, p0}, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI$1;-><init>(Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 121
    iget-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->listener:Lnet/hockeyapp/android/UpdateManagerListener;

    const/16 v2, 0x204

    invoke-static {v1, v2}, Lnet/hockeyapp/android/Strings;->get(Lnet/hockeyapp/android/StringListener;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI$2;

    invoke-direct {v2, p0, p1}, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI$2;-><init>(Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;Lorg/json/JSONArray;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 137
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->dialog:Landroid/app/AlertDialog;

    .line 138
    iget-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 141
    :cond_3
    iget-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->listener:Lnet/hockeyapp/android/UpdateManagerListener;

    const/16 v3, 0x200

    invoke-static {v2, v3}, Lnet/hockeyapp/android/Strings;->get(Lnet/hockeyapp/android/StringListener;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 142
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->startUpdateIntent(Lorg/json/JSONArray;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private showUpdateFragment(Lorg/json/JSONArray;)V
    .locals 11
    .param p1, "updateInfo"    # Lorg/json/JSONArray;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 148
    iget-object v6, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->activity:Landroid/app/Activity;

    if-eqz v6, :cond_2

    .line 149
    iget-object v6, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 150
    .local v3, "fragmentTransaction":Landroid/app/FragmentTransaction;
    const/16 v6, 0x1001

    invoke-virtual {v3, v6}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 152
    iget-object v6, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "hockey_update_dialog"

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 153
    .local v1, "existingFragment":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    .line 154
    invoke-virtual {v3, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 156
    :cond_0
    invoke-virtual {v3, v8}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 159
    const-class v2, Lnet/hockeyapp/android/UpdateFragment;

    .line 160
    .local v2, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lnet/hockeyapp/android/UpdateFragment;>;"
    iget-object v6, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->listener:Lnet/hockeyapp/android/UpdateManagerListener;

    if-eqz v6, :cond_1

    .line 161
    iget-object v6, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->listener:Lnet/hockeyapp/android/UpdateManagerListener;

    invoke-virtual {v6}, Lnet/hockeyapp/android/UpdateManagerListener;->getUpdateFragmentClass()Ljava/lang/Class;

    move-result-object v2

    .line 165
    :cond_1
    :try_start_0
    const-string v6, "newInstance"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Lorg/json/JSONArray;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 166
    .local v4, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    const-string v9, "apk"

    invoke-virtual {p0, v9}, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->getURLString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/DialogFragment;

    .line 167
    .local v5, "updateFragment":Landroid/app/DialogFragment;
    const-string v6, "hockey_update_dialog"

    invoke-virtual {v5, v3, v6}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v1    # "existingFragment":Landroid/app/Fragment;
    .end local v2    # "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lnet/hockeyapp/android/UpdateFragment;>;"
    .end local v3    # "fragmentTransaction":Landroid/app/FragmentTransaction;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "updateFragment":Landroid/app/DialogFragment;
    :cond_2
    :goto_0
    return-void

    .line 169
    .restart local v1    # "existingFragment":Landroid/app/Fragment;
    .restart local v2    # "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lnet/hockeyapp/android/UpdateFragment;>;"
    .restart local v3    # "fragmentTransaction":Landroid/app/FragmentTransaction;
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "HockeyApp"

    const-string v7, "An exception happened while showing the update fragment:"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    const-string v6, "HockeyApp"

    const-string v7, "Showing update activity instead."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->startUpdateIntent(Lorg/json/JSONArray;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private startUpdateIntent(Lorg/json/JSONArray;Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "updateInfo"    # Lorg/json/JSONArray;
    .param p2, "finish"    # Ljava/lang/Boolean;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->listener:Lnet/hockeyapp/android/UpdateManagerListener;

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->listener:Lnet/hockeyapp/android/UpdateManagerListener;

    invoke-virtual {v2}, Lnet/hockeyapp/android/UpdateManagerListener;->getUpdateActivityClass()Ljava/lang/Class;

    move-result-object v0

    .line 184
    :cond_0
    if-nez v0, :cond_1

    .line 185
    const-class v0, Lnet/hockeyapp/android/UpdateActivity;

    .line 188
    :cond_1
    iget-object v2, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 189
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 190
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 191
    const-string v2, "json"

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-string v2, "url"

    const-string v3, "apk"

    invoke-virtual {p0, v3}, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->getURLString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    iget-object v2, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 195
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 196
    iget-object v2, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 200
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->cleanUp()V

    .line 201
    return-void
.end method


# virtual methods
.method protected cleanUp()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 205
    invoke-super {p0}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->cleanUp()V

    .line 206
    iput-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->activity:Landroid/app/Activity;

    .line 207
    iput-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->dialog:Landroid/app/AlertDialog;

    .line 208
    return-void
.end method

.method public detach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-super {p0}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->detach()V

    .line 83
    iput-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->activity:Landroid/app/Activity;

    .line 85
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 87
    iput-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->dialog:Landroid/app/AlertDialog;

    .line 89
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 63
    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->onPostExecute(Lorg/json/JSONArray;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONArray;)V
    .locals 1
    .param p1, "updateInfo"    # Lorg/json/JSONArray;

    .prologue
    .line 93
    invoke-super {p0, p1}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->onPostExecute(Lorg/json/JSONArray;)V

    .line 94
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->isDialogRequired:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->showDialog(Lorg/json/JSONArray;)V

    .line 97
    :cond_0
    return-void
.end method
