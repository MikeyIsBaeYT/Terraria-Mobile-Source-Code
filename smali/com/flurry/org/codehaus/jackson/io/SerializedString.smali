.class public Lcom/flurry/org/codehaus/jackson/io/SerializedString;
.super Ljava/lang/Object;
.source "SerializedString.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/SerializableString;


# instance fields
.field protected _quotedChars:[C

.field protected _quotedUTF8Ref:[B

.field protected _unquotedUTF8Ref:[B

.field protected final _value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/io/SerializedString;->_value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final asQuotedChars()[C
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/io/SerializedString;->_quotedChars:[C

    .line 57
    .local v0, "result":[C
    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/io/JsonStringEncoder;->getInstance()Lcom/flurry/org/codehaus/jackson/io/JsonStringEncoder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/flurry/org/codehaus/jackson/io/JsonStringEncoder;->quoteAsString(Ljava/lang/String;)[C

    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/io/SerializedString;->_quotedChars:[C

    .line 61
    :cond_0
    return-object v0
.end method

.method public final asQuotedUTF8()[B
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/io/SerializedString;->_quotedUTF8Ref:[B

    .line 87
    .local v0, "result":[B
    if-nez v0, :cond_0

    .line 88
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/io/JsonStringEncoder;->getInstance()Lcom/flurry/org/codehaus/jackson/io/JsonStringEncoder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/flurry/org/codehaus/jackson/io/JsonStringEncoder;->quoteAsUTF8(Ljava/lang/String;)[B

    move-result-object v0

    .line 89
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/io/SerializedString;->_quotedUTF8Ref:[B

    .line 91
    :cond_0
    return-object v0
.end method

.method public final asUnquotedUTF8()[B
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/io/SerializedString;->_unquotedUTF8Ref:[B

    .line 72
    .local v0, "result":[B
    if-nez v0, :cond_0

    .line 73
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/io/JsonStringEncoder;->getInstance()Lcom/flurry/org/codehaus/jackson/io/JsonStringEncoder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/flurry/org/codehaus/jackson/io/JsonStringEncoder;->encodeAsUTF8(Ljava/lang/String;)[B

    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/io/SerializedString;->_unquotedUTF8Ref:[B

    .line 76
    :cond_0
    return-object v0
.end method

.method public final charLength()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 109
    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    .line 112
    :goto_0
    return v1

    .line 110
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 111
    check-cast v0, Lcom/flurry/org/codehaus/jackson/io/SerializedString;

    .line 112
    .local v0, "other":Lcom/flurry/org/codehaus/jackson/io/SerializedString;
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/io/SerializedString;->_value:Ljava/lang/String;

    iget-object v2, v0, Lcom/flurry/org/codehaus/jackson/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/io/SerializedString;->_value:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/io/SerializedString;->_value:Ljava/lang/String;

    return-object v0
.end method
