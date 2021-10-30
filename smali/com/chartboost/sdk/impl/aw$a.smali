.class public Lcom/chartboost/sdk/impl/aw$a;
.super Lcom/chartboost/sdk/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/aw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/aw$a$a;
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/chartboost/sdk/impl/aw;

.field private c:Lcom/chartboost/sdk/impl/bk;

.field private d:Lcom/chartboost/sdk/impl/bj;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/ListView;

.field private h:Lcom/chartboost/sdk/impl/aw$a$a;


# direct methods
.method private constructor <init>(Lcom/chartboost/sdk/impl/aw;Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 93
    iput-object p1, p0, Lcom/chartboost/sdk/impl/aw$a;->b:Lcom/chartboost/sdk/impl/aw;

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/f$a;-><init>(Lcom/chartboost/sdk/f;Landroid/content/Context;)V

    .line 96
    invoke-virtual {p0, v3}, Lcom/chartboost/sdk/impl/aw$a;->setBackgroundColor(I)V

    .line 98
    new-instance v0, Lcom/chartboost/sdk/impl/bj;

    invoke-direct {v0, p2}, Lcom/chartboost/sdk/impl/bj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->d:Lcom/chartboost/sdk/impl/bj;

    .line 99
    new-instance v0, Lcom/chartboost/sdk/impl/aw$a$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/chartboost/sdk/impl/aw$a$1;-><init>(Lcom/chartboost/sdk/impl/aw$a;Landroid/content/Context;Lcom/chartboost/sdk/impl/aw;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->c:Lcom/chartboost/sdk/impl/bk;

    .line 106
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->e:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->e:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/chartboost/sdk/impl/aw;->b(Lcom/chartboost/sdk/impl/aw;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 108
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->e:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/chartboost/sdk/impl/aw;->c(Lcom/chartboost/sdk/impl/aw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->e:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/chartboost/sdk/impl/aw;->d(Lcom/chartboost/sdk/impl/aw;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    iget-object v1, p0, Lcom/chartboost/sdk/impl/aw$a;->e:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/aw$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x41f00000    # 30.0f

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 112
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->e:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 114
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->g:Landroid/widget/ListView;

    .line 115
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 116
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 117
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->g:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/aw$a;->a(Landroid/view/View;)V

    .line 118
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->g:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/aw$a;->addView(Landroid/view/View;)V

    .line 120
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->d:Lcom/chartboost/sdk/impl/bj;

    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/impl/bj;->setFocusable(Z)V

    .line 121
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->c:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/impl/bk;->setFocusable(Z)V

    .line 123
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->c:Lcom/chartboost/sdk/impl/bk;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bk;->setClickable(Z)V

    .line 125
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->d:Lcom/chartboost/sdk/impl/bj;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bj;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 126
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->c:Lcom/chartboost/sdk/impl/bk;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bk;->a(Landroid/widget/ImageView$ScaleType;)V

    .line 128
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->f:Landroid/widget/RelativeLayout;

    .line 129
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->f:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/aw$a;->d:Lcom/chartboost/sdk/impl/bj;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->f:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/aw$a;->e:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->f:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/aw$a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->c:Lcom/chartboost/sdk/impl/bk;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/aw$a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/aw$a;->a(Landroid/view/View;)V

    .line 137
    new-instance v0, Lcom/chartboost/sdk/impl/aw$a$a;

    invoke-direct {v0, p0, p2}, Lcom/chartboost/sdk/impl/aw$a$a;-><init>(Lcom/chartboost/sdk/impl/aw$a;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->h:Lcom/chartboost/sdk/impl/aw$a$a;

    .line 138
    return-void

    .line 110
    :cond_0
    const/high16 v0, 0x41900000    # 18.0f

    goto/16 :goto_0
.end method

.method synthetic constructor <init>(Lcom/chartboost/sdk/impl/aw;Landroid/content/Context;Lcom/chartboost/sdk/impl/aw$1;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/impl/aw$a;-><init>(Lcom/chartboost/sdk/impl/aw;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(II)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v9, -0x1

    const/4 v8, -0x2

    .line 142
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/aw$a;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 143
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->c()Lcom/chartboost/sdk/Libraries/f;

    move-result-object v3

    .line 147
    invoke-virtual {v3}, Lcom/chartboost/sdk/Libraries/f;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->b:Lcom/chartboost/sdk/impl/aw;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/aw;->e(Lcom/chartboost/sdk/impl/aw;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->b:Lcom/chartboost/sdk/impl/aw;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/aw;->e(Lcom/chartboost/sdk/impl/aw;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v0

    .line 155
    :goto_0
    if-eqz v0, :cond_4

    .line 156
    iget-object v4, p0, Lcom/chartboost/sdk/impl/aw$a;->b:Lcom/chartboost/sdk/impl/aw;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->i()I

    move-result v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/impl/aw;->a(Lcom/chartboost/sdk/impl/aw;I)I

    .line 157
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->h()I

    move-result v4

    if-ge v4, p1, :cond_0

    .line 158
    iget-object v4, p0, Lcom/chartboost/sdk/impl/aw$a;->b:Lcom/chartboost/sdk/impl/aw;

    iget-object v5, p0, Lcom/chartboost/sdk/impl/aw$a;->b:Lcom/chartboost/sdk/impl/aw;

    invoke-static {v5}, Lcom/chartboost/sdk/impl/aw;->h(Lcom/chartboost/sdk/impl/aw;)I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, p1

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->h()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/impl/aw;->a(Lcom/chartboost/sdk/impl/aw;I)I

    .line 159
    :cond_0
    iget-object v4, p0, Lcom/chartboost/sdk/impl/aw$a;->e:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object v4, p0, Lcom/chartboost/sdk/impl/aw$a;->d:Lcom/chartboost/sdk/impl/bj;

    invoke-virtual {v4, v0}, Lcom/chartboost/sdk/impl/bj;->a(Lcom/chartboost/sdk/Libraries/j;)V

    .line 170
    :goto_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->b:Lcom/chartboost/sdk/impl/aw;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/aw;->i(Lcom/chartboost/sdk/impl/aw;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->b:Lcom/chartboost/sdk/impl/aw;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/aw$a;->b:Lcom/chartboost/sdk/impl/aw;

    invoke-static {v4}, Lcom/chartboost/sdk/impl/aw;->i(Lcom/chartboost/sdk/impl/aw;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/chartboost/sdk/Libraries/e$a;->k()I

    move-result v4

    invoke-static {v4, v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v4

    invoke-static {v0, v4}, Lcom/chartboost/sdk/impl/aw;->a(Lcom/chartboost/sdk/impl/aw;I)I

    .line 174
    :cond_1
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 176
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 178
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->b:Lcom/chartboost/sdk/impl/aw;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/aw;->h(Lcom/chartboost/sdk/impl/aw;)I

    move-result v0

    invoke-direct {v6, v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 184
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->b:Lcom/chartboost/sdk/impl/aw;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/aw;->j(Lcom/chartboost/sdk/impl/aw;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Lcom/chartboost/sdk/Libraries/f;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 185
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->b:Lcom/chartboost/sdk/impl/aw;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/aw;->j(Lcom/chartboost/sdk/impl/aw;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v0

    .line 191
    :goto_2
    if-eqz v0, :cond_9

    .line 192
    iget-object v1, p0, Lcom/chartboost/sdk/impl/aw$a;->c:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v1, v0, v5}, Lcom/chartboost/sdk/impl/bk;->a(Lcom/chartboost/sdk/Libraries/j;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 193
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/aw$a;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xe

    :goto_3
    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v0

    .line 205
    :goto_4
    iget-object v1, p0, Lcom/chartboost/sdk/impl/aw$a;->b:Lcom/chartboost/sdk/impl/aw;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/aw;->h(Lcom/chartboost/sdk/impl/aw;)I

    move-result v1

    iget v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 207
    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 208
    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 209
    const/16 v0, 0xb

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 211
    iput v9, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 212
    iput v9, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 213
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/chartboost/sdk/impl/aw$a;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 215
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/aw$a;->h:Lcom/chartboost/sdk/impl/aw$a$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 216
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->c:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0, v5}, Lcom/chartboost/sdk/impl/bk;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    return-void

    .line 149
    :cond_2
    invoke-virtual {v3}, Lcom/chartboost/sdk/Libraries/f;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->b:Lcom/chartboost/sdk/impl/aw;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/aw;->f(Lcom/chartboost/sdk/impl/aw;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->b:Lcom/chartboost/sdk/impl/aw;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/aw;->f(Lcom/chartboost/sdk/impl/aw;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v0

    goto/16 :goto_0

    .line 151
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->b:Lcom/chartboost/sdk/impl/aw;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/aw;->g(Lcom/chartboost/sdk/impl/aw;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->e()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 153
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->b:Lcom/chartboost/sdk/impl/aw;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/aw;->g(Lcom/chartboost/sdk/impl/aw;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v0

    goto/16 :goto_0

    .line 164
    :cond_4
    iget-object v4, p0, Lcom/chartboost/sdk/impl/aw$a;->b:Lcom/chartboost/sdk/impl/aw;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/aw$a;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x50

    :goto_5
    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v0

    invoke-static {v4, v0}, Lcom/chartboost/sdk/impl/aw;->a(Lcom/chartboost/sdk/impl/aw;I)I

    .line 166
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->e:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 164
    :cond_5
    const/16 v0, 0x28

    goto :goto_5

    .line 186
    :cond_6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->b:Lcom/chartboost/sdk/impl/aw;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/aw;->k(Lcom/chartboost/sdk/impl/aw;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v3}, Lcom/chartboost/sdk/Libraries/f;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 187
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->b:Lcom/chartboost/sdk/impl/aw;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/aw;->k(Lcom/chartboost/sdk/impl/aw;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v0

    goto/16 :goto_2

    .line 188
    :cond_7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->b:Lcom/chartboost/sdk/impl/aw;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/aw;->l(Lcom/chartboost/sdk/impl/aw;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->e()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 189
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->b:Lcom/chartboost/sdk/impl/aw;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/aw;->l(Lcom/chartboost/sdk/impl/aw;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v0

    goto/16 :goto_2

    .line 193
    :cond_8
    const/4 v0, 0x7

    goto/16 :goto_3

    .line 196
    :cond_9
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->c:Lcom/chartboost/sdk/impl/bk;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bk;->a(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->c:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bk;->a()Landroid/widget/TextView;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/aw$a;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    const/high16 v0, 0x41d00000    # 26.0f

    :goto_6
    invoke-virtual {v1, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 199
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->c:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bk;->a()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/aw$a;->b:Lcom/chartboost/sdk/impl/aw;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/aw;->d(Lcom/chartboost/sdk/impl/aw;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->c:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bk;->a()Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 201
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->b:Lcom/chartboost/sdk/impl/aw;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/aw;->h(Lcom/chartboost/sdk/impl/aw;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 202
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->b:Lcom/chartboost/sdk/impl/aw;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/aw;->h(Lcom/chartboost/sdk/impl/aw;)I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 203
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/aw$a;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x1e

    :goto_7
    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v0

    goto/16 :goto_4

    .line 197
    :cond_a
    const/high16 v0, 0x41800000    # 16.0f

    goto :goto_6

    .line 203
    :cond_b
    const/16 v0, 0x14

    goto :goto_7

    :cond_c
    move-object v0, v1

    goto/16 :goto_2

    :cond_d
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 224
    invoke-super {p0}, Lcom/chartboost/sdk/f$a;->b()V

    .line 225
    iput-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->c:Lcom/chartboost/sdk/impl/bk;

    .line 226
    iput-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->d:Lcom/chartboost/sdk/impl/bj;

    .line 227
    iput-object v0, p0, Lcom/chartboost/sdk/impl/aw$a;->g:Landroid/widget/ListView;

    .line 228
    return-void
.end method
