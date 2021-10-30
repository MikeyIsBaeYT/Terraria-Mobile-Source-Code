.class public Lnet/hockeyapp/android/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static ANDROID_VERSION:Ljava/lang/String; = null

.field public static APP_PACKAGE:Ljava/lang/String; = null

.field public static APP_VERSION:Ljava/lang/String; = null

.field public static APP_VERSION_NAME:Ljava/lang/String; = null

.field public static final BASE_URL:Ljava/lang/String; = "https://sdk.hockeyapp.net/"

.field public static CRASH_IDENTIFIER:Ljava/lang/String; = null

.field public static FILES_PATH:Ljava/lang/String; = null

.field public static PHONE_MANUFACTURER:Ljava/lang/String; = null

.field public static PHONE_MODEL:Ljava/lang/String; = null

.field public static final SDK_NAME:Ljava/lang/String; = "HockeySDK"

.field public static final SDK_VERSION:Ljava/lang/String; = "3.5.0"

.field public static final TAG:Ljava/lang/String; = "HockeyApp"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    sput-object v0, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    .line 64
    sput-object v0, Lnet/hockeyapp/android/Constants;->APP_VERSION:Ljava/lang/String;

    .line 69
    sput-object v0, Lnet/hockeyapp/android/Constants;->APP_VERSION_NAME:Ljava/lang/String;

    .line 74
    sput-object v0, Lnet/hockeyapp/android/Constants;->APP_PACKAGE:Ljava/lang/String;

    .line 79
    sput-object v0, Lnet/hockeyapp/android/Constants;->ANDROID_VERSION:Ljava/lang/String;

    .line 84
    sput-object v0, Lnet/hockeyapp/android/Constants;->PHONE_MODEL:Ljava/lang/String;

    .line 89
    sput-object v0, Lnet/hockeyapp/android/Constants;->PHONE_MANUFACTURER:Ljava/lang/String;

    .line 94
    sput-object v0, Lnet/hockeyapp/android/Constants;->CRASH_IDENTIFIER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytesToHex([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .prologue
    .line 267
    const-string v5, "0123456789ABCDEF"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 268
    .local v0, "HEX_ARRAY":[C
    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    new-array v1, v5, [C

    .line 269
    .local v1, "hex":[C
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    array-length v5, p0

    if-ge v2, v5, :cond_0

    .line 270
    aget-byte v5, p0, v2

    and-int/lit16 v4, v5, 0xff

    .line 271
    .local v4, "value":I
    mul-int/lit8 v5, v2, 0x2

    ushr-int/lit8 v6, v4, 0x4

    aget-char v6, v0, v6

    aput-char v6, v1, v5

    .line 272
    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    and-int/lit8 v6, v4, 0xf

    aget-char v6, v0, v6

    aput-char v6, v1, v5

    .line 269
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 274
    .end local v4    # "value":I
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    .line 275
    .local v3, "result":Ljava/lang/String;
    const-string v5, "(\\w{8})(\\w{4})(\\w{4})(\\w{4})(\\w{12})"

    const-string v6, "$1-$2-$3-$4-$5"

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static createSalt(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "fingerprint":Ljava/lang/String;
    const-string v1, ""

    .line 249
    .local v1, "serial":Ljava/lang/String;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_0

    .line 251
    :try_start_0
    const-class v2, Landroid/os/Build;

    const-string v3, "SERIAL"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 257
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 253
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getHockeyAppStorageDir()Ljava/io/File;
    .locals 4

    .prologue
    .line 138
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 140
    .local v1, "externalStorage":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "HockeyApp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 142
    return-object v0
.end method

.method private static loadBuildNumber(Landroid/content/Context;Landroid/content/pm/PackageManager;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v3, 0x0

    .line 204
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {p1, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 205
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 206
    .local v2, "metaData":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 207
    const-string v4, "buildNumber"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 215
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "metaData":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return v3

    .line 210
    :catch_0
    move-exception v1

    .line 211
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "HockeyApp"

    const-string v5, "Exception thrown when accessing the application info:"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static loadCrashIdentifier(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "android_id"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "deviceIdentifier":Ljava/lang/String;
    sget-object v4, Lnet/hockeyapp/android/Constants;->APP_PACKAGE:Ljava/lang/String;

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    .line 226
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lnet/hockeyapp/android/Constants;->APP_PACKAGE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Lnet/hockeyapp/android/Constants;->createSalt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "combined":Ljava/lang/String;
    :try_start_0
    const-string v4, "SHA-1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 229
    .local v3, "digest":Ljava/security/MessageDigest;
    const-string v4, "UTF-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 230
    .local v0, "bytes":[B
    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v3, v0, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 231
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 233
    invoke-static {v0}, Lnet/hockeyapp/android/Constants;->bytesToHex([B)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lnet/hockeyapp/android/Constants;->CRASH_IDENTIFIER:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .end local v0    # "bytes":[B
    .end local v1    # "combined":Ljava/lang/String;
    .end local v3    # "digest":Ljava/security/MessageDigest;
    :cond_0
    :goto_0
    return-void

    .line 235
    .restart local v1    # "combined":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private static loadFilesPath(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    if-eqz p0, :cond_0

    .line 154
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 158
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "HockeyApp"

    const-string v3, "Exception thrown when accessing the files dir:"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static loadFromContext(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lnet/hockeyapp/android/Constants;->ANDROID_VERSION:Ljava/lang/String;

    .line 124
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lnet/hockeyapp/android/Constants;->PHONE_MODEL:Ljava/lang/String;

    .line 125
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lnet/hockeyapp/android/Constants;->PHONE_MANUFACTURER:Ljava/lang/String;

    .line 127
    invoke-static {p0}, Lnet/hockeyapp/android/Constants;->loadFilesPath(Landroid/content/Context;)V

    .line 128
    invoke-static {p0}, Lnet/hockeyapp/android/Constants;->loadPackageData(Landroid/content/Context;)V

    .line 129
    invoke-static {p0}, Lnet/hockeyapp/android/Constants;->loadCrashIdentifier(Landroid/content/Context;)V

    .line 130
    return-void
.end method

.method private static loadPackageData(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 176
    if-eqz p0, :cond_0

    .line 178
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 179
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 180
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sput-object v4, Lnet/hockeyapp/android/Constants;->APP_PACKAGE:Ljava/lang/String;

    .line 181
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lnet/hockeyapp/android/Constants;->APP_VERSION:Ljava/lang/String;

    .line 182
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v4, Lnet/hockeyapp/android/Constants;->APP_VERSION_NAME:Ljava/lang/String;

    .line 184
    invoke-static {p0, v3}, Lnet/hockeyapp/android/Constants;->loadBuildNumber(Landroid/content/Context;Landroid/content/pm/PackageManager;)I

    move-result v0

    .line 185
    .local v0, "buildNumber":I
    if-eqz v0, :cond_0

    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v0, v4, :cond_0

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lnet/hockeyapp/android/Constants;->APP_VERSION:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v0    # "buildNumber":I
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "HockeyApp"

    const-string v5, "Exception thrown when accessing the package info:"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
