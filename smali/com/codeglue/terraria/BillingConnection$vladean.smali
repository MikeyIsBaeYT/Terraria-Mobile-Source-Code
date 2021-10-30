.class public final enum Lcom/codeglue/terraria/BillingConnection$vladean;
.super Ljava/lang/Enum;
.source "Billing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codeglue/terraria/BillingConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "vladean"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/codeglue/terraria/BillingConnection$vladean;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codeglue/terraria/BillingConnection$vladean;

.field public static final enum ERROR:Lcom/codeglue/terraria/BillingConnection$vladean;

.field public static final enum FALSE:Lcom/codeglue/terraria/BillingConnection$vladean;

.field public static final enum TRUE:Lcom/codeglue/terraria/BillingConnection$vladean;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/codeglue/terraria/BillingConnection$vladean;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v2}, Lcom/codeglue/terraria/BillingConnection$vladean;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codeglue/terraria/BillingConnection$vladean;->ERROR:Lcom/codeglue/terraria/BillingConnection$vladean;

    .line 41
    new-instance v0, Lcom/codeglue/terraria/BillingConnection$vladean;

    const-string v1, "FALSE"

    invoke-direct {v0, v1, v3}, Lcom/codeglue/terraria/BillingConnection$vladean;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codeglue/terraria/BillingConnection$vladean;->FALSE:Lcom/codeglue/terraria/BillingConnection$vladean;

    .line 42
    new-instance v0, Lcom/codeglue/terraria/BillingConnection$vladean;

    const-string v1, "TRUE"

    invoke-direct {v0, v1, v4}, Lcom/codeglue/terraria/BillingConnection$vladean;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codeglue/terraria/BillingConnection$vladean;->TRUE:Lcom/codeglue/terraria/BillingConnection$vladean;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/codeglue/terraria/BillingConnection$vladean;

    sget-object v1, Lcom/codeglue/terraria/BillingConnection$vladean;->ERROR:Lcom/codeglue/terraria/BillingConnection$vladean;

    aput-object v1, v0, v2

    sget-object v1, Lcom/codeglue/terraria/BillingConnection$vladean;->FALSE:Lcom/codeglue/terraria/BillingConnection$vladean;

    aput-object v1, v0, v3

    sget-object v1, Lcom/codeglue/terraria/BillingConnection$vladean;->TRUE:Lcom/codeglue/terraria/BillingConnection$vladean;

    aput-object v1, v0, v4

    sput-object v0, Lcom/codeglue/terraria/BillingConnection$vladean;->$VALUES:[Lcom/codeglue/terraria/BillingConnection$vladean;

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

.method public static valueOf(Ljava/lang/String;)Lcom/codeglue/terraria/BillingConnection$vladean;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Lcom/codeglue/terraria/BillingConnection$vladean;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codeglue/terraria/BillingConnection$vladean;

    return-object v0
.end method

.method public static values()[Lcom/codeglue/terraria/BillingConnection$vladean;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/codeglue/terraria/BillingConnection$vladean;->$VALUES:[Lcom/codeglue/terraria/BillingConnection$vladean;

    invoke-virtual {v0}, [Lcom/codeglue/terraria/BillingConnection$vladean;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codeglue/terraria/BillingConnection$vladean;

    return-object v0
.end method
