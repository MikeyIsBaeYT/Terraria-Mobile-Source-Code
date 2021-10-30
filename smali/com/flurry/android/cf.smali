.class final Lcom/flurry/android/cf;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private eA:Z

.field private eq:Landroid/webkit/WebView;

.field private er:Landroid/webkit/WebViewClient;

.field private es:Landroid/webkit/WebChromeClient;

.field private et:Z

.field private eu:Landroid/widget/ImageView;

.field private ev:Landroid/widget/ImageView;

.field private ew:Landroid/widget/ImageView;

.field private ex:Lcom/flurry/android/h;

.field private ey:Lcom/flurry/android/ee;

.field private ez:Lcom/flurry/android/aq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/16 v6, 0xb

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, -0x2

    .line 170
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/cf;->TAG:Ljava/lang/String;

    .line 50
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/android/cf;->eq:Landroid/webkit/WebView;

    .line 173
    new-instance v0, Lcom/flurry/android/db;

    invoke-direct {v0, p0}, Lcom/flurry/android/db;-><init>(Lcom/flurry/android/cf;)V

    iput-object v0, p0, Lcom/flurry/android/cf;->er:Landroid/webkit/WebViewClient;

    .line 174
    new-instance v0, Lcom/flurry/android/ab;

    invoke-direct {v0, p0}, Lcom/flurry/android/ab;-><init>(Lcom/flurry/android/cf;)V

    iput-object v0, p0, Lcom/flurry/android/cf;->es:Landroid/webkit/WebChromeClient;

    .line 176
    iget-object v0, p0, Lcom/flurry/android/cf;->eq:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 177
    iget-object v0, p0, Lcom/flurry/android/cf;->eq:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 178
    sget v0, Lcom/flurry/android/n;->SDK_INT:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/flurry/android/cf;->eq:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/cf;->eq:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 183
    sget v0, Lcom/flurry/android/n;->SDK_INT:I

    if-lt v0, v6, :cond_1

    .line 185
    iget-object v0, p0, Lcom/flurry/android/cf;->eq:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/cf;->eq:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/flurry/android/cf;->er:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 188
    iget-object v0, p0, Lcom/flurry/android/cf;->eq:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/flurry/android/cf;->es:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 189
    iget-object v0, p0, Lcom/flurry/android/cf;->eq:Landroid/webkit/WebView;

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 191
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/android/cf;->eu:Landroid/widget/ImageView;

    .line 192
    iget-object v0, p0, Lcom/flurry/android/cf;->eu:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 193
    iget-object v0, p0, Lcom/flurry/android/cf;->eu:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/flurry/android/cf;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    iget-object v0, p0, Lcom/flurry/android/cf;->eu:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/android/cf;->ev:Landroid/widget/ImageView;

    .line 197
    iget-object v0, p0, Lcom/flurry/android/cf;->ev:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setId(I)V

    .line 198
    iget-object v0, p0, Lcom/flurry/android/cf;->ev:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/flurry/android/cf;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    iget-object v0, p0, Lcom/flurry/android/cf;->ev:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/android/cf;->ew:Landroid/widget/ImageView;

    .line 202
    iget-object v0, p0, Lcom/flurry/android/cf;->ew:Landroid/widget/ImageView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 203
    iget-object v0, p0, Lcom/flurry/android/cf;->ew:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/flurry/android/cf;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    iget-object v0, p0, Lcom/flurry/android/cf;->ew:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 207
    invoke-virtual {p0, v0}, Lcom/flurry/android/cf;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    iget-object v0, p0, Lcom/flurry/android/cf;->eq:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/flurry/android/cf;->addView(Landroid/view/View;)V

    .line 210
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 211
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 212
    iget-object v1, p0, Lcom/flurry/android/cf;->eu:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/flurry/android/cf;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 215
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 216
    iget-object v1, p0, Lcom/flurry/android/cf;->ev:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/flurry/android/cf;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 219
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 220
    iget-object v1, p0, Lcom/flurry/android/cf;->ew:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/flurry/android/cf;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    return-void
.end method

.method static synthetic a(Lcom/flurry/android/cf;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/flurry/android/cf;->eq:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/android/cf;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/flurry/android/cf;->eA:Z

    return p1
.end method

.method static synthetic b(Lcom/flurry/android/cf;)Lcom/flurry/android/h;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/flurry/android/cf;->ex:Lcom/flurry/android/h;

    return-object v0
.end method

.method static synthetic b(Lcom/flurry/android/cf;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/flurry/android/cf;->et:Z

    return p1
.end method

.method static synthetic c(Lcom/flurry/android/cf;)Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/flurry/android/cf;->eA:Z

    return v0
.end method

.method static synthetic d(Lcom/flurry/android/cf;)Lcom/flurry/android/aq;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/flurry/android/cf;->ez:Lcom/flurry/android/aq;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/flurry/android/aq;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/flurry/android/cf;->ez:Lcom/flurry/android/aq;

    .line 77
    return-void
.end method

.method public final a(Lcom/flurry/android/ee;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/flurry/android/cf;->ey:Lcom/flurry/android/ee;

    .line 69
    return-void
.end method

.method public final a(Lcom/flurry/android/h;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/flurry/android/cf;->ex:Lcom/flurry/android/h;

    .line 61
    return-void
.end method

.method public final canGoBack()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/flurry/android/cf;->et:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/cf;->eq:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/cf;->eq:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final destroy()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/flurry/android/cf;->eq:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/flurry/android/cf;->eq:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/flurry/android/cf;->removeView(Landroid/view/View;)V

    .line 280
    iget-object v0, p0, Lcom/flurry/android/cf;->eq:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 281
    sget v0, Lcom/flurry/android/n;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/flurry/android/cf;->eq:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/cf;->eq:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/cf;->eq:Landroid/webkit/WebView;

    .line 287
    :cond_1
    return-void
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 224
    const/4 v0, 0x0

    .line 225
    iget-object v1, p0, Lcom/flurry/android/cf;->eq:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/flurry/android/cf;->eq:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 228
    :cond_0
    return-object v0
.end method

.method public final goBack()V
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/flurry/android/cf;->et:Z

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/flurry/android/cf;->es:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/cf;->eq:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/flurry/android/cf;->eq:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 251
    :pswitch_0
    iget-object v0, p0, Lcom/flurry/android/cf;->ey:Lcom/flurry/android/ee;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/flurry/android/cf;->ey:Lcom/flurry/android/ee;

    iget-object v0, v0, Lcom/flurry/android/ee;->u:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->finish()V

    goto :goto_0

    .line 256
    :pswitch_1
    iget-object v0, p0, Lcom/flurry/android/cf;->eq:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/cf;->eq:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/flurry/android/cf;->eq:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0

    .line 262
    :pswitch_2
    iget-object v0, p0, Lcom/flurry/android/cf;->eq:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/cf;->eq:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/flurry/android/cf;->eq:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/cf;->ey:Lcom/flurry/android/ee;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/flurry/android/cf;->ey:Lcom/flurry/android/ee;

    iget-object v0, v0, Lcom/flurry/android/ee;->u:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->finish()V

    goto :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
