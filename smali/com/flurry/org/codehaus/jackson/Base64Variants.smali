.class public final Lcom/flurry/org/codehaus/jackson/Base64Variants;
.super Ljava/lang/Object;
.source "Base64Variants.java"


# static fields
.field public static final MIME:Lcom/flurry/org/codehaus/jackson/Base64Variant;

.field public static final MIME_NO_LINEFEEDS:Lcom/flurry/org/codehaus/jackson/Base64Variant;

.field public static final MODIFIED_FOR_URL:Lcom/flurry/org/codehaus/jackson/Base64Variant;

.field public static final PEM:Lcom/flurry/org/codehaus/jackson/Base64Variant;

.field static final STD_BASE64_ALPHABET:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const v8, 0x7fffffff

    const/16 v4, 0x3d

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 38
    new-instance v0, Lcom/flurry/org/codehaus/jackson/Base64Variant;

    const-string v1, "MIME"

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    const/16 v5, 0x4c

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/Base64Variant;-><init>(Ljava/lang/String;Ljava/lang/String;ZCI)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/Base64Variants;->MIME:Lcom/flurry/org/codehaus/jackson/Base64Variant;

    .line 49
    new-instance v0, Lcom/flurry/org/codehaus/jackson/Base64Variant;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/Base64Variants;->MIME:Lcom/flurry/org/codehaus/jackson/Base64Variant;

    const-string v2, "MIME-NO-LINEFEEDS"

    invoke-direct {v0, v1, v2, v8}, Lcom/flurry/org/codehaus/jackson/Base64Variant;-><init>(Lcom/flurry/org/codehaus/jackson/Base64Variant;Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/Base64Variants;->MIME_NO_LINEFEEDS:Lcom/flurry/org/codehaus/jackson/Base64Variant;

    .line 56
    new-instance v0, Lcom/flurry/org/codehaus/jackson/Base64Variant;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/Base64Variants;->MIME:Lcom/flurry/org/codehaus/jackson/Base64Variant;

    const-string v2, "PEM"

    const/16 v5, 0x40

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/Base64Variant;-><init>(Lcom/flurry/org/codehaus/jackson/Base64Variant;Ljava/lang/String;ZCI)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/Base64Variants;->PEM:Lcom/flurry/org/codehaus/jackson/Base64Variant;

    .line 71
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-direct {v6, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 73
    .local v6, "sb":Ljava/lang/StringBuffer;
    const-string v0, "+"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x2d

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 74
    const-string v0, "/"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x5f

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 78
    new-instance v0, Lcom/flurry/org/codehaus/jackson/Base64Variant;

    const-string v1, "MODIFIED-FOR-URL"

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, v7

    move v4, v7

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/Base64Variant;-><init>(Ljava/lang/String;Ljava/lang/String;ZCI)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/Base64Variants;->MODIFIED_FOR_URL:Lcom/flurry/org/codehaus/jackson/Base64Variant;

    .line 79
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultVariant()Lcom/flurry/org/codehaus/jackson/Base64Variant;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/flurry/org/codehaus/jackson/Base64Variants;->MIME_NO_LINEFEEDS:Lcom/flurry/org/codehaus/jackson/Base64Variant;

    return-object v0
.end method
