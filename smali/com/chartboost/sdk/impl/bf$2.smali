.class Lcom/chartboost/sdk/impl/bf$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 225
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bf$2;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$2;->a:Lcom/chartboost/sdk/impl/bf;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/bf;->c(Lcom/chartboost/sdk/impl/bf;I)I

    .line 229
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$2;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/bf;->a(Lcom/chartboost/sdk/impl/bf;I)I

    .line 230
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$2;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/bf;->b(Lcom/chartboost/sdk/impl/bf;I)I

    .line 231
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$2;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bf;->c(Lcom/chartboost/sdk/impl/bf;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$2;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bf;->c(Lcom/chartboost/sdk/impl/bf;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bf$2;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/bf;->d(Lcom/chartboost/sdk/impl/bf;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$2;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bf;->e(Lcom/chartboost/sdk/impl/bf;)I

    move-result v0

    .line 238
    if-eqz v0, :cond_1

    .line 239
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bf$2;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/bf;->a(I)V

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$2;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bf;->f(Lcom/chartboost/sdk/impl/bf;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 242
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$2;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bf;->a()V

    .line 244
    :cond_2
    return-void
.end method
