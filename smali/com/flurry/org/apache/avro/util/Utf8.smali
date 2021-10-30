.class public Lcom/flurry/org/apache/avro/util/Utf8;
.super Ljava/lang/Object;
.source "Utf8.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/flurry/org/apache/avro/util/Utf8;",
        ">;",
        "Ljava/lang/CharSequence;"
    }
.end annotation


# static fields
.field private static final EMPTY:[B


# instance fields
.field private bytes:[B

.field private length:I

.field private string:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/flurry/org/apache/avro/util/Utf8;->EMPTY:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcom/flurry/org/apache/avro/util/Utf8;->EMPTY:[B

    iput-object v0, p0, Lcom/flurry/org/apache/avro/util/Utf8;->bytes:[B

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/apache/avro/util/Utf8;)V
    .locals 4
    .param p1, "other"    # Lcom/flurry/org/apache/avro/util/Utf8;

    .prologue
    const/4 v3, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcom/flurry/org/apache/avro/util/Utf8;->EMPTY:[B

    iput-object v0, p0, Lcom/flurry/org/apache/avro/util/Utf8;->bytes:[B

    .line 45
    iget v0, p1, Lcom/flurry/org/apache/avro/util/Utf8;->length:I

    iput v0, p0, Lcom/flurry/org/apache/avro/util/Utf8;->length:I

    .line 46
    iget v0, p1, Lcom/flurry/org/apache/avro/util/Utf8;->length:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/flurry/org/apache/avro/util/Utf8;->bytes:[B

    .line 47
    iget-object v0, p1, Lcom/flurry/org/apache/avro/util/Utf8;->bytes:[B

    iget-object v1, p0, Lcom/flurry/org/apache/avro/util/Utf8;->bytes:[B

    iget v2, p0, Lcom/flurry/org/apache/avro/util/Utf8;->length:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    iget-object v0, p1, Lcom/flurry/org/apache/avro/util/Utf8;->string:Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/org/apache/avro/util/Utf8;->string:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcom/flurry/org/apache/avro/util/Utf8;->EMPTY:[B

    iput-object v0, p0, Lcom/flurry/org/apache/avro/util/Utf8;->bytes:[B

    .line 39
    invoke-static {p1}, Lcom/flurry/org/apache/avro/util/Utf8;->getBytesFor(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/apache/avro/util/Utf8;->bytes:[B

    .line 40
    iget-object v0, p0, Lcom/flurry/org/apache/avro/util/Utf8;->bytes:[B

    array-length v0, v0

    iput v0, p0, Lcom/flurry/org/apache/avro/util/Utf8;->length:I

    .line 41
    iput-object p1, p0, Lcom/flurry/org/apache/avro/util/Utf8;->string:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcom/flurry/org/apache/avro/util/Utf8;->EMPTY:[B

    iput-object v0, p0, Lcom/flurry/org/apache/avro/util/Utf8;->bytes:[B

    .line 52
    iput-object p1, p0, Lcom/flurry/org/apache/avro/util/Utf8;->bytes:[B

    .line 53
    array-length v0, p1

    iput v0, p0, Lcom/flurry/org/apache/avro/util/Utf8;->length:I

    .line 54
    return-void
.end method

.method public static final getBytesFor(Ljava/lang/String;)[B
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 141
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 146
    :goto_0
    return-object v1

    .line 142
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 146
    const/4 v1, 0x0

    new-array v1, v1, [B

    goto :goto_0
.end method


# virtual methods
.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/util/Utf8;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public compareTo(Lcom/flurry/org/apache/avro/util/Utf8;)I
    .locals 6
    .param p1, "that"    # Lcom/flurry/org/apache/avro/util/Utf8;

    .prologue
    const/4 v1, 0x0

    .line 126
    iget-object v0, p0, Lcom/flurry/org/apache/avro/util/Utf8;->bytes:[B

    iget v2, p0, Lcom/flurry/org/apache/avro/util/Utf8;->length:I

    iget-object v3, p1, Lcom/flurry/org/apache/avro/util/Utf8;->bytes:[B

    iget v5, p1, Lcom/flurry/org/apache/avro/util/Utf8;->length:I

    move v4, v1

    invoke-static/range {v0 .. v5}, Lcom/flurry/org/apache/avro/io/BinaryData;->compareBytes([BII[BII)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, Lcom/flurry/org/apache/avro/util/Utf8;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/avro/util/Utf8;->compareTo(Lcom/flurry/org/apache/avro/util/Utf8;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 105
    if-ne p1, p0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v3

    .line 106
    :cond_1
    instance-of v5, p1, Lcom/flurry/org/apache/avro/util/Utf8;

    if-nez v5, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 107
    check-cast v1, Lcom/flurry/org/apache/avro/util/Utf8;

    .line 108
    .local v1, "that":Lcom/flurry/org/apache/avro/util/Utf8;
    iget v5, p0, Lcom/flurry/org/apache/avro/util/Utf8;->length:I

    iget v6, v1, Lcom/flurry/org/apache/avro/util/Utf8;->length:I

    if-eq v5, v6, :cond_3

    move v3, v4

    goto :goto_0

    .line 109
    :cond_3
    iget-object v2, v1, Lcom/flurry/org/apache/avro/util/Utf8;->bytes:[B

    .line 110
    .local v2, "thatBytes":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v5, p0, Lcom/flurry/org/apache/avro/util/Utf8;->length:I

    if-ge v0, v5, :cond_0

    .line 111
    iget-object v5, p0, Lcom/flurry/org/apache/avro/util/Utf8;->bytes:[B

    aget-byte v5, v5, v0

    aget-byte v6, v2, v0

    if-eq v5, v6, :cond_4

    move v3, v4

    .line 112
    goto :goto_0

    .line 110
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getByteLength()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/flurry/org/apache/avro/util/Utf8;->length:I

    return v0
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/flurry/org/apache/avro/util/Utf8;->bytes:[B

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/flurry/org/apache/avro/util/Utf8;->length:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/flurry/org/apache/avro/util/Utf8;->length:I

    if-ge v1, v2, :cond_0

    .line 120
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/flurry/org/apache/avro/util/Utf8;->bytes:[B

    aget-byte v3, v3, v1

    add-int v0, v2, v3

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_0
    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/util/Utf8;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public setByteLength(I)Lcom/flurry/org/apache/avro/util/Utf8;
    .locals 4
    .param p1, "newLength"    # I

    .prologue
    const/4 v3, 0x0

    .line 77
    iget v1, p0, Lcom/flurry/org/apache/avro/util/Utf8;->length:I

    if-ge v1, p1, :cond_0

    .line 78
    new-array v0, p1, [B

    .line 79
    .local v0, "newBytes":[B
    iget-object v1, p0, Lcom/flurry/org/apache/avro/util/Utf8;->bytes:[B

    iget v2, p0, Lcom/flurry/org/apache/avro/util/Utf8;->length:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    iput-object v0, p0, Lcom/flurry/org/apache/avro/util/Utf8;->bytes:[B

    .line 82
    .end local v0    # "newBytes":[B
    :cond_0
    iput p1, p0, Lcom/flurry/org/apache/avro/util/Utf8;->length:I

    .line 83
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flurry/org/apache/avro/util/Utf8;->string:Ljava/lang/String;

    .line 84
    return-object p0
.end method

.method public setLength(I)Lcom/flurry/org/apache/avro/util/Utf8;
    .locals 1
    .param p1, "newLength"    # I

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/avro/util/Utf8;->setByteLength(I)Lcom/flurry/org/apache/avro/util/Utf8;

    move-result-object v0

    return-object v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/util/Utf8;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 92
    iget-object v1, p0, Lcom/flurry/org/apache/avro/util/Utf8;->string:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 94
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/org/apache/avro/util/Utf8;->bytes:[B

    const/4 v3, 0x0

    iget v4, p0, Lcom/flurry/org/apache/avro/util/Utf8;->length:I

    const-string v5, "UTF-8"

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v1, p0, Lcom/flurry/org/apache/avro/util/Utf8;->string:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/flurry/org/apache/avro/util/Utf8;->string:Ljava/lang/String;

    return-object v1

    .line 95
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
