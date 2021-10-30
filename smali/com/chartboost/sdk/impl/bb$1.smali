.class Lcom/chartboost/sdk/impl/bb$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/bb;->a(Lcom/chartboost/sdk/Model/a;Ljava/lang/String;Landroid/app/Activity;Lcom/chartboost/sdk/c$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/chartboost/sdk/c$b;

.field final synthetic d:Lcom/chartboost/sdk/impl/bb;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/bb;Ljava/lang/String;Landroid/app/Activity;Lcom/chartboost/sdk/c$b;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bb$1;->d:Lcom/chartboost/sdk/impl/bb;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/bb$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/chartboost/sdk/impl/bb$1;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcom/chartboost/sdk/impl/bb$1;->c:Lcom/chartboost/sdk/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 109
    new-instance v0, Lcom/chartboost/sdk/impl/bb$1$1;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/impl/bb$1$1;-><init>(Lcom/chartboost/sdk/impl/bb$1;Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bb$1;->b:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bb$1;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 118
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->e()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 84
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bb$1;->a:Ljava/lang/String;

    .line 86
    invoke-static {}, Lcom/chartboost/sdk/impl/ay;->a()Lcom/chartboost/sdk/impl/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ay;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    const/4 v2, 0x0

    .line 89
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/bb$1;->a:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 92
    const/16 v2, 0x7530

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 93
    const/16 v2, 0x7530

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 94
    const-string v2, "Location"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 95
    if-eqz v2, :cond_0

    move-object v1, v2

    .line 100
    :cond_0
    if-eqz v0, :cond_2

    .line 101
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v1

    .line 105
    :goto_0
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/bb$1;->a(Ljava/lang/String;)V

    .line 106
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    :goto_1
    :try_start_2
    const-string v3, "CBURLOpener"

    const-string v4, "Exception raised while opening a HTTP Conection"

    invoke-static {v3, v4, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    if-eqz v2, :cond_2

    .line 101
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v1

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v2, :cond_1

    .line 101
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    throw v0

    .line 100
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_2

    .line 97
    :catch_1
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
