.class Lcom/chartboost/sdk/impl/bl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/bl;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/chartboost/sdk/impl/bl$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:I

.field final synthetic c:Ljava/util/ArrayList;

.field final synthetic d:I

.field final synthetic e:Lcom/chartboost/sdk/impl/bl;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/bl;Landroid/app/AlertDialog;ILjava/util/ArrayList;I)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bl$1;->e:Lcom/chartboost/sdk/impl/bl;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/bl$1;->a:Landroid/app/AlertDialog;

    iput p3, p0, Lcom/chartboost/sdk/impl/bl$1;->b:I

    iput-object p4, p0, Lcom/chartboost/sdk/impl/bl$1;->c:Ljava/util/ArrayList;

    iput p5, p0, Lcom/chartboost/sdk/impl/bl$1;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 6
    .param p1, "d"    # Landroid/content/DialogInterface;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bl$1;->a:Landroid/app/AlertDialog;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bl;->a(Landroid/app/AlertDialog;)[Landroid/widget/Button;

    move-result-object v2

    .line 89
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/chartboost/sdk/impl/bl$1;->b:I

    if-ge v1, v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bl$1;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 91
    aget-object v3, v2, v1

    .line 94
    iget v4, p0, Lcom/chartboost/sdk/impl/bl$1;->d:I

    if-ne v4, v1, :cond_0

    .line 95
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 97
    :cond_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 98
    new-instance v0, Lcom/chartboost/sdk/impl/bl$1$1;

    invoke-direct {v0, p0, v1}, Lcom/chartboost/sdk/impl/bl$1$1;-><init>(Lcom/chartboost/sdk/impl/bl$1;I)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 107
    :cond_1
    return-void
.end method
