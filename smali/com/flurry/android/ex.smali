.class final Lcom/flurry/android/ex;
.super Lcom/flurry/android/fm;
.source "SourceFile"


# static fields
.field private static final gC:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/view/ViewGroup;",
            ">;",
            "Lcom/flurry/android/cd;",
            ">;"
        }
    .end annotation
.end field

.field private static final p:Ljava/lang/String;


# instance fields
.field private final gD:Lcom/flurry/android/p;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const-class v0, Lcom/flurry/android/ex;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/ex;->p:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-class v1, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/flurry/android/bw;

    invoke-direct {v2}, Lcom/flurry/android/bw;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/widget/AbsoluteLayout;

    new-instance v2, Lcom/flurry/android/fq;

    invoke-direct {v2}, Lcom/flurry/android/fq;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/widget/FrameLayout;

    new-instance v2, Lcom/flurry/android/eu;

    invoke-direct {v2}, Lcom/flurry/android/eu;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/flurry/android/x;

    invoke-direct {v2}, Lcom/flurry/android/x;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/ex;->gC:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/flurry/android/p;Lcom/flurry/android/AdUnit;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p2}, Lcom/flurry/android/fm;-><init>(Lcom/flurry/android/AdUnit;)V

    .line 27
    iput-object p1, p0, Lcom/flurry/android/ex;->gD:Lcom/flurry/android/p;

    .line 28
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "render("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lcom/flurry/android/ex;->gD:Lcom/flurry/android/p;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to render banner ad for bannerView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/ex;->gD:Lcom/flurry/android/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for context = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for viewGroup = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    :goto_0
    return-void

    .line 41
    :cond_1
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v0

    .line 42
    iget-object v3, v0, Lcom/flurry/android/FlurryAds;->hn:Lcom/flurry/android/gv;

    invoke-virtual {p0}, Lcom/flurry/android/ex;->bs()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, p1, p2, v4}, Lcom/flurry/android/gv;->a(Lcom/flurry/android/FlurryAds;Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)Lcom/flurry/android/v;

    move-result-object v3

    .line 44
    if-nez v3, :cond_2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to render banner ad for holder = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for adSpaceName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/android/ex;->bs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {v3}, Lcom/flurry/android/v;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 51
    if-eqz v0, :cond_3

    .line 52
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 55
    :cond_3
    invoke-virtual {v3}, Lcom/flurry/android/v;->stop()V

    .line 56
    invoke-virtual {v3}, Lcom/flurry/android/v;->removeAllViews()V

    .line 58
    iget-object v0, p0, Lcom/flurry/android/ex;->gD:Lcom/flurry/android/p;

    invoke-virtual {v0}, Lcom/flurry/android/p;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 59
    if-eqz v0, :cond_4

    .line 60
    iget-object v4, p0, Lcom/flurry/android/ex;->gD:Lcom/flurry/android/p;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 63
    :cond_4
    iget-object v0, p0, Lcom/flurry/android/ex;->gD:Lcom/flurry/android/p;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v4}, Lcom/flurry/android/v;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    iget-object v0, p0, Lcom/flurry/android/ex;->gD:Lcom/flurry/android/p;

    invoke-virtual {v0, p1}, Lcom/flurry/android/p;->initLayout(Landroid/content/Context;)V

    .line 67
    invoke-virtual {p0}, Lcom/flurry/android/ex;->L()Lcom/flurry/android/AdUnit;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/flurry/android/ex;->L()Lcom/flurry/android/AdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdUnit;->getAdFrames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v6, :cond_9

    :cond_5
    move-object v0, v2

    .line 68
    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    .line 69
    invoke-virtual {v3, v0}, Lcom/flurry/android/v;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "banner ad holder layout params = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " {width = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", height = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "} for banner ad with adSpaceName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/android/ex;->bs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    :cond_7
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/flurry/android/ex;->L()Lcom/flurry/android/AdUnit;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/flurry/android/ex;->L()Lcom/flurry/android/AdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdUnit;->getAdFrames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v6, :cond_c

    :cond_8
    move v0, v2

    :goto_2
    invoke-virtual {p2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 67
    :cond_9
    invoke-virtual {p0}, Lcom/flurry/android/ex;->L()Lcom/flurry/android/AdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdUnit;->getAdFrames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/AdFrame;->getAdSpaceLayout()Lcom/flurry/android/AdSpaceLayout;

    move-result-object v4

    if-nez v4, :cond_a

    move-object v0, v2

    goto :goto_1

    :cond_a
    sget-object v0, Lcom/flurry/android/ex;->gC:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/cd;

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ad space layout and alignment from the server is being ignored for ViewGroup subclass "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v0, v2

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v0, p1, v4}, Lcom/flurry/android/cd;->a(Landroid/content/Context;Lcom/flurry/android/AdSpaceLayout;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ad space layout and alignment from the server is being ignored for ViewGroup subclass "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_1

    .line 75
    :cond_c
    invoke-virtual {p0}, Lcom/flurry/android/ex;->L()Lcom/flurry/android/AdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdUnit;->getAdFrames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/AdFrame;->getAdSpaceLayout()Lcom/flurry/android/AdSpaceLayout;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/flurry/android/AdSpaceLayout;->getAlignment()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_d

    const-string v4, "t"

    aget-object v0, v0, v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    goto/16 :goto_2

    :cond_d
    move v0, v2

    goto/16 :goto_2
.end method
