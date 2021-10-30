.class final Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;
.super Ljava/lang/Object;
.source "ExternalTypeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExtTypedProperty"
.end annotation


# instance fields
.field private final _property:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

.field private final _typePropertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;Ljava/lang/String;)V
    .locals 0
    .param p1, "property"    # Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .param p2, "typePropertyName"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;->_property:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 160
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;->_typePropertyName:Ljava/lang/String;

    .line 161
    return-void
.end method


# virtual methods
.method public getProperty()Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;->_property:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    return-object v0
.end method

.method public getTypePropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;->_typePropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public hasTypePropertyName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "n"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;->_typePropertyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
