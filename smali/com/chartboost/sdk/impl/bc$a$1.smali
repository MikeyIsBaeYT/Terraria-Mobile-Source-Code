.class Lcom/chartboost/sdk/impl/bc$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/bc$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/Libraries/j$a;

.field final synthetic b:Lcom/chartboost/sdk/impl/bc$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/bc$a;Lcom/chartboost/sdk/Libraries/j$a;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bc$a$1;->b:Lcom/chartboost/sdk/impl/bc$a;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/bc$a$1;->a:Lcom/chartboost/sdk/Libraries/j$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$a$1;->b:Lcom/chartboost/sdk/impl/bc$a;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bc$a;->a(Lcom/chartboost/sdk/impl/bc$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$a$1;->b:Lcom/chartboost/sdk/impl/bc$a;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bc$a;->a(Lcom/chartboost/sdk/impl/bc$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 228
    invoke-static {v0}, Lcom/chartboost/sdk/impl/bc;->a(Landroid/widget/ImageView;)Lcom/chartboost/sdk/impl/bc$a;

    move-result-object v1

    .line 229
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bc$a$1;->a:Lcom/chartboost/sdk/Libraries/j$a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/chartboost/sdk/impl/bc$a$1;->b:Lcom/chartboost/sdk/impl/bc$a;

    if-ne v2, v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bc$a$1;->a:Lcom/chartboost/sdk/Libraries/j$a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/j$a;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$a$1;->b:Lcom/chartboost/sdk/impl/bc$a;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bc$a;->b(Lcom/chartboost/sdk/impl/bc$a;)Lcom/chartboost/sdk/impl/bc$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$a$1;->b:Lcom/chartboost/sdk/impl/bc$a;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bc$a;->b(Lcom/chartboost/sdk/impl/bc$a;)Lcom/chartboost/sdk/impl/bc$b;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bc$a$1;->a:Lcom/chartboost/sdk/Libraries/j$a;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/bc$a$1;->b:Lcom/chartboost/sdk/impl/bc$a;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/bc$a;->c(Lcom/chartboost/sdk/impl/bc$a;)Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/chartboost/sdk/impl/bc$b;->a(Lcom/chartboost/sdk/Libraries/j$a;Landroid/os/Bundle;)V

    .line 236
    :cond_1
    return-void
.end method
