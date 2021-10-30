.class final Lcom/flurry/android/af;
.super Lcom/flurry/android/fp;
.source "SourceFile"


# instance fields
.field private synthetic bV:Lcom/flurry/android/c;


# direct methods
.method constructor <init>(Lcom/flurry/android/c;)V
    .locals 0

    .prologue
    .line 1231
    iput-object p1, p0, Lcom/flurry/android/af;->bV:Lcom/flurry/android/c;

    invoke-direct {p0}, Lcom/flurry/android/fp;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/flurry/android/af;->bV:Lcom/flurry/android/c;

    iget-object v0, v0, Lcom/flurry/android/c;->l:Lcom/flurry/android/FlurryAgent;

    iget-object v1, p0, Lcom/flurry/android/af;->bV:Lcom/flurry/android/c;

    iget-object v1, v1, Lcom/flurry/android/c;->j:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryAgent;->b(Lcom/flurry/android/FlurryAgent;Landroid/content/Context;)V

    .line 1236
    return-void
.end method
