.class public Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer$InetAddressDeserializer;
.super Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer;
.source "FromStringDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "InetAddressDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer",
        "<",
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 224
    const-class v0, Ljava/net/InetAddress;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic _deserialize(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/FromStringDeserializer$InetAddressDeserializer;->_deserialize(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method protected _deserialize(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/net/InetAddress;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method
