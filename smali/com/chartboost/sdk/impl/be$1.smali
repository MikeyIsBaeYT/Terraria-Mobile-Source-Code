.class Lcom/chartboost/sdk/impl/be$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/be;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/be;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/chartboost/sdk/impl/be$1;->a:Lcom/chartboost/sdk/impl/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 235
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be$1;->a:Lcom/chartboost/sdk/impl/be;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/be;->a(Lcom/chartboost/sdk/impl/be;I)I

    .line 236
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be$1;->a:Lcom/chartboost/sdk/impl/be;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/be;->b(Lcom/chartboost/sdk/impl/be;I)I

    .line 237
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be$1;->a:Lcom/chartboost/sdk/impl/be;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/be;->a(Lcom/chartboost/sdk/impl/be;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/be$1;->a:Lcom/chartboost/sdk/impl/be;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/be;->b(Lcom/chartboost/sdk/impl/be;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be$1;->a:Lcom/chartboost/sdk/impl/be;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/be;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/be$1;->a:Lcom/chartboost/sdk/impl/be;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/be;->a(Lcom/chartboost/sdk/impl/be;)I

    move-result v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/be$1;->a:Lcom/chartboost/sdk/impl/be;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/be;->b(Lcom/chartboost/sdk/impl/be;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 240
    :cond_0
    return-void
.end method
