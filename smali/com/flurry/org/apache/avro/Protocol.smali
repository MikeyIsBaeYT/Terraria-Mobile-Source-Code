.class public Lcom/flurry/org/apache/avro/Protocol;
.super Ljava/lang/Object;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/apache/avro/Protocol$1;,
        Lcom/flurry/org/apache/avro/Protocol$TwoWayMessage;,
        Lcom/flurry/org/apache/avro/Protocol$Message;
    }
.end annotation


# static fields
.field private static final MESSAGE_RESERVED:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROTOCOL_RESERVED:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYSTEM_ERROR:Lcom/flurry/org/apache/avro/Schema;

.field public static final SYSTEM_ERRORS:Lcom/flurry/org/apache/avro/Schema;

.field public static final VERSION:J = 0x1L


# instance fields
.field private doc:Ljava/lang/String;

.field private md5:[B

.field private messages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/apache/avro/Protocol$Message;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private namespace:Ljava/lang/String;

.field props:Lcom/flurry/org/apache/avro/Schema$Props;

.field private types:Lcom/flurry/org/apache/avro/Schema$Names;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 66
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/flurry/org/apache/avro/Protocol;->MESSAGE_RESERVED:Ljava/util/Set;

    .line 68
    sget-object v1, Lcom/flurry/org/apache/avro/Protocol;->MESSAGE_RESERVED:Ljava/util/Set;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "doc"

    aput-object v3, v2, v4

    const-string v3, "response"

    aput-object v3, v2, v5

    const-string v3, "request"

    aput-object v3, v2, v6

    const-string v3, "errors"

    aput-object v3, v2, v7

    const-string v3, "one-way"

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 211
    sget-object v1, Lcom/flurry/org/apache/avro/Schema$Type;->STRING:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static {v1}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v1

    sput-object v1, Lcom/flurry/org/apache/avro/Protocol;->SYSTEM_ERROR:Lcom/flurry/org/apache/avro/Schema;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/Schema;>;"
    sget-object v1, Lcom/flurry/org/apache/avro/Protocol;->SYSTEM_ERROR:Lcom/flurry/org/apache/avro/Schema;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-static {v0}, Lcom/flurry/org/apache/avro/Schema;->createUnion(Ljava/util/List;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v1

    sput-object v1, Lcom/flurry/org/apache/avro/Protocol;->SYSTEM_ERRORS:Lcom/flurry/org/apache/avro/Schema;

    .line 221
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/flurry/org/apache/avro/Protocol;->PROTOCOL_RESERVED:Ljava/util/Set;

    .line 223
    sget-object v1, Lcom/flurry/org/apache/avro/Protocol;->PROTOCOL_RESERVED:Ljava/util/Set;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "namespace"

    aput-object v3, v2, v4

    const-string v3, "protocol"

    aput-object v3, v2, v5

    const-string v3, "doc"

    aput-object v3, v2, v6

    const-string v3, "messages"

    aput-object v3, v2, v7

    const-string v3, "types"

    aput-object v3, v2, v8

    const/4 v3, 0x5

    const-string v4, "errors"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 226
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    new-instance v0, Lcom/flurry/org/apache/avro/Schema$Names;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/Schema$Names;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/Protocol;->types:Lcom/flurry/org/apache/avro/Schema$Names;

    .line 207
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/Protocol;->messages:Ljava/util/Map;

    .line 227
    new-instance v0, Lcom/flurry/org/apache/avro/Schema$Props;

    sget-object v1, Lcom/flurry/org/apache/avro/Protocol;->PROTOCOL_RESERVED:Ljava/util/Set;

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/Schema$Props;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/Protocol;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    .line 229
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/flurry/org/apache/avro/Protocol;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "doc"    # Ljava/lang/String;
    .param p3, "namespace"    # Ljava/lang/String;

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    new-instance v0, Lcom/flurry/org/apache/avro/Schema$Names;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/Schema$Names;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/Protocol;->types:Lcom/flurry/org/apache/avro/Schema$Names;

    .line 207
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/Protocol;->messages:Ljava/util/Map;

    .line 227
    new-instance v0, Lcom/flurry/org/apache/avro/Schema$Props;

    sget-object v1, Lcom/flurry/org/apache/avro/Protocol;->PROTOCOL_RESERVED:Ljava/util/Set;

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/Schema$Props;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/Protocol;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    .line 232
    iput-object p1, p0, Lcom/flurry/org/apache/avro/Protocol;->name:Ljava/lang/String;

    .line 233
    iput-object p2, p0, Lcom/flurry/org/apache/avro/Protocol;->doc:Ljava/lang/String;

    .line 234
    iput-object p3, p0, Lcom/flurry/org/apache/avro/Protocol;->namespace:Ljava/lang/String;

    .line 235
    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/flurry/org/apache/avro/Protocol;->MESSAGE_RESERVED:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lcom/flurry/org/apache/avro/Protocol;)Lcom/flurry/org/apache/avro/Schema$Names;
    .locals 1
    .param p0, "x0"    # Lcom/flurry/org/apache/avro/Protocol;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Protocol;->types:Lcom/flurry/org/apache/avro/Schema$Names;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 561
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/flurry/org/apache/avro/Protocol;->parse(Ljava/io/File;)Lcom/flurry/org/apache/avro/Protocol;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 562
    return-void
.end method

.method private static parse(Lcom/flurry/org/codehaus/jackson/JsonParser;)Lcom/flurry/org/apache/avro/Protocol;
    .locals 3
    .param p0, "parser"    # Lcom/flurry/org/codehaus/jackson/JsonParser;

    .prologue
    .line 411
    :try_start_0
    new-instance v1, Lcom/flurry/org/apache/avro/Protocol;

    invoke-direct {v1}, Lcom/flurry/org/apache/avro/Protocol;-><init>()V

    .line 412
    .local v1, "protocol":Lcom/flurry/org/apache/avro/Protocol;
    sget-object v2, Lcom/flurry/org/apache/avro/Schema;->MAPPER:Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v2, p0}, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->readTree(Lcom/flurry/org/codehaus/jackson/JsonParser;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/org/apache/avro/Protocol;->parse(Lcom/flurry/org/codehaus/jackson/JsonNode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    return-object v1

    .line 414
    .end local v1    # "protocol":Lcom/flurry/org/apache/avro/Protocol;
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/flurry/org/apache/avro/SchemaParseException;

    invoke-direct {v2, v0}, Lcom/flurry/org/apache/avro/SchemaParseException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static parse(Ljava/io/File;)Lcom/flurry/org/apache/avro/Protocol;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 391
    sget-object v0, Lcom/flurry/org/apache/avro/Schema;->FACTORY:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p0}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/File;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/org/apache/avro/Protocol;->parse(Lcom/flurry/org/codehaus/jackson/JsonParser;)Lcom/flurry/org/apache/avro/Protocol;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/InputStream;)Lcom/flurry/org/apache/avro/Protocol;
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    sget-object v0, Lcom/flurry/org/apache/avro/Schema;->FACTORY:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p0}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/org/apache/avro/Protocol;->parse(Lcom/flurry/org/codehaus/jackson/JsonParser;)Lcom/flurry/org/apache/avro/Protocol;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Protocol;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 402
    :try_start_0
    sget-object v1, Lcom/flurry/org/apache/avro/Schema;->FACTORY:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/org/apache/avro/Protocol;->parse(Lcom/flurry/org/codehaus/jackson/JsonParser;)Lcom/flurry/org/apache/avro/Protocol;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v1, v0}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private parse(Lcom/flurry/org/codehaus/jackson/JsonNode;)V
    .locals 0
    .param p1, "json"    # Lcom/flurry/org/codehaus/jackson/JsonNode;

    .prologue
    .line 420
    invoke-direct {p0, p1}, Lcom/flurry/org/apache/avro/Protocol;->parseNamespace(Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    .line 421
    invoke-direct {p0, p1}, Lcom/flurry/org/apache/avro/Protocol;->parseName(Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    .line 422
    invoke-direct {p0, p1}, Lcom/flurry/org/apache/avro/Protocol;->parseTypes(Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    .line 423
    invoke-direct {p0, p1}, Lcom/flurry/org/apache/avro/Protocol;->parseMessages(Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    .line 424
    invoke-direct {p0, p1}, Lcom/flurry/org/apache/avro/Protocol;->parseDoc(Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    .line 425
    invoke-direct {p0, p1}, Lcom/flurry/org/apache/avro/Protocol;->parseProps(Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    .line 426
    return-void
.end method

.method private parseDoc(Lcom/flurry/org/codehaus/jackson/JsonNode;)V
    .locals 1
    .param p1, "json"    # Lcom/flurry/org/codehaus/jackson/JsonNode;

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/flurry/org/apache/avro/Protocol;->parseDocNode(Lcom/flurry/org/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/apache/avro/Protocol;->doc:Ljava/lang/String;

    .line 437
    return-void
.end method

.method private parseDocNode(Lcom/flurry/org/codehaus/jackson/JsonNode;)Ljava/lang/String;
    .locals 2
    .param p1, "json"    # Lcom/flurry/org/codehaus/jackson/JsonNode;

    .prologue
    .line 440
    const-string v1, "doc"

    invoke-virtual {p1, v1}, Lcom/flurry/org/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 441
    .local v0, "nameNode":Lcom/flurry/org/codehaus/jackson/JsonNode;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 442
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private parseMessage(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonNode;)Lcom/flurry/org/apache/avro/Protocol$Message;
    .locals 28
    .param p1, "messageName"    # Ljava/lang/String;
    .param p2, "json"    # Lcom/flurry/org/codehaus/jackson/JsonNode;

    .prologue
    .line 485
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/Protocol;->parseDocNode(Lcom/flurry/org/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v5

    .line 487
    .local v5, "doc":Ljava/lang/String;
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 488
    .local v6, "mProps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getFieldNames()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 489
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 490
    .local v23, "p":Ljava/lang/String;
    sget-object v2, Lcom/flurry/org/apache/avro/Protocol;->MESSAGE_RESERVED:Ljava/util/Set;

    move-object/from16 v0, v23

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 491
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v24

    .line 492
    .local v24, "prop":Lcom/flurry/org/codehaus/jackson/JsonNode;
    invoke-virtual/range {v24 .. v24}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isValueNode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {v24 .. v24}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isTextual()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 493
    invoke-virtual/range {v24 .. v24}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 497
    .end local v23    # "p":Ljava/lang/String;
    .end local v24    # "prop":Lcom/flurry/org/codehaus/jackson/JsonNode;
    :cond_1
    const-string v2, "request"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v25

    .line 498
    .local v25, "requestNode":Lcom/flurry/org/codehaus/jackson/JsonNode;
    if-eqz v25, :cond_2

    invoke-virtual/range {v25 .. v25}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isArray()Z

    move-result v2

    if-nez v2, :cond_3

    .line 499
    :cond_2
    new-instance v2, Lcom/flurry/org/apache/avro/SchemaParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No request specified: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/flurry/org/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 500
    :cond_3
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 501
    .local v17, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/Schema$Field;>;"
    invoke-virtual/range {v25 .. v25}, Lcom/flurry/org/codehaus/jackson/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/flurry/org/codehaus/jackson/JsonNode;

    .line 502
    .local v14, "field":Lcom/flurry/org/codehaus/jackson/JsonNode;
    const-string v2, "name"

    invoke-virtual {v14, v2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v15

    .line 503
    .local v15, "fieldNameNode":Lcom/flurry/org/codehaus/jackson/JsonNode;
    if-nez v15, :cond_4

    .line 504
    new-instance v2, Lcom/flurry/org/apache/avro/SchemaParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No param name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/flurry/org/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 505
    :cond_4
    const-string v2, "type"

    invoke-virtual {v14, v2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v16

    .line 506
    .local v16, "fieldTypeNode":Lcom/flurry/org/codehaus/jackson/JsonNode;
    if-nez v16, :cond_5

    .line 507
    new-instance v2, Lcom/flurry/org/apache/avro/SchemaParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No param type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/flurry/org/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 508
    :cond_5
    invoke-virtual {v15}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v20

    .line 509
    .local v20, "name":Ljava/lang/String;
    new-instance v2, Lcom/flurry/org/apache/avro/Schema$Field;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flurry/org/apache/avro/Protocol;->types:Lcom/flurry/org/apache/avro/Schema$Names;

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lcom/flurry/org/apache/avro/Schema;->parse(Lcom/flurry/org/codehaus/jackson/JsonNode;Lcom/flurry/org/apache/avro/Schema$Names;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v3

    const/4 v4, 0x0

    const-string v9, "default"

    invoke-virtual {v14, v9}, Lcom/flurry/org/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v9

    move-object/from16 v0, v20

    invoke-direct {v2, v0, v3, v4, v9}, Lcom/flurry/org/apache/avro/Schema$Field;-><init>(Ljava/lang/String;Lcom/flurry/org/apache/avro/Schema;Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 513
    .end local v14    # "field":Lcom/flurry/org/codehaus/jackson/JsonNode;
    .end local v15    # "fieldNameNode":Lcom/flurry/org/codehaus/jackson/JsonNode;
    .end local v16    # "fieldTypeNode":Lcom/flurry/org/codehaus/jackson/JsonNode;
    .end local v20    # "name":Ljava/lang/String;
    :cond_6
    invoke-static/range {v17 .. v17}, Lcom/flurry/org/apache/avro/Schema;->createRecord(Ljava/util/List;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v7

    .line 515
    .local v7, "request":Lcom/flurry/org/apache/avro/Schema;
    const/16 v21, 0x0

    .line 516
    .local v21, "oneWay":Z
    const-string v2, "one-way"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v22

    .line 517
    .local v22, "oneWayNode":Lcom/flurry/org/codehaus/jackson/JsonNode;
    if-eqz v22, :cond_8

    .line 518
    invoke-virtual/range {v22 .. v22}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isBoolean()Z

    move-result v2

    if-nez v2, :cond_7

    .line 519
    new-instance v2, Lcom/flurry/org/apache/avro/SchemaParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "one-way must be boolean: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/flurry/org/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 520
    :cond_7
    invoke-virtual/range {v22 .. v22}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getBooleanValue()Z

    move-result v21

    .line 523
    :cond_8
    const-string v2, "response"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v26

    .line 524
    .local v26, "responseNode":Lcom/flurry/org/codehaus/jackson/JsonNode;
    if-nez v21, :cond_9

    if-nez v26, :cond_9

    .line 525
    new-instance v2, Lcom/flurry/org/apache/avro/SchemaParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No response specified: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/flurry/org/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 527
    :cond_9
    const-string v2, "errors"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v12

    .line 529
    .local v12, "decls":Lcom/flurry/org/codehaus/jackson/JsonNode;
    if-eqz v21, :cond_c

    .line 530
    if-eqz v12, :cond_a

    .line 531
    new-instance v2, Lcom/flurry/org/apache/avro/SchemaParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "one-way can\'t have errors: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/flurry/org/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 532
    :cond_a
    if-eqz v26, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flurry/org/apache/avro/Protocol;->types:Lcom/flurry/org/apache/avro/Schema$Names;

    move-object/from16 v0, v26

    invoke-static {v0, v2}, Lcom/flurry/org/apache/avro/Schema;->parse(Lcom/flurry/org/codehaus/jackson/JsonNode;Lcom/flurry/org/apache/avro/Schema$Names;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v2

    sget-object v3, Lcom/flurry/org/apache/avro/Schema$Type;->NULL:Lcom/flurry/org/apache/avro/Schema$Type;

    if-eq v2, v3, :cond_b

    .line 534
    new-instance v2, Lcom/flurry/org/apache/avro/SchemaParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "One way response must be null: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/flurry/org/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 535
    :cond_b
    new-instance v2, Lcom/flurry/org/apache/avro/Protocol$Message;

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/flurry/org/apache/avro/Protocol$Message;-><init>(Lcom/flurry/org/apache/avro/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Protocol$1;)V

    .line 556
    :goto_2
    return-object v2

    .line 538
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flurry/org/apache/avro/Protocol;->types:Lcom/flurry/org/apache/avro/Schema$Names;

    move-object/from16 v0, v26

    invoke-static {v0, v2}, Lcom/flurry/org/apache/avro/Schema;->parse(Lcom/flurry/org/codehaus/jackson/JsonNode;Lcom/flurry/org/apache/avro/Schema$Names;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v8

    .line 540
    .local v8, "response":Lcom/flurry/org/apache/avro/Schema;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 541
    .local v13, "errs":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/Schema;>;"
    sget-object v2, Lcom/flurry/org/apache/avro/Protocol;->SYSTEM_ERROR:Lcom/flurry/org/apache/avro/Schema;

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    if-eqz v12, :cond_10

    .line 543
    invoke-virtual {v12}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isArray()Z

    move-result v2

    if-nez v2, :cond_d

    .line 544
    new-instance v2, Lcom/flurry/org/apache/avro/SchemaParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Errors not an array: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/flurry/org/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 545
    :cond_d
    invoke-virtual {v12}, Lcom/flurry/org/codehaus/jackson/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/flurry/org/codehaus/jackson/JsonNode;

    .line 546
    .local v11, "decl":Lcom/flurry/org/codehaus/jackson/JsonNode;
    invoke-virtual {v11}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v20

    .line 547
    .restart local v20    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flurry/org/apache/avro/Protocol;->types:Lcom/flurry/org/apache/avro/Schema$Names;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/flurry/org/apache/avro/Schema$Names;->get(Ljava/lang/Object;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v27

    .line 548
    .local v27, "schema":Lcom/flurry/org/apache/avro/Schema;
    if-nez v27, :cond_e

    .line 549
    new-instance v2, Lcom/flurry/org/apache/avro/SchemaParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Undefined error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/flurry/org/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 550
    :cond_e
    invoke-virtual/range {v27 .. v27}, Lcom/flurry/org/apache/avro/Schema;->isError()Z

    move-result v2

    if-nez v2, :cond_f

    .line 551
    new-instance v2, Lcom/flurry/org/apache/avro/SchemaParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not an error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/flurry/org/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 552
    :cond_f
    move-object/from16 v0, v27

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 556
    .end local v11    # "decl":Lcom/flurry/org/codehaus/jackson/JsonNode;
    .end local v20    # "name":Ljava/lang/String;
    .end local v27    # "schema":Lcom/flurry/org/apache/avro/Schema;
    :cond_10
    new-instance v2, Lcom/flurry/org/apache/avro/Protocol$TwoWayMessage;

    invoke-static {v13}, Lcom/flurry/org/apache/avro/Schema;->createUnion(Ljava/util/List;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v10}, Lcom/flurry/org/apache/avro/Protocol$TwoWayMessage;-><init>(Lcom/flurry/org/apache/avro/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Protocol$1;)V

    goto/16 :goto_2
.end method

.method private parseMessages(Lcom/flurry/org/codehaus/jackson/JsonNode;)V
    .locals 5
    .param p1, "json"    # Lcom/flurry/org/codehaus/jackson/JsonNode;

    .prologue
    .line 476
    const-string v3, "messages"

    invoke-virtual {p1, v3}, Lcom/flurry/org/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 477
    .local v0, "defs":Lcom/flurry/org/codehaus/jackson/JsonNode;
    if-nez v0, :cond_1

    .line 482
    :cond_0
    return-void

    .line 478
    :cond_1
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getFieldNames()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 479
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 480
    .local v2, "prop":Ljava/lang/String;
    iget-object v3, p0, Lcom/flurry/org/apache/avro/Protocol;->messages:Ljava/util/Map;

    invoke-virtual {v0, v2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/flurry/org/apache/avro/Protocol;->parseMessage(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonNode;)Lcom/flurry/org/apache/avro/Protocol$Message;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private parseName(Lcom/flurry/org/codehaus/jackson/JsonNode;)V
    .locals 4
    .param p1, "json"    # Lcom/flurry/org/codehaus/jackson/JsonNode;

    .prologue
    .line 446
    const-string v1, "protocol"

    invoke-virtual {p1, v1}, Lcom/flurry/org/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 447
    .local v0, "nameNode":Lcom/flurry/org/codehaus/jackson/JsonNode;
    if-nez v0, :cond_0

    .line 448
    new-instance v1, Lcom/flurry/org/apache/avro/SchemaParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No protocol name specified: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/org/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 449
    :cond_0
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/org/apache/avro/Protocol;->name:Ljava/lang/String;

    .line 450
    return-void
.end method

.method private parseNamespace(Lcom/flurry/org/codehaus/jackson/JsonNode;)V
    .locals 3
    .param p1, "json"    # Lcom/flurry/org/codehaus/jackson/JsonNode;

    .prologue
    .line 429
    const-string v1, "namespace"

    invoke-virtual {p1, v1}, Lcom/flurry/org/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 430
    .local v0, "nameNode":Lcom/flurry/org/codehaus/jackson/JsonNode;
    if-nez v0, :cond_0

    .line 433
    :goto_0
    return-void

    .line 431
    :cond_0
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/org/apache/avro/Protocol;->namespace:Ljava/lang/String;

    .line 432
    iget-object v1, p0, Lcom/flurry/org/apache/avro/Protocol;->types:Lcom/flurry/org/apache/avro/Schema$Names;

    iget-object v2, p0, Lcom/flurry/org/apache/avro/Protocol;->namespace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/flurry/org/apache/avro/Schema$Names;->space(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseProps(Lcom/flurry/org/codehaus/jackson/JsonNode;)V
    .locals 4
    .param p1, "json"    # Lcom/flurry/org/codehaus/jackson/JsonNode;

    .prologue
    .line 465
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getFieldNames()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 466
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 467
    .local v1, "p":Ljava/lang/String;
    sget-object v3, Lcom/flurry/org/apache/avro/Protocol;->PROTOCOL_RESERVED:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 468
    invoke-virtual {p1, v1}, Lcom/flurry/org/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v2

    .line 469
    .local v2, "prop":Lcom/flurry/org/codehaus/jackson/JsonNode;
    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isValueNode()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isTextual()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 470
    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/flurry/org/apache/avro/Protocol;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 473
    .end local v1    # "p":Ljava/lang/String;
    .end local v2    # "prop":Lcom/flurry/org/codehaus/jackson/JsonNode;
    :cond_1
    return-void
.end method

.method private parseTypes(Lcom/flurry/org/codehaus/jackson/JsonNode;)V
    .locals 6
    .param p1, "json"    # Lcom/flurry/org/codehaus/jackson/JsonNode;

    .prologue
    .line 453
    const-string v3, "types"

    invoke-virtual {p1, v3}, Lcom/flurry/org/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 454
    .local v0, "defs":Lcom/flurry/org/codehaus/jackson/JsonNode;
    if-nez v0, :cond_1

    .line 462
    :cond_0
    return-void

    .line 455
    :cond_1
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isArray()Z

    move-result v3

    if-nez v3, :cond_2

    .line 456
    new-instance v3, Lcom/flurry/org/apache/avro/SchemaParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Types not an array: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/flurry/org/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 457
    :cond_2
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/org/codehaus/jackson/JsonNode;

    .line 458
    .local v2, "type":Lcom/flurry/org/codehaus/jackson/JsonNode;
    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isObject()Z

    move-result v3

    if-nez v3, :cond_3

    .line 459
    new-instance v3, Lcom/flurry/org/apache/avro/SchemaParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Type not an object: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/flurry/org/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 460
    :cond_3
    iget-object v3, p0, Lcom/flurry/org/apache/avro/Protocol;->types:Lcom/flurry/org/apache/avro/Schema$Names;

    invoke-static {v2, v3}, Lcom/flurry/org/apache/avro/Schema;->parse(Lcom/flurry/org/codehaus/jackson/JsonNode;Lcom/flurry/org/apache/avro/Schema$Names;)Lcom/flurry/org/apache/avro/Schema;

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 309
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Protocol;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/org/apache/avro/Schema$Props;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    monitor-exit p0

    return-void

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createMessage(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/Protocol$Message;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "doc"    # Ljava/lang/String;
    .param p3, "request"    # Lcom/flurry/org/apache/avro/Schema;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 268
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/flurry/org/apache/avro/Protocol;->createMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/Protocol$Message;

    move-result-object v0

    return-object v0
.end method

.method public createMessage(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/Protocol$Message;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "doc"    # Ljava/lang/String;
    .param p3, "request"    # Lcom/flurry/org/apache/avro/Schema;
    .param p4, "response"    # Lcom/flurry/org/apache/avro/Schema;
    .param p5, "errors"    # Lcom/flurry/org/apache/avro/Schema;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 280
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/org/apache/avro/Protocol;->createMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/Protocol$Message;

    move-result-object v0

    return-object v0
.end method

.method public createMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/Protocol$Message;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "doc"    # Ljava/lang/String;
    .param p4, "request"    # Lcom/flurry/org/apache/avro/Schema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/flurry/org/apache/avro/Schema;",
            ")",
            "Lcom/flurry/org/apache/avro/Protocol$Message;"
        }
    .end annotation

    .prologue
    .line 273
    .local p3, "propMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/flurry/org/apache/avro/Protocol$Message;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/flurry/org/apache/avro/Protocol$Message;-><init>(Lcom/flurry/org/apache/avro/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Protocol$1;)V

    return-object v0
.end method

.method public createMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/Protocol$Message;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "doc"    # Ljava/lang/String;
    .param p4, "request"    # Lcom/flurry/org/apache/avro/Schema;
    .param p5, "response"    # Lcom/flurry/org/apache/avro/Schema;
    .param p6, "errors"    # Lcom/flurry/org/apache/avro/Schema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/flurry/org/apache/avro/Schema;",
            "Lcom/flurry/org/apache/avro/Schema;",
            "Lcom/flurry/org/apache/avro/Schema;",
            ")",
            "Lcom/flurry/org/apache/avro/Protocol$Message;"
        }
    .end annotation

    .prologue
    .line 287
    .local p3, "propMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/flurry/org/apache/avro/Protocol$TwoWayMessage;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/flurry/org/apache/avro/Protocol$TwoWayMessage;-><init>(Lcom/flurry/org/apache/avro/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Protocol$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 318
    if-ne p1, p0, :cond_1

    .line 321
    :cond_0
    :goto_0
    return v1

    .line 319
    :cond_1
    instance-of v3, p1, Lcom/flurry/org/apache/avro/Protocol;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 320
    check-cast v0, Lcom/flurry/org/apache/avro/Protocol;

    .line 321
    .local v0, "that":Lcom/flurry/org/apache/avro/Protocol;
    iget-object v3, p0, Lcom/flurry/org/apache/avro/Protocol;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/flurry/org/apache/avro/Protocol;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/flurry/org/apache/avro/Protocol;->namespace:Ljava/lang/String;

    iget-object v4, v0, Lcom/flurry/org/apache/avro/Protocol;->namespace:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/flurry/org/apache/avro/Protocol;->types:Lcom/flurry/org/apache/avro/Schema$Names;

    iget-object v4, v0, Lcom/flurry/org/apache/avro/Protocol;->types:Lcom/flurry/org/apache/avro/Schema$Names;

    invoke-virtual {v3, v4}, Lcom/flurry/org/apache/avro/Schema$Names;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/flurry/org/apache/avro/Protocol;->messages:Ljava/util/Map;

    iget-object v4, v0, Lcom/flurry/org/apache/avro/Protocol;->messages:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/flurry/org/apache/avro/Protocol;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    iget-object v4, p0, Lcom/flurry/org/apache/avro/Protocol;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    invoke-virtual {v3, v4}, Lcom/flurry/org/apache/avro/Schema$Props;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getDoc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Protocol;->doc:Ljava/lang/String;

    return-object v0
.end method

.method public getMD5()[B
    .locals 4

    .prologue
    .line 379
    iget-object v1, p0, Lcom/flurry/org/apache/avro/Protocol;->md5:[B

    if-nez v1, :cond_0

    .line 381
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/Protocol;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/org/apache/avro/Protocol;->md5:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/apache/avro/Protocol;->md5:[B

    return-object v1

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v1, v0}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMessages()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/apache/avro/Protocol$Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Protocol;->messages:Ljava/util/Map;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Protocol;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Protocol;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 296
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Protocol;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    invoke-virtual {v0, p1}, Lcom/flurry/org/apache/avro/Schema$Props;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProps()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Protocol;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getType(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Schema;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Protocol;->types:Lcom/flurry/org/apache/avro/Schema$Names;

    invoke-virtual {v0, p1}, Lcom/flurry/org/apache/avro/Schema$Names;->get(Ljava/lang/Object;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    return-object v0
.end method

.method public getTypes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/flurry/org/apache/avro/Schema;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Protocol;->types:Lcom/flurry/org/apache/avro/Schema$Names;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/Schema$Names;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Protocol;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/org/apache/avro/Protocol;->namespace:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/flurry/org/apache/avro/Protocol;->types:Lcom/flurry/org/apache/avro/Schema$Names;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Names;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/flurry/org/apache/avro/Protocol;->messages:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/flurry/org/apache/avro/Protocol;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Props;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setTypes(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/flurry/org/apache/avro/Schema;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, "newTypes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/flurry/org/apache/avro/Schema;>;"
    new-instance v2, Lcom/flurry/org/apache/avro/Schema$Names;

    invoke-direct {v2}, Lcom/flurry/org/apache/avro/Schema$Names;-><init>()V

    iput-object v2, p0, Lcom/flurry/org/apache/avro/Protocol;->types:Lcom/flurry/org/apache/avro/Schema$Names;

    .line 258
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/org/apache/avro/Schema;

    .line 259
    .local v1, "s":Lcom/flurry/org/apache/avro/Schema;
    iget-object v2, p0, Lcom/flurry/org/apache/avro/Protocol;->types:Lcom/flurry/org/apache/avro/Schema$Names;

    invoke-virtual {v2, v1}, Lcom/flurry/org/apache/avro/Schema$Names;->add(Lcom/flurry/org/apache/avro/Schema;)V

    goto :goto_0

    .line 260
    .end local v1    # "s":Lcom/flurry/org/apache/avro/Schema;
    :cond_0
    return-void
.end method

.method toJson(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
    .locals 6
    .param p1, "gen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    iget-object v4, p0, Lcom/flurry/org/apache/avro/Protocol;->types:Lcom/flurry/org/apache/avro/Schema$Names;

    iget-object v5, p0, Lcom/flurry/org/apache/avro/Protocol;->namespace:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/flurry/org/apache/avro/Schema$Names;->space(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 356
    const-string v4, "protocol"

    iget-object v5, p0, Lcom/flurry/org/apache/avro/Protocol;->name:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v4, "namespace"

    iget-object v5, p0, Lcom/flurry/org/apache/avro/Protocol;->namespace:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v4, p0, Lcom/flurry/org/apache/avro/Protocol;->doc:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v4, "doc"

    iget-object v5, p0, Lcom/flurry/org/apache/avro/Protocol;->doc:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_0
    iget-object v4, p0, Lcom/flurry/org/apache/avro/Protocol;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    invoke-virtual {v4, p1}, Lcom/flurry/org/apache/avro/Schema$Props;->write(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 361
    const-string v4, "types"

    invoke-virtual {p1, v4}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeArrayFieldStart(Ljava/lang/String;)V

    .line 362
    new-instance v2, Lcom/flurry/org/apache/avro/Schema$Names;

    iget-object v4, p0, Lcom/flurry/org/apache/avro/Protocol;->namespace:Ljava/lang/String;

    invoke-direct {v2, v4}, Lcom/flurry/org/apache/avro/Schema$Names;-><init>(Ljava/lang/String;)V

    .line 363
    .local v2, "resolved":Lcom/flurry/org/apache/avro/Schema$Names;
    iget-object v4, p0, Lcom/flurry/org/apache/avro/Protocol;->types:Lcom/flurry/org/apache/avro/Schema$Names;

    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/Schema$Names;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flurry/org/apache/avro/Schema;

    .line 364
    .local v3, "type":Lcom/flurry/org/apache/avro/Schema;
    invoke-virtual {v2, v3}, Lcom/flurry/org/apache/avro/Schema$Names;->contains(Lcom/flurry/org/apache/avro/Schema;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 365
    invoke-virtual {v3, v2, p1}, Lcom/flurry/org/apache/avro/Schema;->toJson(Lcom/flurry/org/apache/avro/Schema$Names;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 366
    .end local v3    # "type":Lcom/flurry/org/apache/avro/Schema;
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeEndArray()V

    .line 368
    const-string v4, "messages"

    invoke-virtual {p1, v4}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 369
    iget-object v4, p0, Lcom/flurry/org/apache/avro/Protocol;->messages:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 370
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/flurry/org/apache/avro/Protocol$Message;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 371
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/org/apache/avro/Protocol$Message;

    invoke-virtual {v4, p1}, Lcom/flurry/org/apache/avro/Protocol$Message;->toJson(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_1

    .line 373
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/flurry/org/apache/avro/Protocol$Message;>;"
    :cond_3
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeEndObject()V

    .line 374
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeEndObject()V

    .line 375
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/org/apache/avro/Protocol;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 4
    .param p1, "pretty"    # Z

    .prologue
    .line 342
    :try_start_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 343
    .local v2, "writer":Ljava/io/StringWriter;
    sget-object v3, Lcom/flurry/org/apache/avro/Schema;->FACTORY:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v3, v2}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    move-result-object v1

    .line 344
    .local v1, "gen":Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->useDefaultPrettyPrinter()Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    .line 345
    :cond_0
    invoke-virtual {p0, v1}, Lcom/flurry/org/apache/avro/Protocol;->toJson(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 346
    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->flush()V

    .line 347
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 348
    .end local v1    # "gen":Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .end local v2    # "writer":Ljava/io/StringWriter;
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v3, v0}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
