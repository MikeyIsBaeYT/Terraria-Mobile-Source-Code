.class public final enum Lcom/chartboost/sdk/Libraries/c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Libraries/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chartboost/sdk/Libraries/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/chartboost/sdk/Libraries/c$a;

.field public static final enum b:Lcom/chartboost/sdk/Libraries/c$a;

.field public static final enum c:Lcom/chartboost/sdk/Libraries/c$a;

.field public static final enum d:Lcom/chartboost/sdk/Libraries/c$a;

.field public static final enum e:Lcom/chartboost/sdk/Libraries/c$a;

.field private static final synthetic g:[Lcom/chartboost/sdk/Libraries/c$a;


# instance fields
.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 47
    new-instance v0, Lcom/chartboost/sdk/Libraries/c$a;

    const-string v1, "PRELOAD"

    invoke-direct {v0, v1, v3, v2}, Lcom/chartboost/sdk/Libraries/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/Libraries/c$a;->a:Lcom/chartboost/sdk/Libraries/c$a;

    new-instance v0, Lcom/chartboost/sdk/Libraries/c$a;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v4, v2}, Lcom/chartboost/sdk/Libraries/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/Libraries/c$a;->b:Lcom/chartboost/sdk/Libraries/c$a;

    new-instance v0, Lcom/chartboost/sdk/Libraries/c$a;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5, v2}, Lcom/chartboost/sdk/Libraries/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/Libraries/c$a;->c:Lcom/chartboost/sdk/Libraries/c$a;

    new-instance v0, Lcom/chartboost/sdk/Libraries/c$a;

    const-string v1, "TRACKING_ENABLED"

    invoke-direct {v0, v1, v6, v3}, Lcom/chartboost/sdk/Libraries/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/Libraries/c$a;->d:Lcom/chartboost/sdk/Libraries/c$a;

    new-instance v0, Lcom/chartboost/sdk/Libraries/c$a;

    const-string v1, "TRACKING_DISABLED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v4}, Lcom/chartboost/sdk/Libraries/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/Libraries/c$a;->e:Lcom/chartboost/sdk/Libraries/c$a;

    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/c$a;

    sget-object v1, Lcom/chartboost/sdk/Libraries/c$a;->a:Lcom/chartboost/sdk/Libraries/c$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chartboost/sdk/Libraries/c$a;->b:Lcom/chartboost/sdk/Libraries/c$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chartboost/sdk/Libraries/c$a;->c:Lcom/chartboost/sdk/Libraries/c$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/chartboost/sdk/Libraries/c$a;->d:Lcom/chartboost/sdk/Libraries/c$a;

    aput-object v1, v0, v6

    const/4 v1, 0x4

    sget-object v2, Lcom/chartboost/sdk/Libraries/c$a;->e:Lcom/chartboost/sdk/Libraries/c$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/chartboost/sdk/Libraries/c$a;->g:[Lcom/chartboost/sdk/Libraries/c$a;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p3, p0, Lcom/chartboost/sdk/Libraries/c$a;->f:I

    .line 53
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/c$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/chartboost/sdk/Libraries/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Libraries/c$a;

    return-object v0
.end method

.method public static values()[Lcom/chartboost/sdk/Libraries/c$a;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/chartboost/sdk/Libraries/c$a;->g:[Lcom/chartboost/sdk/Libraries/c$a;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/Libraries/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/Libraries/c$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/chartboost/sdk/Libraries/c$a;->f:I

    return v0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 60
    iget v0, p0, Lcom/chartboost/sdk/Libraries/c$a;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
