.class final Lcom/flurry/android/caching/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public it:I

.field public iu:Lcom/flurry/android/AppCloudResponse;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/android/caching/m;->it:I

    .line 7
    iput-object v1, p0, Lcom/flurry/android/caching/m;->iu:Lcom/flurry/android/AppCloudResponse;

    .line 15
    const/16 v0, 0x2d1

    iput v0, p0, Lcom/flurry/android/caching/m;->it:I

    .line 16
    iput-object v1, p0, Lcom/flurry/android/caching/m;->iu:Lcom/flurry/android/AppCloudResponse;

    .line 17
    return-void
.end method

.method constructor <init>(B)V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/android/caching/m;->it:I

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/caching/m;->iu:Lcom/flurry/android/AppCloudResponse;

    .line 11
    return-void
.end method
