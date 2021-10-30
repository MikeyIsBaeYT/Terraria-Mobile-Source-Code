.class final enum Lcom/flurry/android/gq;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/android/gq;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum iR:Lcom/flurry/android/gq;

.field public static final enum iS:Lcom/flurry/android/gq;

.field public static final enum iT:Lcom/flurry/android/gq;

.field public static final enum iU:Lcom/flurry/android/gq;

.field private static final synthetic iV:[Lcom/flurry/android/gq;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/flurry/android/gq;

    const-string v1, "METHOD_POST"

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/gq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/gq;->iR:Lcom/flurry/android/gq;

    .line 30
    new-instance v0, Lcom/flurry/android/gq;

    const-string v1, "METHOD_PUT"

    invoke-direct {v0, v1, v3}, Lcom/flurry/android/gq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/gq;->iS:Lcom/flurry/android/gq;

    .line 31
    new-instance v0, Lcom/flurry/android/gq;

    const-string v1, "METHOD_GET"

    invoke-direct {v0, v1, v4}, Lcom/flurry/android/gq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/gq;->iT:Lcom/flurry/android/gq;

    .line 32
    new-instance v0, Lcom/flurry/android/gq;

    const-string v1, "METHOD_DELETE"

    invoke-direct {v0, v1, v5}, Lcom/flurry/android/gq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/gq;->iU:Lcom/flurry/android/gq;

    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/flurry/android/gq;

    sget-object v1, Lcom/flurry/android/gq;->iR:Lcom/flurry/android/gq;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/android/gq;->iS:Lcom/flurry/android/gq;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/android/gq;->iT:Lcom/flurry/android/gq;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/android/gq;->iU:Lcom/flurry/android/gq;

    aput-object v1, v0, v5

    sput-object v0, Lcom/flurry/android/gq;->iV:[Lcom/flurry/android/gq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static bM()[Lcom/flurry/android/gq;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/flurry/android/gq;->iV:[Lcom/flurry/android/gq;

    invoke-virtual {v0}, [Lcom/flurry/android/gq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/gq;

    return-object v0
.end method
