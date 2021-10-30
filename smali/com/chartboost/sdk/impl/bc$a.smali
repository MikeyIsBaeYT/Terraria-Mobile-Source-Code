.class Lcom/chartboost/sdk/impl/bc$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/bc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/bc;

.field private b:Ljava/lang/String;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/chartboost/sdk/impl/bc$b;

.field private e:Ljava/lang/String;

.field private f:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/bc;Landroid/widget/ImageView;Lcom/chartboost/sdk/impl/bc$b;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 125
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bc$a;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bc$a;->c:Ljava/lang/ref/WeakReference;

    .line 127
    new-instance v0, Lcom/chartboost/sdk/impl/bc$c;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/bc$c;-><init>(Lcom/chartboost/sdk/impl/bc$a;)V

    .line 128
    if-eqz p2, :cond_0

    .line 129
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    :cond_0
    iput-object p4, p0, Lcom/chartboost/sdk/impl/bc$a;->e:Ljava/lang/String;

    .line 131
    iput-object p3, p0, Lcom/chartboost/sdk/impl/bc$a;->d:Lcom/chartboost/sdk/impl/bc$b;

    .line 132
    iput-object p5, p0, Lcom/chartboost/sdk/impl/bc$a;->f:Landroid/os/Bundle;

    .line 133
    iput-object p6, p0, Lcom/chartboost/sdk/impl/bc$a;->b:Ljava/lang/String;

    .line 134
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/bc$a;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$a;->c:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private b()Lcom/chartboost/sdk/Libraries/j$a;
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$a;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bc$a;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Libraries/j$a;

    return-object v0
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/bc$a;)Lcom/chartboost/sdk/impl/bc$b;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$a;->d:Lcom/chartboost/sdk/impl/bc$b;

    return-object v0
.end method

.method static synthetic c(Lcom/chartboost/sdk/impl/bc$a;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$a;->f:Landroid/os/Bundle;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/bc$a;->b()Lcom/chartboost/sdk/Libraries/j$a;

    move-result-object v1

    .line 218
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$a;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bc;->a(Landroid/widget/ImageView;)Lcom/chartboost/sdk/impl/bc$a;

    move-result-object v0

    if-ne p0, v0, :cond_0

    .line 221
    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/j$a;->b()V

    .line 223
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/chartboost/sdk/impl/bc$a$1;

    invoke-direct {v2, p0, v1}, Lcom/chartboost/sdk/impl/bc$a$1;-><init>(Lcom/chartboost/sdk/impl/bc$a;Lcom/chartboost/sdk/Libraries/j$a;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 141
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$a;->a:Lcom/chartboost/sdk/impl/bc;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/bc$a;->e:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/chartboost/sdk/impl/bc;->a(Lcom/chartboost/sdk/impl/bc;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bc$a;->a()V

    .line 211
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/impl/ax;->b()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 147
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/bc$a;->b:Ljava/lang/String;

    invoke-direct {v3, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 149
    const-string v2, "CBWebImageCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downloading image to cache... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/chartboost/sdk/impl/bc$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    :try_start_0
    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 154
    :try_start_1
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 155
    const/16 v4, 0xc8

    if-eq v0, v4, :cond_2

    .line 156
    const-string v1, "CBWebImageCache:ImageDownloader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " while retrieving bitmap from "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/chartboost/sdk/impl/bc$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Lorg/apache/http/HttpResponse;)V

    .line 159
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bc$a;->a()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 198
    :goto_1
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 199
    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Lorg/apache/http/HttpResponse;)V

    .line 200
    const-string v1, "CBWebImageCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "I/O error while retrieving bitmap from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/chartboost/sdk/impl/bc$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bc$a;->a()V

    goto/16 :goto_0

    .line 163
    :cond_2
    :try_start_2
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    .line 164
    if-eqz v4, :cond_1

    .line 167
    :try_start_3
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 168
    invoke-static {v1}, Lcom/chartboost/sdk/impl/cd;->b(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 171
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/b;->a([B)[B

    move-result-object v5

    invoke-static {v5}, Lcom/chartboost/sdk/Libraries/b;->b([B)Ljava/lang/String;

    move-result-object v5

    .line 180
    iget-object v6, p0, Lcom/chartboost/sdk/impl/bc$a;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 181
    iput-object v5, p0, Lcom/chartboost/sdk/impl/bc$a;->e:Ljava/lang/String;

    .line 182
    const-string v5, "CBWebImageCache:ImageDownloader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: checksum did not match while downloading from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/chartboost/sdk/impl/bc$a;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    :cond_3
    iget-object v5, p0, Lcom/chartboost/sdk/impl/bc$a;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v5}, Lcom/chartboost/sdk/impl/bc;->a(Lcom/chartboost/sdk/impl/bc;)Lcom/chartboost/sdk/Libraries/h;

    move-result-object v5

    const-string v6, "%s%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/chartboost/sdk/impl/bc$a;->e:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, ".png"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;[B)V

    .line 187
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$a;->a:Lcom/chartboost/sdk/impl/bc;

    iget-object v5, p0, Lcom/chartboost/sdk/impl/bc$a;->e:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc;Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/j$a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 189
    if-eqz v1, :cond_4

    .line 190
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 201
    :catch_1
    move-exception v0

    .line 202
    :goto_3
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 203
    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Lorg/apache/http/HttpResponse;)V

    .line 204
    const-string v1, "CBWebImageCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/chartboost/sdk/impl/bc$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 193
    :cond_4
    :try_start_5
    invoke-static {v4}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Lorg/apache/http/HttpEntity;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 205
    :catch_2
    move-exception v0

    .line 206
    :goto_4
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 207
    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Lorg/apache/http/HttpResponse;)V

    .line 208
    const-string v1, "CBWebImageCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while retrieving bitmap from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/chartboost/sdk/impl/bc$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 189
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    .line 190
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 193
    :goto_5
    throw v0

    :cond_5
    invoke-static {v4}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Lorg/apache/http/HttpEntity;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    .line 205
    :catch_3
    move-exception v0

    move-object v2, v1

    goto :goto_4

    .line 201
    :catch_4
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 197
    :catch_5
    move-exception v0

    goto/16 :goto_1
.end method
