.class public final enum Lcom/chartboost/sdk/Model/CBError$CBClickError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Model/CBError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CBClickError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chartboost/sdk/Model/CBError$CBClickError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AGE_GATE_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBClickError;

.field public static final enum INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBClickError;

.field public static final enum NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBClickError;

.field public static final enum URI_INVALID:Lcom/chartboost/sdk/Model/CBError$CBClickError;

.field public static final enum URI_UNRECOGNIZED:Lcom/chartboost/sdk/Model/CBError$CBClickError;

.field private static final synthetic a:[Lcom/chartboost/sdk/Model/CBError$CBClickError;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBClickError;

    const-string v1, "URI_INVALID"

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBClickError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_INVALID:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    .line 52
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBClickError;

    const-string v1, "URI_UNRECOGNIZED"

    invoke-direct {v0, v1, v3}, Lcom/chartboost/sdk/Model/CBError$CBClickError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_UNRECOGNIZED:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    .line 54
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBClickError;

    const-string v1, "AGE_GATE_FAILURE"

    invoke-direct {v0, v1, v4}, Lcom/chartboost/sdk/Model/CBError$CBClickError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBClickError;->AGE_GATE_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    .line 56
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBClickError;

    const-string v1, "NO_HOST_ACTIVITY"

    invoke-direct {v0, v1, v5}, Lcom/chartboost/sdk/Model/CBError$CBClickError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBClickError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    .line 58
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBClickError;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v6}, Lcom/chartboost/sdk/Model/CBError$CBClickError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBClickError;->INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    .line 48
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/chartboost/sdk/Model/CBError$CBClickError;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_INVALID:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_UNRECOGNIZED:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBClickError;->AGE_GATE_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBClickError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBClickError;->INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    aput-object v1, v0, v6

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBClickError;->a:[Lcom/chartboost/sdk/Model/CBError$CBClickError;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/Model/CBError$CBClickError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    const-class v0, Lcom/chartboost/sdk/Model/CBError$CBClickError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/CBError$CBClickError;

    return-object v0
.end method

.method public static values()[Lcom/chartboost/sdk/Model/CBError$CBClickError;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBClickError;->a:[Lcom/chartboost/sdk/Model/CBError$CBClickError;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/Model/CBError$CBClickError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/Model/CBError$CBClickError;

    return-object v0
.end method
