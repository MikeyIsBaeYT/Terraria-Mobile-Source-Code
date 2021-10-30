.class public final Lcom/flurry/org/codehaus/jackson/util/CharTypes;
.super Ljava/lang/Object;
.source "CharTypes.java"


# static fields
.field private static final HEX_BYTES:[B

.field private static final HEX_CHARS:[C

.field static final sHexValues:[I

.field static final sInputCodes:[I

.field static final sInputCodesComment:[I

.field static final sInputCodesJsNames:[I

.field static final sInputCodesUtf8:[I

.field static final sInputCodesUtf8JsNames:[I

.field static final sOutputEscapes128:[I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/16 v11, 0xa

    const/4 v10, -0x1

    const/16 v9, 0x100

    const/16 v8, 0x80

    const/4 v7, 0x0

    .line 9
    const-string v5, "0123456789ABCDEF"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    sput-object v5, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->HEX_CHARS:[C

    .line 12
    sget-object v5, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->HEX_CHARS:[C

    array-length v3, v5

    .line 13
    .local v3, "len":I
    new-array v5, v3, [B

    sput-object v5, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->HEX_BYTES:[B

    .line 14
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 15
    sget-object v5, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->HEX_BYTES:[B

    sget-object v6, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->HEX_CHARS:[C

    aget-char v6, v6, v2

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 14
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 30
    :cond_0
    new-array v4, v9, [I

    .line 32
    .local v4, "table":[I
    const/4 v2, 0x0

    :goto_1
    const/16 v5, 0x20

    if-ge v2, v5, :cond_1

    .line 33
    aput v10, v4, v2

    .line 32
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 36
    :cond_1
    const/16 v5, 0x22

    const/4 v6, 0x1

    aput v6, v4, v5

    .line 37
    const/16 v5, 0x5c

    const/4 v6, 0x1

    aput v6, v4, v5

    .line 38
    sput-object v4, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->sInputCodes:[I

    .line 47
    sget-object v5, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->sInputCodes:[I

    array-length v5, v5

    new-array v4, v5, [I

    .line 48
    sget-object v5, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->sInputCodes:[I

    sget-object v6, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->sInputCodes:[I

    array-length v6, v6

    invoke-static {v5, v7, v4, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    const/16 v0, 0x80

    .local v0, "c":I
    :goto_2
    if-ge v0, v9, :cond_5

    .line 53
    and-int/lit16 v5, v0, 0xe0

    const/16 v6, 0xc0

    if-ne v5, v6, :cond_2

    .line 54
    const/4 v1, 0x2

    .line 64
    .local v1, "code":I
    :goto_3
    aput v1, v4, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 55
    .end local v1    # "code":I
    :cond_2
    and-int/lit16 v5, v0, 0xf0

    const/16 v6, 0xe0

    if-ne v5, v6, :cond_3

    .line 56
    const/4 v1, 0x3

    .restart local v1    # "code":I
    goto :goto_3

    .line 57
    .end local v1    # "code":I
    :cond_3
    and-int/lit16 v5, v0, 0xf8

    const/16 v6, 0xf0

    if-ne v5, v6, :cond_4

    .line 59
    const/4 v1, 0x4

    .restart local v1    # "code":I
    goto :goto_3

    .line 62
    .end local v1    # "code":I
    :cond_4
    const/4 v1, -0x1

    .restart local v1    # "code":I
    goto :goto_3

    .line 66
    .end local v1    # "code":I
    :cond_5
    sput-object v4, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->sInputCodesUtf8:[I

    .line 79
    new-array v4, v9, [I

    .line 81
    invoke-static {v4, v10}, Ljava/util/Arrays;->fill([II)V

    .line 83
    const/16 v2, 0x21

    :goto_4
    if-ge v2, v9, :cond_7

    .line 84
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 85
    aput v7, v4, v2

    .line 83
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 91
    :cond_7
    const/16 v5, 0x40

    aput v7, v4, v5

    .line 92
    const/16 v5, 0x23

    aput v7, v4, v5

    .line 93
    const/16 v5, 0x2a

    aput v7, v4, v5

    .line 94
    const/16 v5, 0x2d

    aput v7, v4, v5

    .line 95
    const/16 v5, 0x2b

    aput v7, v4, v5

    .line 96
    sput-object v4, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->sInputCodesJsNames:[I

    .line 106
    new-array v4, v9, [I

    .line 108
    sget-object v5, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->sInputCodesJsNames:[I

    sget-object v6, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->sInputCodesJsNames:[I

    array-length v6, v6

    invoke-static {v5, v7, v4, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    invoke-static {v4, v8, v8, v7}, Ljava/util/Arrays;->fill([IIII)V

    .line 110
    sput-object v4, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->sInputCodesUtf8JsNames:[I

    .line 117
    new-array v5, v9, [I

    sput-object v5, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->sInputCodesComment:[I

    .line 120
    sget-object v5, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->sInputCodesUtf8:[I

    sget-object v6, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->sInputCodesComment:[I

    invoke-static {v5, v8, v6, v8, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    sget-object v5, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->sInputCodesComment:[I

    const/16 v6, 0x20

    invoke-static {v5, v7, v6, v10}, Ljava/util/Arrays;->fill([IIII)V

    .line 124
    sget-object v5, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->sInputCodesComment:[I

    const/16 v6, 0x9

    aput v7, v5, v6

    .line 125
    sget-object v5, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->sInputCodesComment:[I

    aput v11, v5, v11

    .line 126
    sget-object v5, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->sInputCodesComment:[I

    const/16 v6, 0xd

    const/16 v7, 0xd

    aput v7, v5, v6

    .line 127
    sget-object v5, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->sInputCodesComment:[I

    const/16 v6, 0x2a

    const/16 v7, 0x2a

    aput v7, v5, v6

    .line 136
    new-array v4, v8, [I

    .line 138
    const/4 v2, 0x0

    :goto_5
    const/16 v5, 0x20

    if-ge v2, v5, :cond_8

    .line 140
    aput v10, v4, v2

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 145
    :cond_8
    const/16 v5, 0x22

    const/16 v6, 0x22

    aput v6, v4, v5

    .line 146
    const/16 v5, 0x5c

    const/16 v6, 0x5c

    aput v6, v4, v5

    .line 148
    const/16 v5, 0x8

    const/16 v6, 0x62

    aput v6, v4, v5

    .line 149
    const/16 v5, 0x9

    const/16 v6, 0x74

    aput v6, v4, v5

    .line 150
    const/16 v5, 0xc

    const/16 v6, 0x66

    aput v6, v4, v5

    .line 151
    const/16 v5, 0x6e

    aput v5, v4, v11

    .line 152
    const/16 v5, 0xd

    const/16 v6, 0x72

    aput v6, v4, v5

    .line 153
    sput-object v4, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->sOutputEscapes128:[I

    .line 161
    new-array v5, v8, [I

    sput-object v5, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->sHexValues:[I

    .line 163
    sget-object v5, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->sHexValues:[I

    invoke-static {v5, v10}, Ljava/util/Arrays;->fill([II)V

    .line 164
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v11, :cond_9

    .line 165
    sget-object v5, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->sHexValues:[I

    add-int/lit8 v6, v2, 0x30

    aput v2, v5, v6

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 167
    :cond_9
    const/4 v2, 0x0

    :goto_7
    const/4 v5, 0x6

    if-ge v2, v5, :cond_a

    .line 168
    sget-object v5, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->sHexValues:[I

    add-int/lit8 v6, v2, 0x61

    add-int/lit8 v7, v2, 0xa

    aput v7, v5, v6

    .line 169
    sget-object v5, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->sHexValues:[I

    add-int/lit8 v6, v2, 0x41

    add-int/lit8 v7, v2, 0xa

    aput v7, v5, v6

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 171
    :cond_a
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 10
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x30

    .line 197
    sget-object v2, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->sOutputEscapes128:[I

    .line 198
    .local v2, "escCodes":[I
    array-length v3, v2

    .line 199
    .local v3, "escLen":I
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, "len":I
    :goto_0
    if-ge v4, v5, :cond_3

    .line 200
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 201
    .local v0, "c":C
    if-ge v0, v3, :cond_0

    aget v7, v2, v0

    if-nez v7, :cond_1

    .line 202
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 205
    :cond_1
    const/16 v7, 0x5c

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    aget v1, v2, v0

    .line 207
    .local v1, "escCode":I
    if-gez v1, :cond_2

    .line 209
    const/16 v7, 0x75

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    add-int/lit8 v7, v1, 0x1

    neg-int v6, v7

    .line 213
    .local v6, "value":I
    sget-object v7, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->HEX_CHARS:[C

    shr-int/lit8 v8, v6, 0x4

    aget-char v7, v7, v8

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    sget-object v7, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->HEX_CHARS:[C

    and-int/lit8 v8, v6, 0xf

    aget-char v7, v7, v8

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 216
    .end local v6    # "value":I
    :cond_2
    int-to-char v7, v1

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 219
    .end local v0    # "c":C
    .end local v1    # "escCode":I
    :cond_3
    return-void
.end method

.method public static charToHex(I)I
    .locals 1
    .param p0, "ch"    # I

    .prologue
    .line 192
    const/16 v0, 0x7f

    if-le p0, v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->sHexValues:[I

    aget v0, v0, p0

    goto :goto_0
.end method

.method public static copyHexBytes()[B
    .locals 1

    .prologue
    .line 234
    sget-object v0, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->HEX_BYTES:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public static copyHexChars()[C
    .locals 1

    .prologue
    .line 226
    sget-object v0, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->HEX_CHARS:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    return-object v0
.end method

.method public static final get7BitOutputEscapes()[I
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->sOutputEscapes128:[I

    return-object v0
.end method

.method public static final getInputCodeComment()[I
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->sInputCodesComment:[I

    return-object v0
.end method

.method public static final getInputCodeLatin1()[I
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->sInputCodes:[I

    return-object v0
.end method

.method public static final getInputCodeLatin1JsNames()[I
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->sInputCodesJsNames:[I

    return-object v0
.end method

.method public static final getInputCodeUtf8()[I
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->sInputCodesUtf8:[I

    return-object v0
.end method

.method public static final getInputCodeUtf8JsNames()[I
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->sInputCodesUtf8JsNames:[I

    return-object v0
.end method
