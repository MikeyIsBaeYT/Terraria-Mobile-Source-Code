.class public abstract Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;
.super Ljava/lang/Object;
.source "TypeIdResolverBase.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/map/jsontype/TypeIdResolver;


# instance fields
.field protected final _baseType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

.field protected final _typeFactory:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;


# direct methods
.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;)V
    .locals 0
    .param p1, "baseType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p2, "typeFactory"    # Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;->_baseType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 20
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;->_typeFactory:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    .line 21
    return-void
.end method


# virtual methods
.method public idFromBaseType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;->_baseType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;->idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/flurry/org/codehaus/jackson/type/JavaType;)V
    .locals 0
    .param p1, "bt"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .prologue
    .line 28
    return-void
.end method
