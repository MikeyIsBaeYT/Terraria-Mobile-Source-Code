.class public interface abstract Lcom/flurry/org/codehaus/jackson/map/JsonSerializableWithType;
.super Ljava/lang/Object;
.source "JsonSerializableWithType.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/map/JsonSerializable;


# virtual methods
.method public abstract serializeWithType(Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method
