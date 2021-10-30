.class final Lcom/flurry/android/eg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private ge:Ljava/lang/String;

.field private gf:Ljava/lang/String;

.field private gg:Z

.field private mCollectionName:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/eg;->ge:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/eg;->mValue:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/eg;->gf:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/eg;->mCollectionName:Ljava/lang/String;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/eg;->gg:Z

    .line 64
    iput-object p1, p0, Lcom/flurry/android/eg;->ge:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/flurry/android/eg;->mValue:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/flurry/android/eg;->gf:Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/eg;->mCollectionName:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/flurry/android/eg;->gg:Z

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Lcom/flurry/android/FlurryAppCloud;->D()Lcom/flurry/android/CacheSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/CacheSyncManager;->getServerData()Lcom/flurry/android/az;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/eg;->ge:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/android/eg;->mValue:Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/android/eg;->gf:Ljava/lang/String;

    iget-object v4, p0, Lcom/flurry/android/eg;->mCollectionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/flurry/android/az;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 99
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-static {}, Lcom/flurry/android/FlurryAppCloud;->D()Lcom/flurry/android/CacheSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/CacheSyncManager;->getServerData()Lcom/flurry/android/az;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/eg;->ge:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/android/eg;->mValue:Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/android/eg;->gf:Ljava/lang/String;

    iget-object v4, p0, Lcom/flurry/android/eg;->mCollectionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/flurry/android/az;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
