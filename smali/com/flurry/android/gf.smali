.class final Lcom/flurry/android/gf;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field private synthetic di:Lcom/flurry/android/bv;

.field private ge:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/flurry/android/bv;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    iput-object p1, p0, Lcom/flurry/android/gf;->di:Lcom/flurry/android/bv;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/gf;->ge:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/flurry/android/gf;->ge:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/flurry/android/gf;->di:Lcom/flurry/android/bv;

    iget-object v1, p0, Lcom/flurry/android/gf;->ge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/android/bv;->k(Ljava/lang/String;)V

    .line 72
    return-void
.end method
