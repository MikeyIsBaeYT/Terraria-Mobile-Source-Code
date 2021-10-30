.class public Lnet/hockeyapp/android/utils/VersionHelper;
.super Ljava/lang/Object;
.source "VersionHelper.java"


# instance fields
.field private currentVersionCode:I

.field private listener:Lnet/hockeyapp/android/UpdateInfoListener;

.field private newest:Lorg/json/JSONObject;

.field private sortedVersions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/UpdateInfoListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "infoJSON"    # Ljava/lang/String;
    .param p3, "listener"    # Lnet/hockeyapp/android/UpdateInfoListener;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p3, p0, Lnet/hockeyapp/android/utils/VersionHelper;->listener:Lnet/hockeyapp/android/UpdateInfoListener;

    .line 65
    invoke-direct {p0, p1, p2}, Lnet/hockeyapp/android/utils/VersionHelper;->loadVersions(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Lnet/hockeyapp/android/utils/VersionHelper;->sortVersions()V

    .line 67
    return-void
.end method

.method public static compareVersionStrings(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p0, "left"    # Ljava/lang/String;
    .param p1, "right"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v7, 0x0

    .line 274
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v5, v7

    .line 312
    :cond_1
    :goto_0
    return v5

    .line 280
    :cond_2
    :try_start_0
    new-instance v1, Ljava/util/Scanner;

    const-string v8, "\\-.*"

    const-string v9, ""

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 281
    .local v1, "leftScanner":Ljava/util/Scanner;
    new-instance v3, Ljava/util/Scanner;

    const-string v8, "\\-.*"

    const-string v9, ""

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 282
    .local v3, "rightScanner":Ljava/util/Scanner;
    const-string v8, "\\."

    invoke-virtual {v1, v8}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 283
    const-string v8, "\\."

    invoke-virtual {v3, v8}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 286
    :cond_3
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextInt()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v3}, Ljava/util/Scanner;->hasNextInt()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 287
    invoke-virtual {v1}, Ljava/util/Scanner;->nextInt()I

    move-result v2

    .line 288
    .local v2, "leftValue":I
    invoke-virtual {v3}, Ljava/util/Scanner;->nextInt()I

    move-result v4

    .line 289
    .local v4, "rightValue":I
    if-lt v2, v4, :cond_1

    .line 292
    if-le v2, v4, :cond_3

    move v5, v6

    .line 293
    goto :goto_0

    .line 298
    .end local v2    # "leftValue":I
    .end local v4    # "rightValue":I
    :cond_4
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextInt()Z

    move-result v8

    if-eqz v8, :cond_5

    move v5, v6

    .line 299
    goto :goto_0

    .line 302
    :cond_5
    invoke-virtual {v3}, Ljava/util/Scanner;->hasNextInt()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    move v5, v7

    .line 307
    goto :goto_0

    .line 310
    .end local v1    # "leftScanner":Ljava/util/Scanner;
    .end local v3    # "rightScanner":Ljava/util/Scanner;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v5, v7

    .line 312
    goto :goto_0
.end method

.method private static failSafeGetLongFromJSON(Lorg/json/JSONObject;Ljava/lang/String;J)J
    .locals 2
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 146
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 149
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .line 148
    .restart local p2    # "defaultValue":J
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Lorg/json/JSONException;
    goto :goto_0
.end method

.method private static failSafeGetStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 137
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 140
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 139
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Lorg/json/JSONException;
    goto :goto_0
.end method

.method private getRestoreButton(ILorg/json/JSONObject;)Ljava/lang/String;
    .locals 4
    .param p1, "count"    # I
    .param p2, "version"    # Lorg/json/JSONObject;

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-direct {p0, p2}, Lnet/hockeyapp/android/utils/VersionHelper;->getVersionID(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "versionID":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<a href=\'restore:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'  style=\'background: #c8c8c8; color: #000; display: block; float: right; padding: 7px; margin: 0px 10px 10px; text-decoration: none;\'>Restore</a>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getSeparator()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 178
    const-string v0, "<hr style=\'border-top: 1px solid #c8c8c8; border-bottom: 0px; margin: 40px 10px 0px 10px;\' />"

    return-object v0
.end method

.method private getVersionCode(Lorg/json/JSONObject;)I
    .locals 2
    .param p1, "version"    # Lorg/json/JSONObject;

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 228
    .local v0, "versionCode":I
    :try_start_0
    const-string v1, "version"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 232
    :goto_0
    return v0

    .line 230
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getVersionID(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .param p1, "version"    # Lorg/json/JSONObject;

    .prologue
    .line 193
    const-string v0, ""

    .line 195
    .local v0, "versionID":Ljava/lang/String;
    :try_start_0
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 199
    :goto_0
    return-object v0

    .line 197
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getVersionLine(ILorg/json/JSONObject;)Ljava/lang/String;
    .locals 6
    .param p1, "count"    # I
    .param p2, "version"    # Lorg/json/JSONObject;

    .prologue
    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .local v1, "result":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lnet/hockeyapp/android/utils/VersionHelper;->newest:Lorg/json/JSONObject;

    invoke-direct {p0, v4}, Lnet/hockeyapp/android/utils/VersionHelper;->getVersionCode(Lorg/json/JSONObject;)I

    move-result v0

    .line 206
    .local v0, "newestCode":I
    invoke-direct {p0, p2}, Lnet/hockeyapp/android/utils/VersionHelper;->getVersionCode(Lorg/json/JSONObject;)I

    move-result v2

    .line 207
    .local v2, "versionCode":I
    invoke-direct {p0, p2}, Lnet/hockeyapp/android/utils/VersionHelper;->getVersionName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "versionName":Ljava/lang/String;
    const-string v4, "<div style=\'padding: 20px 10px 10px;\'><strong>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    if-nez p1, :cond_1

    .line 211
    const-string v4, "Newest version:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_0
    :goto_0
    const-string v4, "</strong></div>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 214
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    if-eq v2, v0, :cond_0

    iget v4, p0, Lnet/hockeyapp/android/utils/VersionHelper;->currentVersionCode:I

    if-ne v2, v4, :cond_0

    .line 216
    const/4 v4, -0x1

    iput v4, p0, Lnet/hockeyapp/android/utils/VersionHelper;->currentVersionCode:I

    .line 217
    const-string v4, "[INSTALLED]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getVersionName(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .param p1, "version"    # Lorg/json/JSONObject;

    .prologue
    .line 236
    const-string v0, ""

    .line 238
    .local v0, "versionName":Ljava/lang/String;
    :try_start_0
    const-string v1, "shortversion"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 242
    :goto_0
    return-object v0

    .line 240
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getVersionNotes(ILorg/json/JSONObject;)Ljava/lang/String;
    .locals 4
    .param p1, "count"    # I
    .param p2, "version"    # Lorg/json/JSONObject;

    .prologue
    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .local v1, "result":Ljava/lang/StringBuilder;
    const-string v2, "notes"

    const-string v3, ""

    invoke-static {p2, v2, v3}, Lnet/hockeyapp/android/utils/VersionHelper;->failSafeGetStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "notes":Ljava/lang/String;
    const-string v2, "<div style=\'padding: 0px 10px;\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 251
    const-string v2, "<em>No information.</em>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    :goto_0
    const-string v2, "</div>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 254
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static isNewerThanLastUpdateTime(Landroid/content/Context;J)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timestamp"    # J

    .prologue
    const/4 v6, 0x0

    .line 325
    if-nez p0, :cond_1

    .line 342
    :cond_0
    :goto_0
    return v6

    .line 330
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 331
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 332
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 336
    .local v0, "appFile":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v10, 0x708

    add-long v4, v8, v10

    .line 338
    .local v4, "lastModified":J
    cmp-long v7, p1, v4

    if-lez v7, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    .line 340
    .end local v0    # "appFile":Ljava/lang/String;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "lastModified":J
    :catch_0
    move-exception v2

    .line 341
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private loadVersions(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "infoJSON"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 70
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    iput-object v8, p0, Lnet/hockeyapp/android/utils/VersionHelper;->newest:Lorg/json/JSONObject;

    .line 71
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lnet/hockeyapp/android/utils/VersionHelper;->sortedVersions:Ljava/util/ArrayList;

    .line 72
    iget-object v8, p0, Lnet/hockeyapp/android/utils/VersionHelper;->listener:Lnet/hockeyapp/android/UpdateInfoListener;

    invoke-interface {v8}, Lnet/hockeyapp/android/UpdateInfoListener;->getCurrentVersionCode()I

    move-result v8

    iput v8, p0, Lnet/hockeyapp/android/utils/VersionHelper;->currentVersionCode:I

    .line 75
    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 77
    .local v5, "versions":Lorg/json/JSONArray;
    iget-object v8, p0, Lnet/hockeyapp/android/utils/VersionHelper;->listener:Lnet/hockeyapp/android/UpdateInfoListener;

    invoke-interface {v8}, Lnet/hockeyapp/android/UpdateInfoListener;->getCurrentVersionCode()I

    move-result v4

    .line 78
    .local v4, "versionCode":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_4

    .line 79
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 80
    .local v0, "entry":Lorg/json/JSONObject;
    const-string v8, "version"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    if-le v8, v4, :cond_2

    move v2, v6

    .line 81
    .local v2, "largerVersionCode":Z
    :goto_1
    const-string v8, "version"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v4, :cond_3

    const-string v8, "timestamp"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lnet/hockeyapp/android/utils/VersionHelper;->isNewerThanLastUpdateTime(Landroid/content/Context;J)Z

    move-result v8

    if-eqz v8, :cond_3

    move v3, v6

    .line 83
    .local v3, "newerApkFile":Z
    :goto_2
    if-nez v2, :cond_0

    if-eqz v3, :cond_1

    .line 84
    :cond_0
    iput-object v0, p0, Lnet/hockeyapp/android/utils/VersionHelper;->newest:Lorg/json/JSONObject;

    .line 85
    const-string v8, "version"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 87
    :cond_1
    iget-object v8, p0, Lnet/hockeyapp/android/utils/VersionHelper;->sortedVersions:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "largerVersionCode":Z
    .end local v3    # "newerApkFile":Z
    :cond_2
    move v2, v7

    .line 80
    goto :goto_1

    .restart local v2    # "largerVersionCode":Z
    :cond_3
    move v3, v7

    .line 81
    goto :goto_2

    .line 92
    .end local v0    # "entry":Lorg/json/JSONObject;
    .end local v1    # "index":I
    .end local v2    # "largerVersionCode":Z
    .end local v4    # "versionCode":I
    .end local v5    # "versions":Lorg/json/JSONArray;
    :catch_0
    move-exception v6

    .line 94
    :cond_4
    :goto_3
    return-void

    .line 90
    :catch_1
    move-exception v6

    goto :goto_3
.end method

.method public static mapGoogleVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    .line 353
    if-eqz p0, :cond_0

    const-string v0, "L"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    :cond_0
    const-string p0, "5.0"

    .line 357
    .end local p0    # "version":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method private sortVersions()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lnet/hockeyapp/android/utils/VersionHelper;->sortedVersions:Ljava/util/ArrayList;

    new-instance v1, Lnet/hockeyapp/android/utils/VersionHelper$1;

    invoke-direct {v1, p0}, Lnet/hockeyapp/android/utils/VersionHelper$1;-><init>(Lnet/hockeyapp/android/utils/VersionHelper;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 112
    return-void
.end method


# virtual methods
.method public getFileDateString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 119
    iget-object v4, p0, Lnet/hockeyapp/android/utils/VersionHelper;->newest:Lorg/json/JSONObject;

    const-string v5, "timestamp"

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Lnet/hockeyapp/android/utils/VersionHelper;->failSafeGetLongFromJSON(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v2

    .line 120
    .local v2, "timestamp":J
    new-instance v0, Ljava/util/Date;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v2

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 121
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "dd.MM.yyyy"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 122
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getFileSizeBytes()J
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 126
    iget-object v3, p0, Lnet/hockeyapp/android/utils/VersionHelper;->newest:Lorg/json/JSONObject;

    const-string v4, "external"

    const-string v5, "false"

    invoke-static {v3, v4, v5}, Lnet/hockeyapp/android/utils/VersionHelper;->failSafeGetStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 127
    .local v2, "external":Z
    iget-object v3, p0, Lnet/hockeyapp/android/utils/VersionHelper;->newest:Lorg/json/JSONObject;

    const-string v4, "appsize"

    invoke-static {v3, v4, v6, v7}, Lnet/hockeyapp/android/utils/VersionHelper;->failSafeGetLongFromJSON(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v0

    .line 132
    .local v0, "appSize":J
    if-eqz v2, :cond_0

    cmp-long v3, v0, v6

    if-nez v3, :cond_0

    const-wide/16 v0, -0x1

    .end local v0    # "appSize":J
    :cond_0
    return-wide v0
.end method

.method public getReleaseNotes(Z)Ljava/lang/String;
    .locals 5
    .param p1, "showRestore"    # Z

    .prologue
    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .local v1, "result":Ljava/lang/StringBuilder;
    const-string v3, "<html>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v3, "<body style=\'padding: 0px 0px 20px 0px\'>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "count":I
    iget-object v3, p0, Lnet/hockeyapp/android/utils/VersionHelper;->sortedVersions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 160
    .local v2, "version":Lorg/json/JSONObject;
    if-lez v0, :cond_0

    .line 161
    invoke-direct {p0}, Lnet/hockeyapp/android/utils/VersionHelper;->getSeparator()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    if-eqz p1, :cond_0

    .line 163
    invoke-direct {p0, v0, v2}, Lnet/hockeyapp/android/utils/VersionHelper;->getRestoreButton(ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_0
    invoke-direct {p0, v0, v2}, Lnet/hockeyapp/android/utils/VersionHelper;->getVersionLine(ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-direct {p0, v0, v2}, Lnet/hockeyapp/android/utils/VersionHelper;->getVersionNotes(ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    add-int/lit8 v0, v0, 0x1

    .line 169
    goto :goto_0

    .line 171
    .end local v2    # "version":Lorg/json/JSONObject;
    :cond_1
    const-string v3, "</body>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v3, "</html>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getVersionString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/hockeyapp/android/utils/VersionHelper;->newest:Lorg/json/JSONObject;

    const-string v2, "shortversion"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lnet/hockeyapp/android/utils/VersionHelper;->failSafeGetStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/hockeyapp/android/utils/VersionHelper;->newest:Lorg/json/JSONObject;

    const-string v2, "version"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lnet/hockeyapp/android/utils/VersionHelper;->failSafeGetStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
