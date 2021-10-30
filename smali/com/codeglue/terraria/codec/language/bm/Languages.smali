.class public Lcom/codeglue/terraria/codec/language/bm/Languages;
.super Ljava/lang/Object;
.source "Languages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codeglue/terraria/codec/language/bm/Languages$SomeLanguages;,
        Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;
    }
.end annotation


# static fields
.field public static final ANY:Ljava/lang/String; = "any"

.field public static final ANY_LANGUAGE:Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;

.field private static final LANGUAGES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/codeglue/terraria/codec/language/bm/NameType;",
            "Lcom/codeglue/terraria/codec/language/bm/Languages;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_LANGUAGES:Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;


# instance fields
.field private final languages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 157
    new-instance v4, Ljava/util/EnumMap;

    const-class v5, Lcom/codeglue/terraria/codec/language/bm/NameType;

    invoke-direct {v4, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v4, Lcom/codeglue/terraria/codec/language/bm/Languages;->LANGUAGES:Ljava/util/Map;

    .line 160
    invoke-static {}, Lcom/codeglue/terraria/codec/language/bm/NameType;->values()[Lcom/codeglue/terraria/codec/language/bm/NameType;

    move-result-object v0

    .local v0, "arr$":[Lcom/codeglue/terraria/codec/language/bm/NameType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 161
    .local v3, "s":Lcom/codeglue/terraria/codec/language/bm/NameType;
    sget-object v4, Lcom/codeglue/terraria/codec/language/bm/Languages;->LANGUAGES:Ljava/util/Map;

    invoke-static {v3}, Lcom/codeglue/terraria/codec/language/bm/Languages;->langResourceName(Lcom/codeglue/terraria/codec/language/bm/NameType;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/codeglue/terraria/codec/language/bm/Languages;->getInstance(Ljava/lang/String;)Lcom/codeglue/terraria/codec/language/bm/Languages;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v3    # "s":Lcom/codeglue/terraria/codec/language/bm/NameType;
    :cond_0
    new-instance v4, Lcom/codeglue/terraria/codec/language/bm/Languages$1;

    invoke-direct {v4}, Lcom/codeglue/terraria/codec/language/bm/Languages$1;-><init>()V

    sput-object v4, Lcom/codeglue/terraria/codec/language/bm/Languages;->NO_LANGUAGES:Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;

    .line 251
    new-instance v4, Lcom/codeglue/terraria/codec/language/bm/Languages$2;

    invoke-direct {v4}, Lcom/codeglue/terraria/codec/language/bm/Languages$2;-><init>()V

    sput-object v4, Lcom/codeglue/terraria/codec/language/bm/Languages;->ANY_LANGUAGE:Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;

    return-void
.end method

.method private constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, "languages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-object p1, p0, Lcom/codeglue/terraria/codec/language/bm/Languages;->languages:Ljava/util/Set;

    .line 290
    return-void
.end method

.method public static getInstance(Lcom/codeglue/terraria/codec/language/bm/NameType;)Lcom/codeglue/terraria/codec/language/bm/Languages;
    .locals 1
    .param p0, "nameType"    # Lcom/codeglue/terraria/codec/language/bm/NameType;

    .prologue
    .line 166
    sget-object v0, Lcom/codeglue/terraria/codec/language/bm/Languages;->LANGUAGES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codeglue/terraria/codec/language/bm/Languages;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/codeglue/terraria/codec/language/bm/Languages;
    .locals 8
    .param p0, "languagesResourceName"    # Ljava/lang/String;

    .prologue
    .line 171
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 172
    .local v3, "ls":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-class v5, Lcom/codeglue/terraria/codec/language/bm/Languages;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 174
    .local v1, "langIS":Ljava/io/InputStream;
    if-nez v1, :cond_0

    .line 175
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to resolve required resource: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 178
    :cond_0
    new-instance v4, Ljava/util/Scanner;

    const-string v5, "UTF-8"

    invoke-direct {v4, v1, v5}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 180
    .local v4, "lsScanner":Ljava/util/Scanner;
    const/4 v0, 0x0

    .line 181
    .local v0, "inExtendedComment":Z
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v4}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 182
    invoke-virtual {v4}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "line":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 184
    const-string v5, "*/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 185
    const/4 v0, 0x0

    goto :goto_0

    .line 188
    :cond_2
    const-string v5, "/*"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 189
    const/4 v0, 0x1

    goto :goto_0

    .line 190
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 191
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 196
    .end local v2    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Ljava/util/Scanner;->close()V

    throw v5

    :cond_4
    invoke-virtual {v4}, Ljava/util/Scanner;->close()V

    .line 199
    new-instance v5, Lcom/codeglue/terraria/codec/language/bm/Languages;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/codeglue/terraria/codec/language/bm/Languages;-><init>(Ljava/util/Set;)V

    return-object v5
.end method

.method private static langResourceName(Lcom/codeglue/terraria/codec/language/bm/NameType;)Ljava/lang/String;
    .locals 4
    .param p0, "nameType"    # Lcom/codeglue/terraria/codec/language/bm/NameType;

    .prologue
    .line 203
    const-string v0, "org/apache/commons/codec/language/bm/%s_languages.txt"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/codeglue/terraria/codec/language/bm/NameType;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLanguages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/codeglue/terraria/codec/language/bm/Languages;->languages:Ljava/util/Set;

    return-object v0
.end method
