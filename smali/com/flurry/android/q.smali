.class final Lcom/flurry/android/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic V:Ljava/lang/String;

.field private synthetic W:Ljava/util/List;

.field private synthetic X:Lcom/flurry/android/FlurryDataSenderIndex;


# direct methods
.method constructor <init>(Lcom/flurry/android/FlurryDataSenderIndex;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/flurry/android/q;->X:Lcom/flurry/android/FlurryDataSenderIndex;

    iput-object p2, p0, Lcom/flurry/android/q;->V:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/android/q;->W:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/flurry/android/q;->X:Lcom/flurry/android/FlurryDataSenderIndex;

    iget-object v1, p0, Lcom/flurry/android/q;->V:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/android/q;->W:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/flurry/android/FlurryDataSenderIndex;->a(Lcom/flurry/android/FlurryDataSenderIndex;Ljava/lang/String;Ljava/util/List;)Z

    .line 108
    return-void
.end method
