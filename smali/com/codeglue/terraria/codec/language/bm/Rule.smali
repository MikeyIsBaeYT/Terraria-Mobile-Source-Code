.class public Lcom/codeglue/terraria/codec/language/bm/Rule;
.super Ljava/lang/Object;
.source "Rule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codeglue/terraria/codec/language/bm/Rule$RPattern;,
        Lcom/codeglue/terraria/codec/language/bm/Rule$PhonemeList;,
        Lcom/codeglue/terraria/codec/language/bm/Rule$PhonemeExpr;,
        Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;
    }
.end annotation


# static fields
.field public static final ALL:Ljava/lang/String; = "ALL"

.field public static final ALL_STRINGS_RMATCHER:Lcom/codeglue/terraria/codec/language/bm/Rule$RPattern;

.field private static final DOUBLE_QUOTE:Ljava/lang/String; = "\""

.field private static final HASH_INCLUDE:Ljava/lang/String; = "#include"

.field private static final RULES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/codeglue/terraria/codec/language/bm/NameType;",
            "Ljava/util/Map",
            "<",
            "Lcom/codeglue/terraria/codec/language/bm/RuleType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/codeglue/terraria/codec/language/bm/Rule;",
            ">;>;>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final lContext:Lcom/codeglue/terraria/codec/language/bm/Rule$RPattern;

.field private final pattern:Ljava/lang/String;

.field private final phoneme:Lcom/codeglue/terraria/codec/language/bm/Rule$PhonemeExpr;

.field private final rContext:Lcom/codeglue/terraria/codec/language/bm/Rule$RPattern;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .prologue
    .line 196
    new-instance v15, Lcom/codeglue/terraria/codec/language/bm/Rule$1;

    invoke-direct {v15}, Lcom/codeglue/terraria/codec/language/bm/Rule$1;-><init>()V

    sput-object v15, Lcom/codeglue/terraria/codec/language/bm/Rule;->ALL_STRINGS_RMATCHER:Lcom/codeglue/terraria/codec/language/bm/Rule$RPattern;

    .line 209
    new-instance v15, Ljava/util/EnumMap;

    const-class v16, Lcom/codeglue/terraria/codec/language/bm/NameType;

    invoke-direct/range {v15 .. v16}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v15, Lcom/codeglue/terraria/codec/language/bm/Rule;->RULES:Ljava/util/Map;

    .line 213
    invoke-static {}, Lcom/codeglue/terraria/codec/language/bm/NameType;->values()[Lcom/codeglue/terraria/codec/language/bm/NameType;

    move-result-object v1

    .local v1, "arr$":[Lcom/codeglue/terraria/codec/language/bm/NameType;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v6, v4

    .end local v1    # "arr$":[Lcom/codeglue/terraria/codec/language/bm/NameType;
    .end local v4    # "i$":I
    .end local v8    # "len$":I
    .local v6, "i$":I
    :goto_0
    if-ge v6, v8, :cond_3

    aget-object v14, v1, v6

    .line 214
    .local v14, "s":Lcom/codeglue/terraria/codec/language/bm/NameType;
    new-instance v13, Ljava/util/EnumMap;

    const-class v15, Lcom/codeglue/terraria/codec/language/bm/RuleType;

    invoke-direct {v13, v15}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 217
    .local v13, "rts":Ljava/util/Map;, "Ljava/util/Map<Lcom/codeglue/terraria/codec/language/bm/RuleType;Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/codeglue/terraria/codec/language/bm/Rule;>;>;>;>;"
    invoke-static {}, Lcom/codeglue/terraria/codec/language/bm/RuleType;->values()[Lcom/codeglue/terraria/codec/language/bm/RuleType;

    move-result-object v2

    .local v2, "arr$":[Lcom/codeglue/terraria/codec/language/bm/RuleType;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v4, 0x0

    .end local v6    # "i$":I
    .restart local v4    # "i$":I
    move v5, v4

    .end local v4    # "i$":I
    .local v5, "i$":I
    :goto_1
    if-ge v5, v9, :cond_2

    aget-object v12, v2, v5

    .line 218
    .local v12, "rt":Lcom/codeglue/terraria/codec/language/bm/RuleType;
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 220
    .local v11, "rs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/codeglue/terraria/codec/language/bm/Rule;>;>;>;"
    invoke-static {v14}, Lcom/codeglue/terraria/codec/language/bm/Languages;->getInstance(Lcom/codeglue/terraria/codec/language/bm/NameType;)Lcom/codeglue/terraria/codec/language/bm/Languages;

    move-result-object v10

    .line 221
    .local v10, "ls":Lcom/codeglue/terraria/codec/language/bm/Languages;
    invoke-virtual {v10}, Lcom/codeglue/terraria/codec/language/bm/Languages;->getLanguages()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v5    # "i$":I
    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 223
    .local v7, "l":Ljava/lang/String;
    :try_start_0
    invoke-static {v14, v12, v7}, Lcom/codeglue/terraria/codec/language/bm/Rule;->createScanner(Lcom/codeglue/terraria/codec/language/bm/NameType;Lcom/codeglue/terraria/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v15

    invoke-static {v14, v12, v7}, Lcom/codeglue/terraria/codec/language/bm/Rule;->createResourceName(Lcom/codeglue/terraria/codec/language/bm/NameType;Lcom/codeglue/terraria/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/codeglue/terraria/codec/language/bm/Rule;->parseRules(Ljava/util/Scanner;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v15

    invoke-interface {v11, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 224
    :catch_0
    move-exception v3

    .line 225
    .local v3, "e":Ljava/lang/IllegalStateException;
    new-instance v15, Ljava/lang/IllegalStateException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Problem processing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v14, v12, v7}, Lcom/codeglue/terraria/codec/language/bm/Rule;->createResourceName(Lcom/codeglue/terraria/codec/language/bm/NameType;Lcom/codeglue/terraria/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15

    .line 228
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    .end local v7    # "l":Ljava/lang/String;
    :cond_0
    sget-object v15, Lcom/codeglue/terraria/codec/language/bm/RuleType;->RULES:Lcom/codeglue/terraria/codec/language/bm/RuleType;

    invoke-virtual {v12, v15}, Lcom/codeglue/terraria/codec/language/bm/RuleType;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 229
    const-string v15, "common"

    const-string v16, "common"

    move-object/from16 v0, v16

    invoke-static {v14, v12, v0}, Lcom/codeglue/terraria/codec/language/bm/Rule;->createScanner(Lcom/codeglue/terraria/codec/language/bm/NameType;Lcom/codeglue/terraria/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v16

    const-string v17, "common"

    move-object/from16 v0, v17

    invoke-static {v14, v12, v0}, Lcom/codeglue/terraria/codec/language/bm/Rule;->createResourceName(Lcom/codeglue/terraria/codec/language/bm/NameType;Lcom/codeglue/terraria/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/codeglue/terraria/codec/language/bm/Rule;->parseRules(Ljava/util/Scanner;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v11, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_1
    invoke-static {v11}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v15

    invoke-interface {v13, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    add-int/lit8 v4, v5, 0x1

    .local v4, "i$":I
    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_1

    .line 235
    .end local v10    # "ls":Lcom/codeglue/terraria/codec/language/bm/Languages;
    .end local v11    # "rs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/codeglue/terraria/codec/language/bm/Rule;>;>;>;"
    .end local v12    # "rt":Lcom/codeglue/terraria/codec/language/bm/RuleType;
    :cond_2
    sget-object v15, Lcom/codeglue/terraria/codec/language/bm/Rule;->RULES:Ljava/util/Map;

    invoke-static {v13}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v15, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    add-int/lit8 v4, v6, 0x1

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    move v6, v4

    .end local v4    # "i$":I
    .restart local v6    # "i$":I
    goto/16 :goto_0

    .line 237
    .end local v2    # "arr$":[Lcom/codeglue/terraria/codec/language/bm/RuleType;
    .end local v9    # "len$":I
    .end local v13    # "rts":Ljava/util/Map;, "Ljava/util/Map<Lcom/codeglue/terraria/codec/language/bm/RuleType;Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/codeglue/terraria/codec/language/bm/Rule;>;>;>;>;"
    .end local v14    # "s":Lcom/codeglue/terraria/codec/language/bm/NameType;
    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/codeglue/terraria/codec/language/bm/Rule$PhonemeExpr;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "lContext"    # Ljava/lang/String;
    .param p3, "rContext"    # Ljava/lang/String;
    .param p4, "phoneme"    # Lcom/codeglue/terraria/codec/language/bm/Rule$PhonemeExpr;

    .prologue
    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 645
    iput-object p1, p0, Lcom/codeglue/terraria/codec/language/bm/Rule;->pattern:Ljava/lang/String;

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codeglue/terraria/codec/language/bm/Rule;->pattern(Ljava/lang/String;)Lcom/codeglue/terraria/codec/language/bm/Rule$RPattern;

    move-result-object v0

    iput-object v0, p0, Lcom/codeglue/terraria/codec/language/bm/Rule;->lContext:Lcom/codeglue/terraria/codec/language/bm/Rule$RPattern;

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codeglue/terraria/codec/language/bm/Rule;->pattern(Ljava/lang/String;)Lcom/codeglue/terraria/codec/language/bm/Rule$RPattern;

    move-result-object v0

    iput-object v0, p0, Lcom/codeglue/terraria/codec/language/bm/Rule;->rContext:Lcom/codeglue/terraria/codec/language/bm/Rule$RPattern;

    .line 648
    iput-object p4, p0, Lcom/codeglue/terraria/codec/language/bm/Rule;->phoneme:Lcom/codeglue/terraria/codec/language/bm/Rule$PhonemeExpr;

    .line 649
    return-void
.end method

.method static synthetic access$100(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/CharSequence;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 82
    invoke-static {p0, p1}, Lcom/codeglue/terraria/codec/language/bm/Rule;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/CharSequence;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 82
    invoke-static {p0, p1}, Lcom/codeglue/terraria/codec/language/bm/Rule;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/lang/CharSequence;C)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/CharSequence;
    .param p1, "x1"    # C

    .prologue
    .line 82
    invoke-static {p0, p1}, Lcom/codeglue/terraria/codec/language/bm/Rule;->contains(Ljava/lang/CharSequence;C)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/CharSequence;C)Z
    .locals 2
    .param p0, "chars"    # Ljava/lang/CharSequence;
    .param p1, "input"    # C

    .prologue
    .line 240
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 241
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_0

    .line 242
    const/4 v1, 0x1

    .line 245
    :goto_1
    return v1

    .line 240
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static createResourceName(Lcom/codeglue/terraria/codec/language/bm/NameType;Lcom/codeglue/terraria/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "nameType"    # Lcom/codeglue/terraria/codec/language/bm/NameType;
    .param p1, "rt"    # Lcom/codeglue/terraria/codec/language/bm/RuleType;
    .param p2, "lang"    # Ljava/lang/String;

    .prologue
    .line 249
    const-string v0, "org/apache/commons/codec/language/bm/%s_%s_%s.txt"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/codeglue/terraria/codec/language/bm/NameType;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/codeglue/terraria/codec/language/bm/RuleType;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createScanner(Lcom/codeglue/terraria/codec/language/bm/NameType;Lcom/codeglue/terraria/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/Scanner;
    .locals 5
    .param p0, "nameType"    # Lcom/codeglue/terraria/codec/language/bm/NameType;
    .param p1, "rt"    # Lcom/codeglue/terraria/codec/language/bm/RuleType;
    .param p2, "lang"    # Ljava/lang/String;

    .prologue
    .line 254
    invoke-static {p0, p1, p2}, Lcom/codeglue/terraria/codec/language/bm/Rule;->createResourceName(Lcom/codeglue/terraria/codec/language/bm/NameType;Lcom/codeglue/terraria/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "resName":Ljava/lang/String;
    const-class v2, Lcom/codeglue/terraria/codec/language/bm/Languages;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 257
    .local v1, "rulesIS":Ljava/io/InputStream;
    if-nez v1, :cond_0

    .line 258
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 261
    :cond_0
    new-instance v2, Ljava/util/Scanner;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v2
.end method

.method private static createScanner(Ljava/lang/String;)Ljava/util/Scanner;
    .locals 5
    .param p0, "lang"    # Ljava/lang/String;

    .prologue
    .line 265
    const-string v2, "org/apache/commons/codec/language/bm/%s.txt"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "resName":Ljava/lang/String;
    const-class v2, Lcom/codeglue/terraria/codec/language/bm/Languages;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 268
    .local v1, "rulesIS":Ljava/io/InputStream;
    if-nez v1, :cond_0

    .line 269
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 272
    :cond_0
    new-instance v2, Ljava/util/Scanner;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v2
.end method

.method private static endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "input"    # Ljava/lang/CharSequence;
    .param p1, "suffix"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 276
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 284
    :cond_0
    :goto_0
    return v2

    .line 279
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "j":I
    :goto_1
    if-ltz v1, :cond_2

    .line 280
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_0

    .line 279
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 284
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getInstance(Lcom/codeglue/terraria/codec/language/bm/NameType;Lcom/codeglue/terraria/codec/language/bm/RuleType;Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;)Ljava/util/List;
    .locals 5
    .param p0, "nameType"    # Lcom/codeglue/terraria/codec/language/bm/NameType;
    .param p1, "rt"    # Lcom/codeglue/terraria/codec/language/bm/RuleType;
    .param p2, "langs"    # Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codeglue/terraria/codec/language/bm/NameType;",
            "Lcom/codeglue/terraria/codec/language/bm/RuleType;",
            "Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/codeglue/terraria/codec/language/bm/Rule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    invoke-static {p0, p1, p2}, Lcom/codeglue/terraria/codec/language/bm/Rule;->getInstanceMap(Lcom/codeglue/terraria/codec/language/bm/NameType;Lcom/codeglue/terraria/codec/language/bm/RuleType;Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;)Ljava/util/Map;

    move-result-object v2

    .line 301
    .local v2, "ruleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/codeglue/terraria/codec/language/bm/Rule;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v0, "allRules":Ljava/util/List;, "Ljava/util/List<Lcom/codeglue/terraria/codec/language/bm/Rule;>;"
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 303
    .local v3, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/codeglue/terraria/codec/language/bm/Rule;>;"
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 305
    .end local v3    # "rules":Ljava/util/List;, "Ljava/util/List<Lcom/codeglue/terraria/codec/language/bm/Rule;>;"
    :cond_0
    return-object v0
.end method

.method public static getInstance(Lcom/codeglue/terraria/codec/language/bm/NameType;Lcom/codeglue/terraria/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "nameType"    # Lcom/codeglue/terraria/codec/language/bm/NameType;
    .param p1, "rt"    # Lcom/codeglue/terraria/codec/language/bm/RuleType;
    .param p2, "lang"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codeglue/terraria/codec/language/bm/NameType;",
            "Lcom/codeglue/terraria/codec/language/bm/RuleType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/codeglue/terraria/codec/language/bm/Rule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;->from(Ljava/util/Set;)Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/codeglue/terraria/codec/language/bm/Rule;->getInstance(Lcom/codeglue/terraria/codec/language/bm/NameType;Lcom/codeglue/terraria/codec/language/bm/RuleType;Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getInstanceMap(Lcom/codeglue/terraria/codec/language/bm/NameType;Lcom/codeglue/terraria/codec/language/bm/RuleType;Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;)Ljava/util/Map;
    .locals 1
    .param p0, "nameType"    # Lcom/codeglue/terraria/codec/language/bm/NameType;
    .param p1, "rt"    # Lcom/codeglue/terraria/codec/language/bm/RuleType;
    .param p2, "langs"    # Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codeglue/terraria/codec/language/bm/NameType;",
            "Lcom/codeglue/terraria/codec/language/bm/RuleType;",
            "Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/codeglue/terraria/codec/language/bm/Rule;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 337
    invoke-virtual {p2}, Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;->isSingleton()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;->getAny()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/codeglue/terraria/codec/language/bm/Rule;->getInstanceMap(Lcom/codeglue/terraria/codec/language/bm/NameType;Lcom/codeglue/terraria/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "any"

    invoke-static {p0, p1, v0}, Lcom/codeglue/terraria/codec/language/bm/Rule;->getInstanceMap(Lcom/codeglue/terraria/codec/language/bm/NameType;Lcom/codeglue/terraria/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstanceMap(Lcom/codeglue/terraria/codec/language/bm/NameType;Lcom/codeglue/terraria/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .param p0, "nameType"    # Lcom/codeglue/terraria/codec/language/bm/NameType;
    .param p1, "rt"    # Lcom/codeglue/terraria/codec/language/bm/RuleType;
    .param p2, "lang"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codeglue/terraria/codec/language/bm/NameType;",
            "Lcom/codeglue/terraria/codec/language/bm/RuleType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/codeglue/terraria/codec/language/bm/Rule;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 355
    sget-object v1, Lcom/codeglue/terraria/codec/language/bm/Rule;->RULES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 357
    .local v0, "rules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/codeglue/terraria/codec/language/bm/Rule;>;>;"
    if-nez v0, :cond_0

    .line 358
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No rules found for %s, %s, %s."

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/codeglue/terraria/codec/language/bm/NameType;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/codeglue/terraria/codec/language/bm/RuleType;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 362
    :cond_0
    return-object v0
.end method

.method private static parsePhoneme(Ljava/lang/String;)Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;
    .locals 6
    .param p0, "ph"    # Ljava/lang/String;

    .prologue
    .line 366
    const-string v4, "["

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 367
    .local v3, "open":I
    if-ltz v3, :cond_1

    .line 368
    const-string v4, "]"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 369
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Phoneme expression contains a \'[\' but does not end in \']\'"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 371
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "before":Ljava/lang/String;
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, "in":Ljava/lang/String;
    new-instance v2, Ljava/util/HashSet;

    const-string v4, "[+]"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 375
    .local v2, "langs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;

    invoke-static {v2}, Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;->from(Ljava/util/Set;)Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;-><init>(Ljava/lang/CharSequence;Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;)V

    .line 377
    .end local v0    # "before":Ljava/lang/String;
    .end local v1    # "in":Ljava/lang/String;
    .end local v2    # "langs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    return-object v4

    :cond_1
    new-instance v4, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;

    sget-object v5, Lcom/codeglue/terraria/codec/language/bm/Languages;->ANY_LANGUAGE:Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;

    invoke-direct {v4, p0, v5}, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;-><init>(Ljava/lang/CharSequence;Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;)V

    goto :goto_0
.end method

.method private static parsePhonemeExpr(Ljava/lang/String;)Lcom/codeglue/terraria/codec/language/bm/Rule$PhonemeExpr;
    .locals 9
    .param p0, "ph"    # Ljava/lang/String;

    .prologue
    .line 382
    const-string v6, "("

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 383
    const-string v6, ")"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 384
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Phoneme starts with \'(\' so must end with \')\'"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 387
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v5, "phs":Ljava/util/List;, "Ljava/util/List<Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;>;"
    const/4 v6, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 389
    .local v1, "body":Ljava/lang/String;
    const-string v6, "[|]"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 390
    .local v4, "part":Ljava/lang/String;
    invoke-static {v4}, Lcom/codeglue/terraria/codec/language/bm/Rule;->parsePhoneme(Ljava/lang/String;)Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 392
    .end local v4    # "part":Ljava/lang/String;
    :cond_1
    const-string v6, "|"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "|"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 393
    :cond_2
    new-instance v6, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;

    const-string v7, ""

    sget-object v8, Lcom/codeglue/terraria/codec/language/bm/Languages;->ANY_LANGUAGE:Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;

    invoke-direct {v6, v7, v8}, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;-><init>(Ljava/lang/CharSequence;Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    :cond_3
    new-instance v6, Lcom/codeglue/terraria/codec/language/bm/Rule$PhonemeList;

    invoke-direct {v6, v5}, Lcom/codeglue/terraria/codec/language/bm/Rule$PhonemeList;-><init>(Ljava/util/List;)V

    .line 398
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "body":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "phs":Ljava/util/List;, "Ljava/util/List<Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;>;"
    :goto_1
    return-object v6

    :cond_4
    invoke-static {p0}, Lcom/codeglue/terraria/codec/language/bm/Rule;->parsePhoneme(Ljava/lang/String;)Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;

    move-result-object v6

    goto :goto_1
.end method

.method private static parseRules(Ljava/util/Scanner;Ljava/lang/String;)Ljava/util/Map;
    .locals 24
    .param p0, "scanner"    # Ljava/util/Scanner;
    .param p1, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Scanner;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/codeglue/terraria/codec/language/bm/Rule;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 403
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 404
    .local v19, "lines":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/codeglue/terraria/codec/language/bm/Rule;>;>;"
    const/4 v14, 0x0

    .line 406
    .local v14, "currentLine":I
    const/16 v16, 0x0

    .line 407
    .local v16, "inMultilineComment":Z
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 408
    add-int/lit8 v14, v14, 0x1

    .line 409
    invoke-virtual/range {p0 .. p0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v22

    .line 410
    .local v22, "rawLine":Ljava/lang/String;
    move-object/from16 v18, v22

    .line 412
    .local v18, "line":Ljava/lang/String;
    if-eqz v16, :cond_1

    .line 413
    const-string v9, "*/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 414
    const/16 v16, 0x0

    goto :goto_0

    .line 417
    :cond_1
    const-string v9, "/*"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 418
    const/16 v16, 0x1

    goto :goto_0

    .line 421
    :cond_2
    const-string v9, "//"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 422
    .local v13, "cmtI":I
    if-ltz v13, :cond_3

    .line 423
    const/4 v9, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 427
    :cond_3
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 429
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    .line 433
    const-string v9, "#include"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 435
    const-string v9, "#include"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 436
    .local v17, "incl":Ljava/lang/String;
    const-string v9, " "

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 437
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Malformed import statement \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 440
    :cond_4
    invoke-static/range {v17 .. v17}, Lcom/codeglue/terraria/codec/language/bm/Rule;->createScanner(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "->"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/codeglue/terraria/codec/language/bm/Rule;->parseRules(Ljava/util/Scanner;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 444
    .end local v17    # "incl":Ljava/lang/String;
    :cond_5
    const-string v9, "\\s+"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 445
    .local v20, "parts":[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v9, v0

    const/4 v10, 0x4

    if-eq v9, v10, :cond_6

    .line 446
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Malformed rule statement split into "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v20

    array-length v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " parts: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 450
    :cond_6
    const/4 v9, 0x0

    :try_start_0
    aget-object v9, v20, v9

    invoke-static {v9}, Lcom/codeglue/terraria/codec/language/bm/Rule;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 451
    .local v4, "pat":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v20, v9

    invoke-static {v9}, Lcom/codeglue/terraria/codec/language/bm/Rule;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 452
    .local v5, "lCon":Ljava/lang/String;
    const/4 v9, 0x2

    aget-object v9, v20, v9

    invoke-static {v9}, Lcom/codeglue/terraria/codec/language/bm/Rule;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 453
    .local v6, "rCon":Ljava/lang/String;
    const/4 v9, 0x3

    aget-object v9, v20, v9

    invoke-static {v9}, Lcom/codeglue/terraria/codec/language/bm/Rule;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/codeglue/terraria/codec/language/bm/Rule;->parsePhonemeExpr(Ljava/lang/String;)Lcom/codeglue/terraria/codec/language/bm/Rule$PhonemeExpr;

    move-result-object v7

    .line 454
    .local v7, "ph":Lcom/codeglue/terraria/codec/language/bm/Rule$PhonemeExpr;
    move v8, v14

    .line 455
    .local v8, "cLine":I
    new-instance v3, Lcom/codeglue/terraria/codec/language/bm/Rule$2;

    move-object/from16 v9, p1

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    invoke-direct/range {v3 .. v12}, Lcom/codeglue/terraria/codec/language/bm/Rule$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/codeglue/terraria/codec/language/bm/Rule$PhonemeExpr;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    .local v3, "r":Lcom/codeglue/terraria/codec/language/bm/Rule;
    iget-object v9, v3, Lcom/codeglue/terraria/codec/language/bm/Rule;->pattern:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 473
    .local v21, "patternKey":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/List;

    .line 474
    .local v23, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/codeglue/terraria/codec/language/bm/Rule;>;"
    if-nez v23, :cond_7

    .line 475
    new-instance v23, Ljava/util/ArrayList;

    .end local v23    # "rules":Ljava/util/List;, "Ljava/util/List<Lcom/codeglue/terraria/codec/language/bm/Rule;>;"
    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .restart local v23    # "rules":Ljava/util/List;, "Ljava/util/List<Lcom/codeglue/terraria/codec/language/bm/Rule;>;"
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    :cond_7
    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 479
    .end local v3    # "r":Lcom/codeglue/terraria/codec/language/bm/Rule;
    .end local v4    # "pat":Ljava/lang/String;
    .end local v5    # "lCon":Ljava/lang/String;
    .end local v6    # "rCon":Ljava/lang/String;
    .end local v7    # "ph":Lcom/codeglue/terraria/codec/language/bm/Rule$PhonemeExpr;
    .end local v8    # "cLine":I
    .end local v21    # "patternKey":Ljava/lang/String;
    .end local v23    # "rules":Ljava/util/List;, "Ljava/util/List<Lcom/codeglue/terraria/codec/language/bm/Rule;>;"
    :catch_0
    move-exception v15

    .line 480
    .local v15, "e":Ljava/lang/IllegalArgumentException;
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Problem parsing line \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 489
    .end local v13    # "cmtI":I
    .end local v15    # "e":Ljava/lang/IllegalArgumentException;
    .end local v18    # "line":Ljava/lang/String;
    .end local v20    # "parts":[Ljava/lang/String;
    .end local v22    # "rawLine":Ljava/lang/String;
    :cond_8
    return-object v19
.end method

.method private static pattern(Ljava/lang/String;)Lcom/codeglue/terraria/codec/language/bm/Rule$RPattern;
    .locals 13
    .param p0, "regex"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v7, 0x1

    .line 500
    const-string v10, "^"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    .line 501
    .local v8, "startsWith":Z
    const-string v10, "$"

    invoke-virtual {p0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    .line 502
    .local v4, "endsWith":Z
    if-eqz v8, :cond_0

    move v12, v7

    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    :goto_1
    invoke-virtual {p0, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 503
    .local v3, "content":Ljava/lang/String;
    const-string v10, "["

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 505
    .local v2, "boxes":Z
    if-nez v2, :cond_7

    .line 506
    if-eqz v8, :cond_3

    if-eqz v4, :cond_3

    .line 508
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_2

    .line 510
    new-instance v10, Lcom/codeglue/terraria/codec/language/bm/Rule$3;

    invoke-direct {v10}, Lcom/codeglue/terraria/codec/language/bm/Rule$3;-><init>()V

    .line 589
    :goto_2
    return-object v10

    .end local v2    # "boxes":Z
    .end local v3    # "content":Ljava/lang/String;
    :cond_0
    move v12, v11

    .line 502
    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    goto :goto_1

    .line 517
    .restart local v2    # "boxes":Z
    .restart local v3    # "content":Ljava/lang/String;
    :cond_2
    new-instance v10, Lcom/codeglue/terraria/codec/language/bm/Rule$4;

    invoke-direct {v10, v3}, Lcom/codeglue/terraria/codec/language/bm/Rule$4;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 524
    :cond_3
    if-nez v8, :cond_4

    if-eqz v4, :cond_5

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_5

    .line 526
    sget-object v10, Lcom/codeglue/terraria/codec/language/bm/Rule;->ALL_STRINGS_RMATCHER:Lcom/codeglue/terraria/codec/language/bm/Rule$RPattern;

    goto :goto_2

    .line 527
    :cond_5
    if-eqz v8, :cond_6

    .line 529
    new-instance v10, Lcom/codeglue/terraria/codec/language/bm/Rule$5;

    invoke-direct {v10, v3}, Lcom/codeglue/terraria/codec/language/bm/Rule$5;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 535
    :cond_6
    if-eqz v4, :cond_c

    .line 537
    new-instance v10, Lcom/codeglue/terraria/codec/language/bm/Rule$6;

    invoke-direct {v10, v3}, Lcom/codeglue/terraria/codec/language/bm/Rule$6;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 545
    :cond_7
    const-string v10, "["

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    .line 546
    .local v9, "startsWithBox":Z
    const-string v10, "]"

    invoke-virtual {v3, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    .line 548
    .local v5, "endsWithBox":Z
    if-eqz v9, :cond_c

    if-eqz v5, :cond_c

    .line 549
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v3, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 550
    .local v1, "boxContent":Ljava/lang/String;
    const-string v10, "["

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 552
    const-string v10, "^"

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    .line 553
    .local v6, "negate":Z
    if-eqz v6, :cond_8

    .line 554
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 556
    :cond_8
    move-object v0, v1

    .line 557
    .local v0, "bContent":Ljava/lang/String;
    if-nez v6, :cond_9

    .line 559
    .local v7, "shouldMatch":Z
    :goto_3
    if-eqz v8, :cond_a

    if-eqz v4, :cond_a

    .line 561
    new-instance v10, Lcom/codeglue/terraria/codec/language/bm/Rule$7;

    invoke-direct {v10, v0, v7}, Lcom/codeglue/terraria/codec/language/bm/Rule$7;-><init>(Ljava/lang/String;Z)V

    goto :goto_2

    .end local v7    # "shouldMatch":Z
    :cond_9
    move v7, v11

    .line 557
    goto :goto_3

    .line 567
    .restart local v7    # "shouldMatch":Z
    :cond_a
    if-eqz v8, :cond_b

    .line 569
    new-instance v10, Lcom/codeglue/terraria/codec/language/bm/Rule$8;

    invoke-direct {v10, v0, v7}, Lcom/codeglue/terraria/codec/language/bm/Rule$8;-><init>(Ljava/lang/String;Z)V

    goto :goto_2

    .line 575
    :cond_b
    if-eqz v4, :cond_c

    .line 577
    new-instance v10, Lcom/codeglue/terraria/codec/language/bm/Rule$9;

    invoke-direct {v10, v0, v7}, Lcom/codeglue/terraria/codec/language/bm/Rule$9;-><init>(Ljava/lang/String;Z)V

    goto :goto_2

    .line 589
    .end local v0    # "bContent":Ljava/lang/String;
    .end local v1    # "boxContent":Ljava/lang/String;
    .end local v5    # "endsWithBox":Z
    .end local v6    # "negate":Z
    .end local v7    # "shouldMatch":Z
    .end local v9    # "startsWithBox":Z
    :cond_c
    new-instance v10, Lcom/codeglue/terraria/codec/language/bm/Rule$10;

    invoke-direct {v10, p0}, Lcom/codeglue/terraria/codec/language/bm/Rule$10;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "input"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 601
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 609
    :cond_0
    :goto_0
    return v1

    .line 604
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 605
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    .line 604
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 609
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static stripQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 613
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 617
    :cond_0
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 618
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 621
    :cond_1
    return-object p0
.end method


# virtual methods
.method public getLContext()Lcom/codeglue/terraria/codec/language/bm/Rule$RPattern;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/codeglue/terraria/codec/language/bm/Rule;->lContext:Lcom/codeglue/terraria/codec/language/bm/Rule$RPattern;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/codeglue/terraria/codec/language/bm/Rule;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneme()Lcom/codeglue/terraria/codec/language/bm/Rule$PhonemeExpr;
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/codeglue/terraria/codec/language/bm/Rule;->phoneme:Lcom/codeglue/terraria/codec/language/bm/Rule$PhonemeExpr;

    return-object v0
.end method

.method public getRContext()Lcom/codeglue/terraria/codec/language/bm/Rule$RPattern;
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/codeglue/terraria/codec/language/bm/Rule;->rContext:Lcom/codeglue/terraria/codec/language/bm/Rule$RPattern;

    return-object v0
.end method

.method public patternAndContextMatches(Ljava/lang/CharSequence;I)Z
    .locals 5
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I

    .prologue
    const/4 v2, 0x0

    .line 699
    if-gez p2, :cond_0

    .line 700
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, "Can not match pattern at negative indexes"

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 703
    :cond_0
    iget-object v3, p0, Lcom/codeglue/terraria/codec/language/bm/Rule;->pattern:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 704
    .local v1, "patternLength":I
    add-int v0, p2, v1

    .line 706
    .local v0, "ipl":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v0, v3, :cond_2

    .line 718
    :cond_1
    :goto_0
    return v2

    .line 713
    :cond_2
    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/codeglue/terraria/codec/language/bm/Rule;->pattern:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 715
    iget-object v3, p0, Lcom/codeglue/terraria/codec/language/bm/Rule;->rContext:Lcom/codeglue/terraria/codec/language/bm/Rule$RPattern;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {p1, v0, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/codeglue/terraria/codec/language/bm/Rule$RPattern;->isMatch(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 718
    iget-object v3, p0, Lcom/codeglue/terraria/codec/language/bm/Rule;->lContext:Lcom/codeglue/terraria/codec/language/bm/Rule$RPattern;

    invoke-interface {p1, v2, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/codeglue/terraria/codec/language/bm/Rule$RPattern;->isMatch(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_0
.end method
