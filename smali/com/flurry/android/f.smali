.class final Lcom/flurry/android/f;
.super Lcom/flurry/android/fp;
.source "SourceFile"


# instance fields
.field private synthetic t:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 1868
    iput-boolean p1, p0, Lcom/flurry/android/f;->t:Z

    invoke-direct {p0}, Lcom/flurry/android/fp;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    .prologue
    .line 1871
    sget-object v0, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryAgent;->s()Lcom/flurry/android/ce;

    move-result-object v0

    iget-boolean v1, p0, Lcom/flurry/android/f;->t:Z

    invoke-virtual {v0, v1}, Lcom/flurry/android/ce;->onNetworkStateChanged(Z)V

    .line 1872
    return-void
.end method
