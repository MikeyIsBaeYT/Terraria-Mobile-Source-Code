.class public abstract Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;
.super Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;
.source "ContainerSerializerBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;, "Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase<TT;>;"
    .local p1, "t":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Ljava/lang/Class;)V

    .line 23
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Z)V
    .locals 0
    .param p2, "dummy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;, "Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase<TT;>;"
    .local p1, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Ljava/lang/Class;Z)V

    .line 33
    return-void
.end method


# virtual methods
.method public abstract _withValueTypeSerializer(Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase",
            "<*>;"
        }
    .end annotation
.end method

.method public withValueTypeSerializer(Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;
    .locals 0
    .param p1, "vts"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;, "Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase<TT;>;"
    if-nez p1, :cond_0

    .line 47
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;, "Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase<TT;>;"
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;, "Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase<TT;>;"
    :cond_0
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;->_withValueTypeSerializer(Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;

    move-result-object p0

    goto :goto_0
.end method
