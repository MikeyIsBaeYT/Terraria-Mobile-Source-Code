.class Lcom/chartboost/sdk/impl/bk$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/bk;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/bk;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/bk;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bk$2;->a:Lcom/chartboost/sdk/impl/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bk$2;->a:Lcom/chartboost/sdk/impl/bk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bk;->a(Landroid/view/MotionEvent;)V

    .line 129
    return-void
.end method
