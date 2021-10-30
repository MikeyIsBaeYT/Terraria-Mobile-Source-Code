.class public Lcom/chartboost/sdk/impl/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/p;


# instance fields
.field private a:I

.field private b:I

.field private final c:I

.field private final d:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    const/16 v0, 0x9c4

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/chartboost/sdk/impl/d;-><init>(IIF)V

    .line 49
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/chartboost/sdk/impl/d;->a:I

    .line 60
    iput p2, p0, Lcom/chartboost/sdk/impl/d;->c:I

    .line 61
    iput p3, p0, Lcom/chartboost/sdk/impl/d;->d:F

    .line 62
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/chartboost/sdk/impl/d;->a:I

    return v0
.end method

.method public a(Lcom/chartboost/sdk/impl/s;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/chartboost/sdk/impl/s;
        }
    .end annotation

    .prologue
    .line 86
    iget v0, p0, Lcom/chartboost/sdk/impl/d;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/d;->b:I

    .line 87
    iget v0, p0, Lcom/chartboost/sdk/impl/d;->a:I

    int-to-float v0, v0

    iget v1, p0, Lcom/chartboost/sdk/impl/d;->a:I

    int-to-float v1, v1

    iget v2, p0, Lcom/chartboost/sdk/impl/d;->d:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/chartboost/sdk/impl/d;->a:I

    .line 89
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/d;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    throw p1

    .line 92
    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/chartboost/sdk/impl/d;->b:I

    return v0
.end method

.method protected c()Z
    .locals 2

    .prologue
    .line 98
    iget v0, p0, Lcom/chartboost/sdk/impl/d;->b:I

    iget v1, p0, Lcom/chartboost/sdk/impl/d;->c:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
