.class public final Lcom/flurry/org/codehaus/jackson/node/MissingNode;
.super Lcom/flurry/org/codehaus/jackson/node/BaseJsonNode;
.source "MissingNode.java"


# static fields
.field private static final instance:Lcom/flurry/org/codehaus/jackson/node/MissingNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/flurry/org/codehaus/jackson/node/MissingNode;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/node/MissingNode;-><init>()V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/node/MissingNode;->instance:Lcom/flurry/org/codehaus/jackson/node/MissingNode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/node/BaseJsonNode;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/flurry/org/codehaus/jackson/node/MissingNode;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/flurry/org/codehaus/jackson/node/MissingNode;->instance:Lcom/flurry/org/codehaus/jackson/node/MissingNode;

    return-object v0
.end method


# virtual methods
.method public asDouble(D)D
    .locals 2
    .param p1, "defaultValue"    # D

    .prologue
    .line 49
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public asInt(I)I
    .locals 1
    .param p1, "defaultValue"    # I

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public asLong(J)J
    .locals 2
    .param p1, "defaultValue"    # J

    .prologue
    .line 45
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public asText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, ""

    return-object v0
.end method

.method public asToken()Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonToken;->NOT_AVAILABLE:Lcom/flurry/org/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 88
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMissingNode()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method public path(I)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 56
    return-object p0
.end method

.method public path(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 53
    return-object p0
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
    .line 66
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeNull()V

    .line 67
    return-void
.end method

.method public serializeWithType(Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .param p1, "jg"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p2, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .param p3, "typeSer"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeNull()V

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const-string v0, ""

    return-object v0
.end method
