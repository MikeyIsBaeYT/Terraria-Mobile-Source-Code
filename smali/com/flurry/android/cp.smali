.class final Lcom/flurry/android/cp;
.super Lcom/flurry/android/fp;
.source "SourceFile"


# instance fields
.field private synthetic eG:Ljava/lang/String;

.field private synthetic n:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/flurry/android/FlurryAds;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1801
    iput-object p2, p0, Lcom/flurry/android/cp;->n:Landroid/content/Context;

    iput-object p3, p0, Lcom/flurry/android/cp;->eG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/android/fp;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    .prologue
    .line 1806
    iget-object v0, p0, Lcom/flurry/android/cp;->n:Landroid/content/Context;

    iget-object v1, p0, Lcom/flurry/android/cp;->eG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryAds;->i(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1807
    return-void
.end method
