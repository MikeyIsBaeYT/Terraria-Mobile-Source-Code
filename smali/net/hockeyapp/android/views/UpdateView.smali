.class public Lnet/hockeyapp/android/views/UpdateView;
.super Landroid/widget/RelativeLayout;
.source "UpdateView.java"


# static fields
.field public static final HEADER_VIEW_ID:I = 0x1001

.field public static final NAME_LABEL_ID:I = 0x1002

.field public static final UPDATE_BUTTON_ID:I = 0x1004

.field public static final VERSION_LABEL_ID:I = 0x1003

.field public static final WEB_VIEW_ID:I = 0x1005


# instance fields
.field protected headerView:Landroid/widget/RelativeLayout;

.field protected layoutHorizontally:Z

.field protected limitHeight:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lnet/hockeyapp/android/views/UpdateView;-><init>(Landroid/content/Context;Z)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnet/hockeyapp/android/views/UpdateView;-><init>(Landroid/content/Context;ZZ)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "allowHorizontalLayout"    # Z

    .prologue
    .line 75
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnet/hockeyapp/android/views/UpdateView;-><init>(Landroid/content/Context;ZZ)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "allowHorizontalLayout"    # Z
    .param p3, "limitHeight"    # Z

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hockeyapp/android/views/UpdateView;->headerView:Landroid/widget/RelativeLayout;

    .line 63
    iput-boolean v1, p0, Lnet/hockeyapp/android/views/UpdateView;->layoutHorizontally:Z

    .line 64
    iput-boolean v1, p0, Lnet/hockeyapp/android/views/UpdateView;->limitHeight:Z

    .line 81
    if-eqz p2, :cond_0

    .line 82
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/UpdateView;->setLayoutHorizontally(Landroid/content/Context;)V

    .line 87
    :goto_0
    iput-boolean p3, p0, Lnet/hockeyapp/android/views/UpdateView;->limitHeight:Z

    .line 89
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/UpdateView;->loadLayoutParams(Landroid/content/Context;)V

    .line 90
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/UpdateView;->loadHeaderView(Landroid/content/Context;)V

    .line 91
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/UpdateView;->loadWebView(Landroid/content/Context;)V

    .line 92
    iget-object v0, p0, Lnet/hockeyapp/android/views/UpdateView;->headerView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, p1}, Lnet/hockeyapp/android/views/UpdateView;->loadShadow(Landroid/widget/RelativeLayout;Landroid/content/Context;)V

    .line 93
    return-void

    .line 85
    :cond_0
    iput-boolean v1, p0, Lnet/hockeyapp/android/views/UpdateView;->layoutHorizontally:Z

    goto :goto_0
.end method

.method private getButtonSelector()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 196
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 197
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    new-array v1, v5, [I

    const v2, -0x10100a7

    aput v2, v1, v4

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v3, -0x1000000

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 198
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0xbbbbbc

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 199
    new-array v1, v5, [I

    const v2, 0x10100a7

    aput v2, v1, v4

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0x777778

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 200
    return-object v0

    .line 198
    :array_0
    .array-data 4
        -0x10100a7
        0x101009c
    .end array-data
.end method

.method private loadHeaderView(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 112
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lnet/hockeyapp/android/views/UpdateView;->headerView:Landroid/widget/RelativeLayout;

    .line 113
    iget-object v1, p0, Lnet/hockeyapp/android/views/UpdateView;->headerView:Landroid/widget/RelativeLayout;

    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v1, p0, Lnet/hockeyapp/android/views/UpdateView;->layoutHorizontally:Z

    if-eqz v1, :cond_0

    .line 117
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v1, 0x437a0000    # 250.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/UpdateView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v5, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 118
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 119
    iget-object v1, p0, Lnet/hockeyapp/android/views/UpdateView;->headerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 125
    :goto_0
    iget-object v1, p0, Lnet/hockeyapp/android/views/UpdateView;->headerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v1, p0, Lnet/hockeyapp/android/views/UpdateView;->headerView:Landroid/widget/RelativeLayout;

    const/16 v2, 0xe6

    const/16 v3, 0xec

    const/16 v4, 0xef

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 128
    iget-object v1, p0, Lnet/hockeyapp/android/views/UpdateView;->headerView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, p1}, Lnet/hockeyapp/android/views/UpdateView;->loadTitleLabel(Landroid/widget/RelativeLayout;Landroid/content/Context;)V

    .line 129
    iget-object v1, p0, Lnet/hockeyapp/android/views/UpdateView;->headerView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, p1}, Lnet/hockeyapp/android/views/UpdateView;->loadVersionLabel(Landroid/widget/RelativeLayout;Landroid/content/Context;)V

    .line 130
    iget-object v1, p0, Lnet/hockeyapp/android/views/UpdateView;->headerView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, p1}, Lnet/hockeyapp/android/views/UpdateView;->loadUpdateButton(Landroid/widget/RelativeLayout;Landroid/content/Context;)V

    .line 132
    iget-object v1, p0, Lnet/hockeyapp/android/views/UpdateView;->headerView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/views/UpdateView;->addView(Landroid/view/View;)V

    .line 133
    return-void

    .line 122
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, -0x2

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 123
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lnet/hockeyapp/android/views/UpdateView;->headerView:Landroid/widget/RelativeLayout;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/UpdateView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v4, v4, v4, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_0
.end method

.method private loadLayoutParams(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    .line 106
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 107
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/views/UpdateView;->setBackgroundColor(I)V

    .line 108
    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/UpdateView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    return-void
.end method

.method private loadShadow(Landroid/widget/RelativeLayout;Landroid/content/Context;)V
    .locals 9
    .param p1, "headerView"    # Landroid/widget/RelativeLayout;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 205
    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/UpdateView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v7, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v1, v4

    .line 206
    .local v1, "height":I
    const/4 v2, 0x0

    .line 208
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 209
    .local v3, "topShadowView":Landroid/widget/ImageView;
    iget-boolean v4, p0, Lnet/hockeyapp/android/views/UpdateView;->layoutHorizontally:Z

    if-eqz v4, :cond_0

    .line 210
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v2, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 211
    .restart local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xb

    invoke-virtual {v2, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 212
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v5, -0x1000000

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 223
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 224
    .local v0, "bottomShadowView":Landroid/widget/ImageView;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v2, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 225
    .restart local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v4, p0, Lnet/hockeyapp/android/views/UpdateView;->layoutHorizontally:Z

    if-eqz v4, :cond_1

    .line 226
    invoke-virtual {v2, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 231
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    invoke-static {}, Lnet/hockeyapp/android/utils/ViewHelper;->getGradient()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/UpdateView;->addView(Landroid/view/View;)V

    .line 235
    return-void

    .line 215
    .end local v0    # "bottomShadowView":Landroid/widget/ImageView;
    :cond_0
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v2, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 216
    .restart local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 217
    invoke-static {}, Lnet/hockeyapp/android/utils/ViewHelper;->getGradient()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 229
    .restart local v0    # "bottomShadowView":Landroid/widget/ImageView;
    :cond_1
    const/4 v4, 0x3

    const/16 v5, 0x1001

    invoke-virtual {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1
.end method

.method private loadTitleLabel(Landroid/widget/RelativeLayout;Landroid/content/Context;)V
    .locals 8
    .param p1, "headerView"    # Landroid/widget/RelativeLayout;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x2

    const/high16 v7, 0x41a00000    # 20.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    .line 136
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 137
    .local v2, "textView":Landroid/widget/TextView;
    const/16 v3, 0x1002

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 139
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 140
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/UpdateView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v7, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v0, v3

    .line 141
    .local v0, "margin":I
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v0, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 142
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 144
    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v2, v6, v3, v6, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 145
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 146
    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 148
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 150
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 151
    return-void
.end method

.method private loadUpdateButton(Landroid/widget/RelativeLayout;Landroid/content/Context;)V
    .locals 8
    .param p1, "headerView"    # Landroid/widget/RelativeLayout;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 176
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 177
    .local v0, "button":Landroid/widget/Button;
    const/16 v4, 0x1004

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setId(I)V

    .line 179
    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/UpdateView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v7, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v1, v4

    .line 180
    .local v1, "margin":I
    const/high16 v4, 0x42f00000    # 120.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/UpdateView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v7, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v3, v4

    .line 182
    .local v3, "width":I
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 183
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 184
    const/16 v4, 0x9

    invoke-virtual {v2, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 185
    const/4 v4, 0x3

    const/16 v5, 0x1003

    invoke-virtual {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 186
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    invoke-direct {p0}, Lnet/hockeyapp/android/views/UpdateView;->getButtonSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    const-string v4, "Update"

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 189
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 190
    const/4 v4, 0x2

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v0, v4, v5}, Landroid/widget/Button;->setTextSize(IF)V

    .line 192
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 193
    return-void
.end method

.method private loadVersionLabel(Landroid/widget/RelativeLayout;Landroid/content/Context;)V
    .locals 10
    .param p1, "headerView"    # Landroid/widget/RelativeLayout;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x2

    const/4 v5, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 154
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 155
    .local v3, "textView":Landroid/widget/TextView;
    const/16 v4, 0x1003

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setId(I)V

    .line 157
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 158
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/UpdateView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v6, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v0, v4

    .line 159
    .local v0, "marginSide":I
    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/UpdateView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v6, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v1, v4

    .line 160
    .local v1, "marginTop":I
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 161
    const/4 v4, 0x3

    const/16 v5, 0x1002

    invoke-virtual {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 162
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 164
    const/4 v4, -0x1

    invoke-virtual {v3, v8, v7, v8, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 165
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setLines(I)V

    .line 166
    const v4, 0x3f8ccccd    # 1.1f

    invoke-virtual {v3, v7, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 167
    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v3, v9, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 169
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 171
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 172
    return-void
.end method

.method private loadWebView(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v8, 0x1001

    const/4 v7, 0x1

    const/4 v3, -0x1

    const/4 v6, 0x0

    .line 238
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 239
    .local v2, "webView":Landroid/webkit/WebView;
    const/16 v4, 0x1005

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setId(I)V

    .line 241
    const/high16 v4, 0x43c80000    # 400.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v7, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v0, v4

    .line 242
    .local v0, "height":I
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-boolean v4, p0, Lnet/hockeyapp/android/views/UpdateView;->limitHeight:Z

    if-eqz v4, :cond_0

    .end local v0    # "height":I
    :goto_0
    invoke-direct {v1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 243
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v4, p0, Lnet/hockeyapp/android/views/UpdateView;->layoutHorizontally:Z

    if-eqz v4, :cond_1

    .line 244
    invoke-virtual {v1, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 249
    :goto_1
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 250
    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 253
    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/views/UpdateView;->addView(Landroid/view/View;)V

    .line 254
    return-void

    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v0    # "height":I
    :cond_0
    move v0, v3

    .line 242
    goto :goto_0

    .line 247
    .end local v0    # "height":I
    .restart local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    const/4 v4, 0x3

    invoke-virtual {v1, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1
.end method

.method private setLayoutHorizontally(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/UpdateView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 97
    .local v0, "orientation":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 98
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/hockeyapp/android/views/UpdateView;->layoutHorizontally:Z

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/hockeyapp/android/views/UpdateView;->layoutHorizontally:Z

    goto :goto_0
.end method
