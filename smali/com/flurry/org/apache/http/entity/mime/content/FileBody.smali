.class public Lcom/flurry/org/apache/http/entity/mime/content/FileBody;
.super Lcom/flurry/org/apache/http/entity/mime/content/AbstractContentBody;
.source "FileBody.java"


# instance fields
.field private final charset:Ljava/lang/String;

.field private final file:Ljava/io/File;

.field private final filename:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 81
    const-string v0, "application/octet-stream"

    invoke-direct {p0, p1, v0}, Lcom/flurry/org/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/flurry/org/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/lang/String;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/flurry/org/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "charset"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p3}, Lcom/flurry/org/apache/http/entity/mime/content/AbstractContentBody;-><init>(Ljava/lang/String;)V

    .line 56
    if-nez p1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    iput-object p1, p0, Lcom/flurry/org/apache/http/entity/mime/content/FileBody;->file:Ljava/io/File;

    .line 60
    if-eqz p2, :cond_1

    .line 61
    iput-object p2, p0, Lcom/flurry/org/apache/http/entity/mime/content/FileBody;->filename:Ljava/lang/String;

    .line 64
    :goto_0
    iput-object p4, p0, Lcom/flurry/org/apache/http/entity/mime/content/FileBody;->charset:Ljava/lang/String;

    .line 65
    return-void

    .line 63
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/apache/http/entity/mime/content/FileBody;->filename:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/flurry/org/apache/http/entity/mime/content/FileBody;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/flurry/org/apache/http/entity/mime/content/FileBody;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/flurry/org/apache/http/entity/mime/content/FileBody;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/flurry/org/apache/http/entity/mime/content/FileBody;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/flurry/org/apache/http/entity/mime/content/FileBody;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const-string v0, "binary"

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 98
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Output stream may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 100
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/flurry/org/apache/http/entity/mime/content/FileBody;->file:Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 102
    .local v0, "in":Ljava/io/InputStream;
    const/16 v3, 0x1000

    :try_start_0
    new-array v2, v3, [B

    .line 104
    .local v2, "tmp":[B
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "l":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 105
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 109
    .end local v1    # "l":I
    .end local v2    # "tmp":[B
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v3

    .line 107
    .restart local v1    # "l":I
    .restart local v2    # "tmp":[B
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 111
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;I)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/http/entity/mime/content/FileBody;->writeTo(Ljava/io/OutputStream;)V

    .line 94
    return-void
.end method
