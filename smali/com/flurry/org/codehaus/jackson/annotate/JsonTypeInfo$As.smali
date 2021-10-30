.class public final enum Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;
.super Ljava/lang/Enum;
.source "JsonTypeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "As"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

.field public static final enum EXTERNAL_PROPERTY:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

.field public static final enum PROPERTY:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

.field public static final enum WRAPPER_ARRAY:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

.field public static final enum WRAPPER_OBJECT:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 135
    new-instance v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    const-string v1, "PROPERTY"

    invoke-direct {v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;->PROPERTY:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    .line 148
    new-instance v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    const-string v1, "WRAPPER_OBJECT"

    invoke-direct {v0, v1, v3}, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;->WRAPPER_OBJECT:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    .line 157
    new-instance v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    const-string v1, "WRAPPER_ARRAY"

    invoke-direct {v0, v1, v4}, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;->WRAPPER_ARRAY:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    .line 169
    new-instance v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    const-string v1, "EXTERNAL_PROPERTY"

    invoke-direct {v0, v1, v5}, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;->EXTERNAL_PROPERTY:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    .line 128
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;->PROPERTY:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;->WRAPPER_OBJECT:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;->WRAPPER_ARRAY:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;->EXTERNAL_PROPERTY:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    aput-object v1, v0, v5

    sput-object v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;->$VALUES:[Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

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
    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 128
    const-class v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    return-object v0
.end method

.method public static values()[Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;->$VALUES:[Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    invoke-virtual {v0}, [Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    return-object v0
.end method
