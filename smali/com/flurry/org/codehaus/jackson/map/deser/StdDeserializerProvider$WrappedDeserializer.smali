.class public final Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializerProvider$WrappedDeserializer;
.super Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
.source "StdDeserializerProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializerProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "WrappedDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final _deserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final _typeDeserializer:Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)V
    .locals 0
    .param p1, "typeDeser"    # Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 452
    .local p2, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;-><init>()V

    .line 453
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializerProvider$WrappedDeserializer;->_typeDeserializer:Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    .line 454
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializerProvider$WrappedDeserializer;->_deserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .line 455
    return-void
.end method


# virtual methods
.method public deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
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
    .line 461
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializerProvider$WrappedDeserializer;->_deserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializerProvider$WrappedDeserializer;->_typeDeserializer:Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    invoke-virtual {v0, p1, p2, v1}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;->deserializeWithType(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserializeWithType(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;
    .locals 2
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .param p3, "typeDeserializer"    # Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 470
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Type-wrapped deserializer\'s deserializeWithType should never get called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
