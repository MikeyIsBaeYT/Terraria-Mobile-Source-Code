.class final Lcom/flurry/android/cl;
.super Lcom/flurry/android/fp;
.source "SourceFile"


# instance fields
.field private synthetic du:Lcom/flurry/android/FlurryAds;

.field private synthetic eE:Ljava/lang/String;

.field private synthetic eF:Lcom/flurry/android/v;

.field private synthetic n:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/flurry/android/FlurryAds;Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/v;)V
    .locals 0

    .prologue
    .line 2885
    iput-object p1, p0, Lcom/flurry/android/cl;->du:Lcom/flurry/android/FlurryAds;

    iput-object p2, p0, Lcom/flurry/android/cl;->n:Landroid/content/Context;

    iput-object p3, p0, Lcom/flurry/android/cl;->eE:Ljava/lang/String;

    iput-object p4, p0, Lcom/flurry/android/cl;->eF:Lcom/flurry/android/v;

    invoke-direct {p0}, Lcom/flurry/android/fp;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 4

    .prologue
    .line 2889
    iget-object v0, p0, Lcom/flurry/android/cl;->du:Lcom/flurry/android/FlurryAds;

    iget-object v1, p0, Lcom/flurry/android/cl;->n:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/android/cl;->eE:Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/android/cl;->eF:Lcom/flurry/android/v;

    invoke-virtual {v3}, Lcom/flurry/android/v;->h()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Z

    .line 2890
    return-void
.end method
