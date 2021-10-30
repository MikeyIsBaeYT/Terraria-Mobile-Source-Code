.class public Lcom/chartboost/sdk/impl/be;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/bg$a;


# instance fields
.field a:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field b:Landroid/media/MediaPlayer$OnPreparedListener;

.field c:Landroid/view/SurfaceHolder$Callback;

.field private d:Ljava/lang/String;

.field private e:Landroid/net/Uri;

.field private f:Ljava/util/Map;
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

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/view/SurfaceHolder;

.field private k:Landroid/media/MediaPlayer;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Landroid/media/MediaPlayer$OnCompletionListener;

.field private q:Landroid/media/MediaPlayer$OnPreparedListener;

.field private r:I

.field private s:Landroid/media/MediaPlayer$OnErrorListener;

.field private t:I

.field private u:Landroid/media/MediaPlayer$OnCompletionListener;

.field private v:Landroid/media/MediaPlayer$OnErrorListener;

.field private w:Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 47
    const-string v0, "VideoSurfaceView"

    iput-object v0, p0, Lcom/chartboost/sdk/impl/be;->d:Ljava/lang/String;

    .line 67
    iput v1, p0, Lcom/chartboost/sdk/impl/be;->h:I

    .line 68
    iput v1, p0, Lcom/chartboost/sdk/impl/be;->i:I

    .line 71
    iput-object v2, p0, Lcom/chartboost/sdk/impl/be;->j:Landroid/view/SurfaceHolder;

    .line 72
    iput-object v2, p0, Lcom/chartboost/sdk/impl/be;->k:Landroid/media/MediaPlayer;

    .line 233
    new-instance v0, Lcom/chartboost/sdk/impl/be$1;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/be$1;-><init>(Lcom/chartboost/sdk/impl/be;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/be;->a:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 243
    new-instance v0, Lcom/chartboost/sdk/impl/be$2;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/be$2;-><init>(Lcom/chartboost/sdk/impl/be;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/be;->b:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 281
    new-instance v0, Lcom/chartboost/sdk/impl/be$3;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/be$3;-><init>(Lcom/chartboost/sdk/impl/be;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/be;->u:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 293
    new-instance v0, Lcom/chartboost/sdk/impl/be$4;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/be$4;-><init>(Lcom/chartboost/sdk/impl/be;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/be;->v:Landroid/media/MediaPlayer$OnErrorListener;

    .line 309
    new-instance v0, Lcom/chartboost/sdk/impl/be$5;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/be$5;-><init>(Lcom/chartboost/sdk/impl/be;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/be;->w:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 349
    new-instance v0, Lcom/chartboost/sdk/impl/be$6;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/be$6;-><init>(Lcom/chartboost/sdk/impl/be;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/be;->c:Landroid/view/SurfaceHolder$Callback;

    .line 86
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/be;->f()V

    .line 87
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/be;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/chartboost/sdk/impl/be;->l:I

    return v0
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/be;I)I
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/chartboost/sdk/impl/be;->l:I

    return p1
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/be;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/chartboost/sdk/impl/be;->j:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/be;Z)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/be;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 379
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->k:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 381
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/be;->k:Landroid/media/MediaPlayer;

    .line 383
    iput v1, p0, Lcom/chartboost/sdk/impl/be;->h:I

    .line 384
    if-eqz p1, :cond_0

    .line 385
    iput v1, p0, Lcom/chartboost/sdk/impl/be;->i:I

    .line 388
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/be;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/chartboost/sdk/impl/be;->m:I

    return v0
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/be;I)I
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/chartboost/sdk/impl/be;->m:I

    return p1
.end method

.method static synthetic c(Lcom/chartboost/sdk/impl/be;I)I
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/chartboost/sdk/impl/be;->h:I

    return p1
.end method

.method static synthetic c(Lcom/chartboost/sdk/impl/be;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->q:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic d(Lcom/chartboost/sdk/impl/be;I)I
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/chartboost/sdk/impl/be;->i:I

    return p1
.end method

.method static synthetic d(Lcom/chartboost/sdk/impl/be;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->k:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic e(Lcom/chartboost/sdk/impl/be;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/chartboost/sdk/impl/be;->t:I

    return v0
.end method

.method static synthetic e(Lcom/chartboost/sdk/impl/be;I)I
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/chartboost/sdk/impl/be;->r:I

    return p1
.end method

.method static synthetic f(Lcom/chartboost/sdk/impl/be;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/chartboost/sdk/impl/be;->n:I

    return v0
.end method

.method static synthetic f(Lcom/chartboost/sdk/impl/be;I)I
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/chartboost/sdk/impl/be;->n:I

    return p1
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 147
    iput v2, p0, Lcom/chartboost/sdk/impl/be;->l:I

    .line 148
    iput v2, p0, Lcom/chartboost/sdk/impl/be;->m:I

    .line 149
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/be;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/be;->c:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 150
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/be;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 151
    invoke-virtual {p0, v3}, Lcom/chartboost/sdk/impl/be;->setFocusable(Z)V

    .line 152
    invoke-virtual {p0, v3}, Lcom/chartboost/sdk/impl/be;->setFocusableInTouchMode(Z)V

    .line 153
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/be;->requestFocus()Z

    .line 154
    iput v2, p0, Lcom/chartboost/sdk/impl/be;->h:I

    .line 155
    iput v2, p0, Lcom/chartboost/sdk/impl/be;->i:I

    .line 156
    return-void
.end method

.method static synthetic g(Lcom/chartboost/sdk/impl/be;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/chartboost/sdk/impl/be;->o:I

    return v0
.end method

.method static synthetic g(Lcom/chartboost/sdk/impl/be;I)I
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/chartboost/sdk/impl/be;->o:I

    return p1
.end method

.method private g()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 189
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->e:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->j:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/be;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 200
    invoke-direct {p0, v5}, Lcom/chartboost/sdk/impl/be;->a(Z)V

    .line 202
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/be;->k:Landroid/media/MediaPlayer;

    .line 203
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->k:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/be;->b:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 204
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->k:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/be;->a:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 205
    const/4 v0, -0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/be;->g:I

    .line 206
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->k:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/be;->u:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 207
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->k:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/be;->v:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 208
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->k:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/be;->w:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 209
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/impl/be;->r:I

    .line 210
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->k:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/be;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/be;->e:Landroid/net/Uri;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/be;->f:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 211
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->k:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/be;->j:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 212
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->k:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 213
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->k:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 214
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 217
    const/4 v0, 0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/be;->h:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    iget-object v1, p0, Lcom/chartboost/sdk/impl/be;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/chartboost/sdk/impl/be;->e:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    iput v4, p0, Lcom/chartboost/sdk/impl/be;->h:I

    .line 221
    iput v4, p0, Lcom/chartboost/sdk/impl/be;->i:I

    .line 222
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->v:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/be;->k:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v6, v5}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 224
    :catch_1
    move-exception v0

    .line 225
    iget-object v1, p0, Lcom/chartboost/sdk/impl/be;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/chartboost/sdk/impl/be;->e:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    iput v4, p0, Lcom/chartboost/sdk/impl/be;->h:I

    .line 227
    iput v4, p0, Lcom/chartboost/sdk/impl/be;->i:I

    .line 228
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->v:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/be;->k:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v6, v5}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0
.end method

.method static synthetic h(Lcom/chartboost/sdk/impl/be;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/chartboost/sdk/impl/be;->i:I

    return v0
.end method

.method private h()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 449
    iget-object v1, p0, Lcom/chartboost/sdk/impl/be;->k:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/chartboost/sdk/impl/be;->h:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/chartboost/sdk/impl/be;->h:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/chartboost/sdk/impl/be;->h:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic i(Lcom/chartboost/sdk/impl/be;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/chartboost/sdk/impl/be;->h:I

    return v0
.end method

.method static synthetic j(Lcom/chartboost/sdk/impl/be;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->p:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic k(Lcom/chartboost/sdk/impl/be;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/chartboost/sdk/impl/be;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->s:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic m(Lcom/chartboost/sdk/impl/be;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/be;->g()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 391
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/be;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 393
    iput v1, p0, Lcom/chartboost/sdk/impl/be;->h:I

    .line 395
    :cond_0
    iput v1, p0, Lcom/chartboost/sdk/impl/be;->i:I

    .line 396
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 429
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/be;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 431
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/impl/be;->t:I

    .line 435
    :goto_0
    return-void

    .line 433
    :cond_0
    iput p1, p0, Lcom/chartboost/sdk/impl/be;->t:I

    goto :goto_0
.end method

.method public a(II)V
    .locals 0

    .prologue
    .line 455
    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/chartboost/sdk/impl/be;->p:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 335
    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/chartboost/sdk/impl/be;->s:Landroid/media/MediaPlayer$OnErrorListener;

    .line 347
    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/chartboost/sdk/impl/be;->q:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 324
    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/be;->a(Landroid/net/Uri;Ljava/util/Map;)V

    .line 164
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
    .line 170
    iput-object p1, p0, Lcom/chartboost/sdk/impl/be;->e:Landroid/net/Uri;

    .line 171
    iput-object p2, p0, Lcom/chartboost/sdk/impl/be;->f:Ljava/util/Map;

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/impl/be;->t:I

    .line 173
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/be;->g()V

    .line 174
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/be;->requestLayout()V

    .line 175
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/be;->invalidate()V

    .line 176
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 399
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/be;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 402
    iput v1, p0, Lcom/chartboost/sdk/impl/be;->h:I

    .line 405
    :cond_0
    iput v1, p0, Lcom/chartboost/sdk/impl/be;->i:I

    .line 406
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/be;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    iget v0, p0, Lcom/chartboost/sdk/impl/be;->g:I

    if-lez v0, :cond_0

    .line 412
    iget v0, p0, Lcom/chartboost/sdk/impl/be;->g:I

    .line 418
    :goto_0
    return v0

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/be;->g:I

    .line 415
    iget v0, p0, Lcom/chartboost/sdk/impl/be;->g:I

    goto :goto_0

    .line 417
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/be;->g:I

    .line 418
    iget v0, p0, Lcom/chartboost/sdk/impl/be;->g:I

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 422
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/be;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 425
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/be;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/be;->k:Landroid/media/MediaPlayer;

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

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/be;->getDefaultSize(II)I

    move-result v2

    .line 102
    invoke-static {v0, p2}, Lcom/chartboost/sdk/impl/be;->getDefaultSize(II)I

    move-result v1

    .line 104
    iget v0, p0, Lcom/chartboost/sdk/impl/be;->l:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/chartboost/sdk/impl/be;->m:I

    if-lez v0, :cond_0

    .line 105
    iget v0, p0, Lcom/chartboost/sdk/impl/be;->m:I

    int-to-float v0, v0

    iget v3, p0, Lcom/chartboost/sdk/impl/be;->l:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    int-to-float v3, v2

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 106
    iget v3, p0, Lcom/chartboost/sdk/impl/be;->l:I

    int-to-float v3, v3

    iget v4, p0, Lcom/chartboost/sdk/impl/be;->m:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 111
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/be;->setMeasuredDimension(II)V

    .line 112
    return-void

    :cond_0
    move v0, v1

    move v1, v2

    goto :goto_0
.end method
