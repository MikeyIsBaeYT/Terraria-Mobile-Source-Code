.class final Lcom/flurry/android/fe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private synthetic gN:Lcom/flurry/android/ay;


# direct methods
.method synthetic constructor <init>(Lcom/flurry/android/ay;)V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flurry/android/fe;-><init>(Lcom/flurry/android/ay;B)V

    return-void
.end method

.method private constructor <init>(Lcom/flurry/android/ay;B)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/flurry/android/fe;->gN:Lcom/flurry/android/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/flurry/android/fe;->gN:Lcom/flurry/android/ay;

    invoke-virtual {v0}, Lcom/flurry/android/ay;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/flurry/android/fe;->gN:Lcom/flurry/android/ay;

    invoke-static {v0, p1, p2}, Lcom/flurry/android/ay;->a(Lcom/flurry/android/ay;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/fe;->gN:Lcom/flurry/android/ay;

    invoke-static {v0, p1, p2}, Lcom/flurry/android/ay;->b(Lcom/flurry/android/ay;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 110
    return-void
.end method
