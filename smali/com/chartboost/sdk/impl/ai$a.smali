.class public Lcom/chartboost/sdk/impl/ai$a;
.super Lcom/chartboost/sdk/impl/ah$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic g:Lcom/chartboost/sdk/impl/ai;

.field private h:Lcom/chartboost/sdk/impl/bk;

.field private i:Lcom/chartboost/sdk/impl/ao;

.field private j:Lcom/chartboost/sdk/impl/al;

.field private k:Landroid/view/View;

.field private l:Lcom/chartboost/sdk/impl/ag;

.field private m:Lcom/chartboost/sdk/impl/aj;

.field private n:Lcom/chartboost/sdk/impl/bk;


# direct methods
.method private constructor <init>(Lcom/chartboost/sdk/impl/ai;Landroid/content/Context;)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    .line 85
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/impl/ah$a;-><init>(Lcom/chartboost/sdk/impl/ah;Landroid/content/Context;)V

    .line 87
    iget-boolean v0, p1, Lcom/chartboost/sdk/impl/ai;->K:Z

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->k:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->k:Landroid/view/View;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 91
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->k:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ai$a;->addView(Landroid/view/View;)V

    .line 94
    :cond_0
    invoke-static {p1}, Lcom/chartboost/sdk/impl/ai;->a(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v1, :cond_1

    .line 95
    new-instance v0, Lcom/chartboost/sdk/impl/al;

    invoke-direct {v0, p2, p1}, Lcom/chartboost/sdk/impl/al;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/ai;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/al;

    .line 96
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/al;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/al;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/al;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ai$a;->addView(Landroid/view/View;)V

    .line 100
    :cond_1
    new-instance v0, Lcom/chartboost/sdk/impl/ao;

    invoke-direct {v0, p2, p1}, Lcom/chartboost/sdk/impl/ao;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/ai;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/ao;

    .line 101
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/ao;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ao;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/ao;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ai$a;->addView(Landroid/view/View;)V

    .line 103
    new-instance v0, Lcom/chartboost/sdk/impl/ag;

    invoke-direct {v0, p2, p1}, Lcom/chartboost/sdk/impl/ag;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/ai;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->l:Lcom/chartboost/sdk/impl/ag;

    .line 104
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->l:Lcom/chartboost/sdk/impl/ag;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ag;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->l:Lcom/chartboost/sdk/impl/ag;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ai$a;->addView(Landroid/view/View;)V

    .line 107
    invoke-static {p1}, Lcom/chartboost/sdk/impl/ai;->b(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v1, :cond_2

    .line 108
    new-instance v0, Lcom/chartboost/sdk/impl/aj;

    invoke-direct {v0, p2, p1}, Lcom/chartboost/sdk/impl/aj;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/ai;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->m:Lcom/chartboost/sdk/impl/aj;

    .line 109
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->m:Lcom/chartboost/sdk/impl/aj;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/aj;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->m:Lcom/chartboost/sdk/impl/aj;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ai$a;->addView(Landroid/view/View;)V

    .line 114
    :cond_2
    new-instance v0, Lcom/chartboost/sdk/impl/ai$a$1;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai$a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/chartboost/sdk/impl/ai$a$1;-><init>(Lcom/chartboost/sdk/impl/ai$a;Landroid/content/Context;Lcom/chartboost/sdk/impl/ai;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->h:Lcom/chartboost/sdk/impl/bk;

    .line 125
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->h:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/bk;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->h:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ai$a;->addView(Landroid/view/View;)V

    .line 129
    new-instance v0, Lcom/chartboost/sdk/impl/ai$a$2;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai$a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/chartboost/sdk/impl/ai$a$2;-><init>(Lcom/chartboost/sdk/impl/ai$a;Landroid/content/Context;Lcom/chartboost/sdk/impl/ai;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->n:Lcom/chartboost/sdk/impl/bk;

    .line 135
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->n:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/bk;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->n:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ai$a;->addView(Landroid/view/View;)V

    .line 139
    iget-object v0, p1, Lcom/chartboost/sdk/impl/ai;->m:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "progress"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "background-color"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/chartboost/sdk/impl/ai;->m:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "progress"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "border-color"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/chartboost/sdk/impl/ai;->m:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "progress"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "progress-color"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/chartboost/sdk/impl/ai;->m:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "progress"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "radius"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/chartboost/sdk/impl/ai;->J:Z

    .line 144
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/ao;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ao;->c()Lcom/chartboost/sdk/impl/ak;

    move-result-object v0

    .line 145
    iget-object v1, p1, Lcom/chartboost/sdk/impl/ai;->m:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "progress"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "background-color"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/chartboost/sdk/f;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ak;->a(I)V

    .line 146
    iget-object v1, p1, Lcom/chartboost/sdk/impl/ai;->m:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "progress"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "border-color"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/chartboost/sdk/f;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ak;->b(I)V

    .line 147
    iget-object v1, p1, Lcom/chartboost/sdk/impl/ai;->m:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "progress"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "progress-color"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/chartboost/sdk/f;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ak;->c(I)V

    .line 148
    iget-object v1, p1, Lcom/chartboost/sdk/impl/ai;->m:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "progress"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "radius"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/e$a;->j()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ak;->b(F)V

    .line 151
    :cond_3
    iget-object v0, p1, Lcom/chartboost/sdk/impl/ai;->m:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "video-controls-background"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "color"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 152
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/ao;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/ai;->m:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "video-controls-background"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "color"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/chartboost/sdk/f;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ao;->a(I)V

    .line 155
    :cond_4
    invoke-static {p1}, Lcom/chartboost/sdk/impl/ai;->e(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v1, :cond_5

    iget-boolean v0, p1, Lcom/chartboost/sdk/impl/ai;->x:Z

    if-eqz v0, :cond_5

    .line 156
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->l:Lcom/chartboost/sdk/impl/ag;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/ai;->m:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "post-video-toaster"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/chartboost/sdk/impl/ai;->m:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v3, "post-video-toaster"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    const-string v3, "tagline"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ag;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_5
    invoke-static {p1}, Lcom/chartboost/sdk/impl/ai;->f(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v1, :cond_6

    iget-boolean v0, p1, Lcom/chartboost/sdk/impl/ai;->w:Z

    if-eqz v0, :cond_6

    .line 161
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/al;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/ai;->m:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "confirmation"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/chartboost/sdk/impl/ai;->m:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v3, "confirmation"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    const-string v3, "color"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/chartboost/sdk/f;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/al;->a(Ljava/lang/String;I)V

    .line 165
    :cond_6
    invoke-static {p1}, Lcom/chartboost/sdk/impl/ai;->g(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v1, :cond_7

    iget-boolean v0, p1, Lcom/chartboost/sdk/impl/ai;->y:Z

    if-eqz v0, :cond_7

    .line 166
    iget-object v0, p1, Lcom/chartboost/sdk/impl/ai;->m:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "post-video-reward-toaster"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "position"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "inside-top"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/chartboost/sdk/impl/am$a;->a:Lcom/chartboost/sdk/impl/am$a;

    .line 168
    :goto_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a;->m:Lcom/chartboost/sdk/impl/aj;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/aj;->a(Lcom/chartboost/sdk/impl/am$a;)V

    .line 169
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/ai;->m:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "post-video-reward-toaster"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;)V

    .line 170
    iget-object v0, p1, Lcom/chartboost/sdk/impl/ai;->G:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 171
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/ai;->I:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/aj;->a(Lcom/chartboost/sdk/Libraries/j;)V

    .line 174
    :cond_7
    invoke-static {p1}, Lcom/chartboost/sdk/impl/ai;->h(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "video-click-button"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 175
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/ao;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ao;->d()V

    .line 178
    :cond_8
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/ao;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/ai;->m:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "video-progress-timer-enabled"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->i(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ao;->c(Z)V

    .line 179
    iget-boolean v0, p1, Lcom/chartboost/sdk/impl/ai;->L:Z

    if-nez v0, :cond_9

    iget-boolean v0, p1, Lcom/chartboost/sdk/impl/ai;->K:Z

    if-eqz v0, :cond_a

    .line 180
    :cond_9
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    :cond_a
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/ai;->a()Lcom/chartboost/sdk/Libraries/f;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->b()Z

    move-result v0

    .line 183
    invoke-static {p1}, Lcom/chartboost/sdk/impl/ai;->i(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    if-eqz v0, :cond_c

    const-string v0, "video-portrait"

    :goto_1
    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    .line 184
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/chartboost/sdk/impl/ai;->s:Ljava/lang/String;

    .line 185
    iget-object v0, p1, Lcom/chartboost/sdk/impl/ai;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 186
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_ID_MISSING:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-static {p1, v0}, Lcom/chartboost/sdk/impl/ai;->a(Lcom/chartboost/sdk/impl/ai;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 200
    :goto_2
    return-void

    .line 166
    :cond_b
    sget-object v0, Lcom/chartboost/sdk/impl/am$a;->b:Lcom/chartboost/sdk/impl/am$a;

    goto/16 :goto_0

    .line 183
    :cond_c
    const-string v0, "video-landscape"

    goto :goto_1

    .line 190
    :cond_d
    iget-object v0, p1, Lcom/chartboost/sdk/impl/ai;->r:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 191
    iget-object v0, p1, Lcom/chartboost/sdk/impl/ai;->s:Ljava/lang/String;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/chartboost/sdk/impl/ai;->r:Ljava/lang/String;

    .line 192
    :cond_e
    iget-object v0, p1, Lcom/chartboost/sdk/impl/ai;->r:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 193
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-static {p1, v0}, Lcom/chartboost/sdk/impl/ai;->b(Lcom/chartboost/sdk/impl/ai;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_2

    .line 198
    :cond_f
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/ao;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/ai;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ao;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method synthetic constructor <init>(Lcom/chartboost/sdk/impl/ai;Landroid/content/Context;Lcom/chartboost/sdk/impl/ai$1;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/impl/ai$a;-><init>(Lcom/chartboost/sdk/impl/ai;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/ai$a;)Lcom/chartboost/sdk/impl/aj;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->m:Lcom/chartboost/sdk/impl/aj;

    return-object v0
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/ai$a;Z)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/ai$a;->d(Z)V

    return-void
.end method

.method private a(Lcom/chartboost/sdk/impl/ai$b;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 371
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iput-object p1, v0, Lcom/chartboost/sdk/impl/ai;->p:Lcom/chartboost/sdk/impl/ai$b;

    .line 372
    sget-object v0, Lcom/chartboost/sdk/impl/ai$2;->a:[I

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/ai$b;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 419
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai$a;->g()Z

    move-result v0

    .line 420
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/ai$a;->b(Z)Lcom/chartboost/sdk/impl/bk;

    move-result-object v3

    .line 421
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 422
    iget-object v4, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v4, v0, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 423
    invoke-virtual {p0, v2}, Lcom/chartboost/sdk/impl/ai$a;->b(Z)Lcom/chartboost/sdk/impl/bk;

    move-result-object v0

    .line 424
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 425
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v3, v2, v0, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 428
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ai;->L:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ai;->K:Z

    if-eqz v0, :cond_2

    .line 429
    :cond_1
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->r()Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_1
    iget-object v4, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v3, v0, v4, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 430
    :cond_2
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->r()Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    :goto_2
    iget-object v4, p0, Lcom/chartboost/sdk/impl/ai$a;->b:Lcom/chartboost/sdk/impl/bj;

    invoke-virtual {v3, v0, v4, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 431
    sget-object v0, Lcom/chartboost/sdk/impl/ai$b;->a:Lcom/chartboost/sdk/impl/ai$b;

    if-eq p1, v0, :cond_d

    :goto_3
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/ai$a;->a(Z)V

    .line 432
    return-void

    .line 374
    :pswitch_0
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->r()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_4
    iget-object v4, p0, Lcom/chartboost/sdk/impl/ai$a;->d:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v3, v0, v4, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 375
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->p(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v3, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v3, :cond_3

    .line 376
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/al;

    invoke-virtual {v0, v1, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 377
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ai;->K:Z

    if-eqz v0, :cond_4

    .line 378
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->k:Landroid/view/View;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 379
    :cond_4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/ao;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 380
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->h:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 381
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->l:Lcom/chartboost/sdk/impl/ag;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 382
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->d:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/bk;->setEnabled(Z)V

    .line 383
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->h:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/bk;->setEnabled(Z)V

    .line 384
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/ao;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ao;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 374
    goto :goto_4

    .line 387
    :pswitch_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->d:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 388
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->q(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v3, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v3, :cond_6

    .line 389
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/al;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 390
    :cond_6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ai;->K:Z

    if-eqz v0, :cond_7

    .line 391
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->k:Landroid/view/View;

    invoke-virtual {v0, v1, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 392
    :cond_7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/ao;

    invoke-virtual {v0, v1, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 393
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->h:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 394
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->l:Lcom/chartboost/sdk/impl/ag;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 395
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->d:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bk;->setEnabled(Z)V

    .line 396
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->h:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/bk;->setEnabled(Z)V

    .line 397
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/ao;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ao;->setEnabled(Z)V

    goto/16 :goto_0

    .line 400
    :pswitch_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->d:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0, v1, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 401
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->r(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v3, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v3, :cond_8

    .line 402
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/al;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 403
    :cond_8
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ai;->K:Z

    if-eqz v0, :cond_9

    .line 404
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->k:Landroid/view/View;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 405
    :cond_9
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/ao;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 406
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->h:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0, v1, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 407
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->H:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->G:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ai;->x:Z

    if-eqz v0, :cond_a

    move v0, v1

    .line 409
    :goto_5
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ai$a;->l:Lcom/chartboost/sdk/impl/ag;

    invoke-virtual {v3, v0, v4, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 410
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->h:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bk;->setEnabled(Z)V

    .line 411
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->d:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bk;->setEnabled(Z)V

    .line 412
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/ao;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ao;->setEnabled(Z)V

    .line 413
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ai;->z:Z

    if-eqz v0, :cond_0

    .line 414
    invoke-direct {p0, v2}, Lcom/chartboost/sdk/impl/ai$a;->e(Z)V

    goto/16 :goto_0

    :cond_a
    move v0, v2

    .line 407
    goto :goto_5

    :cond_b
    move v0, v2

    .line 429
    goto/16 :goto_1

    :cond_c
    move v0, v2

    .line 430
    goto/16 :goto_2

    :cond_d
    move v1, v2

    .line 431
    goto/16 :goto_3

    .line 372
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/ai$a;)Lcom/chartboost/sdk/impl/ao;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/ao;

    return-object v0
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/ai$a;Z)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/ai$a;->c(Z)V

    return-void
.end method

.method private c(Z)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 305
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->p:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v3, Lcom/chartboost/sdk/impl/ai$b;->b:Lcom/chartboost/sdk/impl/ai$b;

    if-ne v0, v3, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ai;->w:Z

    if-eqz v0, :cond_2

    .line 309
    const-string v0, "integrated"

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->n:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Tracking/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    sget-object v0, Lcom/chartboost/sdk/impl/ai$b;->a:Lcom/chartboost/sdk/impl/ai$b;

    invoke-direct {p0, v0, p1}, Lcom/chartboost/sdk/impl/ai$a;->a(Lcom/chartboost/sdk/impl/ai$b;Z)V

    goto :goto_0

    .line 313
    :cond_2
    sget-object v0, Lcom/chartboost/sdk/impl/ai$b;->b:Lcom/chartboost/sdk/impl/ai$b;

    invoke-direct {p0, v0, p1}, Lcom/chartboost/sdk/impl/ai$a;->a(Lcom/chartboost/sdk/impl/ai$b;Z)V

    .line 315
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget v0, v0, Lcom/chartboost/sdk/impl/ai;->q:I

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->m:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v3, "timer"

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v3, "delay"

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 316
    const-string v3, "InterstitialVideoViewProtocol"

    const-string v4, "controls starting %s, setting timer"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ai;->v:Z

    if-eqz v0, :cond_3

    const-string v0, "visible"

    :goto_1
    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/ao;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v2, v2, Lcom/chartboost/sdk/impl/ai;->v:Z

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ao;->a(Z)V

    .line 318
    const-wide v2, 0x408f400000000000L    # 1000.0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->m:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v4, "timer"

    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v4, "delay"

    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/Libraries/e$a;->g(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 319
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/ao;

    new-instance v5, Lcom/chartboost/sdk/impl/ai$a$3;

    invoke-direct {v5, p0}, Lcom/chartboost/sdk/impl/ai$a$3;-><init>(Lcom/chartboost/sdk/impl/ai$a;)V

    invoke-static {v0, v4, v5, v2, v3}, Lcom/chartboost/sdk/impl/ai;->a(Lcom/chartboost/sdk/impl/ai;Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 329
    :goto_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/ai;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget v3, v3, Lcom/chartboost/sdk/impl/ai;->q:I

    invoke-static {v0, v2, v3}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 330
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/ao;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ao;->e()V

    .line 331
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget v0, v0, Lcom/chartboost/sdk/impl/ai;->q:I

    if-gt v0, v1, :cond_0

    .line 332
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->o(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->g()V

    goto/16 :goto_0

    .line 316
    :cond_3
    const-string v0, "hidden"

    goto :goto_1

    .line 327
    :cond_4
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/ao;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ai;->v:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Lcom/chartboost/sdk/impl/ao;->a(Z)V

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3
.end method

.method private d(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 339
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/ao;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ao;->f()V

    .line 340
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->s:Ljava/lang/String;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->n:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Tracking/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->p:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->b:Lcom/chartboost/sdk/impl/ai$b;

    if-eq v0, v1, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    if-eqz p1, :cond_0

    .line 346
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget v0, v0, Lcom/chartboost/sdk/impl/ai;->q:I

    if-ge v0, v2, :cond_2

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->m:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "post-video-reward-toaster"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ai;->y:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->G:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->H:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 348
    invoke-direct {p0, v2}, Lcom/chartboost/sdk/impl/ai$a;->e(Z)V

    .line 350
    :cond_2
    sget-object v0, Lcom/chartboost/sdk/impl/ai$b;->c:Lcom/chartboost/sdk/impl/ai$b;

    invoke-direct {p0, v0, v2}, Lcom/chartboost/sdk/impl/ai$a;->a(Lcom/chartboost/sdk/impl/ai$b;Z)V

    .line 352
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->c()Lcom/chartboost/sdk/Libraries/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai$a;->requestLayout()V

    goto :goto_0
.end method

.method private e(Z)V
    .locals 4

    .prologue
    .line 359
    if-eqz p1, :cond_0

    .line 360
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->m:Lcom/chartboost/sdk/impl/aj;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/aj;->a(Z)V

    .line 363
    :goto_0
    sget-object v0, Lcom/chartboost/sdk/f;->a:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/ai$a$4;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/ai$a$4;-><init>(Lcom/chartboost/sdk/impl/ai$a;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 368
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->m:Lcom/chartboost/sdk/impl/aj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/aj;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected a(FF)V
    .locals 5

    .prologue
    .line 492
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ai;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->p:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->b:Lcom/chartboost/sdk/impl/ai$b;

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->p:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->a:Lcom/chartboost/sdk/impl/ai$b;

    if-ne v0, v1, :cond_2

    .line 499
    :cond_1
    :goto_0
    return-void

    .line 496
    :cond_2
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai$a;->h()V

    .line 497
    const-string v0, "insterstitial"

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/ai;->v(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chartboost/sdk/Model/a;->p()Ljava/lang/String;

    move-result-object v2

    float-to-int v3, p1

    float-to-int v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method protected a(II)V
    .locals 11

    .prologue
    .line 228
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/impl/ah$a;->a(II)V

    .line 231
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->p:Lcom/chartboost/sdk/impl/ai$b;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/chartboost/sdk/impl/ai$a;->a(Lcom/chartboost/sdk/impl/ai$b;Z)V

    .line 233
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->a()Lcom/chartboost/sdk/Libraries/f;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->b()Z

    move-result v2

    .line 236
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-direct {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 238
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-direct {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 240
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-direct {v5, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 242
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-direct {v6, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 244
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-direct {v7, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 246
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->b:Lcom/chartboost/sdk/impl/bj;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bj;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 249
    iget-object v8, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->C:Lcom/chartboost/sdk/Libraries/j;

    :goto_0
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v4, v1, v9}, Lcom/chartboost/sdk/impl/ai;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/j;F)V

    .line 250
    iget-object v8, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    if-eqz v2, :cond_4

    const-string v1, "replay-portrait"

    :goto_1
    invoke-virtual {v8, v1}, Lcom/chartboost/sdk/impl/ai;->b(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v1

    .line 251
    iget v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    int-to-float v8, v8

    iget v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    iget v9, v1, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 252
    iget v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    int-to-float v9, v9

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v0, v0

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v0, v10

    add-float/2addr v0, v9

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v1, v1

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v1, v9

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 253
    const/4 v1, 0x0

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v8, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int v8, p1, v8

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 254
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int v1, p2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 255
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->h:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bk;->bringToFront()V

    .line 256
    if-eqz v2, :cond_5

    .line 257
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->h:Lcom/chartboost/sdk/impl/bk;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->C:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bk;->a(Lcom/chartboost/sdk/Libraries/j;)V

    .line 261
    :goto_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->d:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bk;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 262
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/ai;->r()Z

    move-result v1

    if-nez v1, :cond_6

    .line 264
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 265
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 266
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 267
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 269
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 270
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 271
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 272
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 286
    :goto_3
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 287
    const/16 v1, 0x48

    iput v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 288
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 289
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x48

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 291
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ai;->K:Z

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->k:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->m(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v1, :cond_1

    .line 294
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/al;

    invoke-virtual {v0, v5}, Lcom/chartboost/sdk/impl/al;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/ao;

    invoke-virtual {v0, v6}, Lcom/chartboost/sdk/impl/ao;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->l:Lcom/chartboost/sdk/impl/ag;

    invoke-virtual {v0, v7}, Lcom/chartboost/sdk/impl/ag;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->h:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/impl/bk;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->n(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v1, :cond_2

    .line 300
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/al;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/al;->a()V

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/ao;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ao;->a()V

    .line 302
    return-void

    .line 249
    :cond_3
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->B:Lcom/chartboost/sdk/Libraries/j;

    goto/16 :goto_0

    .line 250
    :cond_4
    const-string v1, "replay-landscape"

    goto/16 :goto_1

    .line 259
    :cond_5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->h:Lcom/chartboost/sdk/impl/bk;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->B:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bk;->a(Lcom/chartboost/sdk/Libraries/j;)V

    goto/16 :goto_2

    .line 275
    :cond_6
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v9, -0x2

    invoke-direct {v8, v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 277
    if-eqz v2, :cond_7

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->k:Lcom/chartboost/sdk/Libraries/j;

    .line 278
    :goto_4
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v2, v8, v1, v9}, Lcom/chartboost/sdk/impl/ai;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/j;F)V

    .line 279
    const/4 v2, 0x0

    iput v2, v8, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 280
    const/4 v2, 0x0

    iput v2, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 281
    const/16 v2, 0xb

    invoke-virtual {v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 282
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ai$a;->n:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v2, v8}, Lcom/chartboost/sdk/impl/bk;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ai$a;->n:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/impl/bk;->a(Lcom/chartboost/sdk/Libraries/j;)V

    goto/16 :goto_3

    .line 277
    :cond_7
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->l:Lcom/chartboost/sdk/Libraries/j;

    goto :goto_4
.end method

.method public b(Z)Lcom/chartboost/sdk/impl/bk;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->r()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->n:Lcom/chartboost/sdk/impl/bk;

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->c:Lcom/chartboost/sdk/impl/bk;

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->l()V

    .line 457
    invoke-super {p0}, Lcom/chartboost/sdk/impl/ah$a;->b()V

    .line 458
    return-void
.end method

.method protected d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 205
    invoke-super {p0}, Lcom/chartboost/sdk/impl/ah$a;->d()V

    .line 206
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->p:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->a:Lcom/chartboost/sdk/impl/ai$b;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ai;->w:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    :cond_0
    invoke-direct {p0, v2}, Lcom/chartboost/sdk/impl/ai$a;->c(Z)V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->p:Lcom/chartboost/sdk/impl/ai$b;

    invoke-direct {p0, v0, v2}, Lcom/chartboost/sdk/impl/ai$a;->a(Lcom/chartboost/sdk/impl/ai$b;Z)V

    goto :goto_0
.end method

.method protected e()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 462
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->p:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->b:Lcom/chartboost/sdk/impl/ai$b;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->m:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "cancel-popup"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->m:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "cancel-popup"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->m:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "cancel-popup"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->m:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "cancel-popup"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "confirm"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/ao;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ao;->g()V

    .line 467
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget v0, v0, Lcom/chartboost/sdk/impl/ai;->q:I

    if-ge v0, v2, :cond_0

    .line 468
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->n()V

    .line 488
    :goto_0
    return-void

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->p:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->b:Lcom/chartboost/sdk/impl/ai$b;

    if-ne v0, v1, :cond_1

    .line 474
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/ai$a;->d(Z)V

    .line 475
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/ao;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ao;->h()V

    .line 476
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget v0, v0, Lcom/chartboost/sdk/impl/ai;->q:I

    if-ge v0, v2, :cond_1

    .line 477
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget v1, v0, Lcom/chartboost/sdk/impl/ai;->q:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/chartboost/sdk/impl/ai;->q:I

    .line 478
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->k(Lcom/chartboost/sdk/impl/ai;)V

    .line 479
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->t(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->f()V

    .line 482
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/f;->a:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/ai$a$5;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/ai$a$5;-><init>(Lcom/chartboost/sdk/impl/ai$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 487
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->s:Ljava/lang/String;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget v2, v2, Lcom/chartboost/sdk/impl/ai;->A:I

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->b(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public f()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 215
    invoke-direct {p0, v2}, Lcom/chartboost/sdk/impl/ai$a;->d(Z)V

    .line 216
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/ao;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ao;->h()V

    .line 217
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget v1, v0, Lcom/chartboost/sdk/impl/ai;->q:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/chartboost/sdk/impl/ai;->q:I

    .line 218
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget v0, v0, Lcom/chartboost/sdk/impl/ai;->q:I

    if-gt v0, v2, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->j(Lcom/chartboost/sdk/impl/ai;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->k(Lcom/chartboost/sdk/impl/ai;)V

    .line 220
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget v0, v0, Lcom/chartboost/sdk/impl/ai;->t:I

    if-lt v0, v2, :cond_0

    .line 221
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->l(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->f()V

    .line 223
    :cond_0
    return-void
.end method

.method protected g()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 435
    .line 436
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->p:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v3, Lcom/chartboost/sdk/impl/ai$b;->b:Lcom/chartboost/sdk/impl/ai$b;

    if-ne v0, v3, :cond_3

    .line 438
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget v0, v0, Lcom/chartboost/sdk/impl/ai;->q:I

    if-ge v0, v2, :cond_3

    .line 439
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->s(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->a()Lcom/chartboost/sdk/Libraries/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "portrait"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v3, "delay"

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/Libraries/e$a;->a(F)F

    move-result v0

    .line 441
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_1

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 442
    :goto_1
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iput v0, v3, Lcom/chartboost/sdk/impl/ai;->A:I

    .line 443
    if-ltz v0, :cond_2

    .line 444
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/ao;

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/ao;->b()Lcom/chartboost/sdk/impl/bg$a;

    move-result-object v3

    invoke-interface {v3}, Lcom/chartboost/sdk/impl/bg$a;->d()I

    move-result v3

    if-le v0, v3, :cond_3

    move v0, v1

    .line 451
    :goto_2
    return v0

    .line 439
    :cond_0
    const-string v0, "landscape"

    goto :goto_0

    .line 441
    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 447
    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method protected h()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 502
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->p:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->b:Lcom/chartboost/sdk/impl/ai$b;

    if-ne v0, v1, :cond_0

    .line 503
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/ai$a;->d(Z)V

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0, v2, v2}, Lcom/chartboost/sdk/impl/ai;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)Z

    .line 505
    return-void
.end method

.method protected i()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 508
    const-string v0, "integrated"

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->n:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 509
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/ai;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/chartboost/sdk/impl/ai;->w:Z

    .line 510
    invoke-direct {p0, v2}, Lcom/chartboost/sdk/impl/ai$a;->c(Z)V

    .line 511
    return-void
.end method
