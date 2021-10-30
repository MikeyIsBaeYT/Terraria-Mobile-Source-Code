.class public Lcom/flurry/org/codehaus/jackson/map/deser/std/TokenBufferDeserializer;
.super Lcom/flurry/org/codehaus/jackson/map/deser/std/StdScalarDeserializer;
.source "TokenBufferDeserializer.java"


# annotations
.annotation runtime Lcom/flurry/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdScalarDeserializer",
        "<",
        "Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;
    .locals 2
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCodec()Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;-><init>(Lcom/flurry/org/codehaus/jackson/ObjectCodec;)V

    .line 33
    .local v0, "tb":Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;
    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;->copyCurrentStructure(Lcom/flurry/org/codehaus/jackson/JsonParser;)V

    .line 34
    return-object v0
.end method

.method public bridge synthetic deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "x1"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/TokenBufferDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;

    move-result-object v0

    return-object v0
.end method
