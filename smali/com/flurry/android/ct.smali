.class final Lcom/flurry/android/ct;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/flurry/android/FlurryAds;Ljava/lang/String;)Lcom/flurry/android/cw;
    .locals 4

    .prologue
    .line 16
    new-instance v0, Lcom/flurry/android/cw;

    invoke-virtual {p0}, Lcom/flurry/android/FlurryAds;->aJ()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/flurry/android/FlurryAds;->bh()J

    invoke-direct {v0, v2, v3, p1}, Lcom/flurry/android/cw;-><init>(JLjava/lang/String;)V

    .line 17
    invoke-virtual {p0, v0}, Lcom/flurry/android/FlurryAds;->a(Lcom/flurry/android/cw;)V

    .line 18
    return-object v0
.end method

.method static b(Lcom/flurry/android/AdSpaceLayout;)Lcom/flurry/android/AdCreative;
    .locals 6

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/flurry/android/AdSpaceLayout;->getAdHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 25
    invoke-virtual {p0}, Lcom/flurry/android/AdSpaceLayout;->getAdWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 26
    invoke-virtual {p0}, Lcom/flurry/android/AdSpaceLayout;->getFormat()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 27
    invoke-virtual {p0}, Lcom/flurry/android/AdSpaceLayout;->getFix()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-virtual {p0}, Lcom/flurry/android/AdSpaceLayout;->getAlignment()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 29
    new-instance v0, Lcom/flurry/android/AdCreative;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/AdCreative;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
