.class public final enum Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;
.super Ljava/lang/Enum;
.source "HmacAlgorithms.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;

.field public static final enum HMAC_MD5:Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;

.field public static final enum HMAC_SHA_1:Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;

.field public static final enum HMAC_SHA_256:Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;

.field public static final enum HMAC_SHA_384:Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;

.field public static final enum HMAC_SHA_512:Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;


# instance fields
.field private final algorithm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    new-instance v0, Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;

    const-string v1, "HMAC_MD5"

    const-string v2, "HmacMD5"

    invoke-direct {v0, v1, v3, v2}, Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;->HMAC_MD5:Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;

    .line 49
    new-instance v0, Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;

    const-string v1, "HMAC_SHA_1"

    const-string v2, "HmacSHA1"

    invoke-direct {v0, v1, v4, v2}, Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;

    .line 57
    new-instance v0, Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;

    const-string v1, "HMAC_SHA_256"

    const-string v2, "HmacSHA256"

    invoke-direct {v0, v1, v5, v2}, Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;

    .line 65
    new-instance v0, Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;

    const-string v1, "HMAC_SHA_384"

    const-string v2, "HmacSHA384"

    invoke-direct {v0, v1, v6, v2}, Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;

    .line 73
    new-instance v0, Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;

    const-string v1, "HMAC_SHA_512"

    const-string v2, "HmacSHA512"

    invoke-direct {v0, v1, v7, v2}, Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;->HMAC_SHA_512:Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;

    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;

    sget-object v1, Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;->HMAC_MD5:Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;

    aput-object v1, v0, v3

    sget-object v1, Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;

    aput-object v1, v0, v4

    sget-object v1, Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;

    aput-object v1, v0, v5

    sget-object v1, Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;

    aput-object v1, v0, v6

    sget-object v1, Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;->HMAC_SHA_512:Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;

    aput-object v1, v0, v7

    sput-object v0, Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;->$VALUES:[Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    iput-object p3, p0, Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;->algorithm:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;

    return-object v0
.end method

.method public static values()[Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;->$VALUES:[Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;

    invoke-virtual {v0}, [Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/codeglue/terraria/codec/digest/HmacAlgorithms;->algorithm:Ljava/lang/String;

    return-object v0
.end method
