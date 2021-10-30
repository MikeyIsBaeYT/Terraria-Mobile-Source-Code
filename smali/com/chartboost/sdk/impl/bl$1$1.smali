.class Lcom/chartboost/sdk/impl/bl$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/bl$1;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/chartboost/sdk/impl/bl$1;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/bl$1;I)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bl$1$1;->b:Lcom/chartboost/sdk/impl/bl$1;

    iput p2, p0, Lcom/chartboost/sdk/impl/bl$1$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bl$1$1;->b:Lcom/chartboost/sdk/impl/bl$1;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/bl$1;->e:Lcom/chartboost/sdk/impl/bl;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bl;->a(Lcom/chartboost/sdk/impl/bl;)Lcom/chartboost/sdk/impl/bl$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bl$1$1;->b:Lcom/chartboost/sdk/impl/bl$1;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/bl$1;->e:Lcom/chartboost/sdk/impl/bl;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bl;->a(Lcom/chartboost/sdk/impl/bl;)Lcom/chartboost/sdk/impl/bl$b;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bl$1$1;->b:Lcom/chartboost/sdk/impl/bl$1;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/bl$1;->e:Lcom/chartboost/sdk/impl/bl;

    iget v2, p0, Lcom/chartboost/sdk/impl/bl$1$1;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/bl$b;->a(Lcom/chartboost/sdk/impl/bl;I)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bl$1$1;->b:Lcom/chartboost/sdk/impl/bl$1;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/bl$1;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 104
    return-void
.end method
