.class public Lcom/flurry/android/caching/ObjectOperationData;
.super Lcom/flurry/android/caching/ObjectData;
.source "SourceFile"


# static fields
.field public static final DECREMENT:I = 0x20

.field public static final DELETE:I = 0x4

.field public static final GET:I = 0x2

.field public static final INCREMENT:I = 0x10

.field public static final NONE_TYPE:I = -0x1

.field public static final PUT:I = 0x1

.field public static final SEARCH:I = 0x8


# instance fields
.field private E:Ljava/lang/String;

.field private F:I

.field private G:I

.field private H:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/flurry/android/caching/ObjectData;-><init>(Ljava/lang/String;)V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/caching/ObjectOperationData;->E:Ljava/lang/String;

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/android/caching/ObjectOperationData;->F:I

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/android/caching/ObjectOperationData;->G:I

    .line 14
    const/4 v0, 0x7

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v2, v3}, Lcom/flurry/android/caching/d;->a(IJ)Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/caching/ObjectOperationData;->H:Ljava/util/LinkedHashMap;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/caching/ObjectData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/caching/ObjectOperationData;->E:Ljava/lang/String;

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/android/caching/ObjectOperationData;->F:I

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/android/caching/ObjectOperationData;->G:I

    .line 14
    const/4 v0, 0x7

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v2, v3}, Lcom/flurry/android/caching/d;->a(IJ)Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/caching/ObjectOperationData;->H:Ljava/util/LinkedHashMap;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/caching/ObjectData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/caching/ObjectOperationData;->E:Ljava/lang/String;

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/android/caching/ObjectOperationData;->F:I

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/android/caching/ObjectOperationData;->G:I

    .line 14
    const/4 v0, 0x7

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v2, v3}, Lcom/flurry/android/caching/d;->a(IJ)Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/caching/ObjectOperationData;->H:Ljava/util/LinkedHashMap;

    .line 47
    iput-object p3, p0, Lcom/flurry/android/caching/ObjectOperationData;->H:Ljava/util/LinkedHashMap;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/flurry/android/caching/ObjectData;-><init>(Ljava/lang/String;)V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/caching/ObjectOperationData;->E:Ljava/lang/String;

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/android/caching/ObjectOperationData;->F:I

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/android/caching/ObjectOperationData;->G:I

    .line 14
    const/4 v0, 0x7

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v2, v3}, Lcom/flurry/android/caching/d;->a(IJ)Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/caching/ObjectOperationData;->H:Ljava/util/LinkedHashMap;

    .line 38
    iput-object p2, p0, Lcom/flurry/android/caching/ObjectOperationData;->H:Ljava/util/LinkedHashMap;

    .line 39
    return-void
.end method


# virtual methods
.method public getExecutorType()Lcom/flurry/android/caching/ObjectData$ExecutorType;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/flurry/android/caching/ObjectOperationData;->iW:Lcom/flurry/android/caching/ObjectData$ExecutorType;

    return-object v0
.end method

.method public getOperationType()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/flurry/android/caching/ObjectOperationData;->F:I

    return v0
.end method

.method public getRetryCount()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/flurry/android/caching/ObjectOperationData;->G:I

    return v0
.end method

.method public getRetryPolicy()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/flurry/android/caching/ObjectOperationData;->H:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getSearchURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/flurry/android/caching/ObjectOperationData;->E:Ljava/lang/String;

    return-object v0
.end method

.method public incrementRetryCount()V
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/flurry/android/caching/ObjectOperationData;->G:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/android/caching/ObjectOperationData;->G:I

    .line 65
    return-void
.end method

.method public setOperationType(I)V
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lcom/flurry/android/caching/ObjectOperationData;->F:I

    .line 81
    return-void
.end method

.method public setRetryPolicy(Ljava/util/LinkedHashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    if-nez p1, :cond_0

    .line 52
    const-string v0, "ObjectOperationData"

    const-string v1, "RETRY POLICY IS NULL. DEFAULT RETRY POLICY IS LEFT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_0
    iput-object p1, p0, Lcom/flurry/android/caching/ObjectOperationData;->H:Ljava/util/LinkedHashMap;

    goto :goto_0
.end method

.method public setSearchURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/flurry/android/caching/ObjectOperationData;->E:Ljava/lang/String;

    .line 77
    return-void
.end method
