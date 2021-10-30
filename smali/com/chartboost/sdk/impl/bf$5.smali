.class Lcom/chartboost/sdk/impl/bf$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


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
    .line 275
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bf$5;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 277
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$5;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-static {v0, p2}, Lcom/chartboost/sdk/impl/bf;->e(Lcom/chartboost/sdk/impl/bf;I)I

    .line 278
    return-void
.end method
