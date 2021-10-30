.class public Lnet/hockeyapp/android/views/ExpiryInfoView;
.super Landroid/widget/RelativeLayout;
.source "ExpiryInfoView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lnet/hockeyapp/android/views/ExpiryInfoView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/ExpiryInfoView;->loadLayoutParams(Landroid/content/Context;)V

    .line 55
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/ExpiryInfoView;->loadShadowView(Landroid/content/Context;)V

    .line 56
    invoke-direct {p0, p1, p2}, Lnet/hockeyapp/android/views/ExpiryInfoView;->loadTextView(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method private loadLayoutParams(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 60
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 61
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/views/ExpiryInfoView;->setBackgroundColor(I)V

    .line 62
    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/ExpiryInfoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    return-void
.end method

.method private loadShadowView(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, -0x1

    .line 67
    const/4 v3, 0x1

    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/ExpiryInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v0, v3

    .line 68
    .local v0, "height":I
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 69
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xa

    invoke-virtual {v1, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 71
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 72
    .local v2, "shadowView":Landroid/widget/ImageView;
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    invoke-static {}, Lnet/hockeyapp/android/utils/ViewHelper;->getGradient()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/views/ExpiryInfoView;->addView(Landroid/view/View;)V

    .line 76
    return-void
.end method

.method private loadTextView(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 79
    const/4 v3, 0x1

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/ExpiryInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v0, v3

    .line 81
    .local v0, "margin":I
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 82
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xd

    invoke-virtual {v1, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 83
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 85
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 86
    .local v2, "textView":Landroid/widget/TextView;
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 87
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/views/ExpiryInfoView;->addView(Landroid/view/View;)V

    .line 92
    return-void
.end method
