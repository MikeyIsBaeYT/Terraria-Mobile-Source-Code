.class Lcom/chartboost/sdk/impl/as$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/as;-><init>(Lcom/chartboost/sdk/impl/aw;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/as;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/as;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/chartboost/sdk/impl/as$1;->a:Lcom/chartboost/sdk/impl/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as$1;->a:Lcom/chartboost/sdk/impl/as;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/as;->a(Lcom/chartboost/sdk/impl/as;)V

    .line 42
    return-void
.end method
