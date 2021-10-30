.class public final Lcom/flurry/org/codehaus/jackson/node/NullNode;
.super Lcom/flurry/org/codehaus/jackson/node/ValueNode;
.source "NullNode.java"


# static fields
.field public static final instance:Lcom/flurry/org/codehaus/jackson/node/NullNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/flurry/org/codehaus/jackson/node/NullNode;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/node/NullNode;-><init>()V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/node/NullNode;->instance:Lcom/flurry/org/codehaus/jackson/node/NullNode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/node/ValueNode;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/flurry/org/codehaus/jackson/node/NullNode;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/flurry/org/codehaus/jackson/node/NullNode;->instance:Lcom/flurry/org/codehaus/jackson/node/NullNode;

    return-object v0
.end method


# virtual methods
.method public asDouble(D)D
    .locals 2
    .param p1, "defaultValue"    # D

    .prologue
    .line 43
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public asInt(I)I
    .locals 1
    .param p1, "defaultValue"    # I

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public asLong(J)J
    .locals 2
    .param p1, "defaultValue"    # J

    .prologue
    .line 39
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public asText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "null"

    return-object v0
.end method

.method public asToken()Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/flurry/org/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 56
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method public final serialize(Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .param p1, "jg"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p2, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeNull()V

    .line 51
    return-void
.end method
