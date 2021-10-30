.class public final enum Lcom/codeglue/terraria/BillingType;
.super Ljava/lang/Enum;
.source "BillingType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/codeglue/terraria/BillingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codeglue/terraria/BillingType;

.field public static final enum CONSUMABLE:Lcom/codeglue/terraria/BillingType;

.field public static final enum ENTITLEMENT:Lcom/codeglue/terraria/BillingType;

.field public static final enum SUBSCRIPTION:Lcom/codeglue/terraria/BillingType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/codeglue/terraria/BillingType;

    const-string v1, "CONSUMABLE"

    invoke-direct {v0, v1, v2}, Lcom/codeglue/terraria/BillingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codeglue/terraria/BillingType;->CONSUMABLE:Lcom/codeglue/terraria/BillingType;

    .line 8
    new-instance v0, Lcom/codeglue/terraria/BillingType;

    const-string v1, "ENTITLEMENT"

    invoke-direct {v0, v1, v3}, Lcom/codeglue/terraria/BillingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codeglue/terraria/BillingType;->ENTITLEMENT:Lcom/codeglue/terraria/BillingType;

    .line 9
    new-instance v0, Lcom/codeglue/terraria/BillingType;

    const-string v1, "SUBSCRIPTION"

    invoke-direct {v0, v1, v4}, Lcom/codeglue/terraria/BillingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codeglue/terraria/BillingType;->SUBSCRIPTION:Lcom/codeglue/terraria/BillingType;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/codeglue/terraria/BillingType;

    sget-object v1, Lcom/codeglue/terraria/BillingType;->CONSUMABLE:Lcom/codeglue/terraria/BillingType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/codeglue/terraria/BillingType;->ENTITLEMENT:Lcom/codeglue/terraria/BillingType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/codeglue/terraria/BillingType;->SUBSCRIPTION:Lcom/codeglue/terraria/BillingType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/codeglue/terraria/BillingType;->$VALUES:[Lcom/codeglue/terraria/BillingType;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codeglue/terraria/BillingType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/codeglue/terraria/BillingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codeglue/terraria/BillingType;

    return-object v0
.end method

.method public static values()[Lcom/codeglue/terraria/BillingType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/codeglue/terraria/BillingType;->$VALUES:[Lcom/codeglue/terraria/BillingType;

    invoke-virtual {v0}, [Lcom/codeglue/terraria/BillingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codeglue/terraria/BillingType;

    return-object v0
.end method
