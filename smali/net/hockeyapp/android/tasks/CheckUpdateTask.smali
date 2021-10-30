.class public Lnet/hockeyapp/android/tasks/CheckUpdateTask;
.super Landroid/os/AsyncTask;
.source "CheckUpdateTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# static fields
.field protected static final APK:Ljava/lang/String; = "apk"

.field protected static final INTENT_EXTRA_JSON:Ljava/lang/String; = "json"

.field protected static final INTENT_EXTRA_URL:Ljava/lang/String; = "url"

.field private static final MAX_NUMBER_OF_VERSIONS:I = 0x19


# instance fields
.field protected appIdentifier:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field protected listener:Lnet/hockeyapp/android/UpdateManagerListener;

.field protected mandatory:Ljava/lang/Boolean;

.field protected urlString:Ljava/lang/String;

.field private usageTime:J


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .locals 1
    .param p2, "urlString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<+",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<+Landroid/content/Context;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "urlString"    # Ljava/lang/String;
    .param p3, "appIdentifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<+",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<+Landroid/content/Context;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;)V
    .locals 4
    .param p2, "urlString"    # Ljava/lang/String;
    .param p3, "appIdentifier"    # Ljava/lang/String;
    .param p4, "listener"    # Lnet/hockeyapp/android/UpdateManagerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<+",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lnet/hockeyapp/android/UpdateManagerListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<+Landroid/content/Context;>;"
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 65
    iput-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->urlString:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->appIdentifier:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->context:Landroid/content/Context;

    .line 69
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->mandatory:Ljava/lang/Boolean;

    .line 71
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->usageTime:J

    .line 82
    iput-object p3, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->appIdentifier:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->urlString:Ljava/lang/String;

    .line 84
    iput-object p4, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->listener:Lnet/hockeyapp/android/UpdateManagerListener;

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "ctx":Landroid/content/Context;
    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ctx":Landroid/content/Context;
    check-cast v0, Landroid/content/Context;

    .line 91
    .restart local v0    # "ctx":Landroid/content/Context;
    :cond_0
    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->context:Landroid/content/Context;

    .line 93
    invoke-static {v0}, Lnet/hockeyapp/android/Tracking;->getUsageTime(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->usageTime:J

    .line 94
    invoke-static {v0}, Lnet/hockeyapp/android/Constants;->loadFromContext(Landroid/content/Context;)V

    .line 96
    :cond_1
    return-void
.end method

.method private static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 265
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v5, 0x400

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 266
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 270
    .local v1, "line":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 271
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 285
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 279
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 281
    :catch_1
    move-exception v0

    .line 282
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 281
    :catch_2
    move-exception v0

    .line 282
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 278
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 279
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 283
    :goto_2
    throw v4

    .line 281
    :catch_3
    move-exception v0

    .line 282
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private encodeParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 241
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 245
    :goto_0
    return-object v1

    .line 243
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    goto :goto_0
.end method

.method private findNewVersion(Lorg/json/JSONArray;I)Z
    .locals 12
    .param p1, "json"    # Lorg/json/JSONArray;
    .param p2, "versionCode"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 161
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_6

    .line 162
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 164
    .local v1, "entry":Lorg/json/JSONObject;
    const-string v8, "version"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    if-le v8, p2, :cond_2

    move v3, v6

    .line 165
    .local v3, "largerVersionCode":Z
    :goto_1
    const-string v8, "version"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, p2, :cond_3

    iget-object v8, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->context:Landroid/content/Context;

    const-string v9, "timestamp"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v8, v10, v11}, Lnet/hockeyapp/android/utils/VersionHelper;->isNewerThanLastUpdateTime(Landroid/content/Context;J)Z

    move-result v8

    if-eqz v8, :cond_3

    move v5, v6

    .line 166
    .local v5, "newerApkFile":Z
    :goto_2
    const-string v8, "minimum_os_version"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v9}, Lnet/hockeyapp/android/utils/VersionHelper;->mapGoogleVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/hockeyapp/android/utils/VersionHelper;->compareVersionStrings(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-gtz v8, :cond_4

    move v4, v6

    .line 168
    .local v4, "minRequirementsMet":Z
    :goto_3
    if-nez v3, :cond_0

    if-eqz v5, :cond_5

    :cond_0
    if-eqz v4, :cond_5

    .line 169
    const-string v8, "mandatory"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 170
    const-string v8, "mandatory"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->mandatory:Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v1    # "entry":Lorg/json/JSONObject;
    .end local v3    # "largerVersionCode":Z
    .end local v4    # "minRequirementsMet":Z
    .end local v5    # "newerApkFile":Z
    :cond_1
    :goto_4
    return v6

    .restart local v1    # "entry":Lorg/json/JSONObject;
    :cond_2
    move v3, v7

    .line 164
    goto :goto_1

    .restart local v3    # "largerVersionCode":Z
    :cond_3
    move v5, v7

    .line 165
    goto :goto_2

    .restart local v5    # "newerApkFile":Z
    :cond_4
    move v4, v7

    .line 166
    goto :goto_3

    .line 161
    .restart local v4    # "minRequirementsMet":Z
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "entry":Lorg/json/JSONObject;
    .end local v3    # "largerVersionCode":Z
    .end local v4    # "minRequirementsMet":Z
    .end local v5    # "newerApkFile":Z
    :cond_6
    move v6, v7

    .line 176
    goto :goto_4

    .line 178
    :catch_0
    move-exception v0

    .local v0, "e":Lorg/json/JSONException;
    move v6, v7

    .line 179
    goto :goto_4
.end method

.method private limitResponseSize(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 4
    .param p1, "json"    # Lorg/json/JSONArray;

    .prologue
    .line 184
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 185
    .local v1, "result":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/16 v3, 0x19

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 187
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_0
    return-object v1

    .line 189
    :catch_0
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public attach(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<+",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<+Landroid/content/Context;>;"
    const/4 v0, 0x0

    .line 100
    .local v0, "ctx":Landroid/content/Context;
    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ctx":Landroid/content/Context;
    check-cast v0, Landroid/content/Context;

    .line 104
    .restart local v0    # "ctx":Landroid/content/Context;
    :cond_0
    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->context:Landroid/content/Context;

    .line 106
    invoke-static {v0}, Lnet/hockeyapp/android/Constants;->loadFromContext(Landroid/content/Context;)V

    .line 108
    :cond_1
    return-void
.end method

.method protected cleanUp()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 210
    iput-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->urlString:Ljava/lang/String;

    .line 211
    iput-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->appIdentifier:Ljava/lang/String;

    .line 212
    return-void
.end method

.method protected createConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 151
    .local v0, "connection":Ljava/net/URLConnection;
    const-string v1, "User-Agent"

    const-string v2, "HockeySDK/Android"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-gt v1, v2, :cond_0

    .line 154
    const-string v1, "connection"

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_0
    return-object v0
.end method

.method public detach()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->context:Landroid/content/Context;

    .line 112
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->doInBackground([Ljava/lang/Void;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/json/JSONArray;
    .locals 8
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 121
    :try_start_0
    invoke-virtual {p0}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->getVersionCode()I

    move-result v6

    .line 123
    .local v6, "versionCode":I
    new-instance v3, Lorg/json/JSONArray;

    iget-object v7, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->context:Landroid/content/Context;

    invoke-static {v7}, Lnet/hockeyapp/android/utils/VersionCache;->getVersionInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 124
    .local v3, "json":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->getCachingEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0, v3, v6}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->findNewVersion(Lorg/json/JSONArray;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 146
    .end local v3    # "json":Lorg/json/JSONArray;
    .end local v6    # "versionCode":I
    :goto_0
    return-object v3

    .line 128
    .restart local v3    # "json":Lorg/json/JSONArray;
    .restart local v6    # "versionCode":I
    :cond_0
    new-instance v5, Ljava/net/URL;

    const-string v7, "json"

    invoke-virtual {p0, v7}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->getURLString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 129
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {p0, v5}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->createConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    .line 130
    .local v0, "connection":Ljava/net/URLConnection;
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 132
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 133
    .local v2, "inputStream":Ljava/io/InputStream;
    invoke-static {v2}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "jsonString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 136
    new-instance v3, Lorg/json/JSONArray;

    .end local v3    # "json":Lorg/json/JSONArray;
    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 137
    .restart local v3    # "json":Lorg/json/JSONArray;
    invoke-direct {p0, v3, v6}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->findNewVersion(Lorg/json/JSONArray;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 138
    invoke-direct {p0, v3}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->limitResponseSize(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 139
    goto :goto_0

    .line 142
    .end local v0    # "connection":Ljava/net/URLConnection;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "json":Lorg/json/JSONArray;
    .end local v4    # "jsonString":Ljava/lang/String;
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "versionCode":I
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected getCachingEnabled()Z
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x1

    return v0
.end method

.method protected getURLString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->urlString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string v2, "api/2/apps/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    iget-object v2, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->appIdentifier:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->appIdentifier:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "?format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget-object v2, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "deviceIdentifier":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&udid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_0
    const-string v2, "&os=Android"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&os_version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lnet/hockeyapp/android/Constants;->ANDROID_VERSION:Ljava/lang/String;

    invoke-direct {p0, v3}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lnet/hockeyapp/android/Constants;->PHONE_MODEL:Ljava/lang/String;

    invoke-direct {p0, v3}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&oem="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lnet/hockeyapp/android/Constants;->PHONE_MANUFACTURER:Ljava/lang/String;

    invoke-direct {p0, v3}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&app_version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lnet/hockeyapp/android/Constants;->APP_VERSION:Ljava/lang/String;

    invoke-direct {p0, v3}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&sdk="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "HockeySDK"

    invoke-direct {p0, v3}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&sdk_version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "3.5.0"

    invoke-direct {p0, v3}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&lang="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&usage_time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->usageTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 218
    .end local v1    # "deviceIdentifier":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method protected getVersionCode()I
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lnet/hockeyapp/android/Constants;->APP_VERSION:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 58
    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->onPostExecute(Lorg/json/JSONArray;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONArray;)V
    .locals 2
    .param p1, "updateInfo"    # Lorg/json/JSONArray;

    .prologue
    .line 197
    if-eqz p1, :cond_1

    .line 198
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->listener:Lnet/hockeyapp/android/UpdateManagerListener;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->listener:Lnet/hockeyapp/android/UpdateManagerListener;

    const-string v1, "apk"

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->getURLString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lnet/hockeyapp/android/UpdateManagerListener;->onUpdateAvailable(Lorg/json/JSONArray;Ljava/lang/String;)V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->listener:Lnet/hockeyapp/android/UpdateManagerListener;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->listener:Lnet/hockeyapp/android/UpdateManagerListener;

    invoke-virtual {v0}, Lnet/hockeyapp/android/UpdateManagerListener;->onNoUpdateAvailable()V

    goto :goto_0
.end method
