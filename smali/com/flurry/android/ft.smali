.class final Lcom/flurry/android/ft;
.super Lcom/flurry/android/p;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Lcom/flurry/android/au;


# instance fields
.field private Q:Landroid/content/Context;

.field private cJ:Landroid/view/View;

.field private cK:I

.field private cM:Landroid/widget/FrameLayout;

.field private eq:Landroid/webkit/WebView;

.field private er:Landroid/webkit/WebViewClient;

.field private es:Landroid/webkit/WebChromeClient;

.field private fI:Lcom/flurry/android/FlurryAds;

.field private fu:Landroid/app/ProgressDialog;

.field private fx:Landroid/widget/MediaController;

.field private hN:Lcom/flurry/android/gk;

.field private hO:Z

.field private hP:Z

.field private hQ:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private hR:Landroid/app/Dialog;

.field private hS:I

.field private hT:Landroid/app/Dialog;

.field private hU:Landroid/widget/FrameLayout;

.field private hV:Z

.field private hW:Z

.field private hX:Z

.field private hY:Landroid/app/AlertDialog;

.field private hZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/AdFrame;",
            ">;"
        }
    .end annotation
.end field

.field private hk:Lcom/flurry/android/aa;

.field private ia:Z

.field private ib:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/android/AdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private ic:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/android/cw;",
            ">;"
        }
    .end annotation
.end field

.field private id:Landroid/app/Activity;

.field private ie:Ljava/lang/String;

.field private if:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cw;Lcom/flurry/android/AdUnit;I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 585
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/android/p;-><init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cw;)V

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/flurry/android/ft;->p:Ljava/lang/String;

    .line 55
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/flurry/android/ft;->ie:Ljava/lang/String;

    .line 586
    iput-object p1, p0, Lcom/flurry/android/ft;->Q:Landroid/content/Context;

    .line 588
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 590
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/flurry/android/ft;->id:Landroid/app/Activity;

    .line 593
    :cond_0
    invoke-virtual {p0, v0}, Lcom/flurry/android/ft;->setClickable(Z)V

    .line 595
    iput-object p4, p0, Lcom/flurry/android/ft;->T:Lcom/flurry/android/AdUnit;

    .line 596
    iput p5, p0, Lcom/flurry/android/ft;->U:I

    .line 597
    iput-object p3, p0, Lcom/flurry/android/ft;->S:Lcom/flurry/android/cw;

    .line 599
    iget-object v2, p0, Lcom/flurry/android/ft;->T:Lcom/flurry/android/AdUnit;

    if-eqz v2, :cond_2

    .line 600
    iget-object v2, p0, Lcom/flurry/android/ft;->T:Lcom/flurry/android/AdUnit;

    invoke-virtual {v2}, Lcom/flurry/android/AdUnit;->getAdFrames()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/flurry/android/ft;->hZ:Ljava/util/List;

    .line 602
    iget-object v2, p0, Lcom/flurry/android/ft;->T:Lcom/flurry/android/AdUnit;

    invoke-virtual {v2}, Lcom/flurry/android/AdUnit;->getCombinable()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_3

    :goto_0
    iput-boolean v0, p0, Lcom/flurry/android/ft;->ia:Z

    .line 604
    iget-boolean v0, p0, Lcom/flurry/android/ft;->ia:Z

    if-eqz v0, :cond_1

    .line 606
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/ft;->ic:Ljava/util/Map;

    .line 607
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/ft;->ib:Ljava/util/Map;

    .line 608
    iget-object v0, p0, Lcom/flurry/android/ft;->ic:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/flurry/android/cw;->aA()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    iget-object v2, p0, Lcom/flurry/android/ft;->ib:Ljava/util/Map;

    invoke-virtual {p4}, Lcom/flurry/android/AdUnit;->getAdFrames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/AdFrame;->getAdGuid()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    :cond_1
    iput-object p2, p0, Lcom/flurry/android/ft;->fI:Lcom/flurry/android/FlurryAds;

    .line 613
    iget-object v0, p0, Lcom/flurry/android/ft;->fI:Lcom/flurry/android/FlurryAds;

    iget-object v0, v0, Lcom/flurry/android/FlurryAds;->hk:Lcom/flurry/android/aa;

    iput-object v0, p0, Lcom/flurry/android/ft;->hk:Lcom/flurry/android/aa;

    .line 614
    iget-object v0, p0, Lcom/flurry/android/ft;->T:Lcom/flurry/android/AdUnit;

    iput-object v0, p0, Lcom/flurry/android/p;->T:Lcom/flurry/android/AdUnit;

    .line 615
    iget-object v0, p0, Lcom/flurry/android/ft;->S:Lcom/flurry/android/cw;

    iput-object v0, p0, Lcom/flurry/android/p;->S:Lcom/flurry/android/cw;

    .line 616
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/ft;->if:Ljava/util/List;

    .line 619
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 602
    goto :goto_0
.end method

.method private I(Ljava/lang/String;)Lcom/flurry/android/cw;
    .locals 2

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/flurry/android/ft;->ic:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 1332
    const/4 v0, 0x0

    .line 1341
    :cond_0
    :goto_0
    return-object v0

    .line 1335
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/ft;->ic:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/cw;

    .line 1336
    if-nez v0, :cond_0

    .line 1338
    iget-object v0, p0, Lcom/flurry/android/ft;->fI:Lcom/flurry/android/FlurryAds;

    invoke-static {v0, p1}, Lcom/flurry/android/ct;->a(Lcom/flurry/android/FlurryAds;Ljava/lang/String;)Lcom/flurry/android/cw;

    move-result-object v0

    .line 1339
    iget-object v1, p0, Lcom/flurry/android/ft;->ic:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private J(Ljava/lang/String;)Lcom/flurry/android/AdUnit;
    .locals 1

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/flurry/android/ft;->ib:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1348
    const/4 v0, 0x0

    .line 1351
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/android/ft;->ib:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdUnit;

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/android/ft;I)I
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/flurry/android/ft;->cK:I

    return p1
.end method

.method static synthetic a(Lcom/flurry/android/ft;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/flurry/android/ft;->hR:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/android/ft;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/flurry/android/ft;->cJ:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/android/ft;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/flurry/android/ft;->hQ:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/android/ft;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/flurry/android/ft;->cM:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/android/ft;Ljava/lang/String;)Lcom/flurry/android/AdUnit;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/flurry/android/ft;->J(Ljava/lang/String;)Lcom/flurry/android/AdUnit;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/android/ft;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/flurry/android/ft;->p:Ljava/lang/String;

    return-object v0
.end method

.method private a(II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1101
    iget-object v0, p0, Lcom/flurry/android/ft;->hT:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 1132
    :goto_0
    return-void

    .line 1106
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "collapse("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1107
    iget-object v0, p0, Lcom/flurry/android/ft;->hT:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/ft;->hT:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1109
    iget-object v0, p0, Lcom/flurry/android/ft;->hT:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 1110
    iget-object v0, p0, Lcom/flurry/android/ft;->hT:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1111
    iget-object v0, p0, Lcom/flurry/android/ft;->hT:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1113
    :cond_1
    iput-object v3, p0, Lcom/flurry/android/ft;->hT:Landroid/app/Dialog;

    .line 1115
    iget-object v0, p0, Lcom/flurry/android/ft;->id:Landroid/app/Activity;

    iget v1, p0, Lcom/flurry/android/ft;->hS:I

    invoke-static {v0, v1}, Lcom/flurry/android/fd;->a(Landroid/app/Activity;I)V

    .line 1117
    iget-object v0, p0, Lcom/flurry/android/ft;->hU:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    .line 1119
    iget-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/flurry/android/ft;->hU:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 1121
    iget-object v0, p0, Lcom/flurry/android/ft;->hU:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1123
    :cond_2
    iput-object v3, p0, Lcom/flurry/android/ft;->hU:Landroid/widget/FrameLayout;

    .line 1126
    :cond_3
    iget-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1128
    iget-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/flurry/android/ft;->addView(Landroid/view/View;)V

    .line 1131
    :cond_4
    iget-object v0, p0, Lcom/flurry/android/ft;->R:Lcom/flurry/android/FlurryAds;

    iget-object v1, p0, Lcom/flurry/android/ft;->Q:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/android/ft;->T:Lcom/flurry/android/AdUnit;

    invoke-virtual {v2}, Lcom/flurry/android/AdUnit;->getAdSpace()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/FlurryAds;->onCloseFullScreen(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/flurry/android/ft;Z)Z
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/flurry/android/ft;->hW:Z

    return p1
.end method

.method static synthetic b(Lcom/flurry/android/ft;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic b(Lcom/flurry/android/ft;Ljava/lang/String;)Lcom/flurry/android/cw;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/flurry/android/ft;->I(Ljava/lang/String;)Lcom/flurry/android/cw;

    move-result-object v0

    return-object v0
.end method

.method private b(II)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/AdUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/flurry/android/ft;->hk:Lcom/flurry/android/aa;

    iget-object v1, p0, Lcom/flurry/android/ft;->Q:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/android/ft;->T:Lcom/flurry/android/AdUnit;

    invoke-virtual {v2}, Lcom/flurry/android/AdUnit;->getAdSpace()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/flurry/android/aa;->b(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 1317
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdUnit;

    .line 1319
    invoke-virtual {v0}, Lcom/flurry/android/AdUnit;->getAdFrames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1321
    iget-object v4, p0, Lcom/flurry/android/ft;->ib:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/flurry/android/AdUnit;->getAdFrames()Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/android/AdFrame;

    invoke-virtual {v1}, Lcom/flurry/android/AdFrame;->getAdGuid()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1324
    :cond_1
    return-object v2
.end method

.method static synthetic b(Lcom/flurry/android/ft;Z)Z
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/flurry/android/ft;->hV:Z

    return p1
.end method

.method private bA()Lcom/flurry/android/AdFrame;
    .locals 2

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/flurry/android/ft;->hZ:Ljava/util/List;

    iget v1, p0, Lcom/flurry/android/ft;->U:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdFrame;

    return-object v0
.end method

.method private bB()Lcom/flurry/android/v;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1395
    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/android/ft;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1396
    if-eqz v0, :cond_0

    check-cast v0, Lcom/flurry/android/v;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1401
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 1396
    goto :goto_0

    .line 1398
    :catch_0
    move-exception v0

    .line 1400
    iget-object v2, p0, Lcom/flurry/android/ft;->p:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdUnityView parent not a BannerHolder:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/flurry/android/cy;->g(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1401
    goto :goto_0
.end method

.method private bx()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1265
    invoke-direct {p0}, Lcom/flurry/android/ft;->bA()Lcom/flurry/android/AdFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdFrame;->getDisplay()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private by()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1270
    invoke-direct {p0}, Lcom/flurry/android/ft;->bA()Lcom/flurry/android/AdFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdFrame;->getAdSpaceLayout()Lcom/flurry/android/AdSpaceLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdSpaceLayout;->getFormat()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/flurry/android/ft;)V
    .locals 2

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/flurry/android/ft;->hP:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:(function() {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "var Hogan={};(function(Hogan,useArrayBuffer){Hogan.Template=function(renderFunc,text,compiler,options){this.r=renderFunc||this.r;this.c=compiler;this.options=options;this.text=text||\"\";this.buf=useArrayBuffer?[]:\"\"};Hogan.Template.prototype={r:function(context,partials,indent){return\"\"},v:hoganEscape,t:coerceToString,render:function render(context,partials,indent){return this.ri([context],partials||{},indent)},ri:function(context,partials,indent){return this.r(context,partials,indent)},rp:function(name,context,partials,indent){var partial=partials[name];if(!partial)return\"\";if(this.c&&typeof partial==\"string\")partial=this.c.compile(partial,this.options);return partial.ri(context,partials,indent)},rs:function(context,partials,section){var tail=context[context.length-1];if(!isArray(tail)){section(context,partials,this);return}for(var i=0;i<tail.length;i++){context.push(tail[i]);section(context,partials,this);context.pop()}},s:function(val,ctx,partials,inverted,start,end,tags){var pass;if(isArray(val)&&val.length===0)return false;if(typeof val==\"function\")val=this.ls(val,ctx,partials,inverted,start,end,tags);pass=val===\"\"||!!val;if(!inverted&&pass&&ctx)ctx.push(typeof val==\"object\"?val:ctx[ctx.length-1]);return pass},d:function(key,ctx,partials,returnFound){var names=key.split(\".\"),val=this.f(names[0],ctx,partials,returnFound),cx=null;if(key===\".\"&&isArray(ctx[ctx.length-2]))return ctx[ctx.length-1];for(var i=1;i<names.length;i++)if(val&&typeof val==\"object\"&&names[i]in val){cx=val;val=val[names[i]]}else val=\"\";if(returnFound&&!val)return false;if(!returnFound&&typeof val==\"function\"){ctx.push(cx);val=this.lv(val,ctx,partials);ctx.pop()}return val},f:function(key,ctx,partials,returnFound){var val=false,v=null,found=false;for(var i=ctx.length-1;i>=0;i--){v=ctx[i];if(v&&typeof v==\"object\"&&key in v){val=v[key];found=true;break}}if(!found)return returnFound?false:\"\";if(!returnFound&&typeof val==\"function\")val=this.lv(val,ctx,partials);return val},ho:function(val,cx,partials,text,tags){var compiler=this.c;var options=this.options;options.delimiters=tags;var t=val.call(cx,text,function(t){return compiler.compile(t,options).render(cx,partials)});this.b(compiler.compile(t.toString(),options).render(cx,partials));return false},b:useArrayBuffer?function(s){this.buf.push(s)}:function(s){this.buf+=s},fl:useArrayBuffer?function(){var r=this.buf.join(\"\");this.buf=[];return r}:function(){var r=this.buf;this.buf=\"\";return r},ls:function(val,ctx,partials,inverted,start,end,tags){var cx=ctx[ctx.length-1],t=null;if(!inverted&&this.c&&val.length>0)return this.ho(val,cx,partials,this.text.substring(start,end),tags);t=val.call(cx);if(typeof t==\"function\")if(inverted)return true;else if(this.c)return this.ho(t,cx,partials,this.text.substring(start,end),tags);return t},lv:function(val,ctx,partials){var cx=ctx[ctx.length-1];var result=val.call(cx);if(typeof result==\"function\")result=result.call(cx);result=coerceToString(result);if(this.c&&~result.indexOf(\"{{\"))return this.c.compile(result,this.options).render(cx,partials);return result}};var rAmp=/&/g,rLt=/</g,rGt=/>/g,rApos=/\\\'/g,rQuot=/\\\"/g,hChars=/[&<>\\\"\\\']/;function coerceToString(val){return String(val===null||val===undefined?\"\":val)}function hoganEscape(str){str=coerceToString(str);return hChars.test(str)?str.replace(rAmp,\"&amp;\").replace(rLt,\"&lt;\").replace(rGt,\"&gt;\").replace(rApos,\"&#39;\").replace(rQuot,\"&quot;\"):str}var isArray=Array.isArray||function(a){return Object.prototype.toString.call(a)===\"[object Array]\"}})(typeof exports!==\"undefined\"?exports:Hogan);(function(Hogan){var rIsWhitespace=/\\S/,rQuot=/\\\"/g,rNewline=/\\n/g,rCr=/\\r/g,rSlash=/\\\\/g,tagTypes={\"#\":1,\"^\":2,\"/\":3,\"!\":4,\">\":5,\"<\":6,\"=\":7,\"_v\":8,\"{\":9,\"&\":10};Hogan.scan=function scan(text,delimiters){var len=text.length,IN_TEXT=0,IN_TAG_TYPE=1,IN_TAG=2,state=IN_TEXT,tagType=null,tag=null,buf=\"\",tokens=[],seenTag=false,i=0,lineStart=0,otag=\"{{\",ctag=\"}}\";function addBuf(){if(buf.length>0){tokens.push(new String(buf));buf=\"\"}}function lineIsWhitespace(){var isAllWhitespace=true;for(var j=lineStart;j<tokens.length;j++){isAllWhitespace=tokens[j].tag&&tagTypes[tokens[j].tag]<tagTypes[\"_v\"]||!tokens[j].tag&&tokens[j].match(rIsWhitespace)===null;if(!isAllWhitespace)return false}return isAllWhitespace}function filterLine(haveSeenTag,noNewLine){addBuf();if(haveSeenTag&&lineIsWhitespace())for(var j=lineStart,next;j<tokens.length;j++){if(!tokens[j].tag){if((next=tokens[j+1])&&next.tag==\">\")next.indent=tokens[j].toString();tokens.splice(j,1)}}else if(!noNewLine)tokens.push({tag:\"\\n\"});seenTag=false;lineStart=tokens.length}function changeDelimiters(text,index){var close=\"=\"+ctag,closeIndex=text.indexOf(close,index),delimiters=trim(text.substring(text.indexOf(\"=\",index)+1,closeIndex)).split(\" \");otag=delimiters[0];ctag=delimiters[1];return closeIndex+close.length-1}if(delimiters){delimiters=delimiters.split(\" \");otag=delimiters[0];ctag=delimiters[1]}for(i=0;i<len;i++)if(state==IN_TEXT)if(tagChange(otag,text,i)){--i;addBuf();state=IN_TAG_TYPE}else if(text.charAt(i)==\"\\n\")filterLine(seenTag);else buf+=text.charAt(i);else if(state==IN_TAG_TYPE){i+=otag.length-1;tag=tagTypes[text.charAt(i+1)];tagType=tag?text.charAt(i+1):\"_v\";if(tagType==\"=\"){i=changeDelimiters(text,i);state=IN_TEXT}else{if(tag)i++;state=IN_TAG}seenTag=i}else if(tagChange(ctag,text,i)){tokens.push({tag:tagType,n:trim(buf),otag:otag,ctag:ctag,i:tagType==\"/\"?seenTag-ctag.length:i+otag.length});buf=\"\";i+=ctag.length-1;state=IN_TEXT;if(tagType==\"{\")if(ctag==\"}}\")i++;else cleanTripleStache(tokens[tokens.length-1])}else buf+=text.charAt(i);filterLine(seenTag,true);return tokens};function cleanTripleStache(token){if(token.n.substr(token.n.length-1)===\"}\")token.n=token.n.substring(0,token.n.length-1)}function trim(s){if(s.trim)return s.trim();return s.replace(/^\\s*|\\s*$/g,\"\")}function tagChange(tag,text,index){if(text.charAt(index)!=tag.charAt(0))return false;for(var i=1,l=tag.length;i<l;i++)if(text.charAt(index+i)!=tag.charAt(i))return false;return true}function buildTree(tokens,kind,stack,customTags){var instructions=[],opener=null,token=null;while(tokens.length>0){token=tokens.shift();if(token.tag==\"#\"||token.tag==\"^\"||isOpener(token,customTags)){stack.push(token);token.nodes=buildTree(tokens,token.tag,stack,customTags);instructions.push(token)}else if(token.tag==\"/\"){if(stack.length===0)throw new Error(\"Closing tag without opener: /\"+token.n);opener=stack.pop();if(token.n!=opener.n&&!isCloser(token.n,opener.n,customTags))throw new Error(\"Nesting error: \"+opener.n+\" vs. \"+token.n);opener.end=token.i;return instructions}else instructions.push(token)}if(stack.length>0)throw new Error(\"missing closing tag: \"+stack.pop().n);return instructions}function isOpener(token,tags){for(var i=0,l=tags.length;i<l;i++)if(tags[i].o==token.n){token.tag=\"#\";return true}}function isCloser(close,open,tags){for(var i=0,l=tags.length;i<l;i++)if(tags[i].c==close&&tags[i].o==open)return true}function writeCode(tree){return\'var _=this;_.b(i=i||\"\");\'+walk(tree)+\"return _.fl();\"}Hogan.generate=function(code,text,options){if(options.asString)return\"function(c,p,i){\"+code+\";}\";return new Hogan.Template(new Function(\"c\",\"p\",\"i\",code),text,Hogan,options)};function esc(s){return s.replace(rSlash,\"\\\\\\\\\").replace(rQuot,\'\\\\\"\').replace(rNewline,\"\\\\n\").replace(rCr,\"\\\\r\")}function chooseMethod(s){return~s.indexOf(\".\")?\"d\":\"f\"}function walk(tree){var code=\"\";for(var i=0,l=tree.length;i<l;i++){var tag=tree[i].tag;if(tag==\"#\")code+=section(tree[i].nodes,tree[i].n,chooseMethod(tree[i].n),tree[i].i,tree[i].end,tree[i].otag+\" \"+tree[i].ctag);else if(tag==\"^\")code+=invertedSection(tree[i].nodes,tree[i].n,chooseMethod(tree[i].n));else if(tag==\"<\"||tag==\">\")code+=partial(tree[i]);else if(tag==\"{\"||tag==\"&\")code+=tripleStache(tree[i].n,chooseMethod(tree[i].n));else if(tag==\"\\n\")code+=text(\'\"\\\\n\"\'+(tree.length-1==i?\"\":\" + i\"));else if(tag==\"_v\")code+=variable(tree[i].n,chooseMethod(tree[i].n));else if(tag===undefined)code+=text(\'\"\'+esc(tree[i])+\'\"\')}return code}function section(nodes,id,method,start,end,tags){return\"if(_.s(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,1),\'+\"c,p,0,\"+start+\",\"+end+\',\"\'+tags+\'\")){\'+\"_.rs(c,p,\"+\"function(c,p,_){\"+walk(nodes)+\"});c.pop();}\"}function invertedSection(nodes,id,method){return\"if(!_.s(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,1),c,p,1,0,0,\"\")){\'+walk(nodes)+\"};\"}function partial(tok){return\'_.b(_.rp(\"\'+esc(tok.n)+\'\",c,p,\"\'+(tok.indent||\"\")+\'\"));\'}function tripleStache(id,method){return\"_.b(_.t(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,0)));\'}function variable(id,method){return\"_.b(_.v(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,0)));\'}function text(id){return\"_.b(\"+id+\");\"}Hogan.parse=function(tokens,text,options){options=options||{};return buildTree(tokens,\"\",[],options.sectionTags||[])},Hogan.cache={};Hogan.compile=function(text,options){options=options||{};var key=text+\"||\"+!!options.asString;var t=this.cache[key];if(t)return t;t=this.generate(writeCode(this.parse(this.scan(text,options.delimiters),text,options)),text,options);return this.cache[key]=t}})(typeof exports!==\"undefined\"?exports:Hogan);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "var flurryBridgeCtor=function(w){var flurryadapter={};flurryadapter.flurryCallQueue=[];flurryadapter.flurryCallInProgress=false;flurryadapter.callComplete=function(cmd){if(this.flurryCallQueue.length==0){this.flurryCallInProgress=false;return}var adapterCall=this.flurryCallQueue.splice(0,1)[0];this.executeNativeCall(adapterCall);return\"OK\"};flurryadapter.executeCall=function(command){var adapterCall=\"flurry://flurrycall?event=\"+command;var value;for(var i=1;i<arguments.length;i+=2){value=arguments[i+1];if(value==null)continue;adapterCall+=\"&\"+arguments[i]+\"=\"+escape(value)}if(this.flurryCallInProgress)this.flurryCallQueue.push(adapterCall);else this.executeNativeCall(adapterCall)};flurryadapter.executeNativeCall=function(adapterCall){if(adapterCall.length==0)return;this.flurryCallInProgress=true;w.location=adapterCall};return flurryadapter};"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "window.Hogan=Hogan;window.flurryadapter=flurryBridgeCtor(window);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "window.flurryAdapterAvailable=true;if(typeof window.FlurryAdapterReady === \'function\'){window.FlurryAdapterReady();}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "})();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/ft;->hP:Z

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/flurry/android/ft;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/flurry/android/ft;->hW:Z

    return v0
.end method

.method static synthetic e(Lcom/flurry/android/ft;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 52
    iget-boolean v0, p0, Lcom/flurry/android/ft;->hX:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/flurry/android/ft;->bz()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "interstitial"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{useCustomClose:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isModal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",width:undefined,height:undefined,placementType:\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:(function() {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "var mraidCtor=function(flurryBridge,initState){var mraid={};var STATES=mraid.STATES={LOADING:\"loading\",UNKNOWN:\"unknown\",DEFAULT:\"default\",EXPANDED:\"expanded\",HIDDEN:\"hidden\"};var EVENTS=mraid.EVENTS={ASSETREADY:\"assetReady\",ASSETREMOVED:\"assetRemoved\",ASSETRETIRED:\"assetRetired\",INFO:\"info\",ERROR:\"error\",ORIENTATIONCHANGE:\"orientationChange\",READY:\"ready\",STATECHANGE:\"stateChange\",VIEWABLECHANGE:\"viewableChange\"};var listeners={};var currentState=STATES.LOADING;var expandProperties={width:initState.width,height:initState.height,isModal:initState.isModal,useCustomClose:false};var collapseProperties={};var placementType=initState.placementType;var disable=false;var closeId=\"flurry-mraid-default-close\";var imgUrl=\"http://flurry.cachefly.net/adSpaceStyles/images/bttn-close-bw.png\";var safeClose=function(){try{if(window.mraid)window.mraid.close();else if(window.flurryadapter)flurryadapter.executeCall(\"adWillClose\");else console.log(\"unable to close\")}catch(error){console.log(\"unable to close: \"+error)}};var makeDefaultClose=function(){var img=document.createElement(\"img\");img.src=imgUrl;img.id=closeId;img.style.position=\"absolute\";img.style.top=\"10px\";img.style.right=\"10px\";img.style.width=\"50px\";img.style.height=\"50px\";img.style.zIndex=1E4;return img};var updateDefaultClose=function(){if(!expandProperties.useCustomClose&&(placementType===\"interstitial\"||currentState===STATES.EXPANDED))addDefaultClose();else removeDefaultClose()};var addDefaultClose=function(){var closeButton=document.getElementById(closeId);if(!closeButton){closeButton=makeDefaultClose();document.body.appendChild(closeButton)}};var removeDefaultClose=function(){var closeButton=document.getElementById(closeId);if(closeButton)document.body.removeChild(closeButton)};var setupDefaultCloseHandler=function(){document.body.addEventListener(\"click\",function(e){e=e||window.event;var target=e.target||e.srcElement;if(target.id===closeId)safeClose()})};var contains=function(value,obj){for(var i in obj)if(obj[i]===value)return true;return false};var stringify=function(obj){if(typeof obj==\"object\")if(obj.push){var out=[];for(var p in obj)if(obj.hasOwnProperty(p))out.push(obj[p]);return\"[\"+out.join(\",\")+\"]\"}else{var out=[];for(var p in obj)if(obj.hasOwnProperty(p))out.push(\"\'\"+p+\"\':\"+obj[p]);return\"{\"+out.join(\",\")+\"}\"}else return new String(obj)};var broadcastEvent=function(){var args=new Array(arguments.length);for(var i=0;i<arguments.length;i++)args[i]=arguments[i];var event=args.shift();try{if(listeners[event])for(var j=0;j<listeners[event].length;j++)if(typeof listeners[event][j]===\"function\")listeners[event][j].apply(undefined,args);else if(typeof listeners[event][j]===\"string\"&&typeof window[listeners[event][j]]===\"function\")window[listeners[event][j]].apply(undefined,args)}catch(e){console.log(e)}};mraid.disable=function(){removeDefaultClose();disable=true};mraid.addEventListener=function(event,listener){if(disable)return;if(!event||!listener)broadcastEvent(EVENTS.ERROR,\"Both event and listener are required.\",\"addEventListener\");else if(!contains(event,EVENTS))broadcastEvent(EVENTS.ERROR,\"Unknown event: \"+event,\"addEventListener\");else if(!listeners[event])listeners[event]=[listener];else listeners[event].push(listener);flurryBridge.executeCall(\"eventListenerAdded\")};mraid.stateChange=function(newState){if(disable)return;if(currentState===newState)return;broadcastEvent(EVENTS.INFO,\"setting state to \"+stringify(newState));var oldState=currentState;currentState=newState;if(oldState===STATES.LOADING&&newState===STATES.DEFAULT){setupDefaultCloseHandler();updateDefaultClose();broadcastEvent(EVENTS.READY)}else if(oldState===STATES.HIDDEN||newState===STATES.HIDDEN)broadcastEvent(EVENTS.VIEWABLECHANGE);else if(oldState===STATES.DEFAULT&&newState===STATES.EXPANDED)updateDefaultClose();else if(newState===STATES.DEFAULT&&oldState===STATES.EXPANDED)updateDefaultClose();broadcastEvent(EVENTS.STATECHANGE,currentState)};mraid.close=function(){if(disable)return;var state=mraid.getState();if(state===STATES.DEFAULT){mraid.stateChange(STATES.HIDDEN);flurryBridge.executeCall(\"adWillClose\")}else if(state===STATES.EXPANDED){mraid.stateChange(STATES.DEFAULT);flurryBridge.executeCall(\"collapse\")}else console.log(\"close() called in state \"+state)};mraid.expand=function(url){if(disable)return;var state=mraid.getState();if(state!==STATES.DEFAULT){console.log(\"expand() called in state \"+state);return}if(placementType===\"interstitial\"){console.log(\"expand() called for placement type \"+placementType);return}if(url)flurryBridge.executeCall(\"expand\",\"width\",expandProperties.width,\"height\",expandProperties.height,\"url\",url);else flurryBridge.executeCall(\"expand\",\"width\",expandProperties.width,\"height\",expandProperties.height);mraid.stateChange(STATES.EXPANDED)};mraid.setExpandProperties=function(properties){if(disable)return;if(typeof properties.width===\"number\"&&!isNaN(properties.width))expandProperties.width=properties.width;if(typeof properties.height===\"number\"&&!isNaN(properties.height))expandProperties.height=properties.height;if(typeof properties.useCustomClose===\"boolean\"){expandProperties.useCustomClose=properties.useCustomClose;updateDefaultClose()}};mraid.getExpandProperties=function(properties){if(disable)return;var ret={};ret.width=expandProperties.width;ret.height=expandProperties.height;ret.isModal=expandProperties.isModal;ret.useCustomClose=expandProperties.useCustomClose;return ret};mraid.getPlacementType=function(){return placementType};mraid.getVersion=function(){if(disable)return\"\";return\"1.0\"};mraid.getState=function(){if(disable)return\"\";return currentState};mraid.isViewable=function(){if(disable)return false;if(mraid.getState()===\"hidden\")return false;else return true};mraid.open=function(url){if(disable)return;try{flurryBridge.executeCall(\"open\",\"url\",url)}catch(e){console.log(e)}};mraid.removeEventListener=function(event,listener){if(disable)return;if(!event)broadcastEvent(\"error\",\"Must specify an event.\",\"removeEventListener\");else if(listener&&listeners[event])for(var i=0;i<listeners[event].length;i++){if(listeners[event][i]===listener)listeners[event].splice(i,1)}else if(listeners[event])listeners[event]=[]};mraid.useCustomClose=function(use){if(disable)return;if(typeof use===\"boolean\"){expandProperties.useCustomClose=use;updateDefaultClose()}};return mraid};"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "window.mraid=mraidCtor(window.flurryadapter,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ");"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "})();"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/ft;->hX:Z

    :cond_1
    return-void

    :cond_2
    const-string v0, "inline"

    goto :goto_0
.end method

.method static synthetic f(Lcom/flurry/android/ft;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/flurry/android/ft;->hV:Z

    return v0
.end method

.method static synthetic g(Lcom/flurry/android/ft;)V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "if(window.mraid){window.mraid.stateChange(window.mraid.STATES.DEFAULT);}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/flurry/android/ft;)V
    .locals 3

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/flurry/android/ft;->bz()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/ft;->id:Landroid/app/Activity;

    invoke-static {}, Lcom/flurry/android/fd;->bf()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/flurry/android/fd;->a(Landroid/app/Activity;IZ)Z

    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/flurry/android/ft;)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/ft;->hP:Z

    return-void
.end method

.method private j(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/AdUnit;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1285
    const-string v0, "\'{\"adComponents\":["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    iget-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 1288
    invoke-static {v0}, Lcom/flurry/android/UriUtils;->root(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1289
    invoke-static {v2, v0}, Lcom/flurry/android/UriUtils;->relativize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1291
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1292
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1294
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdUnit;

    .line 1295
    invoke-virtual {v0}, Lcom/flurry/android/AdUnit;->getAdFrames()Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/AdFrame;->getContent()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1300
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eq v3, v2, :cond_1

    .line 1301
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1304
    :cond_1
    invoke-static {v0}, Lcom/flurry/android/fl;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1305
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1307
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1310
    :cond_2
    const-string v0, "]}\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1311
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/flurry/android/ft;)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/ft;->hX:Z

    return-void
.end method

.method static synthetic k(Lcom/flurry/android/ft;)V
    .locals 5

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/flurry/android/ft;->bA()Lcom/flurry/android/AdFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdFrame;->getContent()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/flurry/android/ft;->ia:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "{}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/android/UriUtils;->root(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/flurry/android/UriUtils;->relativize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eq v1, v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content before {{mustached}} tags replacement = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content after {{mustached}} tags replacement = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(function(){"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "if(!window.Hogan){var Hogan={};(function(Hogan,useArrayBuffer){Hogan.Template=function(renderFunc,text,compiler,options){this.r=renderFunc||this.r;this.c=compiler;this.options=options;this.text=text||\"\";this.buf=useArrayBuffer?[]:\"\"};Hogan.Template.prototype={r:function(context,partials,indent){return\"\"},v:hoganEscape,t:coerceToString,render:function render(context,partials,indent){return this.ri([context],partials||{},indent)},ri:function(context,partials,indent){return this.r(context,partials,indent)},rp:function(name,context,partials,indent){var partial=partials[name];if(!partial)return\"\";if(this.c&&typeof partial==\"string\")partial=this.c.compile(partial,this.options);return partial.ri(context,partials,indent)},rs:function(context,partials,section){var tail=context[context.length-1];if(!isArray(tail)){section(context,partials,this);return}for(var i=0;i<tail.length;i++){context.push(tail[i]);section(context,partials,this);context.pop()}},s:function(val,ctx,partials,inverted,start,end,tags){var pass;if(isArray(val)&&val.length===0)return false;if(typeof val==\"function\")val=this.ls(val,ctx,partials,inverted,start,end,tags);pass=val===\"\"||!!val;if(!inverted&&pass&&ctx)ctx.push(typeof val==\"object\"?val:ctx[ctx.length-1]);return pass},d:function(key,ctx,partials,returnFound){var names=key.split(\".\"),val=this.f(names[0],ctx,partials,returnFound),cx=null;if(key===\".\"&&isArray(ctx[ctx.length-2]))return ctx[ctx.length-1];for(var i=1;i<names.length;i++)if(val&&typeof val==\"object\"&&names[i]in val){cx=val;val=val[names[i]]}else val=\"\";if(returnFound&&!val)return false;if(!returnFound&&typeof val==\"function\"){ctx.push(cx);val=this.lv(val,ctx,partials);ctx.pop()}return val},f:function(key,ctx,partials,returnFound){var val=false,v=null,found=false;for(var i=ctx.length-1;i>=0;i--){v=ctx[i];if(v&&typeof v==\"object\"&&key in v){val=v[key];found=true;break}}if(!found)return returnFound?false:\"\";if(!returnFound&&typeof val==\"function\")val=this.lv(val,ctx,partials);return val},ho:function(val,cx,partials,text,tags){var compiler=this.c;var options=this.options;options.delimiters=tags;var t=val.call(cx,text,function(t){return compiler.compile(t,options).render(cx,partials)});this.b(compiler.compile(t.toString(),options).render(cx,partials));return false},b:useArrayBuffer?function(s){this.buf.push(s)}:function(s){this.buf+=s},fl:useArrayBuffer?function(){var r=this.buf.join(\"\");this.buf=[];return r}:function(){var r=this.buf;this.buf=\"\";return r},ls:function(val,ctx,partials,inverted,start,end,tags){var cx=ctx[ctx.length-1],t=null;if(!inverted&&this.c&&val.length>0)return this.ho(val,cx,partials,this.text.substring(start,end),tags);t=val.call(cx);if(typeof t==\"function\")if(inverted)return true;else if(this.c)return this.ho(t,cx,partials,this.text.substring(start,end),tags);return t},lv:function(val,ctx,partials){var cx=ctx[ctx.length-1];var result=val.call(cx);if(typeof result==\"function\")result=result.call(cx);result=coerceToString(result);if(this.c&&~result.indexOf(\"{{\"))return this.c.compile(result,this.options).render(cx,partials);return result}};var rAmp=/&/g,rLt=/</g,rGt=/>/g,rApos=/\\\'/g,rQuot=/\\\"/g,hChars=/[&<>\\\"\\\']/;function coerceToString(val){return String(val===null||val===undefined?\"\":val)}function hoganEscape(str){str=coerceToString(str);return hChars.test(str)?str.replace(rAmp,\"&amp;\").replace(rLt,\"&lt;\").replace(rGt,\"&gt;\").replace(rApos,\"&#39;\").replace(rQuot,\"&quot;\"):str}var isArray=Array.isArray||function(a){return Object.prototype.toString.call(a)===\"[object Array]\"}})(typeof exports!==\"undefined\"?exports:Hogan);(function(Hogan){var rIsWhitespace=/\\S/,rQuot=/\\\"/g,rNewline=/\\n/g,rCr=/\\r/g,rSlash=/\\\\/g,tagTypes={\"#\":1,\"^\":2,\"/\":3,\"!\":4,\">\":5,\"<\":6,\"=\":7,\"_v\":8,\"{\":9,\"&\":10};Hogan.scan=function scan(text,delimiters){var len=text.length,IN_TEXT=0,IN_TAG_TYPE=1,IN_TAG=2,state=IN_TEXT,tagType=null,tag=null,buf=\"\",tokens=[],seenTag=false,i=0,lineStart=0,otag=\"{{\",ctag=\"}}\";function addBuf(){if(buf.length>0){tokens.push(new String(buf));buf=\"\"}}function lineIsWhitespace(){var isAllWhitespace=true;for(var j=lineStart;j<tokens.length;j++){isAllWhitespace=tokens[j].tag&&tagTypes[tokens[j].tag]<tagTypes[\"_v\"]||!tokens[j].tag&&tokens[j].match(rIsWhitespace)===null;if(!isAllWhitespace)return false}return isAllWhitespace}function filterLine(haveSeenTag,noNewLine){addBuf();if(haveSeenTag&&lineIsWhitespace())for(var j=lineStart,next;j<tokens.length;j++){if(!tokens[j].tag){if((next=tokens[j+1])&&next.tag==\">\")next.indent=tokens[j].toString();tokens.splice(j,1)}}else if(!noNewLine)tokens.push({tag:\"\\n\"});seenTag=false;lineStart=tokens.length}function changeDelimiters(text,index){var close=\"=\"+ctag,closeIndex=text.indexOf(close,index),delimiters=trim(text.substring(text.indexOf(\"=\",index)+1,closeIndex)).split(\" \");otag=delimiters[0];ctag=delimiters[1];return closeIndex+close.length-1}if(delimiters){delimiters=delimiters.split(\" \");otag=delimiters[0];ctag=delimiters[1]}for(i=0;i<len;i++)if(state==IN_TEXT)if(tagChange(otag,text,i)){--i;addBuf();state=IN_TAG_TYPE}else if(text.charAt(i)==\"\\n\")filterLine(seenTag);else buf+=text.charAt(i);else if(state==IN_TAG_TYPE){i+=otag.length-1;tag=tagTypes[text.charAt(i+1)];tagType=tag?text.charAt(i+1):\"_v\";if(tagType==\"=\"){i=changeDelimiters(text,i);state=IN_TEXT}else{if(tag)i++;state=IN_TAG}seenTag=i}else if(tagChange(ctag,text,i)){tokens.push({tag:tagType,n:trim(buf),otag:otag,ctag:ctag,i:tagType==\"/\"?seenTag-ctag.length:i+otag.length});buf=\"\";i+=ctag.length-1;state=IN_TEXT;if(tagType==\"{\")if(ctag==\"}}\")i++;else cleanTripleStache(tokens[tokens.length-1])}else buf+=text.charAt(i);filterLine(seenTag,true);return tokens};function cleanTripleStache(token){if(token.n.substr(token.n.length-1)===\"}\")token.n=token.n.substring(0,token.n.length-1)}function trim(s){if(s.trim)return s.trim();return s.replace(/^\\s*|\\s*$/g,\"\")}function tagChange(tag,text,index){if(text.charAt(index)!=tag.charAt(0))return false;for(var i=1,l=tag.length;i<l;i++)if(text.charAt(index+i)!=tag.charAt(i))return false;return true}function buildTree(tokens,kind,stack,customTags){var instructions=[],opener=null,token=null;while(tokens.length>0){token=tokens.shift();if(token.tag==\"#\"||token.tag==\"^\"||isOpener(token,customTags)){stack.push(token);token.nodes=buildTree(tokens,token.tag,stack,customTags);instructions.push(token)}else if(token.tag==\"/\"){if(stack.length===0)throw new Error(\"Closing tag without opener: /\"+token.n);opener=stack.pop();if(token.n!=opener.n&&!isCloser(token.n,opener.n,customTags))throw new Error(\"Nesting error: \"+opener.n+\" vs. \"+token.n);opener.end=token.i;return instructions}else instructions.push(token)}if(stack.length>0)throw new Error(\"missing closing tag: \"+stack.pop().n);return instructions}function isOpener(token,tags){for(var i=0,l=tags.length;i<l;i++)if(tags[i].o==token.n){token.tag=\"#\";return true}}function isCloser(close,open,tags){for(var i=0,l=tags.length;i<l;i++)if(tags[i].c==close&&tags[i].o==open)return true}function writeCode(tree){return\'var _=this;_.b(i=i||\"\");\'+walk(tree)+\"return _.fl();\"}Hogan.generate=function(code,text,options){if(options.asString)return\"function(c,p,i){\"+code+\";}\";return new Hogan.Template(new Function(\"c\",\"p\",\"i\",code),text,Hogan,options)};function esc(s){return s.replace(rSlash,\"\\\\\\\\\").replace(rQuot,\'\\\\\"\').replace(rNewline,\"\\\\n\").replace(rCr,\"\\\\r\")}function chooseMethod(s){return~s.indexOf(\".\")?\"d\":\"f\"}function walk(tree){var code=\"\";for(var i=0,l=tree.length;i<l;i++){var tag=tree[i].tag;if(tag==\"#\")code+=section(tree[i].nodes,tree[i].n,chooseMethod(tree[i].n),tree[i].i,tree[i].end,tree[i].otag+\" \"+tree[i].ctag);else if(tag==\"^\")code+=invertedSection(tree[i].nodes,tree[i].n,chooseMethod(tree[i].n));else if(tag==\"<\"||tag==\">\")code+=partial(tree[i]);else if(tag==\"{\"||tag==\"&\")code+=tripleStache(tree[i].n,chooseMethod(tree[i].n));else if(tag==\"\\n\")code+=text(\'\"\\\\n\"\'+(tree.length-1==i?\"\":\" + i\"));else if(tag==\"_v\")code+=variable(tree[i].n,chooseMethod(tree[i].n));else if(tag===undefined)code+=text(\'\"\'+esc(tree[i])+\'\"\')}return code}function section(nodes,id,method,start,end,tags){return\"if(_.s(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,1),\'+\"c,p,0,\"+start+\",\"+end+\',\"\'+tags+\'\")){\'+\"_.rs(c,p,\"+\"function(c,p,_){\"+walk(nodes)+\"});c.pop();}\"}function invertedSection(nodes,id,method){return\"if(!_.s(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,1),c,p,1,0,0,\"\")){\'+walk(nodes)+\"};\"}function partial(tok){return\'_.b(_.rp(\"\'+esc(tok.n)+\'\",c,p,\"\'+(tok.indent||\"\")+\'\"));\'}function tripleStache(id,method){return\"_.b(_.t(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,0)));\'}function variable(id,method){return\"_.b(_.v(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,0)));\'}function text(id){return\"_.b(\"+id+\");\"}Hogan.parse=function(tokens,text,options){options=options||{};return buildTree(tokens,\"\",[],options.sectionTags||[])},Hogan.cache={};Hogan.compile=function(text,options){options=options||{};var key=text+\"||\"+!!options.asString;var t=this.cache[key];if(t)return t;t=this.generate(writeCode(this.parse(this.scan(text,options.delimiters),text,options)),text,options);return this.cache[key]=t}})(typeof exports!==\"undefined\"?exports:Hogan);window.Hogan=Hogan;}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "if(!window.flurryadapter){var flurryBridgeCtor=function(w){var flurryadapter={};flurryadapter.flurryCallQueue=[];flurryadapter.flurryCallInProgress=false;flurryadapter.callComplete=function(cmd){if(this.flurryCallQueue.length==0){this.flurryCallInProgress=false;return}var adapterCall=this.flurryCallQueue.splice(0,1)[0];this.executeNativeCall(adapterCall);return\"OK\"};flurryadapter.executeCall=function(command){var adapterCall=\"flurry://flurrycall?event=\"+command;var value;for(var i=1;i<arguments.length;i+=2){value=arguments[i+1];if(value==null)continue;adapterCall+=\"&\"+arguments[i]+\"=\"+escape(value)}if(this.flurryCallInProgress)this.flurryCallQueue.push(adapterCall);else this.executeNativeCall(adapterCall)};flurryadapter.executeNativeCall=function(adapterCall){if(adapterCall.length==0)return;this.flurryCallInProgress=true;w.location=adapterCall};return flurryadapter};window.flurryadapter=flurryBridgeCtor(window);}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "if(!window.flurryAdapterAvailable){window.flurryAdapterAvailable=true;if(typeof window.FlurryAdapterReady === \'function\'){window.FlurryAdapterReady();} }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/flurry/android/fl;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "var content=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\';var compiled=window.Hogan.compile(document.body.innerHTML);var rendered=compiled.render(JSON.parse(content));document.body.innerHTML=rendered;"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "})();"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic l(Lcom/flurry/android/ft;)Ljava/util/List;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/flurry/android/ft;->if:Ljava/util/List;

    return-object v0
.end method

.method static synthetic m(Lcom/flurry/android/ft;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/flurry/android/ft;->Q:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic n(Lcom/flurry/android/ft;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/flurry/android/ft;->id:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic o(Lcom/flurry/android/ft;)Landroid/view/View;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/flurry/android/ft;->cJ:Landroid/view/View;

    return-object v0
.end method

.method static synthetic p(Lcom/flurry/android/ft;)Landroid/webkit/WebChromeClient;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/flurry/android/ft;->es:Landroid/webkit/WebChromeClient;

    return-object v0
.end method

.method static synthetic q(Lcom/flurry/android/ft;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/flurry/android/ft;->cM:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic r(Lcom/flurry/android/ft;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/flurry/android/ft;->hR:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic s(Lcom/flurry/android/ft;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/flurry/android/ft;->hT:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic t(Lcom/flurry/android/ft;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/flurry/android/ft;->cK:I

    return v0
.end method

.method static synthetic u(Lcom/flurry/android/ft;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/flurry/android/ft;->hQ:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object v0
.end method

.method static synthetic v(Lcom/flurry/android/ft;)Lcom/flurry/android/gk;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/flurry/android/ft;->hN:Lcom/flurry/android/gk;

    return-object v0
.end method


# virtual methods
.method final a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cw;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/flurry/android/AdUnit;",
            "Lcom/flurry/android/cw;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 1249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fireEvent(event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1250
    iget-object v7, p0, Lcom/flurry/android/ft;->R:Lcom/flurry/android/FlurryAds;

    new-instance v0, Lcom/flurry/android/gt;

    iget-object v3, p0, Lcom/flurry/android/ft;->Q:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/flurry/android/gt;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cw;I)V

    invoke-virtual {v7, v0, p0, p6}, Lcom/flurry/android/FlurryAds;->onEvent(Lcom/flurry/android/gt;Lcom/flurry/android/au;I)V

    .line 1251
    return-void
.end method

.method final a(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1374
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1375
    if-eqz v0, :cond_0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final bw()I
    .locals 1

    .prologue
    .line 1255
    invoke-direct {p0}, Lcom/flurry/android/ft;->bA()Lcom/flurry/android/AdFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdFrame;->getBinding()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method final bz()Z
    .locals 2

    .prologue
    .line 1274
    invoke-direct {p0}, Lcom/flurry/android/ft;->by()Ljava/lang/String;

    move-result-object v0

    const-string v1, "takeover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final initLayout(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initLayout: ad creative layout: {width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/flurry/android/ft;->bA()Lcom/flurry/android/AdFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/AdFrame;->getAdSpaceLayout()Lcom/flurry/android/AdSpaceLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/AdSpaceLayout;->getAdWidth()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/flurry/android/ft;->bA()Lcom/flurry/android/AdFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/AdFrame;->getAdSpaceLayout()Lcom/flurry/android/AdSpaceLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/AdSpaceLayout;->getAdHeight()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 699
    invoke-virtual {p0}, Lcom/flurry/android/ft;->removeAllViews()V

    .line 700
    invoke-virtual {p0, v7}, Lcom/flurry/android/ft;->setFocusable(Z)V

    .line 701
    invoke-virtual {p0, v7}, Lcom/flurry/android/ft;->setFocusableInTouchMode(Z)V

    .line 703
    invoke-virtual {p0}, Lcom/flurry/android/ft;->bw()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 777
    const-string v1, "renderFailed"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/ft;->T:Lcom/flurry/android/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/ft;->S:Lcom/flurry/android/cw;

    iget v5, p0, Lcom/flurry/android/ft;->U:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/ft;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cw;II)V

    .line 779
    :goto_0
    return-void

    .line 706
    :pswitch_0
    iget-object v0, p0, Lcom/flurry/android/ft;->hN:Lcom/flurry/android/gk;

    if-nez v0, :cond_0

    .line 708
    new-instance v0, Lcom/flurry/android/gk;

    invoke-direct {v0, p1}, Lcom/flurry/android/gk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/android/ft;->hN:Lcom/flurry/android/gk;

    .line 709
    iget-object v0, p0, Lcom/flurry/android/ft;->hN:Lcom/flurry/android/gk;

    invoke-virtual {v0, p0}, Lcom/flurry/android/gk;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 710
    iget-object v0, p0, Lcom/flurry/android/ft;->hN:Lcom/flurry/android/gk;

    invoke-virtual {v0, p0}, Lcom/flurry/android/gk;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 711
    iget-object v0, p0, Lcom/flurry/android/ft;->hN:Lcom/flurry/android/gk;

    invoke-virtual {v0, p0}, Lcom/flurry/android/gk;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 712
    new-instance v0, Landroid/widget/MediaController;

    invoke-direct {v0, p1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/android/ft;->fx:Landroid/widget/MediaController;

    .line 713
    iget-object v0, p0, Lcom/flurry/android/ft;->hN:Lcom/flurry/android/gk;

    iget-object v1, p0, Lcom/flurry/android/ft;->fx:Landroid/widget/MediaController;

    invoke-virtual {v0, v1}, Lcom/flurry/android/gk;->setMediaController(Landroid/widget/MediaController;)V

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/ft;->hN:Lcom/flurry/android/gk;

    invoke-direct {p0}, Lcom/flurry/android/ft;->bx()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/gk;->setVideoURI(Landroid/net/Uri;)V

    .line 717
    iget-object v0, p0, Lcom/flurry/android/ft;->p:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/flurry/android/ft;->bx()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    iget-object v0, p0, Lcom/flurry/android/ft;->hN:Lcom/flurry/android/gk;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/flurry/android/gk;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 721
    iget-object v0, p0, Lcom/flurry/android/ft;->hN:Lcom/flurry/android/gk;

    invoke-virtual {p0, v0}, Lcom/flurry/android/ft;->addView(Landroid/view/View;)V

    .line 723
    iget-object v0, p0, Lcom/flurry/android/ft;->hN:Lcom/flurry/android/gk;

    invoke-virtual {v0}, Lcom/flurry/android/gk;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 724
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/android/ft;->fu:Landroid/app/ProgressDialog;

    .line 725
    iget-object v0, p0, Lcom/flurry/android/ft;->fu:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 726
    iget-object v0, p0, Lcom/flurry/android/ft;->fu:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 727
    iget-object v0, p0, Lcom/flurry/android/ft;->fu:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 728
    iget-object v0, p0, Lcom/flurry/android/ft;->fu:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 729
    iget-object v0, p0, Lcom/flurry/android/ft;->fu:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_0

    .line 737
    :pswitch_1
    iget-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    .line 739
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    .line 740
    iget-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 741
    iget-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 742
    iget-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 743
    iget-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 744
    iget-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 746
    new-instance v0, Lcom/flurry/android/co;

    invoke-direct {v0, p0}, Lcom/flurry/android/co;-><init>(Lcom/flurry/android/ft;)V

    iput-object v0, p0, Lcom/flurry/android/ft;->es:Landroid/webkit/WebChromeClient;

    .line 747
    iget-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/flurry/android/ft;->es:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 748
    new-instance v0, Lcom/flurry/android/gg;

    invoke-direct {v0, p0}, Lcom/flurry/android/gg;-><init>(Lcom/flurry/android/ft;)V

    iput-object v0, p0, Lcom/flurry/android/ft;->er:Landroid/webkit/WebViewClient;

    .line 749
    iget-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/flurry/android/ft;->er:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 751
    :cond_1
    const-string v1, "rendered"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/ft;->T:Lcom/flurry/android/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/ft;->S:Lcom/flurry/android/cw;

    iget v5, p0, Lcom/flurry/android/ft;->U:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/ft;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cw;II)V

    .line 752
    invoke-virtual {p0}, Lcom/flurry/android/ft;->bw()I

    move-result v0

    if-ne v0, v7, :cond_4

    .line 754
    iget-object v0, p0, Lcom/flurry/android/ft;->ie:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 756
    iget-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/flurry/android/ft;->ie:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 769
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 760
    :cond_3
    invoke-direct {p0}, Lcom/flurry/android/ft;->bx()Ljava/lang/String;

    move-result-object v0

    .line 761
    iget-object v1, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 764
    :cond_4
    invoke-virtual {p0}, Lcom/flurry/android/ft;->bw()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 766
    iget-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    const-string v1, "base://url/"

    invoke-direct {p0}, Lcom/flurry/android/ft;->bx()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const-string v5, "base://url/"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 703
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 7

    .prologue
    .line 1142
    const-string v1, "videoCompleted"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/ft;->T:Lcom/flurry/android/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/ft;->S:Lcom/flurry/android/cw;

    iget v5, p0, Lcom/flurry/android/ft;->U:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/ft;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cw;II)V

    .line 1143
    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1167
    iget-object v0, p0, Lcom/flurry/android/ft;->fu:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/ft;->fu:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1169
    iget-object v0, p0, Lcom/flurry/android/ft;->fu:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1171
    :cond_0
    const-string v1, "renderFailed"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/ft;->T:Lcom/flurry/android/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/ft;->S:Lcom/flurry/android/cw;

    iget v5, p0, Lcom/flurry/android/ft;->U:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/ft;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cw;II)V

    .line 1173
    iget-object v0, p0, Lcom/flurry/android/ft;->hN:Lcom/flurry/android/gk;

    invoke-virtual {p0, v0}, Lcom/flurry/android/ft;->removeView(Landroid/view/View;)V

    .line 1174
    return v6
.end method

.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onkey,keycode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1382
    iget-object v0, p0, Lcom/flurry/android/ft;->fu:Landroid/app/ProgressDialog;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1384
    const-string v1, "adWillClose"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/ft;->T:Lcom/flurry/android/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/ft;->S:Lcom/flurry/android/cw;

    iget v5, p0, Lcom/flurry/android/ft;->U:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/ft;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cw;II)V

    .line 1385
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1386
    const/4 v6, 0x1

    .line 1388
    :cond_0
    return v6
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1148
    invoke-virtual {p0}, Lcom/flurry/android/ft;->bw()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1150
    iget-object v0, p0, Lcom/flurry/android/ft;->fu:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/flurry/android/ft;->fu:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1154
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/ft;->hY:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/ft;->hY:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1156
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/ft;->hN:Lcom/flurry/android/gk;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/flurry/android/ft;->hO:Z

    if-eqz v0, :cond_2

    .line 1157
    iget-object v0, p0, Lcom/flurry/android/ft;->hN:Lcom/flurry/android/gk;

    invoke-virtual {v0}, Lcom/flurry/android/gk;->start()V

    .line 1160
    :cond_2
    const-string v1, "rendered"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/ft;->T:Lcom/flurry/android/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/ft;->S:Lcom/flurry/android/cw;

    iget v5, p0, Lcom/flurry/android/ft;->U:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/ft;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cw;II)V

    .line 1161
    const-string v1, "videoStart"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/ft;->T:Lcom/flurry/android/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/ft;->S:Lcom/flurry/android/cw;

    iget v5, p0, Lcom/flurry/android/ft;->U:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/ft;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cw;II)V

    .line 1163
    :cond_3
    return-void
.end method

.method public final pause()V
    .locals 2

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1194
    sget v0, Lcom/flurry/android/n;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 1199
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/ft;->hN:Lcom/flurry/android/gk;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/flurry/android/ft;->bw()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1200
    iget-object v0, p0, Lcom/flurry/android/ft;->hN:Lcom/flurry/android/gk;

    invoke-virtual {v0}, Lcom/flurry/android/gk;->pause()V

    .line 1202
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/ft;->hO:Z

    .line 1203
    return-void
.end method

.method public final performAction$3deb3ec3(Lcom/flurry/android/y;Lcom/flurry/android/FlurryAds;I)V
    .locals 10

    .prologue
    .line 784
    iget-object v1, p1, Lcom/flurry/android/y;->bi:Ljava/lang/String;

    .line 785
    iget-object v3, p1, Lcom/flurry/android/y;->bk:Lcom/flurry/android/gt;

    .line 786
    iget-object v2, p1, Lcom/flurry/android/y;->bj:Ljava/util/Map;

    .line 788
    const/16 v0, 0xa

    if-le p3, v0, :cond_1

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Maximum depth for event/action loop exceeded when performing action:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",triggered by:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v3, Lcom/flurry/android/gt;->jf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1025
    :cond_0
    :goto_0
    return-void

    .line 794
    :cond_1
    iget-object v0, v3, Lcom/flurry/android/gt;->jf:Ljava/lang/String;

    const-string v4, "clicked"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 795
    iget-object v0, v3, Lcom/flurry/android/gt;->bj:Ljava/util/Map;

    const-string v4, "noop"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 796
    if-eqz v0, :cond_2

    const-string v4, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 803
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "performAction(action="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",params="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p1, Lcom/flurry/android/y;->bj:Ljava/util/Map;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",triggering event="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v3, Lcom/flurry/android/gt;->jf:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 805
    const-string v0, "nextFrame"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 807
    iget v0, p0, Lcom/flurry/android/ft;->U:I

    add-int/lit8 v1, v0, 0x1

    .line 808
    const-string v0, "offset"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 809
    if-eqz v0, :cond_3

    .line 811
    const-string v2, "next"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 813
    iget v0, p0, Lcom/flurry/android/ft;->U:I

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    .line 831
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/flurry/android/ft;->ia:Z

    if-nez v0, :cond_7

    iget v0, p0, Lcom/flurry/android/ft;->U:I

    if-eq v1, v0, :cond_4

    iget-object v0, p0, Lcom/flurry/android/ft;->hZ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/flurry/android/ft;->T:Lcom/flurry/android/AdUnit;

    invoke-virtual {v0}, Lcom/flurry/android/AdUnit;->getAdFrames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdFrame;

    invoke-direct {p0}, Lcom/flurry/android/ft;->by()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/flurry/android/AdFrame;->getAdSpaceLayout()Lcom/flurry/android/AdSpaceLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdSpaceLayout;->getFormat()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "takeover"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/flurry/android/ft;->fI:Lcom/flurry/android/FlurryAds;

    iget-object v2, p0, Lcom/flurry/android/ft;->S:Lcom/flurry/android/cw;

    invoke-virtual {v0, v2}, Lcom/flurry/android/FlurryAds;->b(Lcom/flurry/android/cw;)V

    iget-object v0, p0, Lcom/flurry/android/ft;->fI:Lcom/flurry/android/FlurryAds;

    iget-object v2, p0, Lcom/flurry/android/ft;->T:Lcom/flurry/android/AdUnit;

    invoke-virtual {v0, v2}, Lcom/flurry/android/FlurryAds;->a(Lcom/flurry/android/AdUnit;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/flurry/android/ft;->Q:Landroid/content/Context;

    const-class v3, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "frameIndex"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/flurry/android/ft;->fI:Lcom/flurry/android/FlurryAds;

    iget-object v2, p0, Lcom/flurry/android/ft;->Q:Landroid/content/Context;

    iget-object v3, p0, Lcom/flurry/android/ft;->T:Lcom/flurry/android/AdUnit;

    invoke-virtual {v3}, Lcom/flurry/android/AdUnit;->getAdSpace()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    .line 1024
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/flurry/android/ft;->if:Ljava/util/List;

    iget-object v1, p1, Lcom/flurry/android/y;->bk:Lcom/flurry/android/gt;

    iget-object v1, v1, Lcom/flurry/android/gt;->jf:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:flurryadapter.callComplete(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/flurry/android/y;->bk:Lcom/flurry/android/gt;

    iget-object v2, v2, Lcom/flurry/android/gt;->jf:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/android/ft;->if:Ljava/util/List;

    iget-object v1, p1, Lcom/flurry/android/y;->bk:Lcom/flurry/android/gt;

    iget-object v1, v1, Lcom/flurry/android/gt;->jf:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 815
    :cond_5
    const-string v2, "current"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 823
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v1, v0

    .line 828
    goto/16 :goto_1

    .line 825
    :catch_0
    move-exception v0

    .line 827
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_1

    .line 831
    :cond_6
    iput v1, p0, Lcom/flurry/android/ft;->U:I

    iget-object v0, p0, Lcom/flurry/android/ft;->Q:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/flurry/android/ft;->initLayout(Landroid/content/Context;)V

    goto :goto_2

    :cond_7
    iget-object v0, p1, Lcom/flurry/android/y;->bk:Lcom/flurry/android/gt;

    iget-object v0, v0, Lcom/flurry/android/gt;->bj:Ljava/util/Map;

    const-string v2, "guid"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-direct {p0, v0}, Lcom/flurry/android/ft;->J(Ljava/lang/String;)Lcom/flurry/android/AdUnit;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/ft;->T:Lcom/flurry/android/AdUnit;

    iget-object v0, p0, Lcom/flurry/android/ft;->T:Lcom/flurry/android/AdUnit;

    invoke-virtual {v0}, Lcom/flurry/android/AdUnit;->getAdFrames()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/ft;->hZ:Ljava/util/List;

    iget-object v0, p1, Lcom/flurry/android/y;->bk:Lcom/flurry/android/gt;

    iget-object v0, v0, Lcom/flurry/android/gt;->S:Lcom/flurry/android/cw;

    iput-object v0, p0, Lcom/flurry/android/ft;->S:Lcom/flurry/android/cw;

    invoke-virtual {p0}, Lcom/flurry/android/ft;->bz()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/flurry/android/ft;->fI:Lcom/flurry/android/FlurryAds;

    iget-object v2, p0, Lcom/flurry/android/ft;->T:Lcom/flurry/android/AdUnit;

    invoke-virtual {v0, v2}, Lcom/flurry/android/FlurryAds;->a(Lcom/flurry/android/AdUnit;)V

    iget-object v0, p0, Lcom/flurry/android/ft;->fI:Lcom/flurry/android/FlurryAds;

    iget-object v2, p0, Lcom/flurry/android/ft;->S:Lcom/flurry/android/cw;

    invoke-virtual {v0, v2}, Lcom/flurry/android/FlurryAds;->b(Lcom/flurry/android/cw;)V

    :cond_8
    iput v1, p0, Lcom/flurry/android/ft;->U:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/ft;->ia:Z

    iget-object v0, p0, Lcom/flurry/android/ft;->Q:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/flurry/android/ft;->initLayout(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 833
    :cond_9
    const-string v0, "closeAd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 835
    invoke-virtual {p0}, Lcom/flurry/android/ft;->bz()Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/ft;->Q:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caught class cast exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_2

    .line 837
    :cond_a
    const-string v0, "notifyUser"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 861
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/flurry/android/ft;->Q:Landroid/content/Context;

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 864
    const-string v0, "message"

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "confirmDisplay"

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "cancelDisplay"

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 866
    const-string v0, "message"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 867
    const-string v1, "confirmDisplay"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 868
    const-string v5, "cancelDisplay"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 877
    :goto_3
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v5, Lcom/flurry/android/bk;

    invoke-direct {v5, p0, v3, p3}, Lcom/flurry/android/bk;-><init>(Lcom/flurry/android/ft;Lcom/flurry/android/gt;I)V

    invoke-virtual {v0, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/flurry/android/bh;

    invoke-direct {v2, p0, v3, p3}, Lcom/flurry/android/bh;-><init>(Lcom/flurry/android/ft;Lcom/flurry/android/gt;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 907
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/ft;->hY:Landroid/app/AlertDialog;

    .line 909
    iget-object v0, p0, Lcom/flurry/android/ft;->hN:Lcom/flurry/android/gk;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/flurry/android/ft;->bw()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    .line 911
    iget-object v0, p0, Lcom/flurry/android/ft;->hN:Lcom/flurry/android/gk;

    invoke-virtual {v0}, Lcom/flurry/android/gk;->pause()V

    .line 913
    :cond_b
    iget-object v0, p0, Lcom/flurry/android/ft;->hY:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    .line 872
    :cond_c
    const-string v0, "Are you sure?"

    .line 873
    const-string v1, "Cancel"

    .line 874
    const-string v2, "OK"

    goto :goto_3

    .line 915
    :cond_d
    const-string v0, "loadAdComponents"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 917
    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 918
    const-string v3, "min"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "max"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 922
    :try_start_2
    const-string v0, "min"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 923
    const-string v0, "max"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    move v9, v1

    move v1, v0

    move v0, v9

    .line 932
    :cond_e
    :goto_4
    iget-object v2, p0, Lcom/flurry/android/ft;->T:Lcom/flurry/android/AdUnit;

    invoke-virtual {v2}, Lcom/flurry/android/AdUnit;->getAdSpace()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/flurry/android/ft;->b(II)Ljava/util/List;

    move-result-object v0

    .line 933
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_11

    .line 935
    iget-object v1, p0, Lcom/flurry/android/ft;->T:Lcom/flurry/android/AdUnit;

    invoke-virtual {v1}, Lcom/flurry/android/AdUnit;->getAdSpace()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/flurry/android/ft;->j(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 936
    iget-object v2, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    if-eqz v2, :cond_f

    .line 937
    iget-object v2, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:(function() {var multiadwraps=document.getElementsByClassName(\'multiAdWrap\');if(multiadwraps.length>0){var template=document.getElementsByClassName(\'multiAdWrap\')[0];var compiled=Hogan.compile(template.innerHTML);template.innerHTML=\'\';template.innerHTML=compiled.render(JSON.parse("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "));}})();"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 940
    iget-object v1, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    const-string v2, "javascript:flurryadapter.callComplete();"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 942
    :cond_f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flurry/android/AdUnit;

    .line 944
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 945
    const-string v1, "guid"

    invoke-virtual {v3}, Lcom/flurry/android/AdUnit;->getAdFrames()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/AdFrame;->getAdGuid()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    const-string v1, "rendered"

    invoke-virtual {v3}, Lcom/flurry/android/AdUnit;->getAdFrames()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/AdFrame;->getAdGuid()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/android/ft;->I(Ljava/lang/String;)Lcom/flurry/android/cw;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/ft;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cw;II)V

    goto :goto_5

    .line 927
    :catch_2
    move-exception v0

    const/4 v0, 0x1

    .line 928
    const/4 v1, 0x3

    goto/16 :goto_4

    .line 951
    :cond_10
    iget-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/flurry/android/ft;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 953
    iget-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/flurry/android/ft;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 958
    :cond_11
    const-string v1, "renderFailed"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/ft;->T:Lcom/flurry/android/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/ft;->S:Lcom/flurry/android/cw;

    iget v5, p0, Lcom/flurry/android/ft;->U:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/ft;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cw;II)V

    goto/16 :goto_2

    .line 961
    :cond_12
    const-string v0, "doExpand"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 963
    iget-object v0, p0, Lcom/flurry/android/ft;->Q:Landroid/content/Context;

    invoke-static {v0}, Lcom/flurry/android/fl;->q(Landroid/content/Context;)I

    move-result v0

    .line 964
    iget-object v1, p0, Lcom/flurry/android/ft;->Q:Landroid/content/Context;

    invoke-static {v1}, Lcom/flurry/android/fl;->r(Landroid/content/Context;)I

    move-result v1

    .line 965
    iget-object v2, p1, Lcom/flurry/android/y;->bk:Lcom/flurry/android/gt;

    iget-object v2, v2, Lcom/flurry/android/gt;->bj:Ljava/util/Map;

    const-string v3, "width"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, p1, Lcom/flurry/android/y;->bk:Lcom/flurry/android/gt;

    iget-object v2, v2, Lcom/flurry/android/gt;->bj:Ljava/util/Map;

    const-string v3, "height"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 971
    :try_start_3
    iget-object v1, p0, Lcom/flurry/android/ft;->Q:Landroid/content/Context;

    iget-object v0, p1, Lcom/flurry/android/y;->bk:Lcom/flurry/android/gt;

    iget-object v0, v0, Lcom/flurry/android/gt;->bj:Ljava/util/Map;

    const-string v2, "width"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/flurry/android/fl;->b(Landroid/content/Context;I)I

    move-result v1

    .line 972
    iget-object v2, p0, Lcom/flurry/android/ft;->Q:Landroid/content/Context;

    iget-object v0, p1, Lcom/flurry/android/y;->bk:Lcom/flurry/android/gt;

    iget-object v0, v0, Lcom/flurry/android/gt;->bj:Ljava/util/Map;

    const-string v3, "height"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v2, v0}, Lcom/flurry/android/fl;->b(Landroid/content/Context;I)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v0

    move v7, v1

    move v8, v0

    .line 982
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expand to width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 983
    invoke-direct {p0}, Lcom/flurry/android/ft;->bB()Lcom/flurry/android/v;

    move-result-object v0

    .line 984
    if-eqz v0, :cond_16

    .line 986
    const-string v1, "clicked"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/ft;->T:Lcom/flurry/android/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/ft;->S:Lcom/flurry/android/cw;

    iget v5, p0, Lcom/flurry/android/ft;->U:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/ft;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cw;II)V

    .line 987
    iget-object v0, p0, Lcom/flurry/android/ft;->hT:Landroid/app/Dialog;

    if-nez v0, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expand("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    if-eqz v0, :cond_13

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    invoke-virtual {p0, v1}, Lcom/flurry/android/ft;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-eq v0, v1, :cond_13

    iget-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/flurry/android/ft;->removeView(Landroid/view/View;)V

    :cond_13
    iget-object v0, p0, Lcom/flurry/android/ft;->id:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/ft;->hS:I

    iget-object v0, p0, Lcom/flurry/android/ft;->hU:Landroid/widget/FrameLayout;

    if-nez v0, :cond_14

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/flurry/android/ft;->Q:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/android/ft;->hU:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/flurry/android/ft;->hU:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/flurry/android/ft;->hU:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x11

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_14
    iget-object v0, p0, Lcom/flurry/android/ft;->hT:Landroid/app/Dialog;

    if-nez v0, :cond_15

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/flurry/android/ft;->Q:Landroid/content/Context;

    const v2, 0x103000a

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/flurry/android/ft;->hT:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/flurry/android/ft;->hT:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/s;->a(Landroid/view/Window;)V

    iget-object v0, p0, Lcom/flurry/android/ft;->hT:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/flurry/android/ft;->hU:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/flurry/android/ft;->hT:Landroid/app/Dialog;

    new-instance v1, Lcom/flurry/android/bj;

    invoke-direct {v1, p0}, Lcom/flurry/android/bj;-><init>(Lcom/flurry/android/ft;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/flurry/android/ft;->hT:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/flurry/android/ft;->hT:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_15
    iget-object v0, p0, Lcom/flurry/android/ft;->id:Landroid/app/Activity;

    invoke-static {}, Lcom/flurry/android/fd;->bf()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/flurry/android/fd;->a(Landroid/app/Activity;IZ)Z

    iget-object v0, p0, Lcom/flurry/android/ft;->R:Lcom/flurry/android/FlurryAds;

    iget-object v1, p0, Lcom/flurry/android/ft;->Q:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/android/ft;->T:Lcom/flurry/android/AdUnit;

    invoke-virtual {v2}, Lcom/flurry/android/AdUnit;->getAdSpace()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/FlurryAds;->onOpenFullScreen(Landroid/content/Context;Ljava/lang/String;)V

    .line 989
    :cond_16
    iget-object v0, p1, Lcom/flurry/android/y;->bk:Lcom/flurry/android/gt;

    iget-object v0, v0, Lcom/flurry/android/gt;->bj:Ljava/util/Map;

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 991
    iget-object v0, p1, Lcom/flurry/android/y;->bk:Lcom/flurry/android/gt;

    iget-object v0, v0, Lcom/flurry/android/gt;->bj:Ljava/util/Map;

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/android/ft;->ie:Ljava/lang/String;

    .line 992
    iget-object v0, p0, Lcom/flurry/android/ft;->Q:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/flurry/android/ft;->initLayout(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 974
    :catch_3
    move-exception v0

    .line 976
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    .line 977
    iget-object v0, p0, Lcom/flurry/android/ft;->Q:Landroid/content/Context;

    invoke-static {v0}, Lcom/flurry/android/fl;->q(Landroid/content/Context;)I

    move-result v0

    .line 978
    iget-object v1, p0, Lcom/flurry/android/ft;->Q:Landroid/content/Context;

    invoke-static {v1}, Lcom/flurry/android/fl;->r(Landroid/content/Context;)I

    move-result v1

    move v7, v0

    move v8, v1

    goto/16 :goto_6

    .line 995
    :cond_17
    const-string v0, "doCollapse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 998
    invoke-direct {p0}, Lcom/flurry/android/ft;->bA()Lcom/flurry/android/AdFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdFrame;->getAdSpaceLayout()Lcom/flurry/android/AdSpaceLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdSpaceLayout;->getAdWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 999
    invoke-direct {p0}, Lcom/flurry/android/ft;->bA()Lcom/flurry/android/AdFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/AdFrame;->getAdSpaceLayout()Lcom/flurry/android/AdSpaceLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/AdSpaceLayout;->getAdHeight()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1001
    iget-object v2, p0, Lcom/flurry/android/ft;->Q:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/flurry/android/fl;->b(Landroid/content/Context;I)I

    move-result v0

    .line 1002
    iget-object v2, p0, Lcom/flurry/android/ft;->Q:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/flurry/android/fl;->b(Landroid/content/Context;I)I

    move-result v1

    .line 1003
    iget-object v2, p0, Lcom/flurry/android/ft;->ie:Ljava/lang/String;

    if-eqz v2, :cond_18

    .line 1005
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/flurry/android/ft;->ie:Ljava/lang/String;

    .line 1006
    iget-object v2, p0, Lcom/flurry/android/ft;->Q:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/flurry/android/ft;->initLayout(Landroid/content/Context;)V

    .line 1008
    :cond_18
    invoke-direct {p0}, Lcom/flurry/android/ft;->bB()Lcom/flurry/android/v;

    move-result-object v2

    .line 1009
    if-eqz v2, :cond_4

    .line 1011
    invoke-direct {p0, v0, v1}, Lcom/flurry/android/ft;->a(II)V

    goto/16 :goto_2

    .line 1016
    :cond_19
    const-string v0, "directOpen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1018
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1019
    const-string v0, "noop"

    const-string v1, "true"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    const-string v1, "clicked"

    iget-object v3, p0, Lcom/flurry/android/ft;->T:Lcom/flurry/android/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/ft;->S:Lcom/flurry/android/cw;

    iget v5, p0, Lcom/flurry/android/ft;->U:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/ft;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cw;II)V

    .line 1022
    :cond_1a
    iget-object v0, p0, Lcom/flurry/android/ft;->R:Lcom/flurry/android/FlurryAds;

    invoke-virtual {v0, p1, p2, p3}, Lcom/flurry/android/FlurryAds;->performAction$3deb3ec3(Lcom/flurry/android/y;Lcom/flurry/android/FlurryAds;I)V

    goto/16 :goto_2

    :cond_1b
    move v7, v0

    move v8, v1

    goto/16 :goto_6
.end method

.method public final resume()V
    .locals 2

    .prologue
    .line 1178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/ft;->hO:Z

    .line 1179
    iget-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1180
    sget v0, Lcom/flurry/android/n;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 1185
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/ft;->hN:Lcom/flurry/android/gk;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/flurry/android/ft;->bw()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1186
    iget-object v0, p0, Lcom/flurry/android/ft;->fx:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    .line 1187
    iget-object v0, p0, Lcom/flurry/android/ft;->fx:Landroid/widget/MediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    .line 1190
    :cond_1
    return-void
.end method

.method final shouldRotate()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1357
    iget-object v0, p0, Lcom/flurry/android/ft;->Q:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1358
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1360
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1366
    :goto_0
    iget-object v3, p0, Lcom/flurry/android/ft;->hT:Landroid/app/Dialog;

    if-eqz v3, :cond_1

    move v3, v1

    :goto_1
    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/flurry/android/ft;->hR:Landroid/app/Dialog;

    if-eqz v3, :cond_2

    move v3, v1

    :goto_2
    if-nez v3, :cond_3

    if-eqz v0, :cond_3

    :goto_3
    return v1

    :cond_0
    move v0, v2

    .line 1360
    goto :goto_0

    :cond_1
    move v3, v2

    .line 1366
    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method public final stop()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1208
    invoke-virtual {p0}, Lcom/flurry/android/ft;->bw()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1211
    iget-object v0, p0, Lcom/flurry/android/ft;->fu:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/ft;->fu:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/flurry/android/ft;->fu:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1215
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/ft;->hN:Lcom/flurry/android/gk;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/ft;->hN:Lcom/flurry/android/gk;

    invoke-virtual {v0}, Lcom/flurry/android/gk;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1217
    iget-object v0, p0, Lcom/flurry/android/ft;->hN:Lcom/flurry/android/gk;

    invoke-virtual {v0}, Lcom/flurry/android/gk;->stopPlayback()V

    .line 1221
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    if-eqz v0, :cond_5

    .line 1223
    iget-object v0, p0, Lcom/flurry/android/ft;->cJ:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/android/ft;->es:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_2

    .line 1225
    iget-object v0, p0, Lcom/flurry/android/ft;->es:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 1228
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/ft;->hT:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    .line 1229
    invoke-direct {p0, v6, v6}, Lcom/flurry/android/ft;->a(II)V

    .line 1232
    :cond_3
    iget-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/flurry/android/ft;->removeView(Landroid/view/View;)V

    .line 1233
    iget-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 1234
    sget v0, Lcom/flurry/android/n;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    .line 1235
    iget-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 1237
    :cond_4
    iget-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 1238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/ft;->eq:Landroid/webkit/WebView;

    .line 1241
    :cond_5
    invoke-virtual {p0}, Lcom/flurry/android/ft;->bz()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1243
    const-string v1, "adClosed"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/ft;->T:Lcom/flurry/android/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/ft;->S:Lcom/flurry/android/cw;

    iget v5, p0, Lcom/flurry/android/ft;->U:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/ft;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cw;II)V

    .line 1245
    :cond_6
    return-void
.end method
