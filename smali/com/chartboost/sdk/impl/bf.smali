.class public Lcom/chartboost/sdk/impl/bf;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/chartboost/sdk/impl/bg$a;


# instance fields
.field a:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field b:Landroid/media/MediaPlayer$OnPreparedListener;

.field private c:Ljava/lang/String;

.field private d:Landroid/net/Uri;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/view/Surface;

.field private j:Landroid/media/MediaPlayer;

.field private k:I

.field private l:I

.field private m:Landroid/media/MediaPlayer$OnCompletionListener;

.field private n:Landroid/media/MediaPlayer$OnPreparedListener;

.field private o:I

.field private p:Landroid/media/MediaPlayer$OnErrorListener;

.field private q:I

.field private r:Landroid/media/MediaPlayer$OnCompletionListener;

.field private s:Landroid/media/MediaPlayer$OnErrorListener;

.field private t:Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 52
    const-string v0, "VideoTextureView"

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bf;->c:Ljava/lang/String;

    .line 72
    iput v1, p0, Lcom/chartboost/sdk/impl/bf;->g:I

    .line 73
    iput v1, p0, Lcom/chartboost/sdk/impl/bf;->h:I

    .line 76
    iput-object v2, p0, Lcom/chartboost/sdk/impl/bf;->i:Landroid/view/Surface;

    .line 77
    iput-object v2, p0, Lcom/chartboost/sdk/impl/bf;->j:Landroid/media/MediaPlayer;

    .line 215
    new-instance v0, Lcom/chartboost/sdk/impl/bf$1;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/bf$1;-><init>(Lcom/chartboost/sdk/impl/bf;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bf;->a:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 225
    new-instance v0, Lcom/chartboost/sdk/impl/bf$2;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/bf$2;-><init>(Lcom/chartboost/sdk/impl/bf;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bf;->b:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 247
    new-instance v0, Lcom/chartboost/sdk/impl/bf$3;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/bf$3;-><init>(Lcom/chartboost/sdk/impl/bf;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bf;->r:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 259
    new-instance v0, Lcom/chartboost/sdk/impl/bf$4;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/bf$4;-><init>(Lcom/chartboost/sdk/impl/bf;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bf;->s:Landroid/media/MediaPlayer$OnErrorListener;

    .line 275
    new-instance v0, Lcom/chartboost/sdk/impl/bf$5;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/bf$5;-><init>(Lcom/chartboost/sdk/impl/bf;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bf;->t:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 89
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/bf;->f()V

    .line 90
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/bf;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/chartboost/sdk/impl/bf;->k:I

    return v0
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/bf;I)I
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/chartboost/sdk/impl/bf;->k:I

    return p1
.end method

.method private a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 319
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->j:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 321
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bf;->j:Landroid/media/MediaPlayer;

    .line 323
    iput v1, p0, Lcom/chartboost/sdk/impl/bf;->g:I

    .line 324
    if-eqz p1, :cond_0

    .line 325
    iput v1, p0, Lcom/chartboost/sdk/impl/bf;->h:I

    .line 328
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/bf;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/chartboost/sdk/impl/bf;->l:I

    return v0
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/bf;I)I
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/chartboost/sdk/impl/bf;->l:I

    return p1
.end method

.method static synthetic c(Lcom/chartboost/sdk/impl/bf;I)I
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/chartboost/sdk/impl/bf;->g:I

    return p1
.end method

.method static synthetic c(Lcom/chartboost/sdk/impl/bf;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->n:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic d(Lcom/chartboost/sdk/impl/bf;I)I
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/chartboost/sdk/impl/bf;->h:I

    return p1
.end method

.method static synthetic d(Lcom/chartboost/sdk/impl/bf;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->j:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic e(Lcom/chartboost/sdk/impl/bf;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/chartboost/sdk/impl/bf;->q:I

    return v0
.end method

.method static synthetic e(Lcom/chartboost/sdk/impl/bf;I)I
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/chartboost/sdk/impl/bf;->o:I

    return p1
.end method

.method static synthetic f(Lcom/chartboost/sdk/impl/bf;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/chartboost/sdk/impl/bf;->h:I

    return v0
.end method

.method private f()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 103
    iput v0, p0, Lcom/chartboost/sdk/impl/bf;->k:I

    .line 104
    iput v0, p0, Lcom/chartboost/sdk/impl/bf;->l:I

    .line 105
    invoke-virtual {p0, p0}, Lcom/chartboost/sdk/impl/bf;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 106
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/bf;->setFocusable(Z)V

    .line 107
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/bf;->setFocusableInTouchMode(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bf;->requestFocus()Z

    .line 109
    iput v0, p0, Lcom/chartboost/sdk/impl/bf;->g:I

    .line 110
    iput v0, p0, Lcom/chartboost/sdk/impl/bf;->h:I

    .line 111
    return-void
.end method

.method static synthetic g(Lcom/chartboost/sdk/impl/bf;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/chartboost/sdk/impl/bf;->g:I

    return v0
.end method

.method private g()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 156
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->d:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->i:Landroid/view/Surface;

    if-nez v0, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bf;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 167
    invoke-direct {p0, v5}, Lcom/chartboost/sdk/impl/bf;->a(Z)V

    .line 171
    :try_start_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 172
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bf;->d:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 173
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 175
    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/chartboost/sdk/impl/bf;->l:I

    .line 178
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/chartboost/sdk/impl/bf;->k:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 184
    :goto_1
    :try_start_1
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bf;->j:Landroid/media/MediaPlayer;

    .line 185
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->j:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bf;->b:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 186
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->j:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bf;->a:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 187
    const/4 v0, -0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/bf;->f:I

    .line 188
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->j:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bf;->r:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 189
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->j:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bf;->s:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 190
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->j:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bf;->t:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/impl/bf;->o:I

    .line 192
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->j:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bf;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/bf;->d:Landroid/net/Uri;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/bf;->e:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 193
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->j:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bf;->i:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 194
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->j:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 195
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->j:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 196
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 199
    const/4 v0, 0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/bf;->g:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bf;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/chartboost/sdk/impl/bf;->d:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    iput v4, p0, Lcom/chartboost/sdk/impl/bf;->g:I

    .line 203
    iput v4, p0, Lcom/chartboost/sdk/impl/bf;->h:I

    .line 204
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->s:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bf;->j:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v6, v5}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 179
    :catch_1
    move-exception v0

    .line 180
    const-string v1, "play video"

    const-string v2, "read size error"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 206
    :catch_2
    move-exception v0

    .line 207
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bf;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/chartboost/sdk/impl/bf;->d:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 208
    iput v4, p0, Lcom/chartboost/sdk/impl/bf;->g:I

    .line 209
    iput v4, p0, Lcom/chartboost/sdk/impl/bf;->h:I

    .line 210
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->s:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bf;->j:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v6, v5}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0
.end method

.method static synthetic h(Lcom/chartboost/sdk/impl/bf;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->m:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method private h()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 389
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bf;->j:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/chartboost/sdk/impl/bf;->g:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/chartboost/sdk/impl/bf;->g:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/chartboost/sdk/impl/bf;->g:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic i(Lcom/chartboost/sdk/impl/bf;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/chartboost/sdk/impl/bf;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->p:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 331
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/bf;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 333
    iput v1, p0, Lcom/chartboost/sdk/impl/bf;->g:I

    .line 335
    :cond_0
    iput v1, p0, Lcom/chartboost/sdk/impl/bf;->h:I

    .line 336
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/bf;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 371
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/impl/bf;->q:I

    .line 375
    :goto_0
    return-void

    .line 373
    :cond_0
    iput p1, p0, Lcom/chartboost/sdk/impl/bf;->q:I

    goto :goto_0
.end method

.method public a(II)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 122
    iget v0, p0, Lcom/chartboost/sdk/impl/bf;->k:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/chartboost/sdk/impl/bf;->l:I

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    int-to-float v0, p1

    iget v1, p0, Lcom/chartboost/sdk/impl/bf;->k:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p2

    iget v2, p0, Lcom/chartboost/sdk/impl/bf;->l:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 125
    iget v1, p0, Lcom/chartboost/sdk/impl/bf;->k:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/chartboost/sdk/impl/bf;->l:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    .line 127
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 128
    int-to-float v3, p1

    div-float/2addr v1, v3

    int-to-float v3, p2

    div-float/2addr v0, v3

    int-to-float v3, p1

    div-float/2addr v3, v5

    int-to-float v4, p2

    div-float/2addr v4, v5

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 130
    invoke-virtual {p0, v2}, Lcom/chartboost/sdk/impl/bf;->setTransform(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method public a(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bf;->m:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 301
    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bf;->p:Landroid/media/MediaPlayer$OnErrorListener;

    .line 313
    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bf;->n:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 290
    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/bf;->a(Landroid/net/Uri;Ljava/util/Map;)V

    .line 119
    return-void
.end method

.method public a(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bf;->d:Landroid/net/Uri;

    .line 138
    iput-object p2, p0, Lcom/chartboost/sdk/impl/bf;->e:Ljava/util/Map;

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/impl/bf;->q:I

    .line 140
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/bf;->g()V

    .line 141
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bf;->requestLayout()V

    .line 142
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bf;->invalidate()V

    .line 143
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 339
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/bf;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 342
    iput v1, p0, Lcom/chartboost/sdk/impl/bf;->g:I

    .line 345
    :cond_0
    iput v1, p0, Lcom/chartboost/sdk/impl/bf;->h:I

    .line 346
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/bf;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    iget v0, p0, Lcom/chartboost/sdk/impl/bf;->f:I

    if-lez v0, :cond_0

    .line 352
    iget v0, p0, Lcom/chartboost/sdk/impl/bf;->f:I

    .line 358
    :goto_0
    return v0

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/bf;->f:I

    .line 355
    iget v0, p0, Lcom/chartboost/sdk/impl/bf;->f:I

    goto :goto_0

    .line 357
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/bf;->f:I

    .line 358
    iget v0, p0, Lcom/chartboost/sdk/impl/bf;->f:I

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/bf;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 365
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/bf;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 394
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bf;->i:Landroid/view/Surface;

    .line 395
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/bf;->g()V

    .line 396
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v1, 0x1

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bf;->i:Landroid/view/Surface;

    .line 402
    invoke-direct {p0, v1}, Lcom/chartboost/sdk/impl/bf;->a(Z)V

    .line 403
    return v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 408
    iget v0, p0, Lcom/chartboost/sdk/impl/bf;->h:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    .line 409
    :goto_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bf;->j:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 410
    iget v0, p0, Lcom/chartboost/sdk/impl/bf;->q:I

    if-eqz v0, :cond_0

    .line 411
    iget v0, p0, Lcom/chartboost/sdk/impl/bf;->q:I

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/bf;->a(I)V

    .line 413
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bf;->a()V

    .line 415
    :cond_1
    return-void

    .line 408
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 420
    return-void
.end method
