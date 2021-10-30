.class final Lcom/flurry/android/bs;
.super Lcom/flurry/android/fm;
.source "SourceFile"


# instance fields
.field private final dL:Lcom/flurry/android/ae;


# direct methods
.method public constructor <init>(Lcom/flurry/android/ae;Lcom/flurry/android/AdUnit;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p2}, Lcom/flurry/android/fm;-><init>(Lcom/flurry/android/AdUnit;)V

    .line 12
    iput-object p1, p0, Lcom/flurry/android/bs;->dL:Lcom/flurry/android/ae;

    .line 13
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/flurry/android/bs;->dL:Lcom/flurry/android/ae;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/flurry/android/bs;->dL:Lcom/flurry/android/ae;

    invoke-virtual {v0}, Lcom/flurry/android/ae;->M()V

    .line 20
    :cond_0
    return-void
.end method
