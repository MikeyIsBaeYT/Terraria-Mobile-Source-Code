.class public Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;
.super Ljava/lang/Object;
.source "ObjectWriter.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/Versioned;


# static fields
.field protected static final NULL_PRETTY_PRINTER:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;


# instance fields
.field protected final _config:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

.field protected final _jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

.field protected final _prettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

.field protected final _provider:Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;

.field protected final _rootType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

.field protected final _schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;

.field protected final _serializerFactory:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/flurry/org/codehaus/jackson/util/MinimalPrettyPrinter;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/util/MinimalPrettyPrinter;-><init>()V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->NULL_PRETTY_PRINTER:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;)V
    .locals 2
    .param p1, "mapper"    # Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;
    .param p2, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    .line 115
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->_serializerProvider:Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_provider:Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;

    .line 116
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;

    .line 117
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    .line 119
    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_rootType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 120
    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    .line 121
    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;

    .line 122
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/FormatSchema;)V
    .locals 2
    .param p1, "mapper"    # Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;
    .param p2, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p3, "s"    # Lcom/flurry/org/codehaus/jackson/FormatSchema;

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    .line 134
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->_serializerProvider:Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_provider:Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;

    .line 135
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;

    .line 136
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    .line 138
    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_rootType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 139
    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    .line 140
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;

    .line 141
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/PrettyPrinter;)V
    .locals 1
    .param p1, "mapper"    # Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;
    .param p2, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p3, "rootType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p4, "pp"    # Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    .line 97
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->_serializerProvider:Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_provider:Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;

    .line 98
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;

    .line 99
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    .line 101
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_rootType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 102
    iput-object p4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;

    .line 104
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;)V
    .locals 1
    .param p1, "base"    # Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;
    .param p2, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    .line 169
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_provider:Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_provider:Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;

    .line 170
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;

    .line 171
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    .line 172
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;

    .line 174
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_rootType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_rootType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 175
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    .line 176
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/PrettyPrinter;Lcom/flurry/org/codehaus/jackson/FormatSchema;)V
    .locals 1
    .param p1, "base"    # Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;
    .param p2, "config"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .param p3, "rootType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p4, "pp"    # Lcom/flurry/org/codehaus/jackson/PrettyPrinter;
    .param p5, "s"    # Lcom/flurry/org/codehaus/jackson/FormatSchema;

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    .line 151
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_provider:Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_provider:Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;

    .line 152
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;

    .line 153
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    .line 155
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_rootType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 156
    iput-object p4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    .line 157
    iput-object p5, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;

    .line 158
    return-void
.end method

.method private final _configAndWriteCloseable(Lcom/flurry/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;)V
    .locals 9
    .param p1, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "cfg"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;,
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 481
    move-object v8, p2

    check-cast v8, Ljava/io/Closeable;

    .line 483
    .local v8, "toClose":Ljava/io/Closeable;
    :try_start_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_rootType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    if-nez v0, :cond_3

    .line 484
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_provider:Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v0, p3, p1, p2, v1}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->serializeValue(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;)V

    .line 489
    :goto_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;

    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->setSchema(Lcom/flurry/org/codehaus/jackson/FormatSchema;)V

    .line 492
    :cond_0
    move-object v6, p1

    .line 493
    .local v6, "tmpJgen":Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    const/4 p1, 0x0

    .line 494
    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->close()V

    .line 495
    move-object v7, v8

    .line 496
    .local v7, "tmpToClose":Ljava/io/Closeable;
    const/4 v8, 0x0

    .line 497
    invoke-interface {v7}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    if-eqz p1, :cond_1

    .line 504
    :try_start_1
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 507
    :cond_1
    :goto_1
    if-eqz v8, :cond_2

    .line 509
    :try_start_2
    invoke-interface {v8}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 513
    :cond_2
    :goto_2
    return-void

    .line 486
    .end local v6    # "tmpJgen":Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .end local v7    # "tmpToClose":Ljava/io/Closeable;
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_provider:Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_rootType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->serializeValue(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 502
    :catchall_0
    move-exception v0

    if-eqz p1, :cond_4

    .line 504
    :try_start_4
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 507
    :cond_4
    :goto_3
    if-eqz v8, :cond_5

    .line 509
    :try_start_5
    invoke-interface {v8}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 510
    :cond_5
    :goto_4
    throw v0

    .line 505
    .restart local v6    # "tmpJgen":Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .restart local v7    # "tmpToClose":Ljava/io/Closeable;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 510
    :catch_1
    move-exception v0

    goto :goto_2

    .line 505
    .end local v6    # "tmpJgen":Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .end local v7    # "tmpToClose":Ljava/io/Closeable;
    :catch_2
    move-exception v1

    goto :goto_3

    .line 510
    :catch_3
    move-exception v1

    goto :goto_4
.end method

.method private final _writeCloseableValue(Lcom/flurry/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;)V
    .locals 8
    .param p1, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "cfg"    # Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;,
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 522
    move-object v7, p2

    check-cast v7, Ljava/io/Closeable;

    .line 524
    .local v7, "toClose":Ljava/io/Closeable;
    :try_start_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_rootType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    if-nez v0, :cond_2

    .line 525
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_provider:Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v0, p3, p1, p2, v1}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->serializeValue(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;)V

    .line 529
    :goto_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;->FLUSH_AFTER_WRITE_VALUE:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->flush()V

    .line 532
    :cond_0
    move-object v6, v7

    .line 533
    .local v6, "tmpToClose":Ljava/io/Closeable;
    const/4 v7, 0x0

    .line 534
    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    if-eqz v7, :cond_1

    .line 538
    :try_start_1
    invoke-interface {v7}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 542
    :cond_1
    :goto_1
    return-void

    .line 527
    .end local v6    # "tmpToClose":Ljava/io/Closeable;
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_provider:Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_rootType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->serializeValue(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 536
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 538
    :try_start_3
    invoke-interface {v7}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 539
    :cond_3
    :goto_2
    throw v0

    .restart local v6    # "tmpToClose":Ljava/io/Closeable;
    :catch_0
    move-exception v0

    goto :goto_1

    .end local v6    # "tmpToClose":Ljava/io/Closeable;
    :catch_1
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method protected final _configAndWriteValue(Lcom/flurry/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
    .locals 8
    .param p1, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;,
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 438
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_4

    .line 439
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    .line 440
    .local v7, "pp":Lcom/flurry/org/codehaus/jackson/PrettyPrinter;
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->NULL_PRETTY_PRINTER:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    if-ne v7, v0, :cond_0

    const/4 v7, 0x0

    .end local v7    # "pp":Lcom/flurry/org/codehaus/jackson/PrettyPrinter;
    :cond_0
    invoke-virtual {p1, v7}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->setPrettyPrinter(Lcom/flurry/org/codehaus/jackson/PrettyPrinter;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    .line 445
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;

    if-eqz v0, :cond_2

    .line 446
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;

    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->setSchema(Lcom/flurry/org/codehaus/jackson/FormatSchema;)V

    .line 449
    :cond_2
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;->CLOSE_CLOSEABLE:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, p2, Ljava/io/Closeable;

    if-eqz v0, :cond_5

    .line 450
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    invoke-direct {p0, p1, p2, v0}, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_configAndWriteCloseable(Lcom/flurry/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;)V

    .line 472
    :cond_3
    :goto_1
    return-void

    .line 441
    :cond_4
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;->INDENT_OUTPUT:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->useDefaultPrettyPrinter()Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    goto :goto_0

    .line 453
    :cond_5
    const/4 v6, 0x0

    .line 455
    .local v6, "closed":Z
    :try_start_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_rootType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    if-nez v0, :cond_6

    .line 456
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_provider:Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->serializeValue(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;)V

    .line 460
    :goto_2
    const/4 v6, 0x1

    .line 461
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    if-nez v6, :cond_3

    .line 468
    :try_start_1
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 469
    :catch_0
    move-exception v0

    goto :goto_1

    .line 458
    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_provider:Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_rootType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->serializeValue(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 466
    :catchall_0
    move-exception v0

    if-nez v6, :cond_7

    .line 468
    :try_start_3
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 469
    :cond_7
    :goto_3
    throw v0

    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method public canSerialize(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 422
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_provider:Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v0, v1, p1, v2}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->hasSerializerFor(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;)Z

    move-result v0

    return v0
.end method

.method public version()Lcom/flurry/org/codehaus/jackson/Version;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/org/codehaus/jackson/util/VersionUtil;->versionFor(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/Version;

    move-result-object v0

    return-object v0
.end method

.method public withDateFormat(Ljava/text/DateFormat;)Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;
    .locals 2
    .param p1, "df"    # Ljava/text/DateFormat;

    .prologue
    .line 299
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->withDateFormat(Ljava/text/DateFormat;)Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    .line 300
    .local v0, "newConfig":Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    if-ne v0, v1, :cond_0

    .line 303
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;
    :cond_0
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;

    invoke-direct {v1, p0, v0}, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;-><init>(Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;)V

    move-object p0, v1

    goto :goto_0
.end method

.method public withDefaultPrettyPrinter()Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;
    .locals 1

    .prologue
    .line 262
    new-instance v0, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter;-><init>()V

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->withPrettyPrinter(Lcom/flurry/org/codehaus/jackson/PrettyPrinter;)Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method public withFilters(Lcom/flurry/org/codehaus/jackson/map/ser/FilterProvider;)Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;
    .locals 2
    .param p1, "filterProvider"    # Lcom/flurry/org/codehaus/jackson/map/ser/FilterProvider;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->getFilterProvider()Lcom/flurry/org/codehaus/jackson/map/ser/FilterProvider;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 276
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;
    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->withFilters(Lcom/flurry/org/codehaus/jackson/map/ser/FilterProvider;)Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;-><init>(Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withPrettyPrinter(Lcom/flurry/org/codehaus/jackson/PrettyPrinter;)Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;
    .locals 6
    .param p1, "pp"    # Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    if-ne p1, v0, :cond_0

    .line 251
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;
    :goto_0
    return-object p0

    .line 248
    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;
    :cond_0
    if-nez p1, :cond_1

    .line 249
    sget-object p1, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->NULL_PRETTY_PRINTER:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    .line 251
    :cond_1
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_rootType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;-><init>(Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/PrettyPrinter;Lcom/flurry/org/codehaus/jackson/FormatSchema;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withSchema(Lcom/flurry/org/codehaus/jackson/FormatSchema;)Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;
    .locals 6
    .param p1, "schema"    # Lcom/flurry/org/codehaus/jackson/FormatSchema;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;

    if-ne v0, p1, :cond_0

    .line 287
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;
    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_rootType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;-><init>(Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/PrettyPrinter;Lcom/flurry/org/codehaus/jackson/FormatSchema;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withType(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;
    .locals 6
    .param p1, "rootType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_rootType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    if-ne p1, v0, :cond_0

    .line 215
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;
    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;-><init>(Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/PrettyPrinter;Lcom/flurry/org/codehaus/jackson/FormatSchema;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withType(Lcom/flurry/org/codehaus/jackson/type/TypeReference;)Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/type/TypeReference",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, "rootType":Lcom/flurry/org/codehaus/jackson/type/TypeReference;, "Lcom/flurry/org/codehaus/jackson/type/TypeReference<*>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->getTypeFactory()Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/type/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->withType(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method public withType(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, "rootType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->constructType(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->withType(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method public withView(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "view":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->getSerializationView()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 203
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;
    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->withView(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;-><init>(Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public writeValue(Lcom/flurry/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
    .locals 6
    .param p1, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;,
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;->CLOSE_CLOSEABLE:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p2, Ljava/io/Closeable;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    invoke-direct {p0, p1, p2, v0}, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_writeCloseableValue(Lcom/flurry/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;)V

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_rootType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    if-nez v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_provider:Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->serializeValue(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;)V

    .line 327
    :goto_1
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;->FLUSH_AFTER_WRITE_VALUE:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->flush()V

    goto :goto_0

    .line 325
    :cond_2
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_provider:Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_rootType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->serializeValue(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;)V

    goto :goto_1
.end method

.method public writeValue(Ljava/io/File;Ljava/lang/Object;)V
    .locals 2
    .param p1, "resultFile"    # Ljava/io/File;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;,
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonEncoding;->UTF8:Lcom/flurry/org/codehaus/jackson/JsonEncoding;

    invoke-virtual {v0, p1, v1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/File;Lcom/flurry/org/codehaus/jackson/JsonEncoding;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_configAndWriteValue(Lcom/flurry/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    .line 347
    return-void
.end method

.method public writeValue(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;,
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonEncoding;->UTF8:Lcom/flurry/org/codehaus/jackson/JsonEncoding;

    invoke-virtual {v0, p1, v1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lcom/flurry/org/codehaus/jackson/JsonEncoding;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_configAndWriteValue(Lcom/flurry/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    .line 364
    return-void
.end method

.method public writeValue(Ljava/io/Writer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "w"    # Ljava/io/Writer;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;,
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_configAndWriteValue(Lcom/flurry/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    .line 380
    return-void
.end method

.method public writeValueAsBytes(Ljava/lang/Object;)[B
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;,
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 407
    new-instance v0, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_getBufferRecycler()Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;-><init>(Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;)V

    .line 408
    .local v0, "bb":Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonEncoding;->UTF8:Lcom/flurry/org/codehaus/jackson/JsonEncoding;

    invoke-virtual {v2, v0, v3}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lcom/flurry/org/codehaus/jackson/JsonEncoding;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_configAndWriteValue(Lcom/flurry/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    .line 409
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v1

    .line 410
    .local v1, "result":[B
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/util/ByteArrayBuilder;->release()V

    .line 411
    return-object v1
.end method

.method public writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;,
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 392
    new-instance v0, Lcom/flurry/org/codehaus/jackson/io/SegmentedStringWriter;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_getBufferRecycler()Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/org/codehaus/jackson/io/SegmentedStringWriter;-><init>(Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;)V

    .line 393
    .local v0, "sw":Lcom/flurry/org/codehaus/jackson/io/SegmentedStringWriter;
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v1, v0}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/flurry/org/codehaus/jackson/map/ObjectWriter;->_configAndWriteValue(Lcom/flurry/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    .line 394
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/io/SegmentedStringWriter;->getAndClear()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
