.class final Lcom/flurry/android/dh;
.super Lcom/flurry/android/fp;
.source "SourceFile"


# instance fields
.field private synthetic cC:Lcom/flurry/android/v;


# direct methods
.method synthetic constructor <init>(Lcom/flurry/android/v;)V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flurry/android/dh;-><init>(Lcom/flurry/android/v;B)V

    return-void
.end method

.method private constructor <init>(Lcom/flurry/android/v;B)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/flurry/android/dh;->cC:Lcom/flurry/android/v;

    invoke-direct {p0}, Lcom/flurry/android/fp;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/flurry/android/dh;->cC:Lcom/flurry/android/v;

    invoke-static {v0}, Lcom/flurry/android/v;->a(Lcom/flurry/android/v;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/flurry/android/dh;->cC:Lcom/flurry/android/v;

    invoke-static {v0}, Lcom/flurry/android/v;->c(Lcom/flurry/android/v;)V

    .line 146
    :cond_0
    return-void
.end method
