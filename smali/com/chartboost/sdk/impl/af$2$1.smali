.class Lcom/chartboost/sdk/impl/af$2$1;
.super Lcom/chartboost/sdk/impl/bl$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/af$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/af$2;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/af$2;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/chartboost/sdk/impl/af$2$1;->a:Lcom/chartboost/sdk/impl/af$2;

    invoke-direct {p0}, Lcom/chartboost/sdk/impl/bl$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/bl;I)V
    .locals 2

    .prologue
    .line 129
    invoke-static {}, Lcom/chartboost/sdk/impl/af;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "post-popup dismissed"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    return-void
.end method
