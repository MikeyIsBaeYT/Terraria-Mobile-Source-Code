.class public abstract Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializer;
.super Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;
.source "StdDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializer$StringDeserializer;,
        Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializer$CalendarDeserializer;,
        Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializer$ClassDeserializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer",
        "<TT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;)V
    .locals 0
    .param p1, "valueType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .prologue
    .line 27
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializer<TT;>;"
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;)V

    .line 28
    return-void
.end method

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
    .line 23
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializer<TT;>;"
    .local p1, "vc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 24
    return-void
.end method
