.class public Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex;
.super Ljava/lang/Object;
.source "DaitchMokotoffSoundex.java"

# interfaces
.implements Lcom/codeglue/terraria/codec/StringEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;,
        Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;
    }
.end annotation


# static fields
.field private static final COMMENT:Ljava/lang/String; = "//"

.field private static final DOUBLE_QUOTE:Ljava/lang/String; = "\""

.field private static final FOLDINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_LENGTH:I = 0x6

.field private static final MULTILINE_COMMENT_END:Ljava/lang/String; = "*/"

.field private static final MULTILINE_COMMENT_START:Ljava/lang/String; = "/*"

.field private static final RESOURCE_FILE:Ljava/lang/String; = "org/apache/commons/codec/language/dmrules.txt"

.field private static final RULES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/util/List",
            "<",
            "Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final folding:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 223
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex;->RULES:Ljava/util/Map;

    .line 226
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex;->FOLDINGS:Ljava/util/Map;

    .line 229
    const-class v5, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const-string v6, "org/apache/commons/codec/language/dmrules.txt"

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 230
    .local v3, "rulesIS":Ljava/io/InputStream;
    if-nez v3, :cond_0

    .line 231
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unable to load resource: org/apache/commons/codec/language/dmrules.txt"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 234
    :cond_0
    new-instance v4, Ljava/util/Scanner;

    const-string v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 235
    .local v4, "scanner":Ljava/util/Scanner;
    const-string v5, "org/apache/commons/codec/language/dmrules.txt"

    sget-object v6, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex;->RULES:Ljava/util/Map;

    sget-object v7, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex;->FOLDINGS:Ljava/util/Map;

    invoke-static {v4, v5, v6, v7}, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex;->parseRules(Ljava/util/Scanner;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 236
    invoke-virtual {v4}, Ljava/util/Scanner;->close()V

    .line 239
    sget-object v5, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex;->RULES:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 240
    .local v1, "rule":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/util/List<Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 241
    .local v2, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;>;"
    new-instance v5, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$1;

    invoke-direct {v5}, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$1;-><init>()V

    invoke-static {v2, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 248
    .end local v1    # "rule":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/util/List<Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;>;>;"
    .end local v2    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;>;"
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex;-><init>(Z)V

    .line 351
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "folding"    # Z

    .prologue
    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput-boolean p1, p0, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex;->folding:Z

    .line 365
    return-void
.end method

.method private cleanup(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 378
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-char v1, v0, v2

    .line 380
    .local v1, "ch":C
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 379
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 384
    :cond_0
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 385
    iget-boolean v5, p0, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex;->folding:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex;->FOLDINGS:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 386
    sget-object v5, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex;->FOLDINGS:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Character;

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v1

    .line 388
    :cond_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 390
    .end local v1    # "ch":C
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static parseRules(Ljava/util/Scanner;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 22
    .param p0, "scanner"    # Ljava/util/Scanner;
    .param p1, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Scanner;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/util/List",
            "<",
            "Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p2, "ruleMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/util/List<Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;>;>;"
    .local p3, "asciiFoldings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/Character;>;"
    const/4 v4, 0x0

    .line 253
    .local v4, "currentLine":I
    const/4 v6, 0x0

    .line 255
    .local v6, "inMultilineComment":Z
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 256
    add-int/lit8 v4, v4, 0x1

    .line 257
    invoke-virtual/range {p0 .. p0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v13

    .line 258
    .local v13, "rawLine":Ljava/lang/String;
    move-object v8, v13

    .line 260
    .local v8, "line":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 261
    const-string v19, "*/"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 262
    const/4 v6, 0x0

    goto :goto_0

    .line 267
    :cond_1
    const-string v19, "/*"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 268
    const/4 v6, 0x1

    goto :goto_0

    .line 271
    :cond_2
    const-string v19, "//"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 272
    .local v3, "cmtI":I
    if-ltz v3, :cond_3

    .line 273
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v8, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 277
    :cond_3
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 279
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v19

    if-eqz v19, :cond_0

    .line 283
    const-string v19, "="

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 285
    const-string v19, "="

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 286
    .local v9, "parts":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    .line 287
    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Malformed folding statement split into "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    array-length v0, v9

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " parts: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " in "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 290
    :cond_4
    const/16 v19, 0x0

    aget-object v7, v9, v19

    .line 291
    .local v7, "leftCharacter":Ljava/lang/String;
    const/16 v19, 0x1

    aget-object v17, v9, v19

    .line 293
    .local v17, "rightCharacter":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    .line 294
    :cond_5
    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Malformed folding statement - patterns are not single characters: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " in "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 298
    :cond_6
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 302
    .end local v7    # "leftCharacter":Ljava/lang/String;
    .end local v9    # "parts":[Ljava/lang/String;
    .end local v17    # "rightCharacter":Ljava/lang/String;
    :cond_7
    const-string v19, "\\s+"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 303
    .restart local v9    # "parts":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v19, v0

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_8

    .line 304
    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Malformed rule statement split into "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    array-length v0, v9

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " parts: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " in "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 308
    :cond_8
    const/16 v19, 0x0

    :try_start_0
    aget-object v19, v9, v19

    invoke-static/range {v19 .. v19}, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 309
    .local v10, "pattern":Ljava/lang/String;
    const/16 v19, 0x1

    aget-object v19, v9, v19

    invoke-static/range {v19 .. v19}, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 310
    .local v14, "replacement1":Ljava/lang/String;
    const/16 v19, 0x2

    aget-object v19, v9, v19

    invoke-static/range {v19 .. v19}, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 311
    .local v15, "replacement2":Ljava/lang/String;
    const/16 v19, 0x3

    aget-object v19, v9, v19

    invoke-static/range {v19 .. v19}, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 313
    .local v16, "replacement3":Ljava/lang/String;
    new-instance v12, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;

    move-object/from16 v0, v16

    invoke-direct {v12, v10, v14, v15, v0}, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .local v12, "r":Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;
    invoke-static {v12}, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;->access$000(Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 315
    .local v11, "patternKey":C
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    .line 316
    .local v18, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;>;"
    if-nez v18, :cond_9

    .line 317
    new-instance v18, Ljava/util/ArrayList;

    .end local v18    # "rules":Ljava/util/List;, "Ljava/util/List<Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;>;"
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .restart local v18    # "rules":Ljava/util/List;, "Ljava/util/List<Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;>;"
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :cond_9
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 321
    .end local v10    # "pattern":Ljava/lang/String;
    .end local v11    # "patternKey":C
    .end local v12    # "r":Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;
    .end local v14    # "replacement1":Ljava/lang/String;
    .end local v15    # "replacement2":Ljava/lang/String;
    .end local v16    # "replacement3":Ljava/lang/String;
    .end local v18    # "rules":Ljava/util/List;, "Ljava/util/List<Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;>;"
    :catch_0
    move-exception v5

    .line 322
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    new-instance v19, Ljava/lang/IllegalStateException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Problem parsing line \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\' in "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 329
    .end local v3    # "cmtI":I
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    .end local v8    # "line":Ljava/lang/String;
    .end local v9    # "parts":[Ljava/lang/String;
    .end local v13    # "rawLine":Ljava/lang/String;
    :cond_a
    return-void
.end method

.method private soundex(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 25
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "branching"    # Z

    .prologue
    .line 486
    if-nez p1, :cond_1

    .line 487
    const/16 v20, 0x0

    .line 559
    :cond_0
    return-object v20

    .line 490
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex;->cleanup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 492
    .local v12, "input":Ljava/lang/String;
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 493
    .local v6, "currentBranches":Ljava/util/Set;, "Ljava/util/Set<Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;>;"
    new-instance v23, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;

    const/16 v24, 0x0

    invoke-direct/range {v23 .. v24}, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;-><init>(Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$1;)V

    move-object/from16 v0, v23

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 495
    const/4 v14, 0x0

    .line 496
    .local v14, "lastChar":C
    const/4 v10, 0x0

    .local v10, "index":I
    :goto_0
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v23

    move/from16 v0, v23

    if-ge v10, v0, :cond_11

    .line 497
    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 500
    .local v5, "ch":C
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 496
    :cond_2
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 504
    :cond_3
    invoke-virtual {v12, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 505
    .local v13, "inputContext":Ljava/lang/String;
    sget-object v23, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex;->RULES:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/List;

    .line 506
    .local v22, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;>;"
    if-eqz v22, :cond_2

    .line 512
    if-eqz p2, :cond_9

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .local v17, "nextBranches":Ljava/util/List;, "Ljava/util/List<Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;>;"
    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;

    .line 515
    .local v21, "rule":Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;->matches(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 516
    if-eqz p2, :cond_5

    .line 517
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    .line 519
    :cond_5
    if-nez v14, :cond_a

    const/16 v23, 0x1

    :goto_3
    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v13, v1}, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;->getReplacements(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v19

    .line 520
    .local v19, "replacements":[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_b

    if-eqz p2, :cond_b

    const/4 v4, 0x1

    .line 522
    .local v4, "branchingRequired":Z
    :goto_4
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;

    .line 523
    .local v3, "branch":Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;
    move-object/from16 v2, v19

    .local v2, "arr$":[Ljava/lang/String;
    array-length v15, v2

    .local v15, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_5
    if-ge v9, v15, :cond_6

    aget-object v18, v2, v9

    .line 525
    .local v18, "nextReplacement":Ljava/lang/String;
    if-eqz v4, :cond_c

    invoke-virtual {v3}, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;->createBranch()Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;

    move-result-object v16

    .line 528
    .local v16, "nextBranch":Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;
    :goto_6
    const/16 v23, 0x6d

    move/from16 v0, v23

    if-ne v14, v0, :cond_7

    const/16 v23, 0x6e

    move/from16 v0, v23

    if-eq v5, v0, :cond_8

    :cond_7
    const/16 v23, 0x6e

    move/from16 v0, v23

    if-ne v14, v0, :cond_d

    const/16 v23, 0x6d

    move/from16 v0, v23

    if-ne v5, v0, :cond_d

    :cond_8
    const/4 v7, 0x1

    .line 530
    .local v7, "force":Z
    :goto_7
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;->processNextReplacement(Ljava/lang/String;Z)V

    .line 532
    if-eqz p2, :cond_6

    .line 533
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 512
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "branch":Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;
    .end local v4    # "branchingRequired":Z
    .end local v7    # "force":Z
    .end local v9    # "i$":I
    .end local v15    # "len$":I
    .end local v16    # "nextBranch":Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;
    .end local v17    # "nextBranches":Ljava/util/List;, "Ljava/util/List<Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;>;"
    .end local v18    # "nextReplacement":Ljava/lang/String;
    .end local v19    # "replacements":[Ljava/lang/String;
    .end local v21    # "rule":Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;
    :cond_9
    sget-object v17, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto/16 :goto_2

    .line 519
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v17    # "nextBranches":Ljava/util/List;, "Ljava/util/List<Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;>;"
    .restart local v21    # "rule":Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;
    :cond_a
    const/16 v23, 0x0

    goto :goto_3

    .line 520
    .restart local v19    # "replacements":[Ljava/lang/String;
    :cond_b
    const/4 v4, 0x0

    goto :goto_4

    .end local v8    # "i$":Ljava/util/Iterator;
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v3    # "branch":Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;
    .restart local v4    # "branchingRequired":Z
    .restart local v9    # "i$":I
    .restart local v15    # "len$":I
    .restart local v18    # "nextReplacement":Ljava/lang/String;
    :cond_c
    move-object/from16 v16, v3

    .line 525
    goto :goto_6

    .line 528
    .restart local v16    # "nextBranch":Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;
    :cond_d
    const/4 v7, 0x0

    goto :goto_7

    .line 540
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "branch":Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;
    .end local v9    # "i$":I
    .end local v15    # "len$":I
    .end local v16    # "nextBranch":Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;
    .end local v18    # "nextReplacement":Ljava/lang/String;
    :cond_e
    if-eqz p2, :cond_f

    .line 541
    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 542
    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 544
    :cond_f
    invoke-virtual/range {v21 .. v21}, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;->getPatternLength()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    add-int v10, v10, v23

    .line 549
    .end local v4    # "branchingRequired":Z
    .end local v19    # "replacements":[Ljava/lang/String;
    .end local v21    # "rule":Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;
    :cond_10
    move v14, v5

    goto/16 :goto_1

    .line 552
    .end local v5    # "ch":C
    .end local v13    # "inputContext":Ljava/lang/String;
    .end local v17    # "nextBranches":Ljava/util/List;, "Ljava/util/List<Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;>;"
    .end local v22    # "rules":Ljava/util/List;, "Ljava/util/List<Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;>;"
    :cond_11
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 553
    .local v20, "result":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 554
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;

    .line 555
    .restart local v3    # "branch":Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;
    invoke-virtual {v3}, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;->finish()V

    .line 556
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "index":I
    .local v11, "index":I
    invoke-virtual {v3}, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v20, v10

    move v10, v11

    .line 557
    .end local v11    # "index":I
    .restart local v10    # "index":I
    goto :goto_8
.end method

.method private static stripQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 332
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 336
    :cond_0
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 340
    :cond_1
    return-object p0
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
    .line 413
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 414
    new-instance v0, Lcom/codeglue/terraria/codec/EncoderException;

    const-string v1, "Parameter supplied to DaitchMokotoffSoundex encode is not of type java.lang.String"

    invoke-direct {v0, v1}, Lcom/codeglue/terraria/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_0
    check-cast p1, Ljava/lang/String;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 433
    if-nez p1, :cond_0

    .line 434
    const/4 v0, 0x0

    .line 436
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex;->soundex(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public soundex(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 463
    const/4 v7, 0x1

    invoke-direct {p0, p1, v7}, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex;->soundex(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v2

    .line 464
    .local v2, "branches":[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 465
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 466
    .local v4, "index":I
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v0, v3

    .line 467
    .local v1, "branch":Ljava/lang/String;
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    add-int/lit8 v4, v4, 0x1

    array-length v7, v2

    if-ge v4, v7, :cond_0

    .line 469
    const/16 v7, 0x7c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 466
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 472
    .end local v1    # "branch":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
