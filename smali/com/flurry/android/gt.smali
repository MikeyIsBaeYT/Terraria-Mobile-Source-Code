.class final Lcom/flurry/android/gt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final Q:Landroid/content/Context;

.field final S:Lcom/flurry/android/cw;

.field final T:Lcom/flurry/android/AdUnit;

.field final bj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final jf:Ljava/lang/String;

.field final jg:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cw;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/flurry/android/AdUnit;",
            "Lcom/flurry/android/cw;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/flurry/android/gt;->jf:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/flurry/android/gt;->bj:Ljava/util/Map;

    .line 20
    iput-object p3, p0, Lcom/flurry/android/gt;->Q:Landroid/content/Context;

    .line 21
    iput-object p4, p0, Lcom/flurry/android/gt;->T:Lcom/flurry/android/AdUnit;

    .line 22
    iput-object p5, p0, Lcom/flurry/android/gt;->S:Lcom/flurry/android/cw;

    .line 23
    iput p6, p0, Lcom/flurry/android/gt;->jg:I

    .line 24
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    const-string v1, "event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/gt;->jf:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, ",params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/gt;->bj:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ",adspace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/gt;->T:Lcom/flurry/android/AdUnit;

    invoke-virtual {v2}, Lcom/flurry/android/AdUnit;->getAdSpace()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
