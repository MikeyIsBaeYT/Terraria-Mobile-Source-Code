.class public Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$Builder;
.super Ljava/lang/Object;
.source "ExternalTypeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final _nameToPropertyIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final _properties:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$Builder;->_properties:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$Builder;->_nameToPropertyIndex:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addExternal(Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;Ljava/lang/String;)V
    .locals 3
    .param p1, "property"    # Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .param p2, "extPropName"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$Builder;->_properties:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 141
    .local v0, "index":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$Builder;->_properties:Ljava/util/ArrayList;

    new-instance v2, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    invoke-direct {v2, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;-><init>(Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$Builder;->_nameToPropertyIndex:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$Builder;->_nameToPropertyIndex:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-void
.end method

.method public build()Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 147
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$Builder;->_properties:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$Builder;->_properties:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$Builder;->_nameToPropertyIndex:Ljava/util/HashMap;

    invoke-direct {v1, v0, v2, v3, v3}, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;-><init>([Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;Ljava/util/HashMap;[Ljava/lang/String;[Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;)V

    return-object v1
.end method
