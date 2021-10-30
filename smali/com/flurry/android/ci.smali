.class final Lcom/flurry/android/ci;
.super Lcom/flurry/android/fp;
.source "SourceFile"


# instance fields
.field private synthetic du:Lcom/flurry/android/FlurryAds;


# direct methods
.method constructor <init>(Lcom/flurry/android/FlurryAds;)V
    .locals 0

    .prologue
    .line 1949
    iput-object p1, p0, Lcom/flurry/android/ci;->du:Lcom/flurry/android/FlurryAds;

    invoke-direct {p0}, Lcom/flurry/android/fp;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    .prologue
    .line 1954
    iget-object v0, p0, Lcom/flurry/android/ci;->du:Lcom/flurry/android/FlurryAds;

    const-string v1, "/postAdLog.do"

    invoke-virtual {v0, v1}, Lcom/flurry/android/FlurryAds;->B(Ljava/lang/String;)V

    .line 1955
    return-void
.end method
