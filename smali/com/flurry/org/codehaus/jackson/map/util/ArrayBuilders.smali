.class public final Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;
.super Ljava/lang/Object;
.source "ArrayBuilders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$ArrayIterator;,
        Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;,
        Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;,
        Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;,
        Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;,
        Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;,
        Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;,
        Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;
    }
.end annotation


# instance fields
.field _booleanBuilder:Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;

.field _byteBuilder:Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;

.field _doubleBuilder:Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;

.field _floatBuilder:Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;

.field _intBuilder:Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;

.field _longBuilder:Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;

.field _shortBuilder:Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->_booleanBuilder:Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;

    .line 19
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->_byteBuilder:Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;

    .line 20
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->_shortBuilder:Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;

    .line 21
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->_intBuilder:Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;

    .line 22
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->_longBuilder:Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;

    .line 24
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->_floatBuilder:Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;

    .line 25
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->_doubleBuilder:Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;

    .line 27
    return-void
.end method

.method public static addToList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 171
    new-instance p0, Ljava/util/ArrayList;

    .end local p0    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .restart local p0    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    return-object p0
.end method

.method public static arrayAsIterable([Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$ArrayIterator;

    invoke-direct {v0, p0}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$ArrayIterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static arrayAsIterator([Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$ArrayIterator;

    invoke-direct {v0, p0}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$ArrayIterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static arrayToSet([Ljava/lang/Object;)Ljava/util/HashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/HashSet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "elements":[Ljava/lang/Object;, "[TT;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 148
    .local v4, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<TT;>;"
    if-eqz p0, :cond_0

    .line 149
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 150
    .local v1, "elem":Ljava/lang/Object;, "TT;"
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 149
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "elem":Ljava/lang/Object;, "TT;"
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    return-object v4
.end method

.method public static insertInList([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x0

    .line 184
    array-length v0, p0

    .line 186
    .local v0, "len":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 187
    .local v1, "result":[Ljava/lang/Object;, "[TT;"
    if-lez v0, :cond_0

    .line 188
    const/4 v2, 0x1

    invoke-static {p0, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    :cond_0
    aput-object p1, v1, v4

    .line 191
    return-object v1
.end method

.method public static insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 205
    array-length v1, p0

    .line 208
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "ix":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 209
    aget-object v3, p0, v0

    if-ne v3, p1, :cond_1

    .line 211
    if-nez v0, :cond_0

    move-object v2, p0

    .line 228
    :goto_1
    return-object v2

    .line 215
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    .line 216
    .local v2, "result":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, v5, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    aput-object p1, p0, v5

    goto :goto_1

    .line 208
    .end local v2    # "result":[Ljava/lang/Object;, "[TT;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    .line 224
    .restart local v2    # "result":[Ljava/lang/Object;, "[TT;"
    if-lez v1, :cond_3

    .line 225
    invoke-static {p0, v5, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    :cond_3
    aput-object p1, v2, v5

    goto :goto_1
.end method


# virtual methods
.method public getBooleanBuilder()Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->_booleanBuilder:Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->_booleanBuilder:Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->_booleanBuilder:Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;

    return-object v0
.end method

.method public getByteBuilder()Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->_byteBuilder:Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->_byteBuilder:Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->_byteBuilder:Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;

    return-object v0
.end method

.method public getDoubleBuilder()Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->_doubleBuilder:Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->_doubleBuilder:Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->_doubleBuilder:Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;

    return-object v0
.end method

.method public getFloatBuilder()Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->_floatBuilder:Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->_floatBuilder:Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->_floatBuilder:Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;

    return-object v0
.end method

.method public getIntBuilder()Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->_intBuilder:Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->_intBuilder:Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->_intBuilder:Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;

    return-object v0
.end method

.method public getLongBuilder()Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->_longBuilder:Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->_longBuilder:Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->_longBuilder:Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;

    return-object v0
.end method

.method public getShortBuilder()Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->_shortBuilder:Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->_shortBuilder:Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->_shortBuilder:Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;

    return-object v0
.end method
