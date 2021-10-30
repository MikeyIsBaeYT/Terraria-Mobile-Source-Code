.class Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;
.super Landroid/os/AsyncTask;
.source "AttachmentDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/tasks/AttachmentDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private bitmapOrientation:I

.field private final downloadJob:Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;

.field private dropFolder:Ljava/io/File;

.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;Landroid/os/Handler;)V
    .locals 1
    .param p1, "downloadJob"    # Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 166
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 167
    iput-object p1, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->downloadJob:Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;

    .line 168
    iput-object p2, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->handler:Landroid/os/Handler;

    .line 169
    invoke-static {}, Lnet/hockeyapp/android/Constants;->getHockeyAppStorageDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->dropFolder:Ljava/io/File;

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->bitmap:Landroid/graphics/Bitmap;

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->bitmapOrientation:I

    .line 172
    return-void
.end method

.method private createConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 278
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const-string v1, "User-Agent"

    const-string v2, "HockeySDK/Android"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 281
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-gt v1, v2, :cond_0

    .line 282
    const-string v1, "connection"

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_0
    return-object v0
.end method

.method private downloadAttachment(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 20
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 239
    :try_start_0
    new-instance v11, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 240
    .local v11, "url":Ljava/net/URL;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->createConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v2

    .line 241
    .local v2, "connection":Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 243
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v8

    .line 244
    .local v8, "lengthOfFile":I
    const-string v14, "Status"

    invoke-virtual {v2, v14}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 246
    .local v10, "status":Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 247
    const-string v14, "200"

    invoke-virtual {v10, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 248
    const/4 v14, 0x0

    .line 272
    .end local v2    # "connection":Ljava/net/URLConnection;
    .end local v8    # "lengthOfFile":I
    .end local v10    # "status":Ljava/lang/String;
    .end local v11    # "url":Ljava/net/URL;
    :goto_0
    return v14

    .line 252
    .restart local v2    # "connection":Ljava/net/URLConnection;
    .restart local v8    # "lengthOfFile":I
    .restart local v10    # "status":Ljava/lang/String;
    .restart local v11    # "url":Ljava/net/URL;
    :cond_0
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->dropFolder:Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v6, v14, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 253
    .local v6, "file":Ljava/io/File;
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 254
    .local v7, "input":Ljava/io/InputStream;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 256
    .local v9, "output":Ljava/io/OutputStream;
    const/16 v14, 0x400

    new-array v4, v14, [B

    .line 257
    .local v4, "data":[B
    const/4 v3, 0x0

    .line 258
    .local v3, "count":I
    const-wide/16 v12, 0x0

    .line 259
    .local v12, "total":J
    :goto_1
    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v14, -0x1

    if-eq v3, v14, :cond_1

    .line 260
    int-to-long v14, v3

    add-long/2addr v12, v14

    .line 261
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Integer;

    const/4 v15, 0x0

    const-wide/16 v16, 0x64

    mul-long v16, v16, v12

    int-to-long v0, v8

    move-wide/from16 v18, v0

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->publishProgress([Ljava/lang/Object;)V

    .line 262
    const/4 v14, 0x0

    invoke-virtual {v9, v4, v14, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 270
    .end local v2    # "connection":Ljava/net/URLConnection;
    .end local v3    # "count":I
    .end local v4    # "data":[B
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "input":Ljava/io/InputStream;
    .end local v8    # "lengthOfFile":I
    .end local v9    # "output":Ljava/io/OutputStream;
    .end local v10    # "status":Ljava/lang/String;
    .end local v11    # "url":Ljava/net/URL;
    .end local v12    # "total":J
    :catch_0
    move-exception v5

    .line 271
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 272
    const/4 v14, 0x0

    goto :goto_0

    .line 265
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "connection":Ljava/net/URLConnection;
    .restart local v3    # "count":I
    .restart local v4    # "data":[B
    .restart local v6    # "file":Ljava/io/File;
    .restart local v7    # "input":Ljava/io/InputStream;
    .restart local v8    # "lengthOfFile":I
    .restart local v9    # "output":Ljava/io/OutputStream;
    .restart local v10    # "status":Ljava/lang/String;
    .restart local v11    # "url":Ljava/net/URL;
    .restart local v12    # "total":J
    :cond_1
    :try_start_1
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 266
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 267
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 268
    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-lez v14, :cond_2

    const/4 v14, 0x1

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    goto :goto_0
.end method

.method private loadImageThumbnail()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 220
    :try_start_0
    iget-object v5, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->downloadJob:Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;

    invoke-virtual {v5}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->getFeedbackAttachment()Lnet/hockeyapp/android/objects/FeedbackAttachment;

    move-result-object v5

    invoke-virtual {v5}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->getCacheId()Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "filename":Ljava/lang/String;
    iget-object v5, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->downloadJob:Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;

    invoke-virtual {v5}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->getAttachmentView()Lnet/hockeyapp/android/views/AttachmentView;

    move-result-object v0

    .line 223
    .local v0, "attachmentView":Lnet/hockeyapp/android/views/AttachmentView;
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->dropFolder:Ljava/io/File;

    invoke-direct {v5, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Lnet/hockeyapp/android/utils/ImageUtils;->determineOrientation(Ljava/io/File;)I

    move-result v5

    iput v5, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->bitmapOrientation:I

    .line 224
    iget v5, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->bitmapOrientation:I

    if-ne v5, v7, :cond_0

    .line 225
    invoke-virtual {v0}, Lnet/hockeyapp/android/views/AttachmentView;->getWidthLandscape()I

    move-result v4

    .line 226
    .local v4, "width":I
    :goto_0
    iget v5, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->bitmapOrientation:I

    if-ne v5, v7, :cond_1

    .line 227
    invoke-virtual {v0}, Lnet/hockeyapp/android/views/AttachmentView;->getMaxHeightLandscape()I

    move-result v3

    .line 229
    .local v3, "height":I
    :goto_1
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->dropFolder:Ljava/io/File;

    invoke-direct {v5, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5, v4, v3}, Lnet/hockeyapp/android/utils/ImageUtils;->decodeSampledBitmap(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->bitmap:Landroid/graphics/Bitmap;

    .line 235
    .end local v0    # "attachmentView":Lnet/hockeyapp/android/views/AttachmentView;
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "height":I
    .end local v4    # "width":I
    :goto_2
    return-void

    .line 225
    .restart local v0    # "attachmentView":Lnet/hockeyapp/android/views/AttachmentView;
    .restart local v2    # "filename":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lnet/hockeyapp/android/views/AttachmentView;->getWidthPortrait()I

    move-result v4

    goto :goto_0

    .line 227
    .restart local v4    # "width":I
    :cond_1
    invoke-virtual {v0}, Lnet/hockeyapp/android/views/AttachmentView;->getMaxHeightPortrait()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_1

    .line 231
    .end local v0    # "attachmentView":Lnet/hockeyapp/android/views/AttachmentView;
    .end local v2    # "filename":Ljava/lang/String;
    .end local v4    # "width":I
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 233
    const/4 v5, 0x0

    iput-object v5, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_2
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 180
    iget-object v2, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->downloadJob:Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;

    invoke-virtual {v2}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->getFeedbackAttachment()Lnet/hockeyapp/android/objects/FeedbackAttachment;

    move-result-object v0

    .line 182
    .local v0, "attachment":Lnet/hockeyapp/android/objects/FeedbackAttachment;
    invoke-virtual {v0}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->isAvailableInCache()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    const-string v2, "HockeyApp"

    const-string v3, "Cached..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-direct {p0}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->loadImageThumbnail()V

    .line 185
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 193
    :goto_0
    return-object v2

    .line 188
    :cond_0
    const-string v2, "HockeyApp"

    const-string v3, "Downloading..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {v0}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->getCacheId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->downloadAttachment(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 190
    .local v1, "success":Z
    if-eqz v1, :cond_1

    .line 191
    invoke-direct {p0}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->loadImageThumbnail()V

    .line 193
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 154
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 203
    iget-object v1, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->downloadJob:Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;

    invoke-virtual {v1}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->getAttachmentView()Lnet/hockeyapp/android/views/AttachmentView;

    move-result-object v0

    .line 204
    .local v0, "attachmentView":Lnet/hockeyapp/android/views/AttachmentView;
    iget-object v1, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->downloadJob:Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->setSuccess(Z)V

    .line 206
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    iget-object v1, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->bitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->bitmapOrientation:I

    invoke-virtual {v0, v1, v2}, Lnet/hockeyapp/android/views/AttachmentView;->setImage(Landroid/graphics/Bitmap;I)V

    .line 215
    :cond_0
    :goto_0
    iget-object v1, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 216
    return-void

    .line 210
    :cond_1
    iget-object v1, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->downloadJob:Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;

    invoke-virtual {v1}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->hasRetry()Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    invoke-virtual {v0}, Lnet/hockeyapp/android/views/AttachmentView;->signalImageLoadingError()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 154
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 199
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 154
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
