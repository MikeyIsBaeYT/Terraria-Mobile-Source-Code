.class public Lcom/flurry/org/codehaus/jackson/map/ObjectReader;
.super Lcom/flurry/org/codehaus/jackson/ObjectCodec;
.source "ObjectReader.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/Versioned;


# static fields
.field private static final JSON_NODE_TYPE:Lcom/flurry/org/codehaus/jackson/type/JavaType;


# instance fields
.field protected final _config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

.field protected final _injectableValues:Lcom/flurry/org/codehaus/jackson/map/InjectableValues;

.field protected final _jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

.field protected final _provider:Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;

.field protected final _rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final _schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;

.field protected final _unwrapRoot:Z

.field protected final _valueToUpdate:Ljava/lang/Object;

.field protected final _valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/flurry/org/codehaus/jackson/JsonNode;

    invoke-static {v0}, Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;->constructUnsafe(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/type/SimpleType;

    move-result-object v0

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->JSON_NODE_TYPE:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;)V
    .locals 7
    .param p1, "mapper"    # Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;
    .param p2, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    .prologue
    const/4 v3, 0x0

    .line 124
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;-><init>(Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/FormatSchema;Lcom/flurry/org/codehaus/jackson/map/InjectableValues;)V

    .line 125
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/FormatSchema;Lcom/flurry/org/codehaus/jackson/map/InjectableValues;)V
    .locals 2
    .param p1, "mapper"    # Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;
    .param p2, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p3, "valueType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p4, "valueToUpdate"    # Ljava/lang/Object;
    .param p5, "schema"    # Lcom/flurry/org/codehaus/jackson/FormatSchema;
    .param p6, "injectableValues"    # Lcom/flurry/org/codehaus/jackson/map/InjectableValues;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/ObjectCodec;-><init>()V

    .line 131
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    .line 132
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->_rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 133
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_provider:Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;

    .line 134
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    .line 135
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 136
    iput-object p4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    .line 137
    if-eqz p4, :cond_0

    invoke-virtual {p3}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->isArrayType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not update an array value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    iput-object p5, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;

    .line 141
    iput-object p6, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_injectableValues:Lcom/flurry/org/codehaus/jackson/map/InjectableValues;

    .line 142
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->UNWRAP_ROOT_VALUE:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_unwrapRoot:Z

    .line 143
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/ObjectReader;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/FormatSchema;Lcom/flurry/org/codehaus/jackson/map/InjectableValues;)V
    .locals 2
    .param p1, "base"    # Lcom/flurry/org/codehaus/jackson/map/ObjectReader;
    .param p2, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p3, "valueType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p4, "valueToUpdate"    # Ljava/lang/Object;
    .param p5, "schema"    # Lcom/flurry/org/codehaus/jackson/FormatSchema;
    .param p6, "injectableValues"    # Lcom/flurry/org/codehaus/jackson/map/InjectableValues;

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/ObjectCodec;-><init>()V

    .line 152
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    .line 154
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 155
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_provider:Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_provider:Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;

    .line 156
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    .line 158
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 159
    iput-object p4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    .line 160
    if-eqz p4, :cond_0

    invoke-virtual {p3}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->isArrayType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not update an array value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    iput-object p5, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;

    .line 164
    iput-object p6, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_injectableValues:Lcom/flurry/org/codehaus/jackson/map/InjectableValues;

    .line 165
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->UNWRAP_ROOT_VALUE:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_unwrapRoot:Z

    .line 166
    return-void
.end method

.method protected static _initForReading(Lcom/flurry/org/codehaus/jackson/JsonParser;)Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 3
    .param p0, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;,
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 826
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 827
    .local v0, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    if-nez v0, :cond_0

    .line 828
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 829
    if-nez v0, :cond_0

    .line 830
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "No content to map to Object due to end of input"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 833
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected _bind(Lcom/flurry/org/codehaus/jackson/JsonParser;)Ljava/lang/Object;
    .locals 6
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;,
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 716
    invoke-static {p1}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_initForReading(Lcom/flurry/org/codehaus/jackson/JsonParser;)Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 717
    .local v3, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_1

    .line 718
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    if-nez v4, :cond_0

    .line 719
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, v4, v5}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_findRootDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object v2

    .line 740
    .local v2, "result":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->clearCurrentToken()V

    .line 741
    return-object v2

    .line 721
    .end local v2    # "result":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    .restart local v2    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 723
    .end local v2    # "result":Ljava/lang/Object;
    :cond_1
    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_2

    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_3

    .line 724
    :cond_2
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    .restart local v2    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 726
    .end local v2    # "result":Ljava/lang/Object;
    :cond_3
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {p0, p1, v4}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_createDeserializationContext(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;)Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;

    move-result-object v0

    .line 727
    .local v0, "ctxt":Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, v4, v5}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_findRootDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 728
    .local v1, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    iget-boolean v4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_unwrapRoot:Z

    if-eqz v4, :cond_4

    .line 729
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, p1, v0, v4, v1}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_unwrapAndDeserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 731
    .end local v2    # "result":Ljava/lang/Object;
    :cond_4
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    if-nez v4, :cond_5

    .line 732
    invoke-virtual {v1, p1, v0}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 734
    .end local v2    # "result":Ljava/lang/Object;
    :cond_5
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    invoke-virtual {v1, p1, v0, v4}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    .restart local v2    # "result":Ljava/lang/Object;
    goto :goto_0
.end method

.method protected _bindAndClose(Lcom/flurry/org/codehaus/jackson/JsonParser;)Ljava/lang/Object;
    .locals 6
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;,
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 747
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;

    if-eqz v4, :cond_0

    .line 748
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;

    invoke-virtual {p1, v4}, Lcom/flurry/org/codehaus/jackson/JsonParser;->setSchema(Lcom/flurry/org/codehaus/jackson/FormatSchema;)V

    .line 752
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_initForReading(Lcom/flurry/org/codehaus/jackson/JsonParser;)Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 753
    .local v3, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_2

    .line 754
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    if-nez v4, :cond_1

    .line 755
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, v4, v5}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_findRootDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;->getNullValue()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 778
    .local v2, "result":Ljava/lang/Object;
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 779
    :goto_1
    return-object v2

    .line 757
    .end local v2    # "result":Ljava/lang/Object;
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    .restart local v2    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 759
    .end local v2    # "result":Ljava/lang/Object;
    :cond_2
    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_3

    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_4

    .line 760
    :cond_3
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    .restart local v2    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 762
    .end local v2    # "result":Ljava/lang/Object;
    :cond_4
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {p0, p1, v4}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_createDeserializationContext(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;)Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;

    move-result-object v0

    .line 763
    .local v0, "ctxt":Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, v4, v5}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_findRootDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 764
    .local v1, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    iget-boolean v4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_unwrapRoot:Z

    if-eqz v4, :cond_5

    .line 765
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, p1, v0, v4, v1}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_unwrapAndDeserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 767
    .end local v2    # "result":Ljava/lang/Object;
    :cond_5
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    if-nez v4, :cond_6

    .line 768
    invoke-virtual {v1, p1, v0}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 770
    .end local v2    # "result":Ljava/lang/Object;
    :cond_6
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    invoke-virtual {v1, p1, v0, v4}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v2    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 777
    .end local v0    # "ctxt":Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .end local v1    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    .end local v2    # "result":Ljava/lang/Object;
    .end local v3    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :catchall_0
    move-exception v4

    .line 778
    :try_start_3
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 779
    :goto_2
    throw v4

    .restart local v2    # "result":Ljava/lang/Object;
    .restart local v3    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :catch_0
    move-exception v4

    goto :goto_1

    .end local v2    # "result":Ljava/lang/Object;
    .end local v3    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :catch_1
    move-exception v5

    goto :goto_2
.end method

.method protected _bindAndCloseAsTree(Lcom/flurry/org/codehaus/jackson/JsonParser;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 2
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;,
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 807
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;

    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->setSchema(Lcom/flurry/org/codehaus/jackson/FormatSchema;)V

    .line 811
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_bindAsTree(Lcom/flurry/org/codehaus/jackson/JsonParser;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 814
    :try_start_1
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 815
    :goto_0
    return-object v0

    .line 813
    :catchall_0
    move-exception v0

    .line 814
    :try_start_2
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 815
    :goto_1
    throw v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method protected _bindAsTree(Lcom/flurry/org/codehaus/jackson/JsonParser;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 6
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;,
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 787
    invoke-static {p1}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_initForReading(Lcom/flurry/org/codehaus/jackson/JsonParser;)Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 788
    .local v3, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_1

    .line 789
    :cond_0
    sget-object v2, Lcom/flurry/org/codehaus/jackson/node/NullNode;->instance:Lcom/flurry/org/codehaus/jackson/node/NullNode;

    .line 800
    .local v2, "result":Lcom/flurry/org/codehaus/jackson/JsonNode;
    :goto_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->clearCurrentToken()V

    .line 801
    return-object v2

    .line 791
    .end local v2    # "result":Lcom/flurry/org/codehaus/jackson/JsonNode;
    :cond_1
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {p0, p1, v4}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_createDeserializationContext(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;)Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;

    move-result-object v0

    .line 792
    .local v0, "ctxt":Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    sget-object v5, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->JSON_NODE_TYPE:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, v4, v5}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_findRootDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 793
    .local v1, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    iget-boolean v4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_unwrapRoot:Z

    if-eqz v4, :cond_2

    .line 794
    sget-object v4, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->JSON_NODE_TYPE:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, p1, v0, v4, v1}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_unwrapAndDeserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/org/codehaus/jackson/JsonNode;

    .restart local v2    # "result":Lcom/flurry/org/codehaus/jackson/JsonNode;
    goto :goto_0

    .line 796
    .end local v2    # "result":Lcom/flurry/org/codehaus/jackson/JsonNode;
    :cond_2
    invoke-virtual {v1, p1, v0}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/org/codehaus/jackson/JsonNode;

    .restart local v2    # "result":Lcom/flurry/org/codehaus/jackson/JsonNode;
    goto :goto_0
.end method

.method protected _createDeserializationContext(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;)Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .locals 3
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "cfg"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    .prologue
    .line 864
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_provider:Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_injectableValues:Lcom/flurry/org/codehaus/jackson/map/InjectableValues;

    invoke-direct {v0, p2, p1, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializationContext;-><init>(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;Lcom/flurry/org/codehaus/jackson/map/InjectableValues;)V

    return-object v0
.end method

.method protected _findRootDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .locals 5
    .param p1, "cfg"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "valueType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 843
    if-nez p2, :cond_0

    .line 844
    new-instance v2, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    const-string v3, "No value type configured for ObjectReader"

    invoke-direct {v2, v3}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 848
    :cond_0
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .line 849
    .local v0, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 859
    .end local v0    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    .local v1, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :goto_0
    return-object v1

    .line 854
    .end local v1    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    .restart local v0    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :cond_1
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_provider:Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3}, Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;->findTypedValueDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 855
    if-nez v0, :cond_2

    .line 856
    new-instance v2, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not find a deserializer for type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 858
    :cond_2
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 859
    .end local v0    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    .restart local v1    # "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    goto :goto_0
.end method

.method protected _unwrapAndDeserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Ljava/lang/Object;
    .locals 5
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .param p3, "rootType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/JsonParser;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;,
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 871
    .local p4, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_provider:Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;

    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->getConfig()Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v4

    invoke-virtual {v3, v4, p3}, Lcom/flurry/org/codehaus/jackson/map/DeserializerProvider;->findExpectedRootName(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/io/SerializedString;

    move-result-object v2

    .line 872
    .local v2, "rootName":Lcom/flurry/org/codehaus/jackson/io/SerializedString;
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_0

    .line 873
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current token not START_OBJECT (needed to unwrap root name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'), but "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->from(Lcom/flurry/org/codehaus/jackson/JsonParser;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v3

    throw v3

    .line 876
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_1

    .line 877
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current token not FIELD_NAME (to contain expected root name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'), but "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->from(Lcom/flurry/org/codehaus/jackson/JsonParser;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v3

    throw v3

    .line 880
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 881
    .local v0, "actualName":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/io/SerializedString;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 882
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Root name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' does not match expected (\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\') for type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->from(Lcom/flurry/org/codehaus/jackson/JsonParser;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v3

    throw v3

    .line 886
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 888
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    if-nez v3, :cond_3

    .line 889
    invoke-virtual {p4, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    .line 895
    .local v1, "result":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_4

    .line 896
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current token not END_OBJECT (to match wrapper object with root name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'), but "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->from(Lcom/flurry/org/codehaus/jackson/JsonParser;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v3

    throw v3

    .line 891
    .end local v1    # "result":Ljava/lang/Object;
    :cond_3
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    invoke-virtual {p4, p1, p2, v3}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    .restart local v1    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 899
    :cond_4
    return-object v1
.end method

.method public createArrayNode()Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getNodeFactory()Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;->arrayNode()Lcom/flurry/org/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    return-object v0
.end method

.method public createObjectNode()Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getNodeFactory()Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;->objectNode()Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public readTree(Lcom/flurry/org/codehaus/jackson/JsonParser;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 379
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_bindAsTree(Lcom/flurry/org/codehaus/jackson/JsonParser;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public readTree(Ljava/io/InputStream;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 535
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_bindAndCloseAsTree(Lcom/flurry/org/codehaus/jackson/JsonParser;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public readTree(Ljava/io/Reader;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "r"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 550
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/Reader;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_bindAndCloseAsTree(Lcom/flurry/org/codehaus/jackson/JsonParser;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public readTree(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 565
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_bindAndCloseAsTree(Lcom/flurry/org/codehaus/jackson/JsonParser;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Lcom/flurry/org/codehaus/jackson/JsonNode;)Ljava/lang/Object;
    .locals 1
    .param p1, "src"    # Lcom/flurry/org/codehaus/jackson/JsonNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/flurry/org/codehaus/jackson/JsonNode;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 520
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->treeAsTokens(Lcom/flurry/org/codehaus/jackson/JsonNode;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_bindAndClose(Lcom/flurry/org/codehaus/jackson/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Lcom/flurry/org/codehaus/jackson/JsonParser;)Ljava/lang/Object;
    .locals 1
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/flurry/org/codehaus/jackson/JsonParser;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_bind(Lcom/flurry/org/codehaus/jackson/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;
    .locals 1
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "valueType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/flurry/org/codehaus/jackson/JsonParser;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 364
    invoke-virtual {p0, p2}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->withType(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/ObjectReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->readValue(Lcom/flurry/org/codehaus/jackson/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;
    .locals 1
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/flurry/org/codehaus/jackson/JsonParser;",
            "Lcom/flurry/org/codehaus/jackson/type/TypeReference",
            "<*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 351
    .local p2, "valueTypeRef":Lcom/flurry/org/codehaus/jackson/type/TypeReference;, "Lcom/flurry/org/codehaus/jackson/type/TypeReference<*>;"
    invoke-virtual {p0, p2}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->withType(Lcom/flurry/org/codehaus/jackson/type/TypeReference;)Lcom/flurry/org/codehaus/jackson/map/ObjectReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->readValue(Lcom/flurry/org/codehaus/jackson/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Lcom/flurry/org/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/flurry/org/codehaus/jackson/JsonParser;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 336
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p2}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->withType(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/ObjectReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->readValue(Lcom/flurry/org/codehaus/jackson/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/io/File;)Ljava/lang/Object;
    .locals 1
    .param p1, "src"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 493
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/File;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_bindAndClose(Lcom/flurry/org/codehaus/jackson/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .param p1, "src"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 434
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_bindAndClose(Lcom/flurry/org/codehaus/jackson/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .param p1, "src"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 447
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/Reader;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_bindAndClose(Lcom/flurry/org/codehaus/jackson/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "src"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 460
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_bindAndClose(Lcom/flurry/org/codehaus/jackson/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/net/URL;)Ljava/lang/Object;
    .locals 1
    .param p1, "src"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 506
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/net/URL;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_bindAndClose(Lcom/flurry/org/codehaus/jackson/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue([B)Ljava/lang/Object;
    .locals 1
    .param p1, "src"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 473
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->createJsonParser([B)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_bindAndClose(Lcom/flurry/org/codehaus/jackson/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue([BII)Ljava/lang/Object;
    .locals 1
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 486
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->createJsonParser([BII)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_bindAndClose(Lcom/flurry/org/codehaus/jackson/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValues(Lcom/flurry/org/codehaus/jackson/JsonParser;)Lcom/flurry/org/codehaus/jackson/map/MappingIterator;
    .locals 7
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/flurry/org/codehaus/jackson/JsonParser;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/MappingIterator",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 582
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_createDeserializationContext(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;)Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;

    move-result-object v3

    .line 584
    .local v3, "ctxt":Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, v2, v4}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_findRootDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;ZLjava/lang/Object;)V

    return-object v0
.end method

.method public readValues(Ljava/io/File;)Lcom/flurry/org/codehaus/jackson/map/MappingIterator;
    .locals 7
    .param p1, "src"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/MappingIterator",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 674
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/File;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v2

    .line 675
    .local v2, "jp":Lcom/flurry/org/codehaus/jackson/JsonParser;
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;

    invoke-virtual {v2, v0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->setSchema(Lcom/flurry/org/codehaus/jackson/FormatSchema;)V

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {p0, v2, v0}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_createDeserializationContext(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;)Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;

    move-result-object v3

    .line 679
    .local v3, "ctxt":Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, v4, v5}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_findRootDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    invoke-direct/range {v0 .. v6}, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;ZLjava/lang/Object;)V

    return-object v0
.end method

.method public readValues(Ljava/io/InputStream;)Lcom/flurry/org/codehaus/jackson/map/MappingIterator;
    .locals 7
    .param p1, "src"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/MappingIterator",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 597
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v2

    .line 598
    .local v2, "jp":Lcom/flurry/org/codehaus/jackson/JsonParser;
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;

    invoke-virtual {v2, v0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->setSchema(Lcom/flurry/org/codehaus/jackson/FormatSchema;)V

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {p0, v2, v0}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_createDeserializationContext(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;)Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;

    move-result-object v3

    .line 602
    .local v3, "ctxt":Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, v4, v5}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_findRootDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    invoke-direct/range {v0 .. v6}, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;ZLjava/lang/Object;)V

    return-object v0
.end method

.method public readValues(Ljava/io/Reader;)Lcom/flurry/org/codehaus/jackson/map/MappingIterator;
    .locals 7
    .param p1, "src"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/MappingIterator",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 615
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/Reader;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v2

    .line 616
    .local v2, "jp":Lcom/flurry/org/codehaus/jackson/JsonParser;
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;

    invoke-virtual {v2, v0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->setSchema(Lcom/flurry/org/codehaus/jackson/FormatSchema;)V

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {p0, v2, v0}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_createDeserializationContext(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;)Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;

    move-result-object v3

    .line 620
    .local v3, "ctxt":Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, v4, v5}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_findRootDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    invoke-direct/range {v0 .. v6}, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;ZLjava/lang/Object;)V

    return-object v0
.end method

.method public readValues(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/MappingIterator;
    .locals 7
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/MappingIterator",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 632
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v2

    .line 633
    .local v2, "jp":Lcom/flurry/org/codehaus/jackson/JsonParser;
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;

    invoke-virtual {v2, v0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->setSchema(Lcom/flurry/org/codehaus/jackson/FormatSchema;)V

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {p0, v2, v0}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_createDeserializationContext(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;)Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;

    move-result-object v3

    .line 637
    .local v3, "ctxt":Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, v4, v5}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_findRootDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    invoke-direct/range {v0 .. v6}, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;ZLjava/lang/Object;)V

    return-object v0
.end method

.method public readValues(Ljava/net/URL;)Lcom/flurry/org/codehaus/jackson/map/MappingIterator;
    .locals 7
    .param p1, "src"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/MappingIterator",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 691
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/net/URL;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v2

    .line 692
    .local v2, "jp":Lcom/flurry/org/codehaus/jackson/JsonParser;
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;

    invoke-virtual {v2, v0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->setSchema(Lcom/flurry/org/codehaus/jackson/FormatSchema;)V

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {p0, v2, v0}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_createDeserializationContext(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;)Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;

    move-result-object v3

    .line 696
    .local v3, "ctxt":Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, v4, v5}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_findRootDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    invoke-direct/range {v0 .. v6}, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;ZLjava/lang/Object;)V

    return-object v0
.end method

.method public final readValues([B)Lcom/flurry/org/codehaus/jackson/map/MappingIterator;
    .locals 2
    .param p1, "src"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B)",
            "Lcom/flurry/org/codehaus/jackson/map/MappingIterator",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 663
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->readValues([BII)Lcom/flurry/org/codehaus/jackson/map/MappingIterator;

    move-result-object v0

    return-object v0
.end method

.method public readValues([BII)Lcom/flurry/org/codehaus/jackson/map/MappingIterator;
    .locals 7
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII)",
            "Lcom/flurry/org/codehaus/jackson/map/MappingIterator",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 649
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_jsonFactory:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->createJsonParser([BII)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v2

    .line 650
    .local v2, "jp":Lcom/flurry/org/codehaus/jackson/JsonParser;
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;

    invoke-virtual {v2, v0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->setSchema(Lcom/flurry/org/codehaus/jackson/FormatSchema;)V

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {p0, v2, v0}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_createDeserializationContext(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;)Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;

    move-result-object v3

    .line 654
    .local v3, "ctxt":Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, v4, v5}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_findRootDeserializer(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    invoke-direct/range {v0 .. v6}, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;ZLjava/lang/Object;)V

    return-object v0
.end method

.method public readValues(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Ljava/util/Iterator;
    .locals 1
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "valueType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/flurry/org/codehaus/jackson/JsonParser;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ")",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 415
    invoke-virtual {p0, p2}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->withType(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/ObjectReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->readValues(Lcom/flurry/org/codehaus/jackson/JsonParser;)Lcom/flurry/org/codehaus/jackson/map/MappingIterator;

    move-result-object v0

    return-object v0
.end method

.method public readValues(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/type/TypeReference;)Ljava/util/Iterator;
    .locals 1
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/flurry/org/codehaus/jackson/JsonParser;",
            "Lcom/flurry/org/codehaus/jackson/type/TypeReference",
            "<*>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 403
    .local p2, "valueTypeRef":Lcom/flurry/org/codehaus/jackson/type/TypeReference;, "Lcom/flurry/org/codehaus/jackson/type/TypeReference<*>;"
    invoke-virtual {p0, p2}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->withType(Lcom/flurry/org/codehaus/jackson/type/TypeReference;)Lcom/flurry/org/codehaus/jackson/map/ObjectReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->readValues(Lcom/flurry/org/codehaus/jackson/JsonParser;)Lcom/flurry/org/codehaus/jackson/map/MappingIterator;

    move-result-object v0

    return-object v0
.end method

.method public readValues(Lcom/flurry/org/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/util/Iterator;
    .locals 1
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/flurry/org/codehaus/jackson/JsonParser;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 391
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p2}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->withType(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/ObjectReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->readValues(Lcom/flurry/org/codehaus/jackson/JsonParser;)Lcom/flurry/org/codehaus/jackson/map/MappingIterator;

    move-result-object v0

    return-object v0
.end method

.method public treeAsTokens(Lcom/flurry/org/codehaus/jackson/JsonNode;)Lcom/flurry/org/codehaus/jackson/JsonParser;
    .locals 1
    .param p1, "n"    # Lcom/flurry/org/codehaus/jackson/JsonNode;

    .prologue
    .line 920
    new-instance v0, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;

    invoke-direct {v0, p1, p0}, Lcom/flurry/org/codehaus/jackson/node/TreeTraversingParser;-><init>(Lcom/flurry/org/codehaus/jackson/JsonNode;Lcom/flurry/org/codehaus/jackson/ObjectCodec;)V

    return-object v0
.end method

.method public treeToValue(Lcom/flurry/org/codehaus/jackson/JsonNode;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lcom/flurry/org/codehaus/jackson/JsonNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/flurry/org/codehaus/jackson/JsonNode;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 927
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->treeAsTokens(Lcom/flurry/org/codehaus/jackson/JsonNode;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->readValue(Lcom/flurry/org/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public version()Lcom/flurry/org/codehaus/jackson/Version;
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/org/codehaus/jackson/util/VersionUtil;->versionFor(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/Version;

    move-result-object v0

    return-object v0
.end method

.method public withInjectableValues(Lcom/flurry/org/codehaus/jackson/map/InjectableValues;)Lcom/flurry/org/codehaus/jackson/map/ObjectReader;
    .locals 7
    .param p1, "injectableValues"    # Lcom/flurry/org/codehaus/jackson/map/InjectableValues;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_injectableValues:Lcom/flurry/org/codehaus/jackson/map/InjectableValues;

    if-ne v0, p1, :cond_0

    .line 300
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ObjectReader;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ObjectReader;
    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;-><init>(Lcom/flurry/org/codehaus/jackson/map/ObjectReader;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/FormatSchema;Lcom/flurry/org/codehaus/jackson/map/InjectableValues;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withNodeFactory(Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/flurry/org/codehaus/jackson/map/ObjectReader;
    .locals 7
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getNodeFactory()Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 244
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ObjectReader;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ObjectReader;
    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->withNodeFactory(Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;)Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;

    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_injectableValues:Lcom/flurry/org/codehaus/jackson/map/InjectableValues;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;-><init>(Lcom/flurry/org/codehaus/jackson/map/ObjectReader;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/FormatSchema;Lcom/flurry/org/codehaus/jackson/map/InjectableValues;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withSchema(Lcom/flurry/org/codehaus/jackson/FormatSchema;)Lcom/flurry/org/codehaus/jackson/map/ObjectReader;
    .locals 7
    .param p1, "schema"    # Lcom/flurry/org/codehaus/jackson/FormatSchema;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;

    if-ne v0, p1, :cond_0

    .line 282
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ObjectReader;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ObjectReader;
    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_injectableValues:Lcom/flurry/org/codehaus/jackson/map/InjectableValues;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;-><init>(Lcom/flurry/org/codehaus/jackson/map/ObjectReader;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/FormatSchema;Lcom/flurry/org/codehaus/jackson/map/InjectableValues;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withType(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/ObjectReader;
    .locals 7
    .param p1, "valueType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    if-ne p1, v0, :cond_0

    .line 190
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ObjectReader;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ObjectReader;
    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;

    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_injectableValues:Lcom/flurry/org/codehaus/jackson/map/InjectableValues;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;-><init>(Lcom/flurry/org/codehaus/jackson/map/ObjectReader;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/FormatSchema;Lcom/flurry/org/codehaus/jackson/map/InjectableValues;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withType(Lcom/flurry/org/codehaus/jackson/type/TypeReference;)Lcom/flurry/org/codehaus/jackson/map/ObjectReader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/type/TypeReference",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/ObjectReader;"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "valueTypeRef":Lcom/flurry/org/codehaus/jackson/type/TypeReference;, "Lcom/flurry/org/codehaus/jackson/type/TypeReference<*>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getTypeFactory()Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/type/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->withType(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/ObjectReader;

    move-result-object v0

    return-object v0
.end method

.method public withType(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/ObjectReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/ObjectReader;"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->constructType(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->withType(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/ObjectReader;

    move-result-object v0

    return-object v0
.end method

.method public withType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/map/ObjectReader;
    .locals 1
    .param p1, "valueType"    # Ljava/lang/reflect/Type;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->getTypeFactory()Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->withType(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/ObjectReader;

    move-result-object v0

    return-object v0
.end method

.method public withValueToUpdate(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/ObjectReader;
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 263
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ObjectReader;
    :goto_0
    return-object p0

    .line 259
    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/ObjectReader;
    :cond_0
    if-nez p1, :cond_1

    .line 260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cat not update null value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;->constructType(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v3

    .line 263
    .local v3, "t":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :goto_1
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;

    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_injectableValues:Lcom/flurry/org/codehaus/jackson/map/InjectableValues;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;-><init>(Lcom/flurry/org/codehaus/jackson/map/ObjectReader;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/FormatSchema;Lcom/flurry/org/codehaus/jackson/map/InjectableValues;)V

    move-object p0, v0

    goto :goto_0

    .line 262
    .end local v3    # "t":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_2
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/ObjectReader;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    goto :goto_1
.end method

.method public writeTree(Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/JsonNode;)V
    .locals 2
    .param p1, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p2, "rootNode"    # Lcom/flurry/org/codehaus/jackson/JsonNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 936
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented for ObjectReader"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeValue(Lcom/flurry/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
    .locals 2
    .param p1, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 942
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented for ObjectReader"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
