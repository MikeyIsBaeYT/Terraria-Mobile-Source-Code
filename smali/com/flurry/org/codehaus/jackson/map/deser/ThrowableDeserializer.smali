.class public Lcom/flurry/org/codehaus/jackson/map/deser/ThrowableDeserializer;
.super Lcom/flurry/org/codehaus/jackson/map/deser/std/ThrowableDeserializer;
.source "ThrowableDeserializer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializer;)V
    .locals 0
    .param p1, "baseDeserializer"    # Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializer;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/ThrowableDeserializer;-><init>(Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializer;)V

    .line 12
    return-void
.end method
