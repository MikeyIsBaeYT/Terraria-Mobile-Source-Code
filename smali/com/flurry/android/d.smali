.class final Lcom/flurry/android/d;
.super Lcom/flurry/android/fp;
.source "SourceFile"


# instance fields
.field private synthetic l:Lcom/flurry/android/FlurryAgent;

.field private synthetic n:Landroid/content/Context;

.field private synthetic o:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/flurry/android/FlurryAgent;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/flurry/android/d;->l:Lcom/flurry/android/FlurryAgent;

    iput-object p2, p0, Lcom/flurry/android/d;->n:Landroid/content/Context;

    iput-object p3, p0, Lcom/flurry/android/d;->o:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/android/fp;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 5

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/flurry/android/d;->l:Lcom/flurry/android/FlurryAgent;

    new-instance v1, Lcom/flurry/android/ce;

    iget-object v2, p0, Lcom/flurry/android/d;->n:Landroid/content/Context;

    iget-object v3, p0, Lcom/flurry/android/d;->o:Ljava/lang/String;

    const-string v4, "150"

    invoke-direct {v1, v2, v3, v4}, Lcom/flurry/android/ce;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/flurry/android/FlurryAgent;->bg:Lcom/flurry/android/ce;

    .line 1026
    return-void
.end method
