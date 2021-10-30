.class public Lcom/flurry/org/codehaus/jackson/util/VersionUtil;
.super Ljava/lang/Object;
.source "VersionUtil.java"


# static fields
.field public static final VERSION_FILE:Ljava/lang/String; = "VERSION.txt"

.field private static final VERSION_SEPARATOR:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "[-_./;:]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/flurry/org/codehaus/jackson/util/VersionUtil;->VERSION_SEPARATOR:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseVersion(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/Version;
    .locals 8
    .param p0, "versionStr"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x3

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v4, 0x0

    .line 52
    if-nez p0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-object v4

    .line 53
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 55
    sget-object v5, Lcom/flurry/org/codehaus/jackson/util/VersionUtil;->VERSION_SEPARATOR:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "parts":[Ljava/lang/String;
    array-length v5, v2

    if-lt v5, v6, :cond_0

    .line 60
    aget-object v5, v2, v3

    invoke-static {v5}, Lcom/flurry/org/codehaus/jackson/util/VersionUtil;->parseVersionPart(Ljava/lang/String;)I

    move-result v0

    .line 61
    .local v0, "major":I
    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-static {v5}, Lcom/flurry/org/codehaus/jackson/util/VersionUtil;->parseVersionPart(Ljava/lang/String;)I

    move-result v1

    .line 62
    .local v1, "minor":I
    array-length v5, v2

    if-le v5, v6, :cond_2

    aget-object v5, v2, v6

    invoke-static {v5}, Lcom/flurry/org/codehaus/jackson/util/VersionUtil;->parseVersionPart(Ljava/lang/String;)I

    move-result v3

    .line 63
    .local v3, "patch":I
    :cond_2
    array-length v5, v2

    if-le v5, v7, :cond_3

    aget-object v4, v2, v7

    .line 64
    .local v4, "snapshot":Ljava/lang/String;
    :cond_3
    new-instance v5, Lcom/flurry/org/codehaus/jackson/Version;

    invoke-direct {v5, v0, v1, v3, v4}, Lcom/flurry/org/codehaus/jackson/Version;-><init>(IIILjava/lang/String;)V

    move-object v4, v5

    goto :goto_0
.end method

.method protected static parseVersionPart(Ljava/lang/String;)I
    .locals 6
    .param p0, "partStr"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    .line 70
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 71
    .local v2, "len":I
    const/4 v3, 0x0

    .line 72
    .local v3, "number":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 73
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 74
    .local v0, "c":C
    const/16 v4, 0x39

    if-gt v0, v4, :cond_0

    const/16 v4, 0x30

    if-ge v0, v4, :cond_1

    .line 77
    .end local v0    # "c":C
    :cond_0
    return v3

    .line 75
    .restart local v0    # "c":C
    :cond_1
    mul-int/lit8 v4, v3, 0xa

    add-int/lit8 v5, v0, -0x30

    add-int v3, v4, v5

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static versionFor(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/Version;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/Version;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 33
    .local v3, "version":Lcom/flurry/org/codehaus/jackson/Version;
    :try_start_0
    const-string v4, "VERSION.txt"

    invoke-virtual {p0, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 34
    .local v2, "in":Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 36
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 37
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/flurry/org/codehaus/jackson/util/VersionUtil;->parseVersion(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/Version;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 40
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 47
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "in":Ljava/io/InputStream;
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    invoke-static {}, Lcom/flurry/org/codehaus/jackson/Version;->unknownVersion()Lcom/flurry/org/codehaus/jackson/Version;

    move-result-object v3

    .end local v3    # "version":Lcom/flurry/org/codehaus/jackson/Version;
    :cond_1
    return-object v3

    .line 41
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "version":Lcom/flurry/org/codehaus/jackson/Version;
    :catch_0
    move-exception v1

    .line 42
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 46
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v4

    goto :goto_0

    .line 39
    .restart local v2    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v4

    .line 40
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 42
    :try_start_5
    throw v4

    .line 41
    :catch_2
    move-exception v1

    .line 42
    .restart local v1    # "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
.end method
