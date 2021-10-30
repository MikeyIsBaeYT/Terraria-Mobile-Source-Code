.class public final Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
.super Ljava/lang/Object;
.source "ZipResourceFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/expansion/zipfile/ZipResourceFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ZipEntryRO"
.end annotation


# instance fields
.field public mCRC32:J

.field public mCompressedLength:J

.field public final mFile:Ljava/io/File;

.field public final mFileName:Ljava/lang/String;

.field public mLocalHdrOffset:J

.field public mMethod:I

.field public mOffset:J

.field public mUncompressedLength:J

.field public mWhenModified:J

.field public final mZipFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "zipFileName"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mOffset:J

    .line 102
    iput-object p3, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    .line 103
    iput-object p1, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mZipFileName:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mFile:Ljava/io/File;

    .line 105
    return-void
.end method


# virtual methods
.method public getAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;
    .locals 7

    .prologue
    .line 160
    iget v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mMethod:I

    if-nez v0, :cond_0

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mFile:Ljava/io/File;

    const/high16 v2, 0x10000000

    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 164
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->getOffset()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mUncompressedLength:J

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-object v0

    .line 165
    :catch_0
    move-exception v6

    .line 167
    .local v6, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 170
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOffset()J
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mOffset:J

    return-wide v0
.end method

.method public getZipFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getZipFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mZipFileName:Ljava/lang/String;

    return-object v0
.end method

.method public isUncompressed()Z
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mMethod:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOffsetFromFile(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;)V
    .locals 10
    .param p1, "f"    # Ljava/io/RandomAccessFile;
    .param p2, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v8, 0xffff

    .line 122
    iget-wide v4, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mLocalHdrOffset:J

    .line 124
    .local v4, "localHdrOffset":J
    :try_start_0
    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 125
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 126
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    const v7, 0x4034b50

    if-eq v6, v7, :cond_0

    .line 127
    const-string v6, "zipro"

    const-string v7, "didn\'t find signature at start of lfh"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 138
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    return-void

    .line 130
    :cond_0
    const/16 v6, 0x1a

    :try_start_1
    invoke-virtual {p2, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    and-int v3, v6, v8

    .line 131
    .local v3, "nameLen":I
    const/16 v6, 0x1c

    invoke-virtual {p2, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    and-int v1, v6, v8

    .line 132
    .local v1, "extraLen":I
    const-wide/16 v6, 0x1e

    add-long/2addr v6, v4

    int-to-long v8, v3

    add-long/2addr v6, v8

    int-to-long v8, v1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mOffset:J
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 135
    .end local v1    # "extraLen":I
    .end local v3    # "nameLen":I
    :catch_1
    move-exception v2

    .line 136
    .local v2, "ioe":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
