.class public abstract Lcom/android/vending/expansion/zipfile/APEZProvider;
.super Landroid/content/ContentProvider;
.source "APEZProvider.java"


# static fields
.field public static final ALL_FIELDS:[Ljava/lang/String;

.field public static final ALL_FIELDS_INT:[I

.field public static final COMPLEN_IDX:I = 0x5

.field public static final COMPRESSEDLEN:Ljava/lang/String; = "ZCOL"

.field public static final COMPRESSIONTYPE:Ljava/lang/String; = "ZTYP"

.field public static final COMPTYPE_IDX:I = 0x7

.field public static final CRC32:Ljava/lang/String; = "ZCRC"

.field public static final CRC_IDX:I = 0x4

.field public static final FILEID:Ljava/lang/String; = "_id"

.field public static final FILEID_IDX:I = 0x0

.field public static final FILENAME:Ljava/lang/String; = "ZPFN"

.field public static final FILENAME_IDX:I = 0x1

.field public static final MODIFICATION:Ljava/lang/String; = "ZMOD"

.field public static final MOD_IDX:I = 0x3

.field private static final NO_FILE:Ljava/lang/String; = "N"

.field public static final UNCOMPLEN_IDX:I = 0x6

.field public static final UNCOMPRESSEDLEN:Ljava/lang/String; = "ZUNL"

.field public static final ZIPFILE:Ljava/lang/String; = "ZFIL"

.field public static final ZIPFILE_IDX:I = 0x2


# instance fields
.field private mAPKExtensionFile:Lcom/android/vending/expansion/zipfile/ZipResourceFile;

.field private mInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 68
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ZPFN"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ZFIL"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ZMOD"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ZCRC"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ZCOL"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ZUNL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ZTYP"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/vending/expansion/zipfile/APEZProvider;->ALL_FIELDS:[Ljava/lang/String;

    .line 88
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/vending/expansion/zipfile/APEZProvider;->ALL_FIELDS_INT:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private initIfNecessary()Z
    .locals 15

    .prologue
    .line 124
    iget-boolean v12, p0, Lcom/android/vending/expansion/zipfile/APEZProvider;->mInit:Z

    if-nez v12, :cond_4

    .line 125
    invoke-virtual {p0}, Lcom/android/vending/expansion/zipfile/APEZProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 126
    .local v1, "ctx":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 127
    .local v10, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/android/vending/expansion/zipfile/APEZProvider;->getAuthority()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x80

    invoke-virtual {v10, v12, v13}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v9

    .line 130
    .local v9, "pi":Landroid/content/pm/ProviderInfo;
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 137
    .local v6, "packInfo":Landroid/content/pm/PackageInfo;
    iget v0, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 138
    .local v0, "appVersionCode":I
    const/4 v11, 0x0

    .line 139
    .local v11, "resourceFiles":[Ljava/lang/String;
    iget-object v12, v9, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    if-eqz v12, :cond_2

    .line 140
    iget-object v12, v9, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    const-string v13, "mainVersion"

    invoke-virtual {v12, v13, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 141
    .local v5, "mainFileVersion":I
    iget-object v12, v9, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    const-string v13, "patchVersion"

    invoke-virtual {v12, v13, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 142
    .local v8, "patchFileVersion":I
    iget-object v12, v9, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    const-string v13, "mainFilename"

    const-string v14, "N"

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, "mainFileName":Ljava/lang/String;
    const-string v12, "N"

    if-eq v12, v4, :cond_0

    .line 144
    iget-object v12, v9, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    const-string v13, "patchFilename"

    const-string v14, "N"

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 145
    .local v7, "patchFileName":Ljava/lang/String;
    const-string v12, "N"

    if-eq v12, v7, :cond_1

    .line 146
    const/4 v12, 0x2

    new-array v11, v12, [Ljava/lang/String;

    .end local v11    # "resourceFiles":[Ljava/lang/String;
    const/4 v12, 0x0

    aput-object v4, v11, v12

    const/4 v12, 0x1

    aput-object v7, v11, v12

    .line 155
    .end local v4    # "mainFileName":Ljava/lang/String;
    .end local v7    # "patchFileName":Ljava/lang/String;
    .restart local v11    # "resourceFiles":[Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v11, :cond_3

    .line 156
    :try_start_1
    invoke-static {v1, v5, v8}, Lcom/android/vending/expansion/zipfile/APKExpansionSupport;->getAPKExpansionZipFile(Landroid/content/Context;II)Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    move-result-object v12

    iput-object v12, p0, Lcom/android/vending/expansion/zipfile/APEZProvider;->mAPKExtensionFile:Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    .line 160
    :goto_1
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/vending/expansion/zipfile/APEZProvider;->mInit:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 161
    const/4 v12, 0x1

    .line 166
    .end local v0    # "appVersionCode":I
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v5    # "mainFileVersion":I
    .end local v6    # "packInfo":Landroid/content/pm/PackageInfo;
    .end local v8    # "patchFileVersion":I
    .end local v9    # "pi":Landroid/content/pm/ProviderInfo;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v11    # "resourceFiles":[Ljava/lang/String;
    :goto_2
    return v12

    .line 131
    .restart local v1    # "ctx":Landroid/content/Context;
    .restart local v9    # "pi":Landroid/content/pm/ProviderInfo;
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    .line 132
    .local v3, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 133
    const/4 v12, 0x0

    goto :goto_2

    .line 148
    .end local v3    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "appVersionCode":I
    .restart local v4    # "mainFileName":Ljava/lang/String;
    .restart local v5    # "mainFileVersion":I
    .restart local v6    # "packInfo":Landroid/content/pm/PackageInfo;
    .restart local v7    # "patchFileName":Ljava/lang/String;
    .restart local v8    # "patchFileVersion":I
    .restart local v11    # "resourceFiles":[Ljava/lang/String;
    :cond_1
    const/4 v12, 0x1

    new-array v11, v12, [Ljava/lang/String;

    .end local v11    # "resourceFiles":[Ljava/lang/String;
    const/4 v12, 0x0

    aput-object v4, v11, v12

    .restart local v11    # "resourceFiles":[Ljava/lang/String;
    goto :goto_0

    .line 152
    .end local v4    # "mainFileName":Ljava/lang/String;
    .end local v5    # "mainFileVersion":I
    .end local v7    # "patchFileName":Ljava/lang/String;
    .end local v8    # "patchFileVersion":I
    :cond_2
    move v8, v0

    .restart local v8    # "patchFileVersion":I
    move v5, v0

    .restart local v5    # "mainFileVersion":I
    goto :goto_0

    .line 158
    :cond_3
    :try_start_2
    invoke-static {v11}, Lcom/android/vending/expansion/zipfile/APKExpansionSupport;->getResourceZipFile([Ljava/lang/String;)Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    move-result-object v12

    iput-object v12, p0, Lcom/android/vending/expansion/zipfile/APEZProvider;->mAPKExtensionFile:Lcom/android/vending/expansion/zipfile/ZipResourceFile;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 162
    :catch_1
    move-exception v2

    .line 163
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 166
    .end local v0    # "appVersionCode":I
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "mainFileVersion":I
    .end local v6    # "packInfo":Landroid/content/pm/PackageInfo;
    .end local v8    # "patchFileVersion":I
    .end local v9    # "pi":Landroid/content/pm/ProviderInfo;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v11    # "resourceFiles":[Ljava/lang/String;
    :cond_4
    const/4 v12, 0x0

    goto :goto_2
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-direct {p0}, Lcom/android/vending/expansion/zipfile/APEZProvider;->initIfNecessary()Z

    .line 190
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # [Ljava/lang/String;

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getAuthority()Ljava/lang/String;
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 112
    const-string v0, "vnd.android.cursor.item/asset"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/android/vending/expansion/zipfile/APEZProvider;->initIfNecessary()Z

    .line 178
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "path":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/android/vending/expansion/zipfile/APEZProvider;->mAPKExtensionFile:Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    invoke-virtual {v1, v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->getAssetFileDescriptor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/vending/expansion/zipfile/APEZProvider;->initIfNecessary()Z

    .line 197
    invoke-virtual {p0, p1, p2}, Lcom/android/vending/expansion/zipfile/APEZProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 198
    .local v0, "af":Landroid/content/res/AssetFileDescriptor;
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 201
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/android/vending/expansion/zipfile/APEZProvider;->initIfNecessary()Z

    .line 210
    iget-object v10, p0, Lcom/android/vending/expansion/zipfile/APEZProvider;->mAPKExtensionFile:Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    if-nez v10, :cond_1

    .line 211
    const/4 v10, 0x0

    new-array v9, v10, [Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    .line 216
    .local v9, "zipEntries":[Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    :goto_0
    if-nez p2, :cond_2

    .line 217
    sget-object v3, Lcom/android/vending/expansion/zipfile/APEZProvider;->ALL_FIELDS_INT:[I

    .line 218
    .local v3, "intProjection":[I
    sget-object p2, Lcom/android/vending/expansion/zipfile/APEZProvider;->ALL_FIELDS:[Ljava/lang/String;

    .line 244
    :cond_0
    new-instance v6, Landroid/database/MatrixCursor;

    array-length v10, v9

    invoke-direct {v6, p2, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 245
    .local v6, "mc":Landroid/database/MatrixCursor;
    array-length v4, v3

    .line 246
    .local v4, "len":I
    move-object v0, v9

    .local v0, "arr$":[Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v5, :cond_c

    aget-object v8, v0, v2

    .line 247
    .local v8, "zer":Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    invoke-virtual {v6}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v7

    .line 248
    .local v7, "rb":Landroid/database/MatrixCursor$RowBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v4, :cond_b

    .line 249
    aget v10, v3, v1

    packed-switch v10, :pswitch_data_0

    .line 248
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 213
    .end local v0    # "arr$":[Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    .end local v1    # "i":I
    .end local v2    # "i$":I
    .end local v3    # "intProjection":[I
    .end local v4    # "len":I
    .end local v5    # "len$":I
    .end local v6    # "mc":Landroid/database/MatrixCursor;
    .end local v7    # "rb":Landroid/database/MatrixCursor$RowBuilder;
    .end local v8    # "zer":Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    .end local v9    # "zipEntries":[Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    :cond_1
    iget-object v10, p0, Lcom/android/vending/expansion/zipfile/APEZProvider;->mAPKExtensionFile:Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    invoke-virtual {v10}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->getAllEntries()[Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    move-result-object v9

    .restart local v9    # "zipEntries":[Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    goto :goto_0

    .line 220
    :cond_2
    array-length v4, p2

    .line 221
    .restart local v4    # "len":I
    new-array v3, v4, [I

    .line 222
    .restart local v3    # "intProjection":[I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v4, :cond_0

    .line 223
    aget-object v10, p2, v1

    const-string v11, "_id"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 224
    const/4 v10, 0x0

    aput v10, v3, v1

    .line 222
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 225
    :cond_3
    aget-object v10, p2, v1

    const-string v11, "ZPFN"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 226
    const/4 v10, 0x1

    aput v10, v3, v1

    goto :goto_5

    .line 227
    :cond_4
    aget-object v10, p2, v1

    const-string v11, "ZFIL"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 228
    const/4 v10, 0x2

    aput v10, v3, v1

    goto :goto_5

    .line 229
    :cond_5
    aget-object v10, p2, v1

    const-string v11, "ZMOD"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 230
    const/4 v10, 0x3

    aput v10, v3, v1

    goto :goto_5

    .line 231
    :cond_6
    aget-object v10, p2, v1

    const-string v11, "ZCRC"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 232
    const/4 v10, 0x4

    aput v10, v3, v1

    goto :goto_5

    .line 233
    :cond_7
    aget-object v10, p2, v1

    const-string v11, "ZCOL"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 234
    const/4 v10, 0x5

    aput v10, v3, v1

    goto :goto_5

    .line 235
    :cond_8
    aget-object v10, p2, v1

    const-string v11, "ZUNL"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 236
    const/4 v10, 0x6

    aput v10, v3, v1

    goto :goto_5

    .line 237
    :cond_9
    aget-object v10, p2, v1

    const-string v11, "ZTYP"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 238
    const/4 v10, 0x7

    aput v10, v3, v1

    goto :goto_5

    .line 240
    :cond_a
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10}, Ljava/lang/RuntimeException;-><init>()V

    throw v10

    .line 251
    .restart local v0    # "arr$":[Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    .restart local v2    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "mc":Landroid/database/MatrixCursor;
    .restart local v7    # "rb":Landroid/database/MatrixCursor$RowBuilder;
    .restart local v8    # "zer":Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_3

    .line 254
    :pswitch_1
    iget-object v10, v8, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_3

    .line 257
    :pswitch_2
    invoke-virtual {v8}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->getZipFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_3

    .line 260
    :pswitch_3
    iget-wide v10, v8, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mWhenModified:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_3

    .line 263
    :pswitch_4
    iget-wide v10, v8, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mCRC32:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_3

    .line 266
    :pswitch_5
    iget-wide v10, v8, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mCompressedLength:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_3

    .line 269
    :pswitch_6
    iget-wide v10, v8, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mUncompressedLength:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_3

    .line 272
    :pswitch_7
    iget v10, v8, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mMethod:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_3

    .line 246
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 277
    .end local v1    # "i":I
    .end local v7    # "rb":Landroid/database/MatrixCursor$RowBuilder;
    .end local v8    # "zer":Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    :cond_c
    return-object v6

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 284
    const/4 v0, 0x0

    return v0
.end method
