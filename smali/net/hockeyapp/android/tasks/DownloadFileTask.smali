.class public Lnet/hockeyapp/android/tasks/DownloadFileTask;
.super Landroid/os/AsyncTask;
.source "DownloadFileTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field protected static final MAX_REDIRECTS:I = 0x6


# instance fields
.field protected context:Landroid/content/Context;

.field private downloadErrorMessage:Ljava/lang/String;

.field protected filePath:Ljava/lang/String;

.field protected filename:Ljava/lang/String;

.field protected notifier:Lnet/hockeyapp/android/listeners/DownloadFileListener;

.field protected progressDialog:Landroid/app/ProgressDialog;

.field protected urlString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/listeners/DownloadFileListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "urlString"    # Ljava/lang/String;
    .param p3, "notifier"    # Lnet/hockeyapp/android/listeners/DownloadFileListener;

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 69
    iput-object p1, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->context:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->urlString:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->filename:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->filePath:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->notifier:Lnet/hockeyapp/android/listeners/DownloadFileListener;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->downloadErrorMessage:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public attach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    iput-object p1, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->context:Landroid/content/Context;

    .line 79
    return-void
.end method

.method protected createConnection(Ljava/net/URL;I)Ljava/net/URLConnection;
    .locals 5
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "remainingRedirects"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 153
    .local v1, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/tasks/DownloadFileTask;->setConnectionProperties(Ljava/net/HttpURLConnection;)V

    .line 155
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 156
    .local v0, "code":I
    const/16 v3, 0x12d

    if-eq v0, v3, :cond_0

    const/16 v3, 0x12e

    if-eq v0, v3, :cond_0

    const/16 v3, 0x12f

    if-ne v0, v3, :cond_1

    .line 160
    :cond_0
    if-nez p2, :cond_2

    .line 173
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    :cond_1
    :goto_0
    return-object v1

    .line 165
    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    :cond_2
    new-instance v2, Ljava/net/URL;

    const-string v3, "Location"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 166
    .local v2, "movedUrl":Ljava/net/URL;
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 169
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 170
    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, v2, p2}, Lnet/hockeyapp/android/tasks/DownloadFileTask;->createConnection(Ljava/net/URL;I)Ljava/net/URLConnection;

    move-result-object v1

    goto :goto_0
.end method

.method public detach()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->context:Landroid/content/Context;

    .line 83
    iput-object v0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->progressDialog:Landroid/app/ProgressDialog;

    .line 84
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 20
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 89
    :try_start_0
    new-instance v13, Ljava/net/URL;

    invoke-virtual/range {p0 .. p0}, Lnet/hockeyapp/android/tasks/DownloadFileTask;->getURLString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 90
    .local v13, "url":Ljava/net/URL;
    const/16 v16, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Lnet/hockeyapp/android/tasks/DownloadFileTask;->createConnection(Ljava/net/URL;I)Ljava/net/URLConnection;

    move-result-object v2

    .line 91
    .local v2, "connection":Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 93
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v10

    .line 94
    .local v10, "lengthOfFile":I
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "contentType":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v16, "text"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 98
    const-string v16, "The requested download does not appear to be a file."

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/hockeyapp/android/tasks/DownloadFileTask;->downloadErrorMessage:Ljava/lang/String;

    .line 99
    const-wide/16 v16, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 129
    .end local v2    # "connection":Ljava/net/URLConnection;
    .end local v3    # "contentType":Ljava/lang/String;
    .end local v10    # "lengthOfFile":I
    .end local v13    # "url":Ljava/net/URL;
    :goto_0
    return-object v16

    .line 102
    .restart local v2    # "connection":Ljava/net/URLConnection;
    .restart local v3    # "contentType":Ljava/lang/String;
    .restart local v10    # "lengthOfFile":I
    .restart local v13    # "url":Ljava/net/URL;
    :cond_0
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->filePath:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v6, "dir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v12

    .line 104
    .local v12, "result":Z
    if-nez v12, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_1

    .line 105
    new-instance v16, Ljava/io/IOException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Could not create the dir(s):"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v2    # "connection":Ljava/net/URLConnection;
    .end local v3    # "contentType":Ljava/lang/String;
    .end local v6    # "dir":Ljava/io/File;
    .end local v10    # "lengthOfFile":I
    .end local v12    # "result":Z
    .end local v13    # "url":Ljava/net/URL;
    :catch_0
    move-exception v7

    .line 128
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    const-wide/16 v16, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    goto :goto_0

    .line 107
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v2    # "connection":Ljava/net/URLConnection;
    .restart local v3    # "contentType":Ljava/lang/String;
    .restart local v6    # "dir":Ljava/io/File;
    .restart local v10    # "lengthOfFile":I
    .restart local v12    # "result":Z
    .restart local v13    # "url":Ljava/net/URL;
    :cond_1
    :try_start_1
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->filename:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v8, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    .local v8, "file":Ljava/io/File;
    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 110
    .local v9, "input":Ljava/io/InputStream;
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 112
    .local v11, "output":Ljava/io/OutputStream;
    const/16 v16, 0x400

    move/from16 v0, v16

    new-array v5, v0, [B

    .line 114
    .local v5, "data":[B
    const-wide/16 v14, 0x0

    .line 115
    .local v14, "total":J
    :goto_1
    invoke-virtual {v9, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "count":I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v4, v0, :cond_2

    .line 116
    int-to-long v0, v4

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    .line 117
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    long-to-float v0, v14

    move/from16 v18, v0

    const/high16 v19, 0x42c80000    # 100.0f

    mul-float v18, v18, v19

    int-to-float v0, v10

    move/from16 v19, v0

    div-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/tasks/DownloadFileTask;->publishProgress([Ljava/lang/Object;)V

    .line 118
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v5, v0, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 121
    :cond_2
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    .line 122
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    .line 123
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 125
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v16

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/DownloadFileTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected getURLString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->urlString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&type=apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/Long;

    .prologue
    .line 195
    iget-object v3, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    .line 197
    :try_start_0
    iget-object v3, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 204
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 205
    iget-object v3, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->notifier:Lnet/hockeyapp/android/listeners/DownloadFileListener;

    invoke-virtual {v3, p0}, Lnet/hockeyapp/android/listeners/DownloadFileListener;->downloadSuccessful(Lnet/hockeyapp/android/tasks/DownloadFileTask;)V

    .line 207
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v1, "intent":Landroid/content/Intent;
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->filePath:Ljava/lang/String;

    iget-object v5, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->filename:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 210
    iget-object v3, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 244
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 214
    :cond_1
    :try_start_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 215
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->notifier:Lnet/hockeyapp/android/listeners/DownloadFileListener;

    const/16 v4, 0x100

    invoke-static {v3, v4}, Lnet/hockeyapp/android/Strings;->get(Lnet/hockeyapp/android/StringListener;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 218
    iget-object v3, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->downloadErrorMessage:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 219
    iget-object v3, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->notifier:Lnet/hockeyapp/android/listeners/DownloadFileListener;

    const/16 v4, 0x101

    invoke-static {v3, v4}, Lnet/hockeyapp/android/Strings;->get(Lnet/hockeyapp/android/StringListener;I)Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, "message":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 226
    iget-object v3, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->notifier:Lnet/hockeyapp/android/listeners/DownloadFileListener;

    const/16 v4, 0x102

    invoke-static {v3, v4}, Lnet/hockeyapp/android/Strings;->get(Lnet/hockeyapp/android/StringListener;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lnet/hockeyapp/android/tasks/DownloadFileTask$1;

    invoke-direct {v4, p0}, Lnet/hockeyapp/android/tasks/DownloadFileTask$1;-><init>(Lnet/hockeyapp/android/tasks/DownloadFileTask;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 232
    iget-object v3, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->notifier:Lnet/hockeyapp/android/listeners/DownloadFileListener;

    const/16 v4, 0x103

    invoke-static {v3, v4}, Lnet/hockeyapp/android/Strings;->get(Lnet/hockeyapp/android/StringListener;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lnet/hockeyapp/android/tasks/DownloadFileTask$2;

    invoke-direct {v4, p0}, Lnet/hockeyapp/android/tasks/DownloadFileTask$2;-><init>(Lnet/hockeyapp/android/tasks/DownloadFileTask;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 238
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 240
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "message":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_1

    .line 222
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_2
    iget-object v2, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->downloadErrorMessage:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v2    # "message":Ljava/lang/String;
    goto :goto_2

    .line 199
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "message":Ljava/lang/String;
    :catch_1
    move-exception v3

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 57
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/DownloadFileTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "args"    # [Ljava/lang/Integer;

    .prologue
    .line 179
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->progressDialog:Landroid/app/ProgressDialog;

    .line 181
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 182
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 184
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 186
    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 57
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/DownloadFileTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method protected setConnectionProperties(Ljava/net/HttpURLConnection;)V
    .locals 2
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 134
    const-string v0, "User-Agent"

    const-string v1, "HockeySDK/Android"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    .line 139
    const-string v0, "connection"

    const-string v1, "close"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_0
    return-void
.end method
