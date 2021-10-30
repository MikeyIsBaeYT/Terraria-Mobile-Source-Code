.class public Lcom/flurry/org/codehaus/jackson/map/exc/UnrecognizedPropertyException;
.super Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
.source "UnrecognizedPropertyException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _referringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final _unrecognizedPropertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonLocation;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "loc"    # Lcom/flurry/org/codehaus/jackson/JsonLocation;
    .param p4, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/flurry/org/codehaus/jackson/JsonLocation;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    .local p3, "referringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonLocation;)V

    .line 37
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/exc/UnrecognizedPropertyException;->_referringClass:Ljava/lang/Class;

    .line 38
    iput-object p4, p0, Lcom/flurry/org/codehaus/jackson/map/exc/UnrecognizedPropertyException;->_unrecognizedPropertyName:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static from(Lcom/flurry/org/codehaus/jackson/JsonParser;Ljava/lang/Object;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/exc/UnrecognizedPropertyException;
    .locals 5
    .param p0, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p1, "fromObjectOrClass"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 43
    if-nez p1, :cond_0

    .line 44
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 47
    :cond_0
    instance-of v3, p1, Ljava/lang/Class;

    if-eqz v3, :cond_1

    move-object v2, p1

    .line 48
    check-cast v2, Ljava/lang/Class;

    .line 52
    .local v2, "ref":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized field \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" (Class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), not marked as ignorable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "msg":Ljava/lang/String;
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/exc/UnrecognizedPropertyException;

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentLocation()Lcom/flurry/org/codehaus/jackson/JsonLocation;

    move-result-object v3

    invoke-direct {v0, v1, v3, v2, p2}, Lcom/flurry/org/codehaus/jackson/map/exc/UnrecognizedPropertyException;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonLocation;Ljava/lang/Class;Ljava/lang/String;)V

    .line 55
    .local v0, "e":Lcom/flurry/org/codehaus/jackson/map/exc/UnrecognizedPropertyException;
    invoke-virtual {v0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/exc/UnrecognizedPropertyException;->prependPath(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    return-object v0

    .line 50
    .end local v0    # "e":Lcom/flurry/org/codehaus/jackson/map/exc/UnrecognizedPropertyException;
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "ref":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .restart local v2    # "ref":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0
.end method


# virtual methods
.method public getReferringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/exc/UnrecognizedPropertyException;->_referringClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getUnrecognizedPropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/exc/UnrecognizedPropertyException;->_unrecognizedPropertyName:Ljava/lang/String;

    return-object v0
.end method
