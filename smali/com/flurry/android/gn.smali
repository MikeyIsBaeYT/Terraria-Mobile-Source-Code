.class final enum Lcom/flurry/android/gn;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/android/gn;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum iI:Lcom/flurry/android/gn;

.field public static final enum iJ:Lcom/flurry/android/gn;

.field public static final enum iK:Lcom/flurry/android/gn;

.field public static final enum iL:Lcom/flurry/android/gn;

.field public static final enum iM:Lcom/flurry/android/gn;

.field private static final synthetic iN:[Lcom/flurry/android/gn;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/flurry/android/gn;

    const-string v1, "PENDING_DB"

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/gn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/gn;->iI:Lcom/flurry/android/gn;

    new-instance v0, Lcom/flurry/android/gn;

    const-string v1, "SERVER_DB"

    invoke-direct {v0, v1, v3}, Lcom/flurry/android/gn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/gn;->iJ:Lcom/flurry/android/gn;

    new-instance v0, Lcom/flurry/android/gn;

    const-string v1, "REGISTERED_DB"

    invoke-direct {v0, v1, v4}, Lcom/flurry/android/gn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/gn;->iK:Lcom/flurry/android/gn;

    new-instance v0, Lcom/flurry/android/gn;

    const-string v1, "SEARCH_DATA_DB"

    invoke-direct {v0, v1, v5}, Lcom/flurry/android/gn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/gn;->iL:Lcom/flurry/android/gn;

    new-instance v0, Lcom/flurry/android/gn;

    const-string v1, "SEARCH_ITEMS_DATA_DB"

    invoke-direct {v0, v1, v6}, Lcom/flurry/android/gn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/gn;->iM:Lcom/flurry/android/gn;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/flurry/android/gn;

    sget-object v1, Lcom/flurry/android/gn;->iI:Lcom/flurry/android/gn;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/android/gn;->iJ:Lcom/flurry/android/gn;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/android/gn;->iK:Lcom/flurry/android/gn;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/android/gn;->iL:Lcom/flurry/android/gn;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/android/gn;->iM:Lcom/flurry/android/gn;

    aput-object v1, v0, v6

    sput-object v0, Lcom/flurry/android/gn;->iN:[Lcom/flurry/android/gn;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static bL()[Lcom/flurry/android/gn;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/flurry/android/gn;->iN:[Lcom/flurry/android/gn;

    invoke-virtual {v0}, [Lcom/flurry/android/gn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/gn;

    return-object v0
.end method
