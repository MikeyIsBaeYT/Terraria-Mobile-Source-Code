.class public Lcom/flurry/org/apache/avro/Schema$Parser;
.super Ljava/lang/Object;
.source "Schema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/Schema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation


# instance fields
.field private names:Lcom/flurry/org/apache/avro/Schema$Names;

.field private validate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 926
    new-instance v0, Lcom/flurry/org/apache/avro/Schema$Names;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/Schema$Names;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Parser;->names:Lcom/flurry/org/apache/avro/Schema$Names;

    .line 927
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/org/apache/avro/Schema$Parser;->validate:Z

    return-void
.end method

.method private parse(Lcom/flurry/org/codehaus/jackson/JsonParser;)Lcom/flurry/org/apache/avro/Schema;
    .locals 5
    .param p1, "parser"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 977
    invoke-static {}, Lcom/flurry/org/apache/avro/Schema;->access$1500()Ljava/lang/ThreadLocal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 979
    .local v1, "saved":Z
    :try_start_0
    invoke-static {}, Lcom/flurry/org/apache/avro/Schema;->access$1500()Ljava/lang/ThreadLocal;

    move-result-object v2

    iget-boolean v3, p0, Lcom/flurry/org/apache/avro/Schema$Parser;->validate:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 980
    sget-object v2, Lcom/flurry/org/apache/avro/Schema;->MAPPER:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v2, p1}, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->readTree(Lcom/flurry/org/codehaus/jackson/JsonParser;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/org/apache/avro/Schema$Parser;->names:Lcom/flurry/org/apache/avro/Schema$Names;

    invoke-static {v2, v3}, Lcom/flurry/org/apache/avro/Schema;->parse(Lcom/flurry/org/codehaus/jackson/JsonNode;Lcom/flurry/org/apache/avro/Schema$Names;)Lcom/flurry/org/apache/avro/Schema;
    :try_end_0
    .catch Lcom/flurry/org/codehaus/jackson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 984
    invoke-static {}, Lcom/flurry/org/apache/avro/Schema;->access$1500()Ljava/lang/ThreadLocal;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v2

    .line 981
    :catch_0
    move-exception v0

    .line 982
    .local v0, "e":Lcom/flurry/org/codehaus/jackson/JsonParseException;
    :try_start_1
    new-instance v2, Lcom/flurry/org/apache/avro/SchemaParseException;

    invoke-direct {v2, v0}, Lcom/flurry/org/apache/avro/SchemaParseException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 984
    .end local v0    # "e":Lcom/flurry/org/codehaus/jackson/JsonParseException;
    :catchall_0
    move-exception v2

    invoke-static {}, Lcom/flurry/org/apache/avro/Schema;->access$1500()Ljava/lang/ThreadLocal;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v2
.end method


# virtual methods
.method public addTypes(Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema$Parser;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/apache/avro/Schema;",
            ">;)",
            "Lcom/flurry/org/apache/avro/Schema$Parser;"
        }
    .end annotation

    .prologue
    .line 932
    .local p1, "types":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/flurry/org/apache/avro/Schema;>;"
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/org/apache/avro/Schema;

    .line 933
    .local v1, "s":Lcom/flurry/org/apache/avro/Schema;
    iget-object v2, p0, Lcom/flurry/org/apache/avro/Schema$Parser;->names:Lcom/flurry/org/apache/avro/Schema$Names;

    invoke-virtual {v2, v1}, Lcom/flurry/org/apache/avro/Schema$Names;->add(Lcom/flurry/org/apache/avro/Schema;)V

    goto :goto_0

    .line 934
    .end local v1    # "s":Lcom/flurry/org/apache/avro/Schema;
    :cond_0
    return-object p0
.end method

.method public getTypes()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/apache/avro/Schema;",
            ">;"
        }
    .end annotation

    .prologue
    .line 939
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 940
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/flurry/org/apache/avro/Schema;>;"
    iget-object v3, p0, Lcom/flurry/org/apache/avro/Schema$Parser;->names:Lcom/flurry/org/apache/avro/Schema$Names;

    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/Schema$Names;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/org/apache/avro/Schema;

    .line 941
    .local v2, "s":Lcom/flurry/org/apache/avro/Schema;
    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 942
    .end local v2    # "s":Lcom/flurry/org/apache/avro/Schema;
    :cond_0
    return-object v1
.end method

.method public getValidate()Z
    .locals 1

    .prologue
    .line 952
    iget-boolean v0, p0, Lcom/flurry/org/apache/avro/Schema$Parser;->validate:Z

    return v0
.end method

.method public parse(Ljava/io/File;)Lcom/flurry/org/apache/avro/Schema;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 957
    sget-object v0, Lcom/flurry/org/apache/avro/Schema;->FACTORY:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/File;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/Schema$Parser;->parse(Lcom/flurry/org/codehaus/jackson/JsonParser;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;)Lcom/flurry/org/apache/avro/Schema;
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 963
    sget-object v0, Lcom/flurry/org/apache/avro/Schema;->FACTORY:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/Schema$Parser;->parse(Lcom/flurry/org/codehaus/jackson/JsonParser;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Schema;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 970
    :try_start_0
    sget-object v1, Lcom/flurry/org/apache/avro/Schema;->FACTORY:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/Reader;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/flurry/org/apache/avro/Schema$Parser;->parse(Lcom/flurry/org/codehaus/jackson/JsonParser;)Lcom/flurry/org/apache/avro/Schema;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 971
    :catch_0
    move-exception v0

    .line 972
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/flurry/org/apache/avro/SchemaParseException;

    invoke-direct {v1, v0}, Lcom/flurry/org/apache/avro/SchemaParseException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setValidate(Z)Lcom/flurry/org/apache/avro/Schema$Parser;
    .locals 0
    .param p1, "validate"    # Z

    .prologue
    .line 947
    iput-boolean p1, p0, Lcom/flurry/org/apache/avro/Schema$Parser;->validate:Z

    .line 948
    return-object p0
.end method
