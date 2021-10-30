.class Lcom/chartboost/sdk/impl/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/e;

.field private final b:Lcom/chartboost/sdk/impl/l;

.field private final c:Lcom/chartboost/sdk/impl/n;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/e;Lcom/chartboost/sdk/impl/l;Lcom/chartboost/sdk/impl/n;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/chartboost/sdk/impl/e$a;->a:Lcom/chartboost/sdk/impl/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p2, p0, Lcom/chartboost/sdk/impl/e$a;->b:Lcom/chartboost/sdk/impl/l;

    .line 84
    iput-object p3, p0, Lcom/chartboost/sdk/impl/e$a;->c:Lcom/chartboost/sdk/impl/n;

    .line 85
    iput-object p4, p0, Lcom/chartboost/sdk/impl/e$a;->d:Ljava/lang/Runnable;

    .line 86
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e$a;->b:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e$a;->b:Lcom/chartboost/sdk/impl/l;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/l;->b(Ljava/lang/String;)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e$a;->c:Lcom/chartboost/sdk/impl/n;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/n;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e$a;->b:Lcom/chartboost/sdk/impl/l;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/e$a;->c:Lcom/chartboost/sdk/impl/n;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/n;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/l;->b(Ljava/lang/Object;)V

    .line 106
    :goto_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e$a;->c:Lcom/chartboost/sdk/impl/n;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/n;->d:Z

    if-eqz v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e$a;->b:Lcom/chartboost/sdk/impl/l;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/l;->a(Ljava/lang/String;)V

    .line 113
    :goto_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e$a;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e$a;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e$a;->b:Lcom/chartboost/sdk/impl/l;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/e$a;->c:Lcom/chartboost/sdk/impl/n;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/n;->c:Lcom/chartboost/sdk/impl/s;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/l;->b(Lcom/chartboost/sdk/impl/s;)V

    goto :goto_1

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e$a;->b:Lcom/chartboost/sdk/impl/l;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/l;->b(Ljava/lang/String;)V

    goto :goto_2
.end method
