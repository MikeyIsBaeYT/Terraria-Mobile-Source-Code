.class public abstract Lcom/chartboost/sdk/impl/bk;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/bk$a;
    }
.end annotation


# static fields
.field private static b:Landroid/graphics/Rect;


# instance fields
.field private a:Lcom/chartboost/sdk/impl/bk$a;

.field protected c:Z

.field protected d:Landroid/widget/Button;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/bk;->b:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/bk;->c:Z

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bk;->d:Landroid/widget/Button;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/bk;->e:Z

    .line 33
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/bk;->b()V

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/bk;)Lcom/chartboost/sdk/impl/bk$a;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bk;->a:Lcom/chartboost/sdk/impl/bk$a;

    return-object v0
.end method

.method static synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 22
    invoke-static {p0, p1}, Lcom/chartboost/sdk/impl/bk;->b(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 44
    new-instance v0, Lcom/chartboost/sdk/impl/bk$a;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bk;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/chartboost/sdk/impl/bk$a;-><init>(Lcom/chartboost/sdk/impl/bk;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bk;->a:Lcom/chartboost/sdk/impl/bk$a;

    .line 45
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bk;->a:Lcom/chartboost/sdk/impl/bk$a;

    new-instance v1, Lcom/chartboost/sdk/impl/bk$1;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/bk$1;-><init>(Lcom/chartboost/sdk/impl/bk;)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bk$a;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 69
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bk;->a:Lcom/chartboost/sdk/impl/bk$a;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/bk;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    return-void
.end method

.method private static b(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 74
    sget-object v0, Lcom/chartboost/sdk/impl/bk;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 75
    sget-object v0, Lcom/chartboost/sdk/impl/bk;->b:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 76
    sget-object v0, Lcom/chartboost/sdk/impl/bk;->b:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 77
    sget-object v0, Lcom/chartboost/sdk/impl/bk;->b:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 78
    sget-object v0, Lcom/chartboost/sdk/impl/bk;->b:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 79
    sget-object v0, Lcom/chartboost/sdk/impl/bk;->b:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/bk;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/bk;->e:Z

    return v0
.end method


# virtual methods
.method public a()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bk;->d:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bk;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bk;->d:Landroid/widget/Button;

    .line 142
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bk;->d:Landroid/widget/Button;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bk;->d:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->postInvalidate()V

    .line 145
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bk;->d:Landroid/widget/Button;

    return-object v0
.end method

.method protected abstract a(Landroid/view/MotionEvent;)V
.end method

.method public a(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bk;->a:Lcom/chartboost/sdk/impl/bk$a;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/bk$a;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 160
    return-void
.end method

.method public a(Lcom/chartboost/sdk/Libraries/j;)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bk;->a:Lcom/chartboost/sdk/impl/bk$a;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/bk$a;->a(Lcom/chartboost/sdk/Libraries/j;)V

    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/bk;->a(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public a(Lcom/chartboost/sdk/Libraries/j;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bk;->a:Lcom/chartboost/sdk/impl/bk$a;

    invoke-virtual {v0, p1, p2}, Lcom/chartboost/sdk/impl/bk$a;->a(Lcom/chartboost/sdk/Libraries/j;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/bk;->a(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 120
    if-eqz p1, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bk;->a()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bk;->a()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/bk;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bk;->a:Lcom/chartboost/sdk/impl/bk$a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bk$a;->setVisibility(I)V

    .line 124
    invoke-virtual {p0, v3}, Lcom/chartboost/sdk/impl/bk;->a(Z)V

    .line 125
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bk;->d:Landroid/widget/Button;

    new-instance v1, Lcom/chartboost/sdk/impl/bk$2;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/bk$2;-><init>(Lcom/chartboost/sdk/impl/bk;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bk;->d:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bk;->a()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/bk;->removeView(Landroid/view/View;)V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bk;->d:Landroid/widget/Button;

    .line 134
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bk;->a:Lcom/chartboost/sdk/impl/bk$a;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/bk$a;->setVisibility(I)V

    .line 135
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/bk;->a(Z)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/bk;->e:Z

    .line 169
    return-void
.end method
