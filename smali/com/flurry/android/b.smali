.class final Lcom/flurry/android/b;
.super Lcom/flurry/android/fp;
.source "SourceFile"


# instance fields
.field private synthetic j:Landroid/content/Context;

.field private synthetic k:Z

.field private synthetic l:Lcom/flurry/android/FlurryAgent;


# direct methods
.method constructor <init>(Lcom/flurry/android/FlurryAgent;Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 1086
    iput-object p1, p0, Lcom/flurry/android/b;->l:Lcom/flurry/android/FlurryAgent;

    iput-object p2, p0, Lcom/flurry/android/b;->j:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/flurry/android/b;->k:Z

    invoke-direct {p0}, Lcom/flurry/android/fp;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/flurry/android/b;->l:Lcom/flurry/android/FlurryAgent;

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->a(Lcom/flurry/android/FlurryAgent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/flurry/android/b;->l:Lcom/flurry/android/FlurryAgent;

    iget-object v1, p0, Lcom/flurry/android/b;->j:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryAgent;->a(Lcom/flurry/android/FlurryAgent;Landroid/content/Context;)V

    .line 1094
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/b;->l:Lcom/flurry/android/FlurryAgent;

    iget-object v1, p0, Lcom/flurry/android/b;->j:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/flurry/android/b;->k:Z

    invoke-static {v0, v1, v2}, Lcom/flurry/android/FlurryAgent;->a(Lcom/flurry/android/FlurryAgent;Landroid/content/Context;Z)V

    .line 1095
    return-void
.end method
