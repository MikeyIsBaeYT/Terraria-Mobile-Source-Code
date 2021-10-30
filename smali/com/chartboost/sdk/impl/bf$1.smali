.class Lcom/chartboost/sdk/impl/bf$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/bf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/bf;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/bf;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bf$1;->a:Lcom/chartboost/sdk/impl/bf;

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
    .line 217
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$1;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/bf;->a(Lcom/chartboost/sdk/impl/bf;I)I

    .line 218
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$1;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/bf;->b(Lcom/chartboost/sdk/impl/bf;I)I

    .line 219
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$1;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bf;->a(Lcom/chartboost/sdk/impl/bf;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$1;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bf;->b(Lcom/chartboost/sdk/impl/bf;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$1;->a:Lcom/chartboost/sdk/impl/bf;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bf$1;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/bf;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/bf$1;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/bf;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/bf;->a(II)V

    .line 222
    :cond_0
    return-void
.end method
