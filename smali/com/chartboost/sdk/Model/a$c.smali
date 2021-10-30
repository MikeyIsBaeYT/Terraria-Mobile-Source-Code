.class public final enum Lcom/chartboost/sdk/Model/a$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Model/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chartboost/sdk/Model/a$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/chartboost/sdk/Model/a$c;

.field public static final enum b:Lcom/chartboost/sdk/Model/a$c;

.field public static final enum c:Lcom/chartboost/sdk/Model/a$c;

.field public static final enum d:Lcom/chartboost/sdk/Model/a$c;

.field private static final synthetic e:[Lcom/chartboost/sdk/Model/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/chartboost/sdk/Model/a$c;

    const-string v1, "INTERSTITIAL"

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/a$c;->a:Lcom/chartboost/sdk/Model/a$c;

    .line 40
    new-instance v0, Lcom/chartboost/sdk/Model/a$c;

    const-string v1, "MORE_APPS"

    invoke-direct {v0, v1, v3}, Lcom/chartboost/sdk/Model/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/a$c;->b:Lcom/chartboost/sdk/Model/a$c;

    .line 41
    new-instance v0, Lcom/chartboost/sdk/Model/a$c;

    const-string v1, "REWARDED_VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/chartboost/sdk/Model/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/a$c;->c:Lcom/chartboost/sdk/Model/a$c;

    .line 42
    new-instance v0, Lcom/chartboost/sdk/Model/a$c;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v5}, Lcom/chartboost/sdk/Model/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/a$c;->d:Lcom/chartboost/sdk/Model/a$c;

    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/chartboost/sdk/Model/a$c;

    sget-object v1, Lcom/chartboost/sdk/Model/a$c;->a:Lcom/chartboost/sdk/Model/a$c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chartboost/sdk/Model/a$c;->b:Lcom/chartboost/sdk/Model/a$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chartboost/sdk/Model/a$c;->c:Lcom/chartboost/sdk/Model/a$c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chartboost/sdk/Model/a$c;->d:Lcom/chartboost/sdk/Model/a$c;

    aput-object v1, v0, v5

    sput-object v0, Lcom/chartboost/sdk/Model/a$c;->e:[Lcom/chartboost/sdk/Model/a$c;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a$c;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Lcom/chartboost/sdk/Model/a$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/a$c;

    return-object v0
.end method

.method public static values()[Lcom/chartboost/sdk/Model/a$c;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/chartboost/sdk/Model/a$c;->e:[Lcom/chartboost/sdk/Model/a$c;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/Model/a$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/Model/a$c;

    return-object v0
.end method
