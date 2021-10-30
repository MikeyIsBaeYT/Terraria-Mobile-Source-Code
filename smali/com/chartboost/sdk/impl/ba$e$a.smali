.class Lcom/chartboost/sdk/impl/ba$e$a;
.super Lcom/chartboost/sdk/impl/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/ba$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chartboost/sdk/impl/l",
        "<",
        "Lcom/chartboost/sdk/impl/ba$d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/ba$e;

.field private b:Lcom/chartboost/sdk/impl/az;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/ba$e;ILjava/lang/String;Lcom/chartboost/sdk/impl/az;)V
    .locals 1

    .prologue
    .line 233
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ba$e$a;->a:Lcom/chartboost/sdk/impl/ba$e;

    .line 234
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/chartboost/sdk/impl/l;-><init>(ILjava/lang/String;Lcom/chartboost/sdk/impl/n$a;)V

    .line 235
    iput-object p4, p0, Lcom/chartboost/sdk/impl/ba$e$a;->b:Lcom/chartboost/sdk/impl/az;

    .line 237
    return-void
.end method


# virtual methods
.method protected a(Lcom/chartboost/sdk/impl/i;)Lcom/chartboost/sdk/impl/n;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/i;",
            ")",
            "Lcom/chartboost/sdk/impl/n",
            "<",
            "Lcom/chartboost/sdk/impl/ba$d;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 268
    .line 271
    iget v3, p1, Lcom/chartboost/sdk/impl/i;->a:I

    .line 272
    const/16 v0, 0x12c

    if-le v3, v0, :cond_0

    const/16 v0, 0xc8

    if-ge v3, v0, :cond_0

    .line 273
    const-string v0, "CBRequestManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ba$e$a;->b:Lcom/chartboost/sdk/impl/az;

    invoke-virtual {v4}, Lcom/chartboost/sdk/impl/az;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " failed. Response code: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    new-instance v2, Lcom/chartboost/sdk/Model/CBError;

    sget-object v0, Lcom/chartboost/sdk/Model/CBError$a;->e:Lcom/chartboost/sdk/Model/CBError$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request failed. Response code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V

    move-object v0, v1

    .line 303
    :goto_0
    if-eqz v0, :cond_3

    if-nez v2, :cond_3

    .line 304
    new-instance v2, Lcom/chartboost/sdk/impl/ba$d;

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Lcom/chartboost/sdk/impl/ba$d;-><init>(Lcom/chartboost/sdk/Libraries/e$a;Lcom/chartboost/sdk/impl/i;)V

    invoke-static {v2, v1}, Lcom/chartboost/sdk/impl/n;->a(Ljava/lang/Object;Lcom/chartboost/sdk/impl/b$a;)Lcom/chartboost/sdk/impl/n;

    move-result-object v0

    .line 306
    :goto_1
    return-object v0

    .line 278
    :cond_0
    :try_start_0
    iget-object v2, p1, Lcom/chartboost/sdk/impl/i;->b:[B

    .line 279
    if-eqz v2, :cond_5

    .line 280
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 281
    :goto_2
    if-eqz v0, :cond_2

    .line 282
    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 283
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    invoke-static {v4}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 284
    :try_start_1
    iget-object v4, p0, Lcom/chartboost/sdk/impl/ba$e$a;->b:Lcom/chartboost/sdk/impl/az;

    invoke-virtual {v4}, Lcom/chartboost/sdk/impl/az;->l()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v4

    .line 285
    const-string v5, "CBRequestManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Request "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/chartboost/sdk/impl/ba$e$a;->b:Lcom/chartboost/sdk/impl/az;

    invoke-virtual {v7}, Lcom/chartboost/sdk/impl/az;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " succeeded. Response code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", body: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    const-string v0, "status"

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/Libraries/e$a;->f(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x194

    if-ne v0, v3, :cond_1

    .line 288
    new-instance v0, Lcom/chartboost/sdk/Model/CBError;

    sget-object v3, Lcom/chartboost/sdk/Model/CBError$a;->g:Lcom/chartboost/sdk/Model/CBError$a;

    const-string v4, "404 error from server"

    invoke-direct {v0, v3, v4}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V

    :goto_3
    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    .line 296
    goto :goto_0

    .line 290
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    if-eqz v4, :cond_4

    invoke-virtual {v4, v2, v3}, Lcom/chartboost/sdk/Libraries/g$a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 292
    new-instance v0, Lcom/chartboost/sdk/Model/CBError;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$a;->d:Lcom/chartboost/sdk/Model/CBError$a;

    const-string v5, "Json response failed validation"

    invoke-direct {v0, v4, v5}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V

    .line 293
    const-string v4, "CBRequestManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Json response failed validation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 299
    :catch_0
    move-exception v0

    .line 300
    :goto_4
    new-instance v3, Lcom/chartboost/sdk/Model/CBError;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$a;->a:Lcom/chartboost/sdk/Model/CBError$a;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V

    move-object v0, v2

    move-object v2, v3

    goto/16 :goto_0

    .line 297
    :cond_2
    :try_start_2
    new-instance v0, Lcom/chartboost/sdk/Model/CBError;

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$a;->c:Lcom/chartboost/sdk/Model/CBError$a;

    const-string v3, "Response is not a valid json object"

    invoke-direct {v0, v2, v3}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_0

    .line 306
    :cond_3
    new-instance v0, Lcom/chartboost/sdk/impl/ba$c;

    invoke-direct {v0, v2}, Lcom/chartboost/sdk/impl/ba$c;-><init>(Lcom/chartboost/sdk/Model/CBError;)V

    invoke-static {v0}, Lcom/chartboost/sdk/impl/n;->a(Lcom/chartboost/sdk/impl/s;)Lcom/chartboost/sdk/impl/n;

    move-result-object v0

    goto/16 :goto_1

    .line 299
    :catch_1
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :cond_4
    move-object v0, v1

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto/16 :goto_2
.end method

.method protected a(Lcom/chartboost/sdk/impl/ba$d;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 313
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba$e$a;->a:Lcom/chartboost/sdk/impl/ba$e;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ba$e;->a(Lcom/chartboost/sdk/impl/ba$e;)Lcom/chartboost/sdk/impl/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/az;->r()Lcom/chartboost/sdk/impl/az$c;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 314
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba$e$a;->a:Lcom/chartboost/sdk/impl/ba$e;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ba$e;->a(Lcom/chartboost/sdk/impl/ba$e;)Lcom/chartboost/sdk/impl/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/az;->r()Lcom/chartboost/sdk/impl/az$c;

    move-result-object v0

    invoke-static {p1}, Lcom/chartboost/sdk/impl/ba$d;->a(Lcom/chartboost/sdk/impl/ba$d;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ba$e$a;->a:Lcom/chartboost/sdk/impl/ba$e;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/ba$e;->a(Lcom/chartboost/sdk/impl/ba$e;)Lcom/chartboost/sdk/impl/az;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/chartboost/sdk/impl/az$c;->a(Lcom/chartboost/sdk/Libraries/e$a;Lcom/chartboost/sdk/impl/az;)V

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba$e$a;->a:Lcom/chartboost/sdk/impl/ba$e;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ba$e;->a(Lcom/chartboost/sdk/impl/ba$e;)Lcom/chartboost/sdk/impl/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/az;->h()Z

    move-result v0

    if-nez v0, :cond_2

    .line 317
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba$e$a;->a:Lcom/chartboost/sdk/impl/ba$e;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ba$e;->a:Lcom/chartboost/sdk/impl/ba;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ba;->b(Lcom/chartboost/sdk/impl/ba;)Lcom/chartboost/sdk/Libraries/h;

    move-result-object v1

    invoke-static {}, Lcom/chartboost/sdk/impl/ba;->k()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ba$e$a;->a:Lcom/chartboost/sdk/impl/ba$e;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/ba$e;->a(Lcom/chartboost/sdk/impl/ba$e;)Lcom/chartboost/sdk/impl/az;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/Libraries/h;->c(Ljava/io/File;)V

    .line 318
    invoke-static {}, Lcom/chartboost/sdk/impl/ba;->k()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ba$e$a;->a:Lcom/chartboost/sdk/impl/ba$e;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ba$e;->a(Lcom/chartboost/sdk/impl/ba$e;)Lcom/chartboost/sdk/impl/az;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba$e$a;->a:Lcom/chartboost/sdk/impl/ba$e;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ba$e;->a:Lcom/chartboost/sdk/impl/ba;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ba;->c(Lcom/chartboost/sdk/impl/ba;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ba$e$a;->a:Lcom/chartboost/sdk/impl/ba$e;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ba$e;->a(Lcom/chartboost/sdk/impl/ba$e;)Lcom/chartboost/sdk/impl/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/az;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/ba$b;

    .line 320
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ba$b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ba$b;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ba$b;->a(Lcom/chartboost/sdk/impl/ba$b;)Lcom/chartboost/sdk/impl/az;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ba$e$a;->a:Lcom/chartboost/sdk/impl/ba$e;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/ba$e;->a(Lcom/chartboost/sdk/impl/ba$e;)Lcom/chartboost/sdk/impl/az;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 321
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ba$b;->d()V

    .line 322
    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/impl/ba$b;->b(Lcom/chartboost/sdk/impl/az;)V

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba$e$a;->a:Lcom/chartboost/sdk/impl/ba$e;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ba$e;->a(Lcom/chartboost/sdk/impl/ba$e;)Lcom/chartboost/sdk/impl/az;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/az;->d(Z)V

    .line 325
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba$e$a;->a:Lcom/chartboost/sdk/impl/ba$e;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ba$e;->a:Lcom/chartboost/sdk/impl/ba;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ba$e$a;->a:Lcom/chartboost/sdk/impl/ba$e;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ba$e;->a(Lcom/chartboost/sdk/impl/ba$e;)Lcom/chartboost/sdk/impl/az;

    move-result-object v1

    invoke-static {p1}, Lcom/chartboost/sdk/impl/ba$d;->b(Lcom/chartboost/sdk/impl/ba$d;)Lcom/chartboost/sdk/impl/i;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v4, v3}, Lcom/chartboost/sdk/impl/ba;->a(Lcom/chartboost/sdk/impl/ba;Lcom/chartboost/sdk/impl/az;Lcom/chartboost/sdk/impl/i;Lcom/chartboost/sdk/Model/CBError;Z)V

    .line 333
    :goto_0
    return-void

    .line 327
    :cond_2
    invoke-static {}, Lcom/chartboost/sdk/Tracking/a;->a()Lcom/chartboost/sdk/Tracking/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Tracking/a;->l()Lcom/chartboost/sdk/Libraries/h;

    move-result-object v1

    .line 328
    invoke-static {}, Lcom/chartboost/sdk/impl/ba;->l()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ba$e$a;->a:Lcom/chartboost/sdk/impl/ba$e;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/ba$e;->a(Lcom/chartboost/sdk/impl/ba$e;)Lcom/chartboost/sdk/impl/az;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/Libraries/h;->c(Ljava/io/File;)V

    .line 329
    invoke-static {}, Lcom/chartboost/sdk/Tracking/a;->a()Lcom/chartboost/sdk/Tracking/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Tracking/a;->p()V

    .line 330
    const-string v0, "CBRequestManager"

    const-string v1, "### Removing track events sent to server..."

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    invoke-static {}, Lcom/chartboost/sdk/impl/ba;->l()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ba$e$a;->a:Lcom/chartboost/sdk/impl/ba$e;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ba$e;->a(Lcom/chartboost/sdk/impl/ba$e;)Lcom/chartboost/sdk/impl/az;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public b(Lcom/chartboost/sdk/impl/s;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 338
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba$e$a;->a:Lcom/chartboost/sdk/impl/ba$e;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ba$e;->a(Lcom/chartboost/sdk/impl/ba$e;)Lcom/chartboost/sdk/impl/az;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/b;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba$e$a;->a:Lcom/chartboost/sdk/impl/ba$e;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ba$e;->a(Lcom/chartboost/sdk/impl/ba$e;)Lcom/chartboost/sdk/impl/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/az;->h()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/chartboost/sdk/impl/ba;->k()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ba$e$a;->a:Lcom/chartboost/sdk/impl/ba$e;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ba$e;->a(Lcom/chartboost/sdk/impl/ba$e;)Lcom/chartboost/sdk/impl/az;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba$e$a;->a:Lcom/chartboost/sdk/impl/ba$e;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ba$e;->a:Lcom/chartboost/sdk/impl/ba;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ba;->b(Lcom/chartboost/sdk/impl/ba;)Lcom/chartboost/sdk/Libraries/h;

    move-result-object v1

    invoke-static {}, Lcom/chartboost/sdk/impl/ba;->k()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ba$e$a;->a:Lcom/chartboost/sdk/impl/ba$e;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/ba$e;->a(Lcom/chartboost/sdk/impl/ba$e;)Lcom/chartboost/sdk/impl/az;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/Libraries/h;->c(Ljava/io/File;)V

    .line 341
    invoke-static {}, Lcom/chartboost/sdk/impl/ba;->k()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ba$e$a;->a:Lcom/chartboost/sdk/impl/ba$e;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ba$e;->a(Lcom/chartboost/sdk/impl/ba$e;)Lcom/chartboost/sdk/impl/az;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    :cond_0
    :goto_0
    if-nez p1, :cond_2

    .line 385
    :goto_1
    return-void

    .line 342
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/impl/ba;->l()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/impl/ba;->l()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ba$e$a;->a:Lcom/chartboost/sdk/impl/ba$e;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ba$e;->a(Lcom/chartboost/sdk/impl/ba$e;)Lcom/chartboost/sdk/impl/az;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    invoke-static {}, Lcom/chartboost/sdk/Tracking/a;->a()Lcom/chartboost/sdk/Tracking/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Tracking/a;->l()Lcom/chartboost/sdk/Libraries/h;

    move-result-object v1

    .line 344
    invoke-static {}, Lcom/chartboost/sdk/impl/ba;->l()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ba$e$a;->a:Lcom/chartboost/sdk/impl/ba$e;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/ba$e;->a(Lcom/chartboost/sdk/impl/ba$e;)Lcom/chartboost/sdk/impl/az;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/Libraries/h;->c(Ljava/io/File;)V

    .line 345
    invoke-static {}, Lcom/chartboost/sdk/impl/ba;->l()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ba$e$a;->a:Lcom/chartboost/sdk/impl/ba$e;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ba$e;->a(Lcom/chartboost/sdk/impl/ba$e;)Lcom/chartboost/sdk/impl/az;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 354
    :cond_2
    instance-of v0, p1, Lcom/chartboost/sdk/impl/ba$c;

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 355
    check-cast v0, Lcom/chartboost/sdk/impl/ba$c;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ba$c;->a(Lcom/chartboost/sdk/impl/ba$c;)Lcom/chartboost/sdk/Model/CBError;

    move-result-object v0

    .line 360
    :goto_2
    sget-object v1, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;

    .line 362
    if-eqz p1, :cond_3

    :try_start_0
    iget-object v2, p1, Lcom/chartboost/sdk/impl/s;->a:Lcom/chartboost/sdk/impl/i;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/chartboost/sdk/impl/s;->a:Lcom/chartboost/sdk/impl/i;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/i;->b:[B

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/chartboost/sdk/impl/s;->a:Lcom/chartboost/sdk/impl/i;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/i;->b:[B

    array-length v2, v2

    if-lez v2, :cond_3

    .line 364
    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lcom/chartboost/sdk/impl/s;->a:Lcom/chartboost/sdk/impl/i;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/i;->b:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/e$a;->j(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 370
    :cond_3
    :goto_3
    iget-object v2, p1, Lcom/chartboost/sdk/impl/s;->a:Lcom/chartboost/sdk/impl/i;

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/chartboost/sdk/impl/s;->a:Lcom/chartboost/sdk/impl/i;

    iget v2, v2, Lcom/chartboost/sdk/impl/i;->a:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_5

    .line 372
    new-instance v0, Lcom/chartboost/sdk/impl/ba$d;

    iget-object v2, p1, Lcom/chartboost/sdk/impl/s;->a:Lcom/chartboost/sdk/impl/i;

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/impl/ba$d;-><init>(Lcom/chartboost/sdk/Libraries/e$a;Lcom/chartboost/sdk/impl/i;)V

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ba$e$a;->a(Lcom/chartboost/sdk/impl/ba$d;)V

    goto/16 :goto_1

    .line 357
    :cond_4
    new-instance v0, Lcom/chartboost/sdk/Model/CBError;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$a;->e:Lcom/chartboost/sdk/Model/CBError$a;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/s;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V

    goto :goto_2

    .line 366
    :catch_0
    move-exception v2

    .line 367
    const-string v3, "CBRequestManager"

    const-string v4, "unable to read error json"

    invoke-static {v3, v4, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 374
    :cond_5
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ba$e$a;->a:Lcom/chartboost/sdk/impl/ba$e;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/ba$e;->a(Lcom/chartboost/sdk/impl/ba$e;)Lcom/chartboost/sdk/impl/az;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/az;->r()Lcom/chartboost/sdk/impl/az$c;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 375
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ba$e$a;->a:Lcom/chartboost/sdk/impl/ba$e;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/ba$e;->a(Lcom/chartboost/sdk/impl/ba$e;)Lcom/chartboost/sdk/impl/az;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/az;->r()Lcom/chartboost/sdk/impl/az$c;

    move-result-object v2

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ba$e$a;->a:Lcom/chartboost/sdk/impl/ba$e;

    invoke-static {v3}, Lcom/chartboost/sdk/impl/ba$e;->a(Lcom/chartboost/sdk/impl/ba$e;)Lcom/chartboost/sdk/impl/az;

    move-result-object v3

    invoke-interface {v2, v1, v3, v0}, Lcom/chartboost/sdk/impl/az$c;->a(Lcom/chartboost/sdk/Libraries/e$a;Lcom/chartboost/sdk/impl/az;Lcom/chartboost/sdk/Model/CBError;)V

    .line 378
    :cond_6
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ba$e$a;->a:Lcom/chartboost/sdk/impl/ba$e;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ba$e;->a(Lcom/chartboost/sdk/impl/ba$e;)Lcom/chartboost/sdk/impl/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/az;->h()Z

    move-result v1

    if-nez v1, :cond_7

    .line 379
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ba$e$a;->a:Lcom/chartboost/sdk/impl/ba$e;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ba$e;->a(Lcom/chartboost/sdk/impl/ba$e;)Lcom/chartboost/sdk/impl/az;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/chartboost/sdk/impl/az;->d(Z)V

    .line 380
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ba$e$a;->a:Lcom/chartboost/sdk/impl/ba$e;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ba$e;->a:Lcom/chartboost/sdk/impl/ba;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ba$e$a;->a:Lcom/chartboost/sdk/impl/ba$e;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/ba$e;->a(Lcom/chartboost/sdk/impl/ba$e;)Lcom/chartboost/sdk/impl/az;

    move-result-object v2

    iget-object v3, p1, Lcom/chartboost/sdk/impl/s;->a:Lcom/chartboost/sdk/impl/i;

    invoke-static {v1, v2, v3, v0, v5}, Lcom/chartboost/sdk/impl/ba;->a(Lcom/chartboost/sdk/impl/ba;Lcom/chartboost/sdk/impl/az;Lcom/chartboost/sdk/impl/i;Lcom/chartboost/sdk/Model/CBError;Z)V

    goto/16 :goto_1

    .line 382
    :cond_7
    invoke-static {}, Lcom/chartboost/sdk/impl/ba;->l()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ba$e$a;->a:Lcom/chartboost/sdk/impl/ba$e;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ba$e;->a(Lcom/chartboost/sdk/impl/ba$e;)Lcom/chartboost/sdk/impl/az;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method protected synthetic b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 226
    check-cast p1, Lcom/chartboost/sdk/impl/ba$d;

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/ba$e$a;->a(Lcom/chartboost/sdk/impl/ba$d;)V

    return-void
.end method

.method public i()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/chartboost/sdk/impl/a;
        }
    .end annotation

    .prologue
    .line 260
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 261
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba$e$a;->b:Lcom/chartboost/sdk/impl/az;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/az;->j()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 262
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 263
    :cond_1
    return-object v1
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba$e$a;->b:Lcom/chartboost/sdk/impl/az;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/az;->b()Ljava/lang/String;

    move-result-object v0

    .line 242
    if-nez v0, :cond_0

    .line 243
    const-string v0, "application/json; charset=utf-8"

    .line 244
    :cond_0
    return-object v0
.end method

.method public q()[B
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba$e$a;->b:Lcom/chartboost/sdk/impl/az;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/az;->i()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 250
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba$e$a;->b:Lcom/chartboost/sdk/impl/az;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/az;->i()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public s()Lcom/chartboost/sdk/impl/l$a;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba$e$a;->b:Lcom/chartboost/sdk/impl/az;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/az;->n()Lcom/chartboost/sdk/impl/l$a;

    move-result-object v0

    return-object v0
.end method
