.class public abstract Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;
.super Ljava/lang/Object;
.source "DeserializerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Config"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract abstractTypeResolvers()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;",
            ">;"
        }
    .end annotation
.end method

.method public abstract deserializerModifiers()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;",
            ">;"
        }
    .end annotation
.end method

.method public abstract deserializers()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/Deserializers;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasAbstractTypeResolvers()Z
.end method

.method public abstract hasDeserializerModifiers()Z
.end method

.method public abstract hasDeserializers()Z
.end method

.method public abstract hasKeyDeserializers()Z
.end method

.method public abstract hasValueInstantiators()Z
.end method

.method public abstract keyDeserializers()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;",
            ">;"
        }
    .end annotation
.end method

.method public abstract valueInstantiators()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;",
            ">;"
        }
    .end annotation
.end method

.method public abstract withAbstractTypeResolver(Lcom/flurry/org/codehaus/jackson/map/AbstractTypeResolver;)Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;
.end method

.method public abstract withAdditionalDeserializers(Lcom/flurry/org/codehaus/jackson/map/Deserializers;)Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;
.end method

.method public abstract withAdditionalKeyDeserializers(Lcom/flurry/org/codehaus/jackson/map/KeyDeserializers;)Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;
.end method

.method public abstract withDeserializerModifier(Lcom/flurry/org/codehaus/jackson/map/deser/BeanDeserializerModifier;)Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;
.end method

.method public abstract withValueInstantiators(Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;)Lcom/flurry/org/codehaus/jackson/map/DeserializerFactory$Config;
.end method
