.class public final Lcom/flurry/org/codehaus/jackson/node/BooleanNode;
.super Lcom/flurry/org/codehaus/jackson/node/ValueNode;
.source "BooleanNode.java"


# static fields
.field public static final FALSE:Lcom/flurry/org/codehaus/jackson/node/BooleanNode;

.field public static final TRUE:Lcom/flurry/org/codehaus/jackson/node/BooleanNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/flurry/org/codehaus/jackson/node/BooleanNode;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/node/BooleanNode;-><init>()V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/node/BooleanNode;->TRUE:Lcom/flurry/org/codehaus/jackson/node/BooleanNode;

    .line 19
    new-instance v0, Lcom/flurry/org/codehaus/jackson/node/BooleanNode;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/node/BooleanNode;-><init>()V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/node/BooleanNode;->FALSE:Lcom/flurry/org/codehaus/jackson/node/BooleanNode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/node/ValueNode;-><init>()V

    return-void
.end method

.method public static getFalse()Lcom/flurry/org/codehaus/jackson/node/BooleanNode;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/flurry/org/codehaus/jackson/node/BooleanNode;->FALSE:Lcom/flurry/org/codehaus/jackson/node/BooleanNode;

    return-object v0
.end method

.method public static getTrue()Lcom/flurry/org/codehaus/jackson/node/BooleanNode;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/flurry/org/codehaus/jackson/node/BooleanNode;->TRUE:Lcom/flurry/org/codehaus/jackson/node/BooleanNode;

    return-object v0
.end method

.method public static valueOf(Z)Lcom/flurry/org/codehaus/jackson/node/BooleanNode;
    .locals 1
    .param p0, "b"    # Z

    .prologue
    .line 26
    if-eqz p0, :cond_0

    sget-object v0, Lcom/flurry/org/codehaus/jackson/node/BooleanNode;->TRUE:Lcom/flurry/org/codehaus/jackson/node/BooleanNode;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/flurry/org/codehaus/jackson/node/BooleanNode;->FALSE:Lcom/flurry/org/codehaus/jackson/node/BooleanNode;

    goto :goto_0
.end method


# virtual methods
.method public asBoolean()Z
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/flurry/org/codehaus/jackson/node/BooleanNode;->TRUE:Lcom/flurry/org/codehaus/jackson/node/BooleanNode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public asBoolean(Z)Z
    .locals 1
    .param p1, "defaultValue"    # Z

    .prologue
    .line 53
    sget-object v0, Lcom/flurry/org/codehaus/jackson/node/BooleanNode;->TRUE:Lcom/flurry/org/codehaus/jackson/node/BooleanNode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public asDouble(D)D
    .locals 2
    .param p1, "defaultValue"    # D

    .prologue
    .line 66
    sget-object v0, Lcom/flurry/org/codehaus/jackson/node/BooleanNode;->TRUE:Lcom/flurry/org/codehaus/jackson/node/BooleanNode;

    if-ne p0, v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public asInt(I)I
    .locals 1
    .param p1, "defaultValue"    # I

    .prologue
    .line 58
    sget-object v0, Lcom/flurry/org/codehaus/jackson/node/BooleanNode;->TRUE:Lcom/flurry/org/codehaus/jackson/node/BooleanNode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public asLong(J)J
    .locals 2
    .param p1, "defaultValue"    # J

    .prologue
    .line 62
    sget-object v0, Lcom/flurry/org/codehaus/jackson/node/BooleanNode;->TRUE:Lcom/flurry/org/codehaus/jackson/node/BooleanNode;

    if-ne p0, v0, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public asText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/flurry/org/codehaus/jackson/node/BooleanNode;->TRUE:Lcom/flurry/org/codehaus/jackson/node/BooleanNode;

    if-ne p0, v0, :cond_0

    const-string v0, "true"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public asToken()Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/flurry/org/codehaus/jackson/node/BooleanNode;->TRUE:Lcom/flurry/org/codehaus/jackson/node/BooleanNode;

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_TRUE:Lcom/flurry/org/codehaus/jackson/JsonToken;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_FALSE:Lcom/flurry/org/codehaus/jackson/JsonToken;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 82
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBooleanValue()Z
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/flurry/org/codehaus/jackson/node/BooleanNode;->TRUE:Lcom/flurry/org/codehaus/jackson/node/BooleanNode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBoolean()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public final serialize(Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .param p1, "jg"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p2, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lcom/flurry/org/codehaus/jackson/node/BooleanNode;->TRUE:Lcom/flurry/org/codehaus/jackson/node/BooleanNode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeBoolean(Z)V

    .line 74
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
