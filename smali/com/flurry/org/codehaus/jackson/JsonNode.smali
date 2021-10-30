.class public abstract Lcom/flurry/org/codehaus/jackson/JsonNode;
.super Ljava/lang/Object;
.source "JsonNode.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/flurry/org/codehaus/jackson/JsonNode;",
        ">;"
    }
.end annotation


# static fields
.field protected static final NO_NODES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation
.end field

.field protected static final NO_STRINGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/flurry/org/codehaus/jackson/JsonNode;->NO_NODES:Ljava/util/List;

    .line 33
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/flurry/org/codehaus/jackson/JsonNode;->NO_STRINGS:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBoolean()Z
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->asBoolean(Z)Z

    move-result v0

    return v0
.end method

.method public asBoolean(Z)Z
    .locals 0
    .param p1, "defaultValue"    # Z

    .prologue
    .line 418
    return p1
.end method

.method public asDouble()D
    .locals 2

    .prologue
    .line 370
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/JsonNode;->asDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public asDouble(D)D
    .locals 1
    .param p1, "defaultValue"    # D

    .prologue
    .line 386
    return-wide p1
.end method

.method public asInt()I
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->asInt(I)I

    move-result v0

    return v0
.end method

.method public asInt(I)I
    .locals 0
    .param p1, "defaultValue"    # I

    .prologue
    .line 322
    return p1
.end method

.method public asLong()J
    .locals 2

    .prologue
    .line 338
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/JsonNode;->asLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public asLong(J)J
    .locals 1
    .param p1, "defaultValue"    # J

    .prologue
    .line 354
    return-wide p1
.end method

.method public abstract asText()Ljava/lang/String;
.end method

.method public abstract asToken()Lcom/flurry/org/codehaus/jackson/JsonToken;
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract findParent(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;
.end method

.method public final findParents(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 720
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/flurry/org/codehaus/jackson/JsonNode;->findParents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 721
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/codehaus/jackson/JsonNode;>;"
    if-nez v0, :cond_0

    .line 722
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 724
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/codehaus/jackson/JsonNode;>;"
    :cond_0
    return-object v0
.end method

.method public abstract findParents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/codehaus/jackson/JsonNode;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract findPath(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;
.end method

.method public abstract findValue(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;
.end method

.method public final findValues(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 656
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/flurry/org/codehaus/jackson/JsonNode;->findValues(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 657
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/codehaus/jackson/JsonNode;>;"
    if-nez v0, :cond_0

    .line 658
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 660
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/codehaus/jackson/JsonNode;>;"
    :cond_0
    return-object v0
.end method

.method public abstract findValues(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/codehaus/jackson/JsonNode;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation
.end method

.method public final findValuesAsText(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 671
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/flurry/org/codehaus/jackson/JsonNode;->findValuesAsText(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 672
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 673
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 675
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-object v0
.end method

.method public abstract findValuesAsText(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public get(I)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 263
    const/4 v0, 0x0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 275
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 245
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getBinaryValue()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBooleanValue()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 244
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2

    .prologue
    .line 243
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getElements()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/flurry/org/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 761
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonNode;->NO_NODES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getFieldNames()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 767
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonNode;->NO_STRINGS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getFields()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/codehaus/jackson/JsonNode;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 776
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 777
    .local v0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonNode;>;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method public getIntValue()I
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public getLongValue()J
    .locals 2

    .prologue
    .line 242
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract getNumberType()Lcom/flurry/org/codehaus/jackson/JsonParser$NumberType;
.end method

.method public getNumberValue()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPath(I)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 821
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonNode;->path(I)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public final getPath(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 803
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public getTextValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValueAsBoolean()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 557
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->asBoolean(Z)Z

    move-result v0

    return v0
.end method

.method public getValueAsBoolean(Z)Z
    .locals 1
    .param p1, "defaultValue"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 574
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonNode;->asBoolean(Z)Z

    move-result v0

    return v0
.end method

.method public getValueAsDouble()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 523
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/JsonNode;->asDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getValueAsDouble(D)D
    .locals 3
    .param p1, "defaultValue"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 540
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->asDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getValueAsInt()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 455
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->asInt(I)I

    move-result v0

    return v0
.end method

.method public getValueAsInt(I)I
    .locals 1
    .param p1, "defaultValue"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 472
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonNode;->asInt(I)I

    move-result v0

    return v0
.end method

.method public getValueAsLong()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 489
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/JsonNode;->asLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getValueAsLong(J)J
    .locals 3
    .param p1, "defaultValue"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 506
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->asLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getValueAsText()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public has(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 627
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonNode;->get(I)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 602
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isArray()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public isBigDecimal()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public isBigInteger()Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public isBinary()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public isBoolean()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public isContainerNode()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public isDouble()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public isFloatingPointNumber()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public isInt()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public isIntegralNumber()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public isLong()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public isMissingNode()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public isNull()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public isNumber()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public isObject()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public isPojo()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public isTextual()Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public isValueNode()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/flurry/org/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 753
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getElements()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract path(I)Lcom/flurry/org/codehaus/jackson/JsonNode;
.end method

.method public abstract path(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;
.end method

.method public size()I
    .locals 1

    .prologue
    .line 745
    const/4 v0, 0x0

    return v0
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract traverse()Lcom/flurry/org/codehaus/jackson/JsonParser;
.end method

.method public with(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 3
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 834
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JsonNode not of type ObjectNode (but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), can not call with() on it"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
