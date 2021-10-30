.class public Lcom/codeglue/terraria/codec/language/Metaphone;
.super Ljava/lang/Object;
.source "Metaphone.java"

# interfaces
.implements Lcom/codeglue/terraria/codec/StringEncoder;


# static fields
.field private static final FRONTV:Ljava/lang/String; = "EIY"

.field private static final VARSON:Ljava/lang/String; = "CSPTG"

.field private static final VOWELS:Ljava/lang/String; = "AEIOU"


# instance fields
.field private maxCodeLen:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x4

    iput v0, p0, Lcom/codeglue/terraria/codec/language/Metaphone;->maxCodeLen:I

    .line 80
    return-void
.end method

.method private isLastChar(II)Z
    .locals 1
    .param p1, "wdsz"    # I
    .param p2, "n"    # I

    .prologue
    .line 371
    add-int/lit8 v0, p2, 0x1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNextChar(Ljava/lang/StringBuilder;IC)Z
    .locals 2
    .param p1, "string"    # Ljava/lang/StringBuilder;
    .param p2, "index"    # I
    .param p3, "c"    # C

    .prologue
    .line 352
    const/4 v0, 0x0

    .line 353
    .local v0, "matches":Z
    if-ltz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p2, v1, :cond_0

    .line 355
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_1

    const/4 v0, 0x1

    .line 357
    :cond_0
    :goto_0
    return v0

    .line 355
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPreviousChar(Ljava/lang/StringBuilder;IC)Z
    .locals 2
    .param p1, "string"    # Ljava/lang/StringBuilder;
    .param p2, "index"    # I
    .param p3, "c"    # C

    .prologue
    .line 343
    const/4 v0, 0x0

    .line 344
    .local v0, "matches":Z
    if-lez p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 346
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_1

    const/4 v0, 0x1

    .line 348
    :cond_0
    :goto_0
    return v0

    .line 346
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVowel(Ljava/lang/StringBuilder;I)Z
    .locals 2
    .param p1, "string"    # Ljava/lang/StringBuilder;
    .param p2, "index"    # I

    .prologue
    .line 339
    const-string v0, "AEIOU"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z
    .locals 4
    .param p1, "string"    # Ljava/lang/StringBuilder;
    .param p2, "index"    # I
    .param p3, "test"    # Ljava/lang/String;

    .prologue
    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, "matches":Z
    if-ltz p2, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, p2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 364
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p1, p2, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, "substring":Ljava/lang/String;
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 367
    .end local v1    # "substring":Ljava/lang/String;
    :cond_0
    return v0
.end method


# virtual methods
.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codeglue/terraria/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 389
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Lcom/codeglue/terraria/codec/EncoderException;

    const-string v1, "Parameter supplied to Metaphone encode is not of type java.lang.String"

    invoke-direct {v0, v1}, Lcom/codeglue/terraria/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_0
    check-cast p1, Ljava/lang/String;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/codeglue/terraria/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 403
    invoke-virtual {p0, p1}, Lcom/codeglue/terraria/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCodeLen()I
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lcom/codeglue/terraria/codec/language/Metaphone;->maxCodeLen:I

    return v0
.end method

.method public isMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "str1"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;

    .prologue
    .line 415
    invoke-virtual {p0, p1}, Lcom/codeglue/terraria/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/codeglue/terraria/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public metaphone(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 95
    .local v1, "hard":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .local v6, "txtLength":I
    if-nez v6, :cond_1

    .line 96
    .end local v6    # "txtLength":I
    :cond_0
    const-string v8, ""

    .line 335
    :goto_0
    return-object v8

    .line 99
    .restart local v6    # "txtLength":I
    :cond_1
    const/4 v8, 0x1

    if-ne v6, v8, :cond_2

    .line 100
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 103
    :cond_2
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 105
    .local v2, "inwd":[C
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v8, 0x28

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 106
    .local v3, "local":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v8, 0xa

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 108
    .local v0, "code":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    aget-char v8, v2, v8

    sparse-switch v8, :sswitch_data_0

    .line 142
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 145
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    .line 146
    .local v7, "wdsz":I
    const/4 v4, 0x0

    .line 148
    .local v4, "n":I
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {p0}, Lcom/codeglue/terraria/codec/language/Metaphone;->getMaxCodeLen()I

    move-result v9

    if-ge v8, v9, :cond_1f

    if-ge v4, v7, :cond_1f

    .line 150
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    .line 152
    .local v5, "symb":C
    const/16 v8, 0x43

    if-eq v5, v8, :cond_8

    invoke-direct {p0, v3, v4, v5}, Lcom/codeglue/terraria/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuilder;IC)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 153
    add-int/lit8 v4, v4, 0x1

    .line 331
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {p0}, Lcom/codeglue/terraria/codec/language/Metaphone;->getMaxCodeLen()I

    move-result v9

    if-le v8, v9, :cond_3

    .line 332
    invoke-virtual {p0}, Lcom/codeglue/terraria/codec/language/Metaphone;->getMaxCodeLen()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    .line 112
    .end local v4    # "n":I
    .end local v5    # "symb":C
    .end local v7    # "wdsz":I
    :sswitch_0
    const/4 v8, 0x1

    aget-char v8, v2, v8

    const/16 v9, 0x4e

    if-ne v8, v9, :cond_4

    .line 113
    const/4 v8, 0x1

    array-length v9, v2

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v3, v2, v8, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 115
    :cond_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 119
    :sswitch_1
    const/4 v8, 0x1

    aget-char v8, v2, v8

    const/16 v9, 0x45

    if-ne v8, v9, :cond_5

    .line 120
    const/4 v8, 0x1

    array-length v9, v2

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v3, v2, v8, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 122
    :cond_5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 126
    :sswitch_2
    const/4 v8, 0x1

    aget-char v8, v2, v8

    const/16 v9, 0x52

    if-ne v8, v9, :cond_6

    .line 127
    const/4 v8, 0x1

    array-length v9, v2

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v3, v2, v8, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 130
    :cond_6
    const/4 v8, 0x1

    aget-char v8, v2, v8

    const/16 v9, 0x48

    if-ne v8, v9, :cond_7

    .line 131
    const/4 v8, 0x1

    array-length v9, v2

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v3, v2, v8, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 132
    const/4 v8, 0x0

    const/16 v9, 0x57

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    .line 134
    :cond_7
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 138
    :sswitch_3
    const/4 v8, 0x0

    const/16 v9, 0x53

    aput-char v9, v2, v8

    .line 139
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 155
    .restart local v4    # "n":I
    .restart local v5    # "symb":C
    .restart local v7    # "wdsz":I
    :cond_8
    packed-switch v5, :pswitch_data_0

    .line 329
    :cond_9
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 161
    :pswitch_0
    if-nez v4, :cond_9

    .line 162
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 166
    :pswitch_1
    const/16 v8, 0x4d

    invoke-direct {p0, v3, v4, v8}, Lcom/codeglue/terraria/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuilder;IC)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-direct {p0, v7, v4}, Lcom/codeglue/terraria/codec/language/Metaphone;->isLastChar(II)Z

    move-result v8

    if-nez v8, :cond_9

    .line 170
    :cond_a
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 174
    :pswitch_2
    const/16 v8, 0x53

    invoke-direct {p0, v3, v4, v8}, Lcom/codeglue/terraria/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuilder;IC)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-direct {p0, v7, v4}, Lcom/codeglue/terraria/codec/language/Metaphone;->isLastChar(II)Z

    move-result v8

    if-nez v8, :cond_b

    const-string v8, "EIY"

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-gez v8, :cond_9

    .line 179
    :cond_b
    const-string v8, "CIA"

    invoke-direct {p0, v3, v4, v8}, Lcom/codeglue/terraria/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 180
    const/16 v8, 0x58

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 183
    :cond_c
    invoke-direct {p0, v7, v4}, Lcom/codeglue/terraria/codec/language/Metaphone;->isLastChar(II)Z

    move-result v8

    if-nez v8, :cond_d

    const-string v8, "EIY"

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_d

    .line 185
    const/16 v8, 0x53

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 188
    :cond_d
    const/16 v8, 0x53

    invoke-direct {p0, v3, v4, v8}, Lcom/codeglue/terraria/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuilder;IC)Z

    move-result v8

    if-eqz v8, :cond_e

    const/16 v8, 0x48

    invoke-direct {p0, v3, v4, v8}, Lcom/codeglue/terraria/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuilder;IC)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 190
    const/16 v8, 0x4b

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 193
    :cond_e
    const/16 v8, 0x48

    invoke-direct {p0, v3, v4, v8}, Lcom/codeglue/terraria/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuilder;IC)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 194
    if-nez v4, :cond_f

    const/4 v8, 0x3

    if-lt v7, v8, :cond_f

    const/4 v8, 0x2

    invoke-direct {p0, v3, v8}, Lcom/codeglue/terraria/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuilder;I)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 197
    const/16 v8, 0x4b

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 199
    :cond_f
    const/16 v8, 0x58

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 202
    :cond_10
    const/16 v8, 0x4b

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 206
    :pswitch_3
    add-int/lit8 v8, v4, 0x1

    invoke-direct {p0, v7, v8}, Lcom/codeglue/terraria/codec/language/Metaphone;->isLastChar(II)Z

    move-result v8

    if-nez v8, :cond_11

    const/16 v8, 0x47

    invoke-direct {p0, v3, v4, v8}, Lcom/codeglue/terraria/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuilder;IC)Z

    move-result v8

    if-eqz v8, :cond_11

    const-string v8, "EIY"

    add-int/lit8 v9, v4, 0x2

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_11

    .line 209
    const/16 v8, 0x4a

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x2

    goto/16 :goto_4

    .line 211
    :cond_11
    const/16 v8, 0x54

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 215
    :pswitch_4
    add-int/lit8 v8, v4, 0x1

    invoke-direct {p0, v7, v8}, Lcom/codeglue/terraria/codec/language/Metaphone;->isLastChar(II)Z

    move-result v8

    if-eqz v8, :cond_12

    const/16 v8, 0x48

    invoke-direct {p0, v3, v4, v8}, Lcom/codeglue/terraria/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuilder;IC)Z

    move-result v8

    if-nez v8, :cond_9

    .line 219
    :cond_12
    add-int/lit8 v8, v4, 0x1

    invoke-direct {p0, v7, v8}, Lcom/codeglue/terraria/codec/language/Metaphone;->isLastChar(II)Z

    move-result v8

    if-nez v8, :cond_13

    const/16 v8, 0x48

    invoke-direct {p0, v3, v4, v8}, Lcom/codeglue/terraria/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuilder;IC)Z

    move-result v8

    if-eqz v8, :cond_13

    add-int/lit8 v8, v4, 0x2

    invoke-direct {p0, v3, v8}, Lcom/codeglue/terraria/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuilder;I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 224
    :cond_13
    if-lez v4, :cond_14

    const-string v8, "GN"

    invoke-direct {p0, v3, v4, v8}, Lcom/codeglue/terraria/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "GNED"

    invoke-direct {p0, v3, v4, v8}, Lcom/codeglue/terraria/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 229
    :cond_14
    const/16 v8, 0x47

    invoke-direct {p0, v3, v4, v8}, Lcom/codeglue/terraria/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuilder;IC)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 231
    const/4 v1, 0x1

    .line 235
    :goto_5
    invoke-direct {p0, v7, v4}, Lcom/codeglue/terraria/codec/language/Metaphone;->isLastChar(II)Z

    move-result v8

    if-nez v8, :cond_16

    const-string v8, "EIY"

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_16

    if-nez v1, :cond_16

    .line 238
    const/16 v8, 0x4a

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 233
    :cond_15
    const/4 v1, 0x0

    goto :goto_5

    .line 240
    :cond_16
    const/16 v8, 0x4b

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 244
    :pswitch_5
    invoke-direct {p0, v7, v4}, Lcom/codeglue/terraria/codec/language/Metaphone;->isLastChar(II)Z

    move-result v8

    if-nez v8, :cond_9

    .line 247
    if-lez v4, :cond_17

    const-string v8, "CSPTG"

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-gez v8, :cond_9

    .line 251
    :cond_17
    add-int/lit8 v8, v4, 0x1

    invoke-direct {p0, v3, v8}, Lcom/codeglue/terraria/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuilder;I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 252
    const/16 v8, 0x48

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 261
    :pswitch_6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 264
    :pswitch_7
    if-lez v4, :cond_18

    .line 265
    const/16 v8, 0x43

    invoke-direct {p0, v3, v4, v8}, Lcom/codeglue/terraria/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuilder;IC)Z

    move-result v8

    if-nez v8, :cond_9

    .line 266
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 269
    :cond_18
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 273
    :pswitch_8
    const/16 v8, 0x48

    invoke-direct {p0, v3, v4, v8}, Lcom/codeglue/terraria/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuilder;IC)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 275
    const/16 v8, 0x46

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 277
    :cond_19
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 281
    :pswitch_9
    const/16 v8, 0x4b

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 284
    :pswitch_a
    const-string v8, "SH"

    invoke-direct {p0, v3, v4, v8}, Lcom/codeglue/terraria/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1a

    const-string v8, "SIO"

    invoke-direct {p0, v3, v4, v8}, Lcom/codeglue/terraria/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1a

    const-string v8, "SIA"

    invoke-direct {p0, v3, v4, v8}, Lcom/codeglue/terraria/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 287
    :cond_1a
    const/16 v8, 0x58

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 289
    :cond_1b
    const/16 v8, 0x53

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 293
    :pswitch_b
    const-string v8, "TIA"

    invoke-direct {p0, v3, v4, v8}, Lcom/codeglue/terraria/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1c

    const-string v8, "TIO"

    invoke-direct {p0, v3, v4, v8}, Lcom/codeglue/terraria/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 295
    :cond_1c
    const/16 v8, 0x58

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 298
    :cond_1d
    const-string v8, "TCH"

    invoke-direct {p0, v3, v4, v8}, Lcom/codeglue/terraria/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 303
    const-string v8, "TH"

    invoke-direct {p0, v3, v4, v8}, Lcom/codeglue/terraria/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 304
    const/16 v8, 0x30

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 306
    :cond_1e
    const/16 v8, 0x54

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 310
    :pswitch_c
    const/16 v8, 0x46

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 313
    :pswitch_d
    invoke-direct {p0, v7, v4}, Lcom/codeglue/terraria/codec/language/Metaphone;->isLastChar(II)Z

    move-result v8

    if-nez v8, :cond_9

    add-int/lit8 v8, v4, 0x1

    invoke-direct {p0, v3, v8}, Lcom/codeglue/terraria/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuilder;I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 315
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 319
    :pswitch_e
    const/16 v8, 0x4b

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    const/16 v8, 0x53

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 323
    :pswitch_f
    const/16 v8, 0x53

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 335
    .end local v5    # "symb":C
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 108
    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_1
        0x47 -> :sswitch_0
        0x4b -> :sswitch_0
        0x50 -> :sswitch_0
        0x57 -> :sswitch_2
        0x58 -> :sswitch_3
    .end sparse-switch

    .line 155
    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_d
        :pswitch_f
    .end packed-switch
.end method

.method public setMaxCodeLen(I)V
    .locals 0
    .param p1, "maxCodeLen"    # I

    .prologue
    .line 428
    iput p1, p0, Lcom/codeglue/terraria/codec/language/Metaphone;->maxCodeLen:I

    return-void
.end method
