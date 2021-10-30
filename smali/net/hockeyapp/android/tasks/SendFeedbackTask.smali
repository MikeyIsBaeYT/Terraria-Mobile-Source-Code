.class public Lnet/hockeyapp/android/tasks/SendFeedbackTask;
.super Landroid/os/AsyncTask;
.source "SendFeedbackTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private attachmentUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private email:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private isFetchMessages:Z

.field private lastMessageId:I

.field private name:Ljava/lang/String;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private showProgressDialog:Z

.field private subject:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private urlString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Handler;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "urlString"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "email"    # Ljava/lang/String;
    .param p5, "subject"    # Ljava/lang/String;
    .param p6, "text"    # Ljava/lang/String;
    .param p8, "token"    # Ljava/lang/String;
    .param p9, "handler"    # Landroid/os/Handler;
    .param p10, "isFetchMessages"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p7, "attachmentUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 102
    iput-object p1, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->context:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->urlString:Ljava/lang/String;

    .line 104
    iput-object p3, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->name:Ljava/lang/String;

    .line 105
    iput-object p4, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->email:Ljava/lang/String;

    .line 106
    iput-object p5, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->subject:Ljava/lang/String;

    .line 107
    iput-object p6, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->text:Ljava/lang/String;

    .line 108
    iput-object p7, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->attachmentUris:Ljava/util/List;

    .line 109
    iput-object p8, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->token:Ljava/lang/String;

    .line 110
    iput-object p9, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->handler:Landroid/os/Handler;

    .line 111
    iput-boolean p10, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->isFetchMessages:Z

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->showProgressDialog:Z

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->lastMessageId:I

    .line 115
    if-eqz p1, :cond_0

    .line 116
    invoke-static {p1}, Lnet/hockeyapp/android/Constants;->loadFromContext(Landroid/content/Context;)V

    .line 118
    :cond_0
    return-void
.end method

.method private doGet(Lorg/apache/http/client/HttpClient;)Ljava/util/HashMap;
    .locals 9
    .param p1, "httpClient"    # Lorg/apache/http/client/HttpClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/HttpClient;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .local v5, "sb":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->urlString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->token:Ljava/lang/String;

    invoke-static {v7}, Lnet/hockeyapp/android/utils/Util;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    iget v6, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->lastMessageId:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 373
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "?last_message_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->lastMessageId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    :cond_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 378
    .local v1, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 379
    .local v4, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "type"

    const-string v7, "fetch"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    :try_start_0
    invoke-interface {p1, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 384
    .local v2, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 386
    .local v3, "responseEntity":Lorg/apache/http/HttpEntity;
    const-string v6, "response"

    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string v6, "status"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 399
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    .end local v3    # "responseEntity":Lorg/apache/http/HttpEntity;
    :goto_0
    return-object v4

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 392
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v0

    .line 393
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 395
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 396
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private doPostPut(Lorg/apache/http/client/HttpClient;)Ljava/util/HashMap;
    .locals 11
    .param p1, "httpClient"    # Lorg/apache/http/client/HttpClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/HttpClient;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 224
    .local v7, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "type"

    const-string v9, "send"

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v4, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "name"

    iget-object v10, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "email"

    iget-object v10, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->email:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "subject"

    iget-object v10, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->subject:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "text"

    iget-object v10, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->text:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "bundle_identifier"

    sget-object v10, Lnet/hockeyapp/android/Constants;->APP_PACKAGE:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "bundle_short_version"

    sget-object v10, Lnet/hockeyapp/android/Constants;->APP_VERSION_NAME:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "bundle_version"

    sget-object v10, Lnet/hockeyapp/android/Constants;->APP_VERSION:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "os_version"

    sget-object v10, Lnet/hockeyapp/android/Constants;->ANDROID_VERSION:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "oem"

    sget-object v10, Lnet/hockeyapp/android/Constants;->PHONE_MANUFACTURER:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "model"

    sget-object v10, Lnet/hockeyapp/android/Constants;->PHONE_MODEL:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v8, "UTF-8"

    invoke-direct {v1, v4, v8}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 240
    .local v1, "form":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    const-string v8, "UTF-8"

    invoke-virtual {v1, v8}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 242
    const/4 v2, 0x0

    .line 243
    .local v2, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    const/4 v3, 0x0

    .line 244
    .local v3, "httpPut":Lorg/apache/http/client/methods/HttpPut;
    iget-object v8, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->token:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 245
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->urlString:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->token:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->urlString:Ljava/lang/String;

    .line 246
    new-instance v3, Lorg/apache/http/client/methods/HttpPut;

    .end local v3    # "httpPut":Lorg/apache/http/client/methods/HttpPut;
    iget-object v8, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->urlString:Ljava/lang/String;

    invoke-direct {v3, v8}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 252
    .restart local v3    # "httpPut":Lorg/apache/http/client/methods/HttpPut;
    :goto_0
    const/4 v6, 0x0

    .line 253
    .local v6, "response":Lorg/apache/http/HttpResponse;
    if-eqz v3, :cond_3

    .line 254
    invoke-virtual {v3, v1}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 255
    invoke-interface {p1, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 262
    :cond_0
    :goto_1
    if-eqz v6, :cond_1

    .line 263
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 264
    .local v5, "resEntity":Lorg/apache/http/HttpEntity;
    const-string v8, "response"

    invoke-static {v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v8, "status"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .end local v1    # "form":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v2    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v3    # "httpPut":Lorg/apache/http/client/methods/HttpPut;
    .end local v4    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v5    # "resEntity":Lorg/apache/http/HttpEntity;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :cond_1
    :goto_2
    return-object v7

    .line 249
    .restart local v1    # "form":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v2    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v3    # "httpPut":Lorg/apache/http/client/methods/HttpPut;
    .restart local v4    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_2
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    .end local v2    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    iget-object v8, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->urlString:Ljava/lang/String;

    invoke-direct {v2, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .restart local v2    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_0

    .line 257
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    :cond_3
    if-eqz v2, :cond_0

    .line 258
    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 259
    invoke-interface {p1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    goto :goto_1

    .line 268
    .end local v1    # "form":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v2    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v3    # "httpPut":Lorg/apache/http/client/methods/HttpPut;
    .end local v4    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 271
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 272
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_2

    .line 274
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v0

    .line 275
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private doPostPutWithAttachments(Lorg/apache/http/client/HttpClient;)Ljava/util/HashMap;
    .locals 19
    .param p1, "httpClient"    # Lorg/apache/http/client/HttpClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/HttpClient;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 288
    .local v15, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v16, "type"

    const-string v17, "send"

    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v11, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v16, Lorg/apache/http/message/BasicNameValuePair;

    const-string v17, "name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-direct/range {v16 .. v18}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    new-instance v16, Lorg/apache/http/message/BasicNameValuePair;

    const-string v17, "email"

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->email:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-direct/range {v16 .. v18}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    new-instance v16, Lorg/apache/http/message/BasicNameValuePair;

    const-string v17, "subject"

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->subject:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-direct/range {v16 .. v18}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    new-instance v16, Lorg/apache/http/message/BasicNameValuePair;

    const-string v17, "text"

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->text:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-direct/range {v16 .. v18}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    new-instance v16, Lorg/apache/http/message/BasicNameValuePair;

    const-string v17, "bundle_identifier"

    sget-object v18, Lnet/hockeyapp/android/Constants;->APP_PACKAGE:Ljava/lang/String;

    invoke-direct/range {v16 .. v18}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    new-instance v16, Lorg/apache/http/message/BasicNameValuePair;

    const-string v17, "bundle_short_version"

    sget-object v18, Lnet/hockeyapp/android/Constants;->APP_VERSION_NAME:Ljava/lang/String;

    invoke-direct/range {v16 .. v18}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    new-instance v16, Lorg/apache/http/message/BasicNameValuePair;

    const-string v17, "bundle_version"

    sget-object v18, Lnet/hockeyapp/android/Constants;->APP_VERSION:Ljava/lang/String;

    invoke-direct/range {v16 .. v18}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    new-instance v16, Lorg/apache/http/message/BasicNameValuePair;

    const-string v17, "os_version"

    sget-object v18, Lnet/hockeyapp/android/Constants;->ANDROID_VERSION:Ljava/lang/String;

    invoke-direct/range {v16 .. v18}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    new-instance v16, Lorg/apache/http/message/BasicNameValuePair;

    const-string v17, "oem"

    sget-object v18, Lnet/hockeyapp/android/Constants;->PHONE_MANUFACTURER:Ljava/lang/String;

    invoke-direct/range {v16 .. v18}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    new-instance v16, Lorg/apache/http/message/BasicNameValuePair;

    const-string v17, "model"

    sget-object v18, Lnet/hockeyapp/android/Constants;->PHONE_MODEL:Ljava/lang/String;

    invoke-direct/range {v16 .. v18}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    new-instance v4, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;

    invoke-direct {v4}, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;-><init>()V

    .line 304
    .local v4, "entity":Lnet/hockeyapp/android/utils/SimpleMultipartEntity;
    invoke-virtual {v4}, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->writeFirstBoundaryIfNeeds()V

    .line 307
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/http/NameValuePair;

    .line 308
    .local v12, "pair":Lorg/apache/http/NameValuePair;
    invoke-interface {v12}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-interface {v12}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 350
    .end local v4    # "entity":Lnet/hockeyapp/android/utils/SimpleMultipartEntity;
    .end local v11    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v12    # "pair":Lorg/apache/http/NameValuePair;
    :catch_0
    move-exception v3

    .line 351
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 360
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    :goto_1
    return-object v15

    .line 312
    .restart local v4    # "entity":Lnet/hockeyapp/android/utils/SimpleMultipartEntity;
    .restart local v11    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_1
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->attachmentUris:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v8, v0, :cond_3

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->attachmentUris:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 314
    .local v2, "attachmentUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->attachmentUris:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    if-ne v8, v0, :cond_2

    const/4 v10, 0x1

    .line 316
    .local v10, "lastFile":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    .line 317
    .local v9, "input":Ljava/io/InputStream;
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 318
    .local v5, "filename":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "attachment"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v5, v9, v10}, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)V

    .line 312
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 314
    .end local v5    # "filename":Ljava/lang/String;
    .end local v9    # "input":Ljava/io/InputStream;
    .end local v10    # "lastFile":Z
    :cond_2
    const/4 v10, 0x0

    goto :goto_3

    .line 320
    .end local v2    # "attachmentUri":Landroid/net/Uri;
    :cond_3
    invoke-virtual {v4}, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->writeLastBoundaryIfNeeds()V

    .line 322
    const/4 v6, 0x0

    .line 323
    .local v6, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    const/4 v7, 0x0

    .line 324
    .local v7, "httpPut":Lorg/apache/http/client/methods/HttpPut;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->token:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    .line 325
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->urlString:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->token:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->urlString:Ljava/lang/String;

    .line 326
    new-instance v7, Lorg/apache/http/client/methods/HttpPut;

    .end local v7    # "httpPut":Lorg/apache/http/client/methods/HttpPut;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->urlString:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 332
    .restart local v7    # "httpPut":Lorg/apache/http/client/methods/HttpPut;
    :goto_4
    const/4 v14, 0x0

    .line 333
    .local v14, "response":Lorg/apache/http/HttpResponse;
    if-eqz v7, :cond_6

    .line 334
    const-string v16, "Content-type"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "multipart/form-data; boundary="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v4}, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->getBoundary()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-virtual {v7, v4}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 336
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 344
    :cond_4
    :goto_5
    if-eqz v14, :cond_0

    .line 345
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    .line 346
    .local v13, "resEntity":Lorg/apache/http/HttpEntity;
    const-string v16, "response"

    invoke-static {v13}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v16, "status"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_1

    .line 353
    .end local v4    # "entity":Lnet/hockeyapp/android/utils/SimpleMultipartEntity;
    .end local v6    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v7    # "httpPut":Lorg/apache/http/client/methods/HttpPut;
    .end local v8    # "i":I
    .end local v11    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v13    # "resEntity":Lorg/apache/http/HttpEntity;
    .end local v14    # "response":Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v3

    .line 354
    .local v3, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v3}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto/16 :goto_1

    .line 329
    .end local v3    # "e":Lorg/apache/http/client/ClientProtocolException;
    .restart local v4    # "entity":Lnet/hockeyapp/android/utils/SimpleMultipartEntity;
    .restart local v6    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v7    # "httpPut":Lorg/apache/http/client/methods/HttpPut;
    .restart local v8    # "i":I
    .restart local v11    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_5
    :try_start_2
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    .end local v6    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->urlString:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .restart local v6    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_4

    .line 338
    .restart local v14    # "response":Lorg/apache/http/HttpResponse;
    :cond_6
    if-eqz v6, :cond_4

    .line 339
    const-string v16, "Content-type"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "multipart/form-data; boundary="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v4}, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->getBoundary()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-virtual {v6, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 341
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v14

    goto :goto_5

    .line 356
    .end local v4    # "entity":Lnet/hockeyapp/android/utils/SimpleMultipartEntity;
    .end local v6    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v7    # "httpPut":Lorg/apache/http/client/methods/HttpPut;
    .end local v8    # "i":I
    .end local v11    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v14    # "response":Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception v3

    .line 357
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1
.end method


# virtual methods
.method public attach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    iput-object p1, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->context:Landroid/content/Context;

    .line 130
    return-void
.end method

.method public detach()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->context:Landroid/content/Context;

    .line 134
    iput-object v0, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->progressDialog:Landroid/app/ProgressDialog;

    .line 135
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->doInBackground([Ljava/lang/Void;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/HashMap;
    .locals 8
    .param p1, "args"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    invoke-static {}, Lnet/hockeyapp/android/utils/ConnectionManager;->getInstance()Lnet/hockeyapp/android/utils/ConnectionManager;

    move-result-object v5

    invoke-virtual {v5}, Lnet/hockeyapp/android/utils/ConnectionManager;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    .line 153
    .local v2, "httpclient":Lorg/apache/http/client/HttpClient;
    iget-boolean v5, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->isFetchMessages:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->token:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 155
    invoke-direct {p0, v2}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->doGet(Lorg/apache/http/client/HttpClient;)Ljava/util/HashMap;

    move-result-object v3

    .line 183
    :cond_0
    :goto_0
    return-object v3

    .line 157
    :cond_1
    iget-boolean v5, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->isFetchMessages:Z

    if-nez v5, :cond_3

    .line 162
    iget-object v5, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->attachmentUris:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 163
    invoke-direct {p0, v2}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->doPostPut(Lorg/apache/http/client/HttpClient;)Ljava/util/HashMap;

    move-result-object v3

    goto :goto_0

    .line 166
    :cond_2
    invoke-direct {p0, v2}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->doPostPutWithAttachments(Lorg/apache/http/client/HttpClient;)Ljava/util/HashMap;

    move-result-object v3

    .line 169
    .local v3, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "status"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 170
    .local v4, "status":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->context:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 171
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "HockeyApp"

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 172
    .local v1, "folder":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 173
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    array-length v7, v6

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_0

    aget-object v0, v6, v5

    .line 174
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 173
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 183
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "folder":Ljava/io/File;
    .end local v3    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "status":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 67
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->onPostExecute(Ljava/util/HashMap;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    .line 190
    :try_start_0
    iget-object v3, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_0
    :goto_0
    iget-object v3, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->handler:Landroid/os/Handler;

    if-eqz v3, :cond_1

    .line 199
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 200
    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 202
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_2

    .line 203
    const-string v4, "request_type"

    const-string v3, "type"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v4, "feedback_response"

    const-string v3, "response"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v4, "feedback_status"

    const-string v3, "status"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_1
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 213
    iget-object v3, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 215
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    return-void

    .line 192
    :catch_0
    move-exception v1

    .line 193
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 208
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "msg":Landroid/os/Message;
    :cond_2
    const-string v3, "request_type"

    const-string v4, "unknown"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 139
    const-string v0, "Sending feedback.."

    .line 140
    .local v0, "loadingMessage":Ljava/lang/String;
    iget-boolean v1, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->isFetchMessages:Z

    if-eqz v1, :cond_0

    .line 141
    const-string v0, "Retrieving discussions..."

    .line 144
    :cond_0
    iget-object v1, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->showProgressDialog:Z

    if-eqz v1, :cond_2

    .line 145
    iget-object v1, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->context:Landroid/content/Context;

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->progressDialog:Landroid/app/ProgressDialog;

    .line 147
    :cond_2
    return-void
.end method

.method public setLastMessageId(I)V
    .locals 0
    .param p1, "lastMessageId"    # I

    .prologue
    .line 125
    iput p1, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->lastMessageId:I

    .line 126
    return-void
.end method

.method public setShowProgressDialog(Z)V
    .locals 0
    .param p1, "showProgressDialog"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->showProgressDialog:Z

    .line 122
    return-void
.end method
