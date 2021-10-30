.class final Lcom/chartboost/sdk/impl/bh$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/bh;->b(Lcom/chartboost/sdk/impl/bh$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bh$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/chartboost/sdk/impl/bh$b;

.field final synthetic c:Lcom/chartboost/sdk/Model/a;

.field final synthetic d:Lcom/chartboost/sdk/impl/bh$a;

.field final synthetic e:Z


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/chartboost/sdk/impl/bh$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bh$a;Z)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bh$1;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/bh$1;->b:Lcom/chartboost/sdk/impl/bh$b;

    iput-object p3, p0, Lcom/chartboost/sdk/impl/bh$1;->c:Lcom/chartboost/sdk/Model/a;

    iput-object p4, p0, Lcom/chartboost/sdk/impl/bh$1;->d:Lcom/chartboost/sdk/impl/bh$a;

    iput-boolean p5, p0, Lcom/chartboost/sdk/impl/bh$1;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bh$1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 88
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bh$1;->b:Lcom/chartboost/sdk/impl/bh$b;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bh$1;->c:Lcom/chartboost/sdk/Model/a;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/bh$1;->d:Lcom/chartboost/sdk/impl/bh$a;

    iget-boolean v3, p0, Lcom/chartboost/sdk/impl/bh$1;->e:Z

    invoke-static {v0, v1, v2, v3}, Lcom/chartboost/sdk/impl/bh;->a(Lcom/chartboost/sdk/impl/bh$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bh$a;Z)V

    .line 89
    return-void
.end method
