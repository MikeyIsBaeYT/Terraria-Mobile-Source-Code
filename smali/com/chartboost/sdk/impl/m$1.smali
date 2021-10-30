.class Lcom/chartboost/sdk/impl/m$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/m;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/m;

.field private final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/m;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/m$1;->a:Lcom/chartboost/sdk/impl/m;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/m$1;->b:Ljava/lang/Object;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/l;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/l",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 213
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/l;->b()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/m$1;->b:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
