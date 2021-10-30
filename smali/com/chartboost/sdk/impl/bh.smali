.class public final Lcom/chartboost/sdk/impl/bh;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/bh$3;,
        Lcom/chartboost/sdk/impl/bh$a;,
        Lcom/chartboost/sdk/impl/bh$b;
    }
.end annotation


# direct methods
.method public static a(Lcom/chartboost/sdk/impl/bh$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bh$a;)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/chartboost/sdk/impl/bh;->b(Lcom/chartboost/sdk/impl/bh$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bh$a;Z)V

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/bh$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bh$a;Z)V
    .locals 0

    .prologue
    .line 19
    invoke-static {p0, p1, p2, p3}, Lcom/chartboost/sdk/impl/bh;->c(Lcom/chartboost/sdk/impl/bh$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bh$a;Z)V

    return-void
.end method

.method public static a(ZLandroid/view/View;)V
    .locals 2

    .prologue
    .line 281
    const-wide/16 v0, 0xfa

    invoke-static {p0, p1, v0, v1}, Lcom/chartboost/sdk/impl/bh;->a(ZLandroid/view/View;J)V

    .line 282
    return-void
.end method

.method public static a(ZLandroid/view/View;J)V
    .locals 4

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 286
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 287
    if-eqz p0, :cond_0

    .line 288
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 289
    :cond_0
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    if-eqz p0, :cond_1

    move v2, v1

    :goto_0
    if-eqz p0, :cond_2

    :goto_1
    invoke-direct {v3, v2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 290
    const-wide/16 v0, 0xfa

    invoke-virtual {v3, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 291
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 292
    invoke-virtual {p1, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 293
    return-void

    :cond_1
    move v2, v0

    .line 289
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static b(Lcom/chartboost/sdk/impl/bh$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bh$a;)V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/chartboost/sdk/impl/bh;->c(Lcom/chartboost/sdk/impl/bh$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bh$a;Z)V

    .line 60
    return-void
.end method

.method private static b(Lcom/chartboost/sdk/impl/bh$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bh$a;Z)V
    .locals 7

    .prologue
    .line 65
    sget-object v0, Lcom/chartboost/sdk/impl/bh$b;->g:Lcom/chartboost/sdk/impl/bh$b;

    if-ne p0, v0, :cond_1

    .line 66
    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/chartboost/sdk/impl/bh$a;->a(Lcom/chartboost/sdk/Model/a;)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->h:Lcom/chartboost/sdk/impl/bp;

    if-nez v0, :cond_3

    .line 72
    :cond_2
    const-string v0, "AnimationManager"

    const-string v1, "Transition of impression canceled due to lack of container"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_3
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->h:Lcom/chartboost/sdk/impl/bp;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bp;->f()Landroid/view/View;

    move-result-object v1

    .line 76
    if-nez v1, :cond_4

    .line 77
    invoke-static {}, Lcom/chartboost/sdk/e;->a()Lcom/chartboost/sdk/e;

    move-result-object v0

    .line 78
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/e;->d(Lcom/chartboost/sdk/Model/a;)V

    .line 79
    const-string v0, "AnimationManager"

    const-string v1, "Transition of impression canceled due to lack of view"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    .line 83
    invoke-virtual {v6}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Lcom/chartboost/sdk/impl/bh$1;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/bh$1;-><init>(Landroid/view/View;Lcom/chartboost/sdk/impl/bh$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bh$a;Z)V

    invoke-virtual {v6, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method private static c(Lcom/chartboost/sdk/impl/bh$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bh$a;Z)V
    .locals 12

    .prologue
    .line 96
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {v10, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 97
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 100
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->h:Lcom/chartboost/sdk/impl/bp;

    if-nez v0, :cond_2

    .line 101
    :cond_0
    const-string v0, "AnimationManager"

    const-string v1, "Transition of impression canceled due to lack of container"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    :cond_1
    :goto_0
    return-void

    .line 104
    :cond_2
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->h:Lcom/chartboost/sdk/impl/bp;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bp;->f()Landroid/view/View;

    move-result-object v0

    .line 105
    if-nez v0, :cond_3

    .line 106
    const-string v0, "AnimationManager"

    const-string v1, "Transition of impression canceled due to lack of view"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_3
    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v2, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-eq v1, v2, :cond_4

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v2, Lcom/chartboost/sdk/Model/a$d;->b:Lcom/chartboost/sdk/Model/a$d;

    if-ne v1, v2, :cond_17

    .line 112
    :cond_4
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->h:Lcom/chartboost/sdk/impl/bp;

    move-object v9, v0

    .line 115
    :goto_1
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v7, v0

    .line 116
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v6, v0

    .line 117
    const/high16 v2, 0x42700000    # 60.0f

    .line 118
    const v8, 0x3ecccccd    # 0.4f

    .line 119
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v8

    const/high16 v1, 0x40000000    # 2.0f

    div-float v11, v0, v1

    .line 125
    sget-object v0, Lcom/chartboost/sdk/impl/bh$3;->a:[I

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bh$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move-object v0, v10

    .line 262
    :goto_2
    sget-object v1, Lcom/chartboost/sdk/impl/bh$b;->g:Lcom/chartboost/sdk/impl/bh$b;

    if-ne p0, v1, :cond_15

    .line 263
    if-eqz p2, :cond_1

    .line 264
    invoke-interface {p2, p1}, Lcom/chartboost/sdk/impl/bh$a;->a(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0

    .line 127
    :pswitch_0
    if-eqz p3, :cond_5

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 129
    :goto_3
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 130
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 131
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 132
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v0, v1

    .line 133
    goto :goto_2

    .line 128
    :cond_5
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_3

    .line 135
    :pswitch_1
    if-eqz p3, :cond_6

    .line 136
    new-instance v0, Lcom/chartboost/sdk/impl/bm;

    neg-float v1, v2

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v7, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v6, v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/bm;-><init>(FFFFZ)V

    .line 139
    :goto_4
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 140
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 141
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 143
    if-eqz p3, :cond_7

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v8, v1, v8, v2}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 145
    :goto_5
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 146
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 147
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 149
    if-eqz p3, :cond_8

    .line 150
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    mul-float v1, v7, v11

    const/4 v2, 0x0

    neg-float v3, v6

    mul-float/2addr v3, v8

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 153
    :goto_6
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 154
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 155
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v0, v10

    .line 157
    goto :goto_2

    .line 138
    :cond_6
    new-instance v0, Lcom/chartboost/sdk/impl/bm;

    const/4 v1, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v7, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v6, v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/bm;-><init>(FFFFZ)V

    goto :goto_4

    .line 144
    :cond_7
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v8, v2, v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    goto :goto_5

    .line 152
    :cond_8
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    mul-float v2, v7, v11

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_6

    .line 159
    :pswitch_2
    if-eqz p3, :cond_9

    .line 160
    new-instance v0, Lcom/chartboost/sdk/impl/bm;

    neg-float v1, v2

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v7, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v6, v4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/bm;-><init>(FFFFZ)V

    .line 163
    :goto_7
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 164
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 165
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 167
    if-eqz p3, :cond_a

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v8, v1, v8, v2}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 169
    :goto_8
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 170
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 171
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 173
    if-eqz p3, :cond_b

    .line 174
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    neg-float v1, v7

    mul-float/2addr v1, v8

    const/4 v2, 0x0

    mul-float v3, v6, v11

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 177
    :goto_9
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 178
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 179
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v0, v10

    .line 181
    goto/16 :goto_2

    .line 162
    :cond_9
    new-instance v0, Lcom/chartboost/sdk/impl/bm;

    const/4 v1, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v7, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v6, v4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/bm;-><init>(FFFFZ)V

    goto :goto_7

    .line 168
    :cond_a
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v8, v2, v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    goto :goto_8

    .line 176
    :cond_b
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    mul-float v3, v6, v11

    invoke-direct {v0, v1, v7, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_9

    .line 184
    :pswitch_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 186
    if-eqz p3, :cond_c

    move v1, v6

    .line 187
    :goto_a
    if-eqz p3, :cond_d

    const/4 v0, 0x0

    .line 188
    :goto_b
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v4, v2, v3, v1, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 189
    const-wide/16 v0, 0xfa

    invoke-virtual {v4, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 190
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 191
    invoke-virtual {v10, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v0, v10

    .line 192
    goto/16 :goto_2

    .line 186
    :cond_c
    const/4 v0, 0x0

    move v1, v0

    goto :goto_a

    :cond_d
    move v0, v6

    .line 187
    goto :goto_b

    .line 195
    :pswitch_4
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 197
    if-eqz p3, :cond_e

    neg-float v0, v6

    move v1, v0

    .line 198
    :goto_c
    if-eqz p3, :cond_f

    const/4 v0, 0x0

    .line 199
    :goto_d
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v4, v2, v3, v1, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 200
    const-wide/16 v0, 0xfa

    invoke-virtual {v4, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 201
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 202
    invoke-virtual {v10, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v0, v10

    .line 203
    goto/16 :goto_2

    .line 197
    :cond_e
    const/4 v0, 0x0

    move v1, v0

    goto :goto_c

    .line 198
    :cond_f
    neg-float v0, v6

    goto :goto_d

    .line 208
    :pswitch_5
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 209
    if-eqz p3, :cond_10

    move v1, v7

    .line 210
    :goto_e
    if-eqz p3, :cond_11

    const/4 v0, 0x0

    .line 211
    :goto_f
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v4, v1, v0, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 212
    const-wide/16 v0, 0xfa

    invoke-virtual {v4, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 213
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 214
    invoke-virtual {v10, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v0, v10

    .line 215
    goto/16 :goto_2

    .line 209
    :cond_10
    const/4 v0, 0x0

    move v1, v0

    goto :goto_e

    :cond_11
    move v0, v7

    .line 210
    goto :goto_f

    .line 219
    :pswitch_6
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 220
    if-eqz p3, :cond_12

    neg-float v0, v7

    move v1, v0

    .line 221
    :goto_10
    if-eqz p3, :cond_13

    const/4 v0, 0x0

    .line 222
    :goto_11
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v4, v1, v0, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 223
    const-wide/16 v0, 0xfa

    invoke-virtual {v4, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 224
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 225
    invoke-virtual {v10, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v0, v10

    .line 226
    goto/16 :goto_2

    .line 220
    :cond_12
    const/4 v0, 0x0

    move v1, v0

    goto :goto_10

    .line 221
    :cond_13
    neg-float v0, v7

    goto :goto_11

    .line 230
    :pswitch_7
    if-eqz p3, :cond_14

    .line 231
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f19999a    # 0.6f

    const v2, 0x3f8ccccd    # 1.1f

    const v3, 0x3f19999a    # 0.6f

    const v4, 0x3f8ccccd    # 1.1f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 232
    const/high16 v1, 0x43160000    # 150.0f

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 233
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 234
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 235
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 237
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f51745c

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f51745c

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 238
    const v1, 0x4247ffff    # 49.999996f

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 239
    const/high16 v1, 0x43160000    # 150.0f

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 241
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 242
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 244
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f8e38e4

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f8e38e4

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 245
    const v1, 0x41c7fffb    # 24.99999f

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 246
    const/high16 v1, 0x43480000    # 200.0f

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 247
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 248
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v0, v10

    goto/16 :goto_2

    .line 251
    :cond_14
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 252
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 253
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 254
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 255
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v0, v10

    .line 257
    goto/16 :goto_2

    .line 268
    :cond_15
    if-eqz p2, :cond_16

    .line 269
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->e()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/chartboost/sdk/impl/bh$2;

    invoke-direct {v2, p2, p1}, Lcom/chartboost/sdk/impl/bh$2;-><init>(Lcom/chartboost/sdk/impl/bh$a;Lcom/chartboost/sdk/Model/a;)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 275
    :cond_16
    invoke-virtual {v9, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :cond_17
    move-object v9, v0

    goto/16 :goto_1

    .line 125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
