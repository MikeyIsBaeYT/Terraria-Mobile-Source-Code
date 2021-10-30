.class public abstract Lcom/chartboost/sdk/f$a;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/f;

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Lcom/chartboost/sdk/Libraries/f;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/f;Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 47
    iput-object p1, p0, Lcom/chartboost/sdk/f$a;->a:Lcom/chartboost/sdk/f;

    .line 48
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 42
    iput-boolean v1, p0, Lcom/chartboost/sdk/f$a;->b:Z

    .line 43
    iput v0, p0, Lcom/chartboost/sdk/f$a;->c:I

    iput v0, p0, Lcom/chartboost/sdk/f$a;->d:I

    .line 44
    iput v0, p0, Lcom/chartboost/sdk/f$a;->e:I

    iput v0, p0, Lcom/chartboost/sdk/f$a;->f:I

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/f$a;->g:Lcom/chartboost/sdk/Libraries/f;

    .line 49
    invoke-static {p1, p0}, Lcom/chartboost/sdk/f;->a(Lcom/chartboost/sdk/f;Lcom/chartboost/sdk/f$a;)Lcom/chartboost/sdk/f$a;

    .line 50
    invoke-static {p1, v1}, Lcom/chartboost/sdk/f;->a(Lcom/chartboost/sdk/f;Z)Z

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/f$a;->setFocusableInTouchMode(Z)V

    .line 53
    invoke-virtual {p0}, Lcom/chartboost/sdk/f$a;->requestFocus()Z

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/f$a;)Lcom/chartboost/sdk/Libraries/f;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/chartboost/sdk/f$a;->g:Lcom/chartboost/sdk/Libraries/f;

    return-object v0
.end method

.method private b(II)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 68
    .line 69
    iget-boolean v2, p0, Lcom/chartboost/sdk/f$a;->b:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 72
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->c()Lcom/chartboost/sdk/Libraries/f;

    move-result-object v2

    .line 73
    iget v3, p0, Lcom/chartboost/sdk/f$a;->c:I

    if-ne v3, p1, :cond_2

    iget v3, p0, Lcom/chartboost/sdk/f$a;->d:I

    if-ne v3, p2, :cond_2

    iget-object v3, p0, Lcom/chartboost/sdk/f$a;->g:Lcom/chartboost/sdk/Libraries/f;

    if-eq v3, v2, :cond_0

    .line 76
    :cond_2
    iput-boolean v0, p0, Lcom/chartboost/sdk/f$a;->b:Z

    .line 79
    :try_start_0
    iget-object v3, p0, Lcom/chartboost/sdk/f$a;->a:Lcom/chartboost/sdk/f;

    iget-boolean v3, v3, Lcom/chartboost/sdk/f;->i:Z

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/f;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 80
    iget-object v3, p0, Lcom/chartboost/sdk/f$a;->a:Lcom/chartboost/sdk/f;

    iput-object v2, v3, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Libraries/f;

    .line 83
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/f$a;->a(II)V

    .line 84
    new-instance v3, Lcom/chartboost/sdk/f$a$1;

    invoke-direct {v3, p0}, Lcom/chartboost/sdk/f$a$1;-><init>(Lcom/chartboost/sdk/f$a;)V

    invoke-virtual {p0, v3}, Lcom/chartboost/sdk/f$a;->post(Ljava/lang/Runnable;)Z

    .line 90
    iput p1, p0, Lcom/chartboost/sdk/f$a;->c:I

    .line 91
    iput p2, p0, Lcom/chartboost/sdk/f$a;->d:I

    .line 92
    iput-object v2, p0, Lcom/chartboost/sdk/f$a;->g:Lcom/chartboost/sdk/Libraries/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_2
    iput-boolean v1, p0, Lcom/chartboost/sdk/f$a;->b:Z

    goto :goto_0

    .line 81
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/chartboost/sdk/f$a;->a:Lcom/chartboost/sdk/f;

    iget-boolean v3, v3, Lcom/chartboost/sdk/f;->j:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/f;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 82
    iget-object v3, p0, Lcom/chartboost/sdk/f$a;->a:Lcom/chartboost/sdk/f;

    iput-object v2, v3, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Libraries/f;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    const-string v2, "CBViewProtocol"

    const-string v3, "Exception raised while layouting Subviews"

    invoke-static {v2, v3, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/f$a;->a(Z)V

    .line 106
    return-void
.end method

.method protected abstract a(II)V
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 165
    const/16 v0, 0xc8

    .line 166
    invoke-virtual {p0}, Lcom/chartboost/sdk/f$a;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 167
    const/16 v0, 0xc9

    .line 168
    :cond_0
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/f$a;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    move v1, v0

    move-object v0, v2

    .line 169
    :goto_0
    if-eqz v0, :cond_1

    .line 170
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/f$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    .line 173
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSaveEnabled(Z)V

    .line 174
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 110
    if-eqz p1, :cond_0

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/f$a;->g:Lcom/chartboost/sdk/Libraries/f;

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/f$a;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/f$a;->a(Landroid/app/Activity;)Z

    .line 113
    return-void
.end method

.method public a(Landroid/app/Activity;)Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 125
    iget v0, p0, Lcom/chartboost/sdk/f$a;->e:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/chartboost/sdk/f$a;->f:I

    if-ne v0, v1, :cond_6

    .line 128
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/f$a;->getWidth()I

    move-result v1

    .line 129
    invoke-virtual {p0}, Lcom/chartboost/sdk/f$a;->getHeight()I

    move-result v0

    .line 130
    if-eqz v1, :cond_1

    if-nez v0, :cond_3

    .line 131
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 132
    if-nez v0, :cond_2

    .line 133
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 134
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 135
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 140
    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    if-nez v0, :cond_5

    .line 141
    :cond_4
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 142
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 143
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 144
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 147
    :cond_5
    iput v1, p0, Lcom/chartboost/sdk/f$a;->e:I

    .line 148
    iput v0, p0, Lcom/chartboost/sdk/f$a;->f:I

    .line 151
    :cond_6
    iget v0, p0, Lcom/chartboost/sdk/f$a;->e:I

    iget v1, p0, Lcom/chartboost/sdk/f$a;->f:I

    invoke-direct {p0, v0, v1}, Lcom/chartboost/sdk/f$a;->b(II)Z

    move-result v0

    return v0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/chartboost/sdk/f$a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/f;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 156
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 157
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/chartboost/sdk/f$a;->a:Lcom/chartboost/sdk/f;

    iget-object v0, v0, Lcom/chartboost/sdk/f;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 158
    sget-object v2, Lcom/chartboost/sdk/f;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/chartboost/sdk/f$a;->a:Lcom/chartboost/sdk/f;

    iget-object v0, v0, Lcom/chartboost/sdk/f;->h:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 157
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/f$a;->a:Lcom/chartboost/sdk/f;

    iget-object v0, v0, Lcom/chartboost/sdk/f;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 160
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v1, -0x1

    .line 58
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 59
    iput p1, p0, Lcom/chartboost/sdk/f$a;->e:I

    .line 60
    iput p2, p0, Lcom/chartboost/sdk/f$a;->f:I

    .line 62
    iget v0, p0, Lcom/chartboost/sdk/f$a;->c:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/chartboost/sdk/f$a;->d:I

    if-eq v0, v1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/chartboost/sdk/f$a;->a()V

    .line 65
    :cond_0
    return-void
.end method
