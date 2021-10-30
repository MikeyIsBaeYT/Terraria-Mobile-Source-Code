.class public interface abstract Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;
.super Ljava/lang/Object;
.source "TypeIdResolver.java"


# virtual methods
.method public abstract getMechanism()Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end method

.method public abstract idFromValue(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract init(Lcom/flurry/org/codehaus/jackson/type/JavaType;)V
.end method

.method public abstract typeFromId(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
.end method
