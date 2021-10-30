.class abstract Lcom/flurry/android/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final p:Ljava/lang/String;


# instance fields
.field private final Q:Landroid/content/Context;

.field private final R:Lcom/flurry/android/FlurryAds;

.field private final S:Lcom/flurry/android/cw;

.field private final T:Lcom/flurry/android/AdUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/flurry/android/ae;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/ae;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cw;Lcom/flurry/android/AdUnit;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/flurry/android/ae;->Q:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/flurry/android/ae;->R:Lcom/flurry/android/FlurryAds;

    .line 35
    iput-object p3, p0, Lcom/flurry/android/ae;->S:Lcom/flurry/android/cw;

    .line 36
    iput-object p4, p0, Lcom/flurry/android/ae;->T:Lcom/flurry/android/AdUnit;

    .line 37
    return-void
.end method


# virtual methods
.method public final J()Lcom/flurry/android/FlurryAds;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/flurry/android/ae;->R:Lcom/flurry/android/FlurryAds;

    return-object v0
.end method

.method public final K()Lcom/flurry/android/cw;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/flurry/android/ae;->S:Lcom/flurry/android/cw;

    return-object v0
.end method

.method public final L()Lcom/flurry/android/AdUnit;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/flurry/android/ae;->T:Lcom/flurry/android/AdUnit;

    return-object v0
.end method

.method public abstract M()V
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/flurry/android/ae;->Q:Landroid/content/Context;

    return-object v0
.end method
