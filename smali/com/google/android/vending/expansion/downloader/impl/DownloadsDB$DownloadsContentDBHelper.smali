.class public Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DownloadsDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DownloadsContentDBHelper"
.end annotation


# static fields
.field private static final sSchemas:[[[Ljava/lang/String;

.field private static final sTables:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 169
    new-array v0, v4, [[[Ljava/lang/String;

    sget-object v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadColumns;->SCHEMA:[[Ljava/lang/String;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$MetadataColumns;->SCHEMA:[[Ljava/lang/String;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;->sSchemas:[[[Ljava/lang/String;

    .line 173
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "DownloadColumns"

    aput-object v1, v0, v2

    const-string v1, "MetadataColumns"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;->sTables:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 139
    const-string v0, "DownloadsDB"

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 140
    return-void
.end method

.method private createTableQueryFromArray(Ljava/lang/String;[[Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "paramString"    # Ljava/lang/String;
    .param p2, "paramArrayOfString"    # [[Ljava/lang/String;

    .prologue
    const/16 v5, 0x20

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .local v3, "localStringBuilder":Ljava/lang/StringBuilder;
    const-string v4, "CREATE TABLE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    array-length v1, p2

    .line 149
    .local v1, "i":I
    const/4 v2, 0x0

    .line 150
    .local v2, "j":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 151
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 153
    const-string v4, ");"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 156
    :cond_0
    aget-object v0, p2, v2

    .line 157
    .local v0, "arrayOfString":[Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .param p1, "paramSQLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 182
    sget-object v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;->sTables:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 184
    .local v4, "table":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DROP TABLE IF EXISTS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :catch_0
    move-exception v3

    .line 186
    .local v3, "localException":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 189
    .end local v3    # "localException":Ljava/lang/Exception;
    .end local v4    # "table":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .param p1, "paramSQLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 197
    sget-object v4, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;->sSchemas:[[[Ljava/lang/String;

    array-length v2, v4

    .line 198
    .local v2, "numSchemas":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 200
    :try_start_0
    sget-object v4, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;->sSchemas:[[[Ljava/lang/String;

    aget-object v3, v4, v0

    check-cast v3, [[Ljava/lang/String;

    .line 201
    .local v3, "schema":[[Ljava/lang/String;
    sget-object v4, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;->sTables:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-direct {p0, v4, v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;->createTableQueryFromArray(Ljava/lang/String;[[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    .end local v3    # "schema":[[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 205
    .local v1, "localException":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 208
    .end local v1    # "localException":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "paramSQLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "paramInt1"    # I
    .param p3, "paramInt2"    # I

    .prologue
    .line 212
    const-class v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 216
    invoke-virtual {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 217
    return-void
.end method
