.class public Lnet/hockeyapp/android/UpdateActivity;
.super Landroid/app/Activity;
.source "UpdateActivity.java"

# interfaces
.implements Lnet/hockeyapp/android/UpdateActivityInterface;
.implements Lnet/hockeyapp/android/UpdateInfoListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final DIALOG_ERROR_ID:I

.field private context:Landroid/content/Context;

.field protected downloadTask:Lnet/hockeyapp/android/tasks/DownloadFileTask;

.field private error:Lnet/hockeyapp/android/objects/ErrorObject;

.field protected versionHelper:Lnet/hockeyapp/android/utils/VersionHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lnet/hockeyapp/android/UpdateActivity;->DIALOG_ERROR_ID:I

    return-void
.end method

.method static synthetic access$002(Lnet/hockeyapp/android/UpdateActivity;Lnet/hockeyapp/android/objects/ErrorObject;)Lnet/hockeyapp/android/objects/ErrorObject;
    .locals 0
    .param p0, "x0"    # Lnet/hockeyapp/android/UpdateActivity;
    .param p1, "x1"    # Lnet/hockeyapp/android/objects/ErrorObject;

    .prologue
    .line 63
    iput-object p1, p0, Lnet/hockeyapp/android/UpdateActivity;->error:Lnet/hockeyapp/android/objects/ErrorObject;

    return-object p1
.end method

.method private isUnknownSourcesChecked()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 286
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_2

    .line 287
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "install_non_market_apps"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 293
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 287
    goto :goto_0

    .line 290
    :cond_2
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "install_non_market_apps"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eq v3, v1, :cond_0

    move v1, v2

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private isWriteExternalStorageSet(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 272
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 273
    .local v0, "permission":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 275
    .local v1, "res":I
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected configureView()V
    .locals 18

    .prologue
    .line 108
    const/16 v3, 0x1002

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnet/hockeyapp/android/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 109
    .local v12, "nameLabel":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lnet/hockeyapp/android/UpdateActivity;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const/16 v3, 0x1003

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnet/hockeyapp/android/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 112
    .local v15, "versionLabel":Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/hockeyapp/android/UpdateActivity;->versionHelper:Lnet/hockeyapp/android/utils/VersionHelper;

    invoke-virtual {v4}, Lnet/hockeyapp/android/utils/VersionHelper;->getVersionString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 113
    .local v16, "versionString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hockeyapp/android/UpdateActivity;->versionHelper:Lnet/hockeyapp/android/utils/VersionHelper;

    invoke-virtual {v3}, Lnet/hockeyapp/android/utils/VersionHelper;->getFileDateString()Ljava/lang/String;

    move-result-object v11

    .line 115
    .local v11, "fileDate":Ljava/lang/String;
    const-string v10, "Unknown size"

    .line 116
    .local v10, "appSizeString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hockeyapp/android/UpdateActivity;->versionHelper:Lnet/hockeyapp/android/utils/VersionHelper;

    invoke-virtual {v3}, Lnet/hockeyapp/android/utils/VersionHelper;->getFileSizeBytes()J

    move-result-wide v8

    .line 117
    .local v8, "appSize":J
    const-wide/16 v4, 0x0

    cmp-long v3, v8, v4

    if-ltz v3, :cond_0

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%.2f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    long-to-float v7, v8

    const/high16 v17, 0x49800000    # 1048576.0f

    div-float v7, v7, v17

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " MB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 133
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    const/16 v3, 0x1004

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnet/hockeyapp/android/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    .line 136
    .local v14, "updateButton":Landroid/widget/Button;
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const/16 v3, 0x1005

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnet/hockeyapp/android/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 139
    .local v2, "webView":Landroid/webkit/WebView;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 140
    invoke-virtual {v2}, Landroid/webkit/WebView;->destroyDrawingCache()V

    .line 141
    const-string v3, "https://sdk.hockeyapp.net/"

    invoke-virtual/range {p0 .. p0}, Lnet/hockeyapp/android/UpdateActivity;->getReleaseNotes()Ljava/lang/String;

    move-result-object v4

    const-string v5, "text/html"

    const-string v6, "utf-8"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void

    .line 121
    .end local v2    # "webView":Landroid/webkit/WebView;
    .end local v14    # "updateButton":Landroid/widget/Button;
    :cond_0
    new-instance v13, Lnet/hockeyapp/android/tasks/GetFileSizeTask;

    invoke-virtual/range {p0 .. p0}, Lnet/hockeyapp/android/UpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "url"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lnet/hockeyapp/android/UpdateActivity$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v4, v0, v15, v1, v11}, Lnet/hockeyapp/android/UpdateActivity$1;-><init>(Lnet/hockeyapp/android/UpdateActivity;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v3, v4}, Lnet/hockeyapp/android/tasks/GetFileSizeTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/listeners/DownloadFileListener;)V

    .line 131
    .local v13, "task":Lnet/hockeyapp/android/tasks/GetFileSizeTask;
    invoke-static {v13}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    goto :goto_0
.end method

.method protected createDownloadTask(Ljava/lang/String;Lnet/hockeyapp/android/listeners/DownloadFileListener;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lnet/hockeyapp/android/listeners/DownloadFileListener;

    .prologue
    .line 213
    new-instance v0, Lnet/hockeyapp/android/tasks/DownloadFileTask;

    invoke-direct {v0, p0, p1, p2}, Lnet/hockeyapp/android/tasks/DownloadFileTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/listeners/DownloadFileListener;)V

    iput-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->downloadTask:Lnet/hockeyapp/android/tasks/DownloadFileTask;

    .line 214
    return-void
.end method

.method public enableUpdateButton()V
    .locals 2

    .prologue
    .line 220
    const/16 v1, 0x1004

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 221
    .local v0, "updateButton":Landroid/view/View;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 222
    return-void
.end method

.method public getAppName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 257
    :try_start_0
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 258
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 259
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 262
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 261
    :catch_0
    move-exception v1

    .line 262
    .local v1, "exception":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, ""

    goto :goto_0
.end method

.method public getCurrentVersionCode()I
    .locals 4

    .prologue
    .line 230
    const/4 v0, -0x1

    .line 233
    .local v0, "currentVersionCode":I
    :try_start_0
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    return v0

    .line 235
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public bridge synthetic getLayoutView()Landroid/view/View;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getLayoutView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 247
    new-instance v0, Lnet/hockeyapp/android/views/UpdateView;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/views/UpdateView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected getReleaseNotes()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->versionHelper:Lnet/hockeyapp/android/utils/VersionHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/utils/VersionHelper;->getReleaseNotes(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 302
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lnet/hockeyapp/android/UpdateActivity;->isWriteExternalStorageSet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Lnet/hockeyapp/android/objects/ErrorObject;

    invoke-direct {v0}, Lnet/hockeyapp/android/objects/ErrorObject;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->error:Lnet/hockeyapp/android/objects/ErrorObject;

    .line 304
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->error:Lnet/hockeyapp/android/objects/ErrorObject;

    const-string v1, "The permission to access the external storage permission is not set. Please contact the developer."

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/objects/ErrorObject;->setMessage(Ljava/lang/String;)V

    .line 306
    new-instance v0, Lnet/hockeyapp/android/UpdateActivity$3;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/UpdateActivity$3;-><init>(Lnet/hockeyapp/android/UpdateActivity;)V

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/UpdateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 334
    :goto_0
    return-void

    .line 317
    :cond_0
    invoke-direct {p0}, Lnet/hockeyapp/android/UpdateActivity;->isUnknownSourcesChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 318
    new-instance v0, Lnet/hockeyapp/android/objects/ErrorObject;

    invoke-direct {v0}, Lnet/hockeyapp/android/objects/ErrorObject;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->error:Lnet/hockeyapp/android/objects/ErrorObject;

    .line 319
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->error:Lnet/hockeyapp/android/objects/ErrorObject;

    const-string v1, "The installation from unknown sources is not enabled. Please check the device settings."

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/objects/ErrorObject;->setMessage(Ljava/lang/String;)V

    .line 321
    new-instance v0, Lnet/hockeyapp/android/UpdateActivity$4;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/UpdateActivity$4;-><init>(Lnet/hockeyapp/android/UpdateActivity;)V

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/UpdateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 332
    :cond_1
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->startDownloadTask()V

    .line 333
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const-string v0, "App Update"

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/UpdateActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getLayoutView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/UpdateActivity;->setContentView(Landroid/view/View;)V

    .line 93
    iput-object p0, p0, Lnet/hockeyapp/android/UpdateActivity;->context:Landroid/content/Context;

    .line 94
    new-instance v0, Lnet/hockeyapp/android/utils/VersionHelper;

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "json"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lnet/hockeyapp/android/utils/VersionHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/UpdateInfoListener;)V

    iput-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->versionHelper:Lnet/hockeyapp/android/utils/VersionHelper;

    .line 95
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->configureView()V

    .line 97
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/hockeyapp/android/tasks/DownloadFileTask;

    iput-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->downloadTask:Lnet/hockeyapp/android/tasks/DownloadFileTask;

    .line 98
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->downloadTask:Lnet/hockeyapp/android/tasks/DownloadFileTask;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->downloadTask:Lnet/hockeyapp/android/tasks/DownloadFileTask;

    invoke-virtual {v0, p0}, Lnet/hockeyapp/android/tasks/DownloadFileTask;->attach(Landroid/content/Context;)V

    .line 101
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 338
    packed-switch p1, :pswitch_data_0

    .line 353
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 340
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "An error has occured"

    .line 341
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 342
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Error"

    .line 343
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    .line 344
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lnet/hockeyapp/android/UpdateActivity$5;

    invoke-direct {v2, p0}, Lnet/hockeyapp/android/UpdateActivity$5;-><init>(Lnet/hockeyapp/android/UpdateActivity;)V

    .line 345
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 350
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 338
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 358
    packed-switch p1, :pswitch_data_0

    .line 372
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p2

    .line 360
    check-cast v0, Landroid/app/AlertDialog;

    .line 361
    .local v0, "messageDialogError":Landroid/app/AlertDialog;
    iget-object v1, p0, Lnet/hockeyapp/android/UpdateActivity;->error:Lnet/hockeyapp/android/objects/ErrorObject;

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Lnet/hockeyapp/android/UpdateActivity;->error:Lnet/hockeyapp/android/objects/ErrorObject;

    invoke-virtual {v1}, Lnet/hockeyapp/android/objects/ErrorObject;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 367
    :cond_0
    const-string v1, "An unknown error has occured."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 358
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->downloadTask:Lnet/hockeyapp/android/tasks/DownloadFileTask;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->downloadTask:Lnet/hockeyapp/android/tasks/DownloadFileTask;

    invoke-virtual {v0}, Lnet/hockeyapp/android/tasks/DownloadFileTask;->detach()V

    .line 165
    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->downloadTask:Lnet/hockeyapp/android/tasks/DownloadFileTask;

    return-object v0
.end method

.method protected startDownloadTask()V
    .locals 3

    .prologue
    .line 174
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/UpdateActivity;->startDownloadTask(Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method protected startDownloadTask(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 185
    new-instance v0, Lnet/hockeyapp/android/UpdateActivity$2;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/UpdateActivity$2;-><init>(Lnet/hockeyapp/android/UpdateActivity;)V

    invoke-virtual {p0, p1, v0}, Lnet/hockeyapp/android/UpdateActivity;->createDownloadTask(Ljava/lang/String;Lnet/hockeyapp/android/listeners/DownloadFileListener;)V

    .line 209
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->downloadTask:Lnet/hockeyapp/android/tasks/DownloadFileTask;

    invoke-static {v0}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 210
    return-void
.end method
