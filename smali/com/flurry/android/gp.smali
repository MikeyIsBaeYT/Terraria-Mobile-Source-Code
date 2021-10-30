.class final enum Lcom/flurry/android/gp;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/android/gp;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum iO:Lcom/flurry/android/gp;

.field public static final enum iP:Lcom/flurry/android/gp;

.field public static final enum iQ:Lcom/flurry/android/gp;


# instance fields
.field private dO:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 181
    new-instance v0, Lcom/flurry/android/gp;

    const-string v1, "NONE_OR_UNKNOWN"

    invoke-direct {v0, v1, v2, v2}, Lcom/flurry/android/gp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/android/gp;->iO:Lcom/flurry/android/gp;

    .line 182
    new-instance v0, Lcom/flurry/android/gp;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v3, v3}, Lcom/flurry/android/gp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/android/gp;->iP:Lcom/flurry/android/gp;

    .line 183
    new-instance v0, Lcom/flurry/android/gp;

    const-string v1, "CELL"

    invoke-direct {v0, v1, v4, v4}, Lcom/flurry/android/gp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/android/gp;->iQ:Lcom/flurry/android/gp;

    .line 179
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/flurry/android/gp;

    sget-object v1, Lcom/flurry/android/gp;->iO:Lcom/flurry/android/gp;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/android/gp;->iP:Lcom/flurry/android/gp;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/android/gp;->iQ:Lcom/flurry/android/gp;

    aput-object v1, v0, v4

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 188
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 189
    iput p3, p0, Lcom/flurry/android/gp;->dO:I

    .line 190
    return-void
.end method


# virtual methods
.method final getValue()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/flurry/android/gp;->dO:I

    return v0
.end method
