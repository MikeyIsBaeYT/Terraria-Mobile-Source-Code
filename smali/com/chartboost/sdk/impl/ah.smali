.class public Lcom/chartboost/sdk/impl/ah;
.super Lcom/chartboost/sdk/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/ah$a;
    }
.end annotation


# instance fields
.field protected k:Lcom/chartboost/sdk/Libraries/j;

.field protected l:Lcom/chartboost/sdk/Libraries/j;

.field protected m:Lcom/chartboost/sdk/Libraries/e$a;

.field protected n:Ljava/lang/String;

.field protected o:F

.field private p:Lcom/chartboost/sdk/Libraries/j;

.field private q:Lcom/chartboost/sdk/Libraries/j;

.field private r:Lcom/chartboost/sdk/Libraries/j;

.field private s:Lcom/chartboost/sdk/Libraries/j;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Model/a;)V
    .locals 1

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/f;-><init>(Lcom/chartboost/sdk/Model/a;)V

    .line 34
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/chartboost/sdk/impl/ah;->o:F

    .line 186
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ah;->p:Lcom/chartboost/sdk/Libraries/j;

    .line 187
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ah;->q:Lcom/chartboost/sdk/Libraries/j;

    .line 188
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ah;->k:Lcom/chartboost/sdk/Libraries/j;

    .line 189
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ah;->l:Lcom/chartboost/sdk/Libraries/j;

    .line 190
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ah;->r:Lcom/chartboost/sdk/Libraries/j;

    .line 191
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ah;->s:Lcom/chartboost/sdk/Libraries/j;

    .line 192
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/ah;)Lcom/chartboost/sdk/Libraries/j;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->p:Lcom/chartboost/sdk/Libraries/j;

    return-object v0
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/ah;)Lcom/chartboost/sdk/Libraries/j;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->q:Lcom/chartboost/sdk/Libraries/j;

    return-object v0
.end method

.method static synthetic c(Lcom/chartboost/sdk/impl/ah;)Lcom/chartboost/sdk/Libraries/j;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->r:Lcom/chartboost/sdk/Libraries/j;

    return-object v0
.end method

.method static synthetic d(Lcom/chartboost/sdk/impl/ah;)Lcom/chartboost/sdk/Libraries/j;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->s:Lcom/chartboost/sdk/Libraries/j;

    return-object v0
.end method

.method static synthetic e(Lcom/chartboost/sdk/impl/ah;)V
    .locals 0

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ah;->h()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/j;F)V
    .locals 2

    .prologue
    .line 238
    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/j;->b()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/j;->g()F

    move-result v1

    div-float/2addr v0, v1

    mul-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 239
    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/j;->c()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/j;->g()F

    move-result v1

    div-float/2addr v0, v1

    mul-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 240
    return-void
.end method

.method public a(Lcom/chartboost/sdk/Libraries/e$a;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 201
    invoke-super {p0, p1}, Lcom/chartboost/sdk/f;->a(Lcom/chartboost/sdk/Libraries/e$a;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    :goto_0
    return v0

    .line 204
    :cond_0
    const-string v1, "ad_id"

    invoke-virtual {p1, v1}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ah;->n:Ljava/lang/String;

    .line 205
    const-string v1, "ux"

    invoke-virtual {p1, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ah;->m:Lcom/chartboost/sdk/Libraries/e$a;

    .line 207
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ah;->e:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "frame-portrait"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ah;->e:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "close-portrait"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    :cond_1
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ah;->i:Z

    .line 209
    :cond_2
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ah;->e:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "frame-landscape"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ah;->e:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "close-landscape"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 210
    :cond_3
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ah;->j:Z

    .line 212
    :cond_4
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ah;->q:Lcom/chartboost/sdk/Libraries/j;

    const-string v2, "frame-landscape"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ah;->p:Lcom/chartboost/sdk/Libraries/j;

    const-string v2, "frame-portrait"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ah;->l:Lcom/chartboost/sdk/Libraries/j;

    const-string v2, "close-landscape"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 215
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ah;->k:Lcom/chartboost/sdk/Libraries/j;

    const-string v2, "close-portrait"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ah;->e:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "ad-portrait"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 218
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ah;->i:Z

    .line 219
    :cond_5
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ah;->e:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "ad-landscape"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 220
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ah;->j:Z

    .line 222
    :cond_6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->s:Lcom/chartboost/sdk/Libraries/j;

    const-string v1, "ad-landscape"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->r:Lcom/chartboost/sdk/Libraries/j;

    const-string v1, "ad-portrait"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 224
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)Landroid/graphics/Point;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 227
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->e:Lcom/chartboost/sdk/Libraries/e$a;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "offset"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    .line 228
    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/e$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    new-instance v0, Landroid/graphics/Point;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->f(Ljava/lang/String;)I

    move-result v2

    const-string v3, "y"

    invoke-virtual {v1, v3}, Lcom/chartboost/sdk/Libraries/e$a;->f(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 230
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0
.end method

.method protected b(Landroid/content/Context;)Lcom/chartboost/sdk/f$a;
    .locals 1

    .prologue
    .line 196
    new-instance v0, Lcom/chartboost/sdk/impl/ah$a;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/impl/ah$a;-><init>(Lcom/chartboost/sdk/impl/ah;Landroid/content/Context;)V

    return-object v0
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 244
    invoke-super {p0}, Lcom/chartboost/sdk/f;->d()V

    .line 245
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->q:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 246
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->p:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 247
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->l:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 248
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->k:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 249
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->s:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 250
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->r:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 251
    iput-object v1, p0, Lcom/chartboost/sdk/impl/ah;->q:Lcom/chartboost/sdk/Libraries/j;

    .line 252
    iput-object v1, p0, Lcom/chartboost/sdk/impl/ah;->p:Lcom/chartboost/sdk/Libraries/j;

    .line 253
    iput-object v1, p0, Lcom/chartboost/sdk/impl/ah;->l:Lcom/chartboost/sdk/Libraries/j;

    .line 254
    iput-object v1, p0, Lcom/chartboost/sdk/impl/ah;->k:Lcom/chartboost/sdk/Libraries/j;

    .line 255
    iput-object v1, p0, Lcom/chartboost/sdk/impl/ah;->s:Lcom/chartboost/sdk/Libraries/j;

    .line 256
    iput-object v1, p0, Lcom/chartboost/sdk/impl/ah;->r:Lcom/chartboost/sdk/Libraries/j;

    .line 257
    return-void
.end method
