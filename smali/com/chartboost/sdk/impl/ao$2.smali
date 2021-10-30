.class Lcom/chartboost/sdk/impl/ao$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/ao;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/ao;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ao$2;->a:Lcom/chartboost/sdk/impl/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ao$2;->a:Lcom/chartboost/sdk/impl/ao;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/ao;->a(Lcom/chartboost/sdk/impl/ao;Z)V

    .line 273
    return-void
.end method
