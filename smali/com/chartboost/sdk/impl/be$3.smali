.class Lcom/chartboost/sdk/impl/be$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 281
    iput-object p1, p0, Lcom/chartboost/sdk/impl/be$3;->a:Lcom/chartboost/sdk/impl/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v1, 0x5

    .line 283
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be$3;->a:Lcom/chartboost/sdk/impl/be;

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/be;->d(Lcom/chartboost/sdk/impl/be;I)I

    .line 284
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be$3;->a:Lcom/chartboost/sdk/impl/be;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/be;->i(Lcom/chartboost/sdk/impl/be;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be$3;->a:Lcom/chartboost/sdk/impl/be;

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/be;->c(Lcom/chartboost/sdk/impl/be;I)I

    .line 286
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be$3;->a:Lcom/chartboost/sdk/impl/be;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/be;->j(Lcom/chartboost/sdk/impl/be;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be$3;->a:Lcom/chartboost/sdk/impl/be;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/be;->j(Lcom/chartboost/sdk/impl/be;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/be$3;->a:Lcom/chartboost/sdk/impl/be;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/be;->d(Lcom/chartboost/sdk/impl/be;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 290
    :cond_0
    return-void
.end method
