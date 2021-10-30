.class public final enum Lcom/chartboost/sdk/Model/CBError$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Model/CBError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chartboost/sdk/Model/CBError$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/chartboost/sdk/Model/CBError$a;

.field public static final enum b:Lcom/chartboost/sdk/Model/CBError$a;

.field public static final enum c:Lcom/chartboost/sdk/Model/CBError$a;

.field public static final enum d:Lcom/chartboost/sdk/Model/CBError$a;

.field public static final enum e:Lcom/chartboost/sdk/Model/CBError$a;

.field public static final enum f:Lcom/chartboost/sdk/Model/CBError$a;

.field public static final enum g:Lcom/chartboost/sdk/Model/CBError$a;

.field private static final synthetic h:[Lcom/chartboost/sdk/Model/CBError$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$a;

    const-string v1, "MISCELLANEOUS"

    invoke-direct {v0, v1, v3}, Lcom/chartboost/sdk/Model/CBError$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$a;->a:Lcom/chartboost/sdk/Model/CBError$a;

    .line 63
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$a;

    const-string v1, "INTERNET_UNAVAILABLE"

    invoke-direct {v0, v1, v4}, Lcom/chartboost/sdk/Model/CBError$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$a;->b:Lcom/chartboost/sdk/Model/CBError$a;

    .line 64
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$a;

    const-string v1, "INVALID_RESPONSE"

    invoke-direct {v0, v1, v5}, Lcom/chartboost/sdk/Model/CBError$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$a;->c:Lcom/chartboost/sdk/Model/CBError$a;

    .line 65
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$a;

    const-string v1, "UNEXPECTED_RESPONSE"

    invoke-direct {v0, v1, v6}, Lcom/chartboost/sdk/Model/CBError$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$a;->d:Lcom/chartboost/sdk/Model/CBError$a;

    .line 66
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$a;

    const-string v1, "NETWORK_FAILURE"

    invoke-direct {v0, v1, v7}, Lcom/chartboost/sdk/Model/CBError$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$a;->e:Lcom/chartboost/sdk/Model/CBError$a;

    .line 67
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$a;

    const-string v1, "PUBLIC_KEY_MISSING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$a;->f:Lcom/chartboost/sdk/Model/CBError$a;

    .line 68
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$a;

    const-string v1, "HTTP_NOT_FOUND"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$a;->g:Lcom/chartboost/sdk/Model/CBError$a;

    .line 61
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/chartboost/sdk/Model/CBError$a;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$a;->a:Lcom/chartboost/sdk/Model/CBError$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$a;->b:Lcom/chartboost/sdk/Model/CBError$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$a;->c:Lcom/chartboost/sdk/Model/CBError$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$a;->d:Lcom/chartboost/sdk/Model/CBError$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$a;->e:Lcom/chartboost/sdk/Model/CBError$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$a;->f:Lcom/chartboost/sdk/Model/CBError$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$a;->g:Lcom/chartboost/sdk/Model/CBError$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$a;->h:[Lcom/chartboost/sdk/Model/CBError$a;

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
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/Model/CBError$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    const-class v0, Lcom/chartboost/sdk/Model/CBError$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/CBError$a;

    return-object v0
.end method

.method public static values()[Lcom/chartboost/sdk/Model/CBError$a;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$a;->h:[Lcom/chartboost/sdk/Model/CBError$a;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/Model/CBError$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/Model/CBError$a;

    return-object v0
.end method
