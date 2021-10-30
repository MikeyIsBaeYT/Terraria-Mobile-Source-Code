.class public Lcom/flurry/org/codehaus/jackson/map/ext/DOMDeserializer$NodeDeserializer;
.super Lcom/flurry/org/codehaus/jackson/map/ext/DOMDeserializer;
.source "DOMDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/ext/DOMDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NodeDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/ext/DOMDeserializer",
        "<",
        "Lorg/w3c/dom/Node;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lorg/w3c/dom/Node;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/ext/DOMDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic _deserialize(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/ext/DOMDeserializer$NodeDeserializer;->_deserialize(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public _deserialize(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/ext/DOMDeserializer$NodeDeserializer;->parse(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method
