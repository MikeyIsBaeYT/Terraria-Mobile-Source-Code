.class public final enum Lcom/chartboost/sdk/impl/bd$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/bd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chartboost/sdk/impl/bd$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/chartboost/sdk/impl/bd$a;

.field public static final enum b:Lcom/chartboost/sdk/impl/bd$a;

.field private static final synthetic c:[Lcom/chartboost/sdk/impl/bd$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    new-instance v0, Lcom/chartboost/sdk/impl/bd$a;

    const-string v1, "kCBIntial"

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/impl/bd$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/impl/bd$a;->a:Lcom/chartboost/sdk/impl/bd$a;

    .line 81
    new-instance v0, Lcom/chartboost/sdk/impl/bd$a;

    const-string v1, "kCBInProgress"

    invoke-direct {v0, v1, v3}, Lcom/chartboost/sdk/impl/bd$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/impl/bd$a;->b:Lcom/chartboost/sdk/impl/bd$a;

    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/chartboost/sdk/impl/bd$a;

    sget-object v1, Lcom/chartboost/sdk/impl/bd$a;->a:Lcom/chartboost/sdk/impl/bd$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chartboost/sdk/impl/bd$a;->b:Lcom/chartboost/sdk/impl/bd$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/chartboost/sdk/impl/bd$a;->c:[Lcom/chartboost/sdk/impl/bd$a;

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
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/impl/bd$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 79
    const-class v0, Lcom/chartboost/sdk/impl/bd$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/bd$a;

    return-object v0
.end method

.method public static values()[Lcom/chartboost/sdk/impl/bd$a;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/chartboost/sdk/impl/bd$a;->c:[Lcom/chartboost/sdk/impl/bd$a;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/impl/bd$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/impl/bd$a;

    return-object v0
.end method
