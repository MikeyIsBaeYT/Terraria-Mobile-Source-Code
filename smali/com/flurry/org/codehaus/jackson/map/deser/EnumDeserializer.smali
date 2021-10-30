.class public Lcom/flurry/org/codehaus/jackson/map/deser/EnumDeserializer;
.super Lcom/flurry/org/codehaus/jackson/map/deser/std/EnumDeserializer;
.source "EnumDeserializer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p1, "res":Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;, "Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver<*>;"
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/EnumDeserializer;-><init>(Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;)V

    .line 14
    return-void
.end method
