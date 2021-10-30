.class public Lcom/flurry/org/apache/avro/generic/GenericData$Array;
.super Ljava/util/AbstractList;
.source "GenericData.java"

# interfaces
.implements Lcom/flurry/org/apache/avro/generic/GenericArray;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/generic/GenericData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Array"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TT;>;",
        "Lcom/flurry/org/apache/avro/generic/GenericArray",
        "<TT;>;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/flurry/org/apache/avro/generic/GenericArray",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static final EMPTY:[Ljava/lang/Object;


# instance fields
.field private elements:[Ljava/lang/Object;

.field private final schema:Lcom/flurry/org/apache/avro/Schema;

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->EMPTY:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILcom/flurry/org/apache/avro/Schema;)V
    .locals 3
    .param p1, "capacity"    # I
    .param p2, "schema"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 129
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericData$Array;, "Lcom/flurry/org/apache/avro/generic/GenericData$Array<TT;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 128
    sget-object v0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->EMPTY:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    .line 130
    if-eqz p2, :cond_0

    sget-object v0, Lcom/flurry/org/apache/avro/Schema$Type;->ARRAY:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-virtual {p2}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/Schema$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    :cond_0
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an array schema: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1
    iput-object p2, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->schema:Lcom/flurry/org/apache/avro/Schema;

    .line 133
    if-eqz p1, :cond_2

    .line 134
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    .line 135
    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/apache/avro/Schema;Ljava/util/Collection;)V
    .locals 3
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/apache/avro/Schema;",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericData$Array;, "Lcom/flurry/org/apache/avro/generic/GenericData$Array<TT;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 128
    sget-object v0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->EMPTY:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    .line 137
    if-eqz p1, :cond_0

    sget-object v0, Lcom/flurry/org/apache/avro/Schema$Type;->ARRAY:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/Schema$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    :cond_0
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an array schema: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_1
    iput-object p1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->schema:Lcom/flurry/org/apache/avro/Schema;

    .line 140
    if-eqz p2, :cond_2

    .line 141
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    .line 142
    invoke-virtual {p0, p2}, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->addAll(Ljava/util/Collection;)Z

    .line 144
    :cond_2
    return-void
.end method

.method static synthetic access$100(Lcom/flurry/org/apache/avro/generic/GenericData$Array;)I
    .locals 1
    .param p0, "x0"    # Lcom/flurry/org/apache/avro/generic/GenericData$Array;

    .prologue
    .line 123
    iget v0, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->size:I

    return v0
.end method

.method static synthetic access$200(Lcom/flurry/org/apache/avro/generic/GenericData$Array;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/flurry/org/apache/avro/generic/GenericData$Array;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 5
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericData$Array;, "Lcom/flurry/org/apache/avro/generic/GenericData$Array<TT;>;"
    .local p2, "o":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    .line 171
    iget v1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->size:I

    if-gt p1, v1, :cond_0

    if-gez p1, :cond_1

    .line 172
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of bounds."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :cond_1
    iget v1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->size:I

    iget-object v2, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v1, v2, :cond_2

    .line 175
    iget v1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->size:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    .line 176
    .local v0, "newElements":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    iput-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    .line 179
    .end local v0    # "newElements":[Ljava/lang/Object;
    :cond_2
    iget-object v1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    iget-object v1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 181
    iget v1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->size:I

    .line 182
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericData$Array;, "Lcom/flurry/org/apache/avro/generic/GenericData$Array<TT;>;"
    .local p1, "o":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    .line 162
    iget v1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->size:I

    iget-object v2, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 163
    iget v1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->size:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    .line 164
    .local v0, "newElements":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    iput-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    .line 167
    .end local v0    # "newElements":[Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->size:I

    aput-object p1, v1, v2

    .line 168
    const/4 v1, 0x1

    return v1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 147
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericData$Array;, "Lcom/flurry/org/apache/avro/generic/GenericData$Array<TT;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->size:I

    return-void
.end method

.method public compareTo(Lcom/flurry/org/apache/avro/generic/GenericArray;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/apache/avro/generic/GenericArray",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericData$Array;, "Lcom/flurry/org/apache/avro/generic/GenericData$Array<TT;>;"
    .local p1, "that":Lcom/flurry/org/apache/avro/generic/GenericArray;, "Lcom/flurry/org/apache/avro/generic/GenericArray<TT;>;"
    invoke-static {}, Lcom/flurry/org/apache/avro/generic/GenericData;->get()Lcom/flurry/org/apache/avro/generic/GenericData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->getSchema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/flurry/org/apache/avro/generic/GenericData;->compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 122
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericData$Array;, "Lcom/flurry/org/apache/avro/generic/GenericData$Array<TT;>;"
    check-cast p1, Lcom/flurry/org/apache/avro/generic/GenericArray;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->compareTo(Lcom/flurry/org/apache/avro/generic/GenericArray;)I

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericData$Array;, "Lcom/flurry/org/apache/avro/generic/GenericData$Array<TT;>;"
    iget v0, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->size:I

    if-lt p1, v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of bounds."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSchema()Lcom/flurry/org/apache/avro/Schema;
    .locals 1

    .prologue
    .line 145
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericData$Array;, "Lcom/flurry/org/apache/avro/generic/GenericData$Array<TT;>;"
    iget-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->schema:Lcom/flurry/org/apache/avro/Schema;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericData$Array;, "Lcom/flurry/org/apache/avro/generic/GenericData$Array<TT;>;"
    new-instance v0, Lcom/flurry/org/apache/avro/generic/GenericData$Array$1;

    invoke-direct {v0, p0}, Lcom/flurry/org/apache/avro/generic/GenericData$Array$1;-><init>(Lcom/flurry/org/apache/avro/generic/GenericData$Array;)V

    return-object v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericData$Array;, "Lcom/flurry/org/apache/avro/generic/GenericData$Array<TT;>;"
    iget v0, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->size:I

    iget-object v1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->size:I

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 5
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericData$Array;, "Lcom/flurry/org/apache/avro/generic/GenericData$Array<TT;>;"
    iget v1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->size:I

    if-lt p1, v1, :cond_0

    .line 192
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of bounds."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    aget-object v0, v1, p1

    .line 194
    .local v0, "result":Ljava/lang/Object;, "TT;"
    iget v1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->size:I

    .line 195
    iget-object v1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    iget v4, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    iget-object v1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->size:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 197
    return-object v0
.end method

.method public reverse()V
    .locals 5

    .prologue
    .line 206
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericData$Array;, "Lcom/flurry/org/apache/avro/generic/GenericData$Array<TT;>;"
    const/4 v0, 0x0

    .line 207
    .local v0, "left":I
    iget-object v3, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .line 209
    .local v1, "right":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 210
    iget-object v3, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    aget-object v2, v3, v0

    .line 211
    .local v2, "tmp":Ljava/lang/Object;
    iget-object v3, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    aget-object v4, v4, v1

    aput-object v4, v3, v0

    .line 212
    iget-object v3, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 214
    add-int/lit8 v0, v0, 0x1

    .line 215
    add-int/lit8 v1, v1, -0x1

    .line 216
    goto :goto_0

    .line 217
    .end local v2    # "tmp":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericData$Array;, "Lcom/flurry/org/apache/avro/generic/GenericData$Array<TT;>;"
    .local p2, "o":Ljava/lang/Object;, "TT;"
    iget v1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->size:I

    if-lt p1, v1, :cond_0

    .line 185
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of bounds."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    aget-object v0, v1, p1

    .line 187
    .local v0, "response":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 188
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 146
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericData$Array;, "Lcom/flurry/org/apache/avro/generic/GenericData$Array<TT;>;"
    iget v0, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 220
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericData$Array;, "Lcom/flurry/org/apache/avro/generic/GenericData$Array<TT;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 221
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    const/4 v1, 0x0

    .line 223
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 224
    .local v2, "e":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_1

    const-string v4, "null"

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 226
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 224
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 228
    .end local v2    # "e":Ljava/lang/Object;, "TT;"
    :cond_2
    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
