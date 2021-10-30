.class final Lcom/flurry/android/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field G:I

.field bS:Ljava/util/Timer;

.field bT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/flurry/android/ac;->bS:Ljava/util/Timer;

    .line 29
    iput-object v0, p0, Lcom/flurry/android/ac;->bT:Ljava/util/List;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/android/ac;->G:I

    .line 33
    iput-object p1, p0, Lcom/flurry/android/ac;->bT:Ljava/util/List;

    .line 34
    return-void
.end method
