.class public Lnet/hockeyapp/android/UpdateFragment;
.super Landroid/app/DialogFragment;
.source "UpdateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lnet/hockeyapp/android/UpdateInfoListener;


# instance fields
.field private downloadTask:Lnet/hockeyapp/android/tasks/DownloadFileTask;

.field private urlString:Ljava/lang/String;

.field private versionHelper:Lnet/hockeyapp/android/utils/VersionHelper;

.field private versionInfo:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnet/hockeyapp/android/UpdateFragment;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lnet/hockeyapp/android/UpdateFragment;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/UpdateFragment;->startDownloadTask(Landroid/app/Activity;)V

    return-void
.end method

.method public static newInstance(Lorg/json/JSONArray;Ljava/lang/String;)Lnet/hockeyapp/android/UpdateFragment;
    .locals 4
    .param p0, "versionInfo"    # Lorg/json/JSONArray;
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    .line 91
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 92
    .local v1, "state":Landroid/os/Bundle;
    const-string v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v2, "versionInfo"

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance v0, Lnet/hockeyapp/android/UpdateFragment;

    invoke-direct {v0}, Lnet/hockeyapp/android/UpdateFragment;-><init>()V

    .line 96
    .local v0, "fragment":Lnet/hockeyapp/android/UpdateFragment;
    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/UpdateFragment;->setArguments(Landroid/os/Bundle;)V

    .line 97
    return-object v0
.end method

.method private startDownloadTask(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 187
    new-instance v0, Lnet/hockeyapp/android/tasks/DownloadFileTask;

    iget-object v1, p0, Lnet/hockeyapp/android/UpdateFragment;->urlString:Ljava/lang/String;

    new-instance v2, Lnet/hockeyapp/android/UpdateFragment$2;

    invoke-direct {v2, p0, p1}, Lnet/hockeyapp/android/UpdateFragment$2;-><init>(Lnet/hockeyapp/android/UpdateFragment;Landroid/app/Activity;)V

    invoke-direct {v0, p1, v1, v2}, Lnet/hockeyapp/android/tasks/DownloadFileTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/listeners/DownloadFileListener;)V

    iput-object v0, p0, Lnet/hockeyapp/android/UpdateFragment;->downloadTask:Lnet/hockeyapp/android/tasks/DownloadFileTask;

    .line 208
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateFragment;->downloadTask:Lnet/hockeyapp/android/tasks/DownloadFileTask;

    invoke-static {v0}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 209
    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 236
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 239
    .local v0, "activity":Landroid/app/Activity;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 240
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 241
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 244
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v4

    .line 243
    :catch_0
    move-exception v2

    .line 244
    .local v2, "exception":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, ""

    goto :goto_0
.end method

.method public getCurrentVersionCode()I
    .locals 4

    .prologue
    .line 217
    const/4 v0, -0x1

    .line 220
    .local v0, "currentVersionCode":I
    :try_start_0
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return v0

    .line 224
    :catch_0
    move-exception v1

    goto :goto_0

    .line 222
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public getLayoutView()Landroid/view/View;
    .locals 4

    .prologue
    .line 254
    new-instance v0, Lnet/hockeyapp/android/views/UpdateView;

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/hockeyapp/android/views/UpdateView;-><init>(Landroid/content/Context;ZZ)V

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 178
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/hockeyapp/android/UpdateFragment;->startDownloadTask(Landroid/app/Activity;)V

    .line 179
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateFragment;->dismiss()V

    .line 180
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    :try_start_0
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/hockeyapp/android/UpdateFragment;->urlString:Ljava/lang/String;

    .line 113
    new-instance v1, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "versionInfo"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnet/hockeyapp/android/UpdateFragment;->versionInfo:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    const/4 v1, 0x1

    const v2, 0x1030073

    invoke-virtual {p0, v1, v2}, Lnet/hockeyapp/android/UpdateFragment;->setStyle(II)V

    .line 121
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateFragment;->dismiss()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 19
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 131
    invoke-virtual/range {p0 .. p0}, Lnet/hockeyapp/android/UpdateFragment;->getLayoutView()Landroid/view/View;

    move-result-object v17

    .line 133
    .local v17, "view":Landroid/view/View;
    new-instance v3, Lnet/hockeyapp/android/utils/VersionHelper;

    invoke-virtual/range {p0 .. p0}, Lnet/hockeyapp/android/UpdateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/hockeyapp/android/UpdateFragment;->versionInfo:Lorg/json/JSONArray;

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v3, v4, v5, v0}, Lnet/hockeyapp/android/utils/VersionHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/UpdateInfoListener;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lnet/hockeyapp/android/UpdateFragment;->versionHelper:Lnet/hockeyapp/android/utils/VersionHelper;

    .line 135
    const/16 v3, 0x1002

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 136
    .local v12, "nameLabel":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lnet/hockeyapp/android/UpdateFragment;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const/16 v3, 0x1003

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 139
    .local v15, "versionLabel":Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/hockeyapp/android/UpdateFragment;->versionHelper:Lnet/hockeyapp/android/utils/VersionHelper;

    invoke-virtual {v4}, Lnet/hockeyapp/android/utils/VersionHelper;->getVersionString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 140
    .local v16, "versionString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hockeyapp/android/UpdateFragment;->versionHelper:Lnet/hockeyapp/android/utils/VersionHelper;

    invoke-virtual {v3}, Lnet/hockeyapp/android/utils/VersionHelper;->getFileDateString()Ljava/lang/String;

    move-result-object v11

    .line 142
    .local v11, "fileDate":Ljava/lang/String;
    const-string v10, "Unknown size"

    .line 143
    .local v10, "appSizeString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hockeyapp/android/UpdateFragment;->versionHelper:Lnet/hockeyapp/android/utils/VersionHelper;

    invoke-virtual {v3}, Lnet/hockeyapp/android/utils/VersionHelper;->getFileSizeBytes()J

    move-result-wide v8

    .line 144
    .local v8, "appSize":J
    const-wide/16 v4, 0x0

    cmp-long v3, v8, v4

    if-ltz v3, :cond_0

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%.2f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    long-to-float v7, v8

    const/high16 v18, 0x49800000    # 1048576.0f

    div-float v7, v7, v18

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

    .line 160
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

    .line 162
    const/16 v3, 0x1004

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    .line 163
    .local v14, "updateButton":Landroid/widget/Button;
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    const/16 v3, 0x1005

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 166
    .local v2, "webView":Landroid/webkit/WebView;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 167
    invoke-virtual {v2}, Landroid/webkit/WebView;->destroyDrawingCache()V

    .line 168
    const-string v3, "https://sdk.hockeyapp.net/"

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/hockeyapp/android/UpdateFragment;->versionHelper:Lnet/hockeyapp/android/utils/VersionHelper;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lnet/hockeyapp/android/utils/VersionHelper;->getReleaseNotes(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "text/html"

    const-string v6, "utf-8"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-object v17

    .line 148
    .end local v2    # "webView":Landroid/webkit/WebView;
    .end local v14    # "updateButton":Landroid/widget/Button;
    :cond_0
    new-instance v13, Lnet/hockeyapp/android/tasks/GetFileSizeTask;

    invoke-virtual/range {p0 .. p0}, Lnet/hockeyapp/android/UpdateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/hockeyapp/android/UpdateFragment;->urlString:Ljava/lang/String;

    new-instance v5, Lnet/hockeyapp/android/UpdateFragment$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v5, v0, v15, v1, v11}, Lnet/hockeyapp/android/UpdateFragment$1;-><init>(Lnet/hockeyapp/android/UpdateFragment;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v13, v3, v4, v5}, Lnet/hockeyapp/android/tasks/GetFileSizeTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/listeners/DownloadFileListener;)V

    .line 158
    .local v13, "task":Lnet/hockeyapp/android/tasks/GetFileSizeTask;
    invoke-static {v13}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    goto :goto_0
.end method
