.class public final enum Lcom/chartboost/sdk/Model/a$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Model/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chartboost/sdk/Model/a$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/chartboost/sdk/Model/a$d;

.field public static final enum b:Lcom/chartboost/sdk/Model/a$d;

.field public static final enum c:Lcom/chartboost/sdk/Model/a$d;

.field public static final enum d:Lcom/chartboost/sdk/Model/a$d;

.field private static final synthetic e:[Lcom/chartboost/sdk/Model/a$d;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/chartboost/sdk/Model/a$d;

    const-string v1, "INTERSTITIAL"

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/a$d;->a:Lcom/chartboost/sdk/Model/a$d;

    .line 47
    new-instance v0, Lcom/chartboost/sdk/Model/a$d;

    const-string v1, "INTERSTITIAL_VIDEO"

    invoke-direct {v0, v1, v3}, Lcom/chartboost/sdk/Model/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/a$d;->b:Lcom/chartboost/sdk/Model/a$d;

    .line 48
    new-instance v0, Lcom/chartboost/sdk/Model/a$d;

    const-string v1, "INTERSTITIAL_REWARD_VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/chartboost/sdk/Model/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    .line 49
    new-instance v0, Lcom/chartboost/sdk/Model/a$d;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v5}, Lcom/chartboost/sdk/Model/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/a$d;->d:Lcom/chartboost/sdk/Model/a$d;

    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/chartboost/sdk/Model/a$d;

    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->a:Lcom/chartboost/sdk/Model/a$d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->b:Lcom/chartboost/sdk/Model/a$d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->d:Lcom/chartboost/sdk/Model/a$d;

    aput-object v1, v0, v5

    sput-object v0, Lcom/chartboost/sdk/Model/a$d;->e:[Lcom/chartboost/sdk/Model/a$d;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a$d;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    const-class v0, Lcom/chartboost/sdk/Model/a$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/a$d;

    return-object v0
.end method

.method public static values()[Lcom/chartboost/sdk/Model/a$d;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/chartboost/sdk/Model/a$d;->e:[Lcom/chartboost/sdk/Model/a$d;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/Model/a$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/Model/a$d;

    return-object v0
.end method
