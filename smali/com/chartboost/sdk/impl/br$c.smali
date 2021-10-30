.class Lcom/chartboost/sdk/impl/br$c;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/br;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/br;


# direct methods
.method private constructor <init>(Lcom/chartboost/sdk/impl/br;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/chartboost/sdk/impl/br$c;->a:Lcom/chartboost/sdk/impl/br;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chartboost/sdk/impl/br;Lcom/chartboost/sdk/impl/br$1;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/br$c;-><init>(Lcom/chartboost/sdk/impl/br;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/chartboost/sdk/impl/br$c;->a:Lcom/chartboost/sdk/impl/br;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/br;->b(Lcom/chartboost/sdk/impl/br;)V

    .line 96
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/chartboost/sdk/impl/br$c;->a:Lcom/chartboost/sdk/impl/br;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/br;->a(Lcom/chartboost/sdk/impl/br;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 102
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v0, 0x0

    .line 106
    const-string v2, "CBWebViewProtocol"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loading url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    const-string v2, ""

    .line 110
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 117
    const-string v3, "chartboost"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 119
    array-length v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 120
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v5, :cond_0

    .line 121
    iget-object v1, p0, Lcom/chartboost/sdk/impl/br$c;->a:Lcom/chartboost/sdk/impl/br;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/br;->d(Lcom/chartboost/sdk/impl/br;)V

    .line 152
    :goto_0
    return v0

    .line 112
    :catch_0
    move-exception v1

    .line 113
    iget-object v1, p0, Lcom/chartboost/sdk/impl/br$c;->a:Lcom/chartboost/sdk/impl/br;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/br;->c(Lcom/chartboost/sdk/impl/br;)V

    goto :goto_0

    .line 124
    :cond_0
    const/4 v2, 0x2

    aget-object v2, v3, v2

    .line 126
    const-string v5, "close"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 127
    iget-object v0, p0, Lcom/chartboost/sdk/impl/br$c;->a:Lcom/chartboost/sdk/impl/br;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/br;->e(Lcom/chartboost/sdk/impl/br;)V

    .line 152
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 128
    :cond_2
    const-string v5, "link"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v6, :cond_3

    .line 130
    iget-object v1, p0, Lcom/chartboost/sdk/impl/br$c;->a:Lcom/chartboost/sdk/impl/br;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/br;->f(Lcom/chartboost/sdk/impl/br;)V

    goto :goto_0

    .line 138
    :cond_3
    const/4 v0, 0x3

    :try_start_1
    aget-object v0, v3, v0

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 139
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v6, :cond_4

    .line 140
    new-instance v4, Lorg/json/JSONTokener;

    const/4 v0, 0x4

    aget-object v0, v3, v0

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 141
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    move-object v1, v0

    move-object v0, v2

    .line 147
    :goto_3
    iget-object v2, p0, Lcom/chartboost/sdk/impl/br$c;->a:Lcom/chartboost/sdk/impl/br;

    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/chartboost/sdk/impl/br;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)Z

    goto :goto_1

    .line 143
    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    .line 144
    :goto_4
    const-string v3, "CBWebViewProtocol"

    const-string v4, "Error decoding URL or JSON"

    invoke-static {v3, v4, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 143
    :catch_2
    move-exception v0

    move-object v7, v0

    move-object v0, v2

    move-object v2, v7

    goto :goto_4

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method
