.class public abstract Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;
.super Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;
.source "StdKeyDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$UuidKD;,
        Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$CalendarKD;,
        Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$DateKD;,
        Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$StringFactoryKeyDeserializer;,
        Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$StringCtorKeyDeserializer;,
        Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$EnumKD;,
        Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$FloatKD;,
        Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$DoubleKD;,
        Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$LongKD;,
        Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$IntKD;,
        Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$CharKD;,
        Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$ShortKD;,
        Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$ByteKD;,
        Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$BoolKD;,
        Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$StringKD;
    }
.end annotation


# instance fields
.field protected final _keyClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;-><init>()V

    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method protected abstract _parse(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected _parseDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {p1}, Lcom/flurry/org/codehaus/jackson/io/NumberInput;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method protected _parseInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected _parseLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final deserializeKey(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 31
    if-nez p1, :cond_1

    .line 32
    const/4 v1, 0x0

    .line 37
    :cond_0
    return-object v1

    .line 35
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;->_parse(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 36
    .local v1, "result":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 42
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    const-string v3, "not a valid representation"

    invoke-virtual {p2, v2, p1, v3}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->weirdKeyException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v2

    throw v2

    .line 39
    .end local v1    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 40
    .local v0, "re":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not a valid representation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, p1, v3}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->weirdKeyException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v2

    throw v2
.end method

.method public getKeyClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    return-object v0
.end method
