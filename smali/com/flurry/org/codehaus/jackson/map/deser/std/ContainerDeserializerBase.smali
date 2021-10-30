.class public abstract Lcom/flurry/org/codehaus/jackson/map/deser/std/ContainerDeserializerBase;
.super Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;
.source "ContainerDeserializerBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer",
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
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/deser/std/ContainerDeserializerBase;, "Lcom/flurry/org/codehaus/jackson/map/deser/std/ContainerDeserializerBase<TT;>;"
    .local p1, "selfType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 19
    return-void
.end method


# virtual methods
.method public abstract getContentDeserializer()Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContentType()Lcom/flurry/org/codehaus/jackson/type/JavaType;
.end method
