.class public abstract Lcom/flurry/org/codehaus/jackson/map/ser/SerializerBase;
.super Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;
.source "SerializerBase.java"


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

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;)V
    .locals 0
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .prologue
    .line 17
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/ser/SerializerBase;, "Lcom/flurry/org/codehaus/jackson/map/ser/SerializerBase<TT;>;"
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;)V

    .line 18
    return-void
.end method

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
    .line 13
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/ser/SerializerBase;, "Lcom/flurry/org/codehaus/jackson/map/ser/SerializerBase<TT;>;"
    .local p1, "t":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Ljava/lang/Class;)V

    .line 14
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
    .line 21
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/ser/SerializerBase;, "Lcom/flurry/org/codehaus/jackson/map/ser/SerializerBase<TT;>;"
    .local p1, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Ljava/lang/Class;Z)V

    .line 22
    return-void
.end method
