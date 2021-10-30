.class final Lcom/flurry/android/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic cC:Lcom/flurry/android/v;


# direct methods
.method constructor <init>(Lcom/flurry/android/v;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/flurry/android/ak;->cC:Lcom/flurry/android/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/flurry/android/ak;->cC:Lcom/flurry/android/v;

    invoke-static {v0}, Lcom/flurry/android/v;->a(Lcom/flurry/android/v;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/flurry/android/ak;->cC:Lcom/flurry/android/v;

    iget-object v1, p0, Lcom/flurry/android/ak;->cC:Lcom/flurry/android/v;

    invoke-static {v1}, Lcom/flurry/android/v;->b(Lcom/flurry/android/v;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/v;->post(Ljava/lang/Runnable;)Z

    .line 80
    :cond_0
    return-void
.end method
