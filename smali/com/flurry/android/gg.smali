.class final Lcom/flurry/android/gg;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field private synthetic dp:Lcom/flurry/android/ft;


# direct methods
.method synthetic constructor <init>(Lcom/flurry/android/ft;)V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flurry/android/gg;-><init>(Lcom/flurry/android/ft;B)V

    return-void
.end method

.method private constructor <init>(Lcom/flurry/android/ft;B)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadResource: url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 115
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->b(Lcom/flurry/android/ft;)Landroid/webkit/WebView;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->b(Lcom/flurry/android/ft;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->c(Lcom/flurry/android/ft;)V

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->d(Lcom/flurry/android/ft;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_0

    const-string v1, "mraid.js"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flurry/android/ft;->a(Lcom/flurry/android/ft;Z)Z

    .line 140
    iget-object v0, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->e(Lcom/flurry/android/ft;)V

    .line 142
    iget-object v0, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->f(Lcom/flurry/android/ft;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->g(Lcom/flurry/android/ft;)V

    .line 144
    iget-object v0, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->h(Lcom/flurry/android/ft;)V

    goto :goto_0
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageFinished: url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->b(Lcom/flurry/android/ft;)Landroid/webkit/WebView;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->c(Lcom/flurry/android/ft;)V

    .line 183
    iget-object v0, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->k(Lcom/flurry/android/ft;)V

    .line 185
    iget-object v0, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    iget-object v1, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    invoke-static {v1}, Lcom/flurry/android/ft;->b(Lcom/flurry/android/ft;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/ft;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    invoke-virtual {v0}, Lcom/flurry/android/ft;->bw()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    invoke-virtual {v0}, Lcom/flurry/android/ft;->bw()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    iget-object v1, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    invoke-static {v1}, Lcom/flurry/android/ft;->b(Lcom/flurry/android/ft;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/ft;->addView(Landroid/view/View;)V

    .line 190
    :cond_3
    iget-object v0, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    invoke-static {v0, v2}, Lcom/flurry/android/ft;->b(Lcom/flurry/android/ft;Z)Z

    .line 192
    iget-object v0, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->d(Lcom/flurry/android/ft;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->g(Lcom/flurry/android/ft;)V

    .line 194
    iget-object v0, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->h(Lcom/flurry/android/ft;)V

    goto :goto_0
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageStarted: url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->b(Lcom/flurry/android/ft;)Landroid/webkit/WebView;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->i(Lcom/flurry/android/ft;)V

    .line 162
    iget-object v0, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->j(Lcom/flurry/android/ft;)V

    .line 164
    iget-object v0, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    invoke-static {v0, v2}, Lcom/flurry/android/ft;->b(Lcom/flurry/android/ft;Z)Z

    .line 165
    iget-object v0, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    invoke-static {v0, v2}, Lcom/flurry/android/ft;->a(Lcom/flurry/android/ft;Z)Z

    goto :goto_0
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 273
    iget-object v0, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    const-string v1, "renderFailed"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    iget-object v3, v3, Lcom/flurry/android/ft;->T:Lcom/flurry/android/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    iget-object v4, v4, Lcom/flurry/android/ft;->S:Lcom/flurry/android/cw;

    iget-object v5, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    iget v5, v5, Lcom/flurry/android/ft;->U:I

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/ft;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cw;II)V

    .line 274
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldOverrideUrlLoading: url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->b(Lcom/flurry/android/ft;)Landroid/webkit/WebView;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 204
    :cond_0
    const/4 v0, 0x0

    .line 265
    :goto_0
    return v0

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->b(Lcom/flurry/android/ft;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-static {v0}, Lcom/flurry/android/UriUtils;->currentDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldOverrideUrlLoading: target url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object p2, v0

    .line 223
    :cond_2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "flurry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 226
    const-string v1, "event"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    if-eqz v1, :cond_3

    .line 229
    iget-object v2, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    invoke-static {v2}, Lcom/flurry/android/ft;->l(Lcom/flurry/android/ft;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/fl;->H(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 232
    const-string v0, "guid"

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 234
    iget-object v3, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    const-string v0, "guid"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/flurry/android/ft;->a(Lcom/flurry/android/ft;Ljava/lang/String;)Lcom/flurry/android/AdUnit;

    move-result-object v3

    .line 235
    iget-object v4, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    const-string v0, "guid"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/flurry/android/ft;->b(Lcom/flurry/android/ft;Ljava/lang/String;)Lcom/flurry/android/cw;

    move-result-object v4

    .line 236
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    .line 238
    iget-object v0, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/ft;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cw;II)V

    .line 246
    :cond_3
    :goto_1
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 243
    :cond_4
    iget-object v0, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    iget-object v3, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    iget-object v3, v3, Lcom/flurry/android/ft;->T:Lcom/flurry/android/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    iget-object v4, v4, Lcom/flurry/android/ft;->S:Lcom/flurry/android/cw;

    iget-object v5, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    iget v5, v5, Lcom/flurry/android/ft;->U:I

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/ft;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cw;II)V

    goto :goto_1

    .line 250
    :cond_5
    iget-object v0, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    const-string v1, "clicked"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    iget-object v3, v3, Lcom/flurry/android/ft;->T:Lcom/flurry/android/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    iget-object v4, v4, Lcom/flurry/android/ft;->S:Lcom/flurry/android/cw;

    iget-object v5, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    iget v5, v5, Lcom/flurry/android/ft;->U:I

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/ft;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cw;II)V

    .line 251
    iget-object v0, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    invoke-virtual {v0}, Lcom/flurry/android/ft;->bz()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 253
    iget-object v0, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->b(Lcom/flurry/android/ft;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 254
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 258
    :cond_6
    iget-object v0, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    iget-object v0, v0, Lcom/flurry/android/ft;->T:Lcom/flurry/android/AdUnit;

    invoke-virtual {v0}, Lcom/flurry/android/AdUnit;->getAdSpace()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    invoke-static {v2}, Lcom/flurry/android/ft;->m(Lcom/flurry/android/ft;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 260
    const-string v2, "url"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    iget-object v2, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    iget-object v2, v2, Lcom/flurry/android/ft;->R:Lcom/flurry/android/FlurryAds;

    iget-object v3, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    invoke-static {v3}, Lcom/flurry/android/ft;->m(Lcom/flurry/android/ft;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 262
    iget-object v1, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    invoke-static {v1}, Lcom/flurry/android/ft;->a(Lcom/flurry/android/ft;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to launch FlurryFullscreenTakeoverActivity, falling back to browser. Fix by declaring this Activity in your AndroidManifest.xml"

    invoke-static {v1, v2}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    iget-object v1, v1, Lcom/flurry/android/ft;->R:Lcom/flurry/android/FlurryAds;

    iget-object v2, p0, Lcom/flurry/android/gg;->dp:Lcom/flurry/android/ft;

    invoke-static {v2}, Lcom/flurry/android/ft;->m(Lcom/flurry/android/ft;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p2, v0}, Lcom/flurry/android/FlurryAds;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 265
    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0
.end method
