.class public Lcom/flurry/org/apache/avro/Protocol$Message;
.super Ljava/lang/Object;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Message"
.end annotation


# instance fields
.field private doc:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private final props:Lcom/flurry/org/apache/avro/Schema$Props;

.field private request:Lcom/flurry/org/apache/avro/Schema;

.field final synthetic this$0:Lcom/flurry/org/apache/avro/Protocol;


# direct methods
.method private constructor <init>(Lcom/flurry/org/apache/avro/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/flurry/org/apache/avro/Schema;)V
    .locals 4
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "doc"    # Ljava/lang/String;
    .param p5, "request"    # Lcom/flurry/org/apache/avro/Schema;
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
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    .local p4, "propMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/flurry/org/apache/avro/Protocol$Message;->this$0:Lcom/flurry/org/apache/avro/Protocol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v2, Lcom/flurry/org/apache/avro/Schema$Props;

    invoke-static {}, Lcom/flurry/org/apache/avro/Protocol;->access$000()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/flurry/org/apache/avro/Schema$Props;-><init>(Ljava/util/Set;)V

    iput-object v2, p0, Lcom/flurry/org/apache/avro/Protocol$Message;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    .line 82
    iput-object p2, p0, Lcom/flurry/org/apache/avro/Protocol$Message;->name:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/flurry/org/apache/avro/Protocol$Message;->doc:Ljava/lang/String;

    .line 84
    iput-object p5, p0, Lcom/flurry/org/apache/avro/Protocol$Message;->request:Lcom/flurry/org/apache/avro/Schema;

    .line 86
    if-eqz p4, :cond_0

    .line 87
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 88
    .local v1, "prop":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/flurry/org/apache/avro/Protocol$Message;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "prop":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/org/apache/avro/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Protocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flurry/org/apache/avro/Protocol;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/util/Map;
    .param p5, "x4"    # Lcom/flurry/org/apache/avro/Schema;
    .param p6, "x5"    # Lcom/flurry/org/apache/avro/Protocol$1;

    .prologue
    .line 73
    invoke-direct/range {p0 .. p5}, Lcom/flurry/org/apache/avro/Protocol$Message;-><init>(Lcom/flurry/org/apache/avro/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/flurry/org/apache/avro/Schema;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Protocol$Message;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/org/apache/avro/Schema$Props;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    if-ne p1, p0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v1

    .line 145
    :cond_1
    instance-of v3, p1, Lcom/flurry/org/apache/avro/Protocol$Message;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 146
    check-cast v0, Lcom/flurry/org/apache/avro/Protocol$Message;

    .line 147
    .local v0, "that":Lcom/flurry/org/apache/avro/Protocol$Message;
    iget-object v3, p0, Lcom/flurry/org/apache/avro/Protocol$Message;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/flurry/org/apache/avro/Protocol$Message;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/flurry/org/apache/avro/Protocol$Message;->request:Lcom/flurry/org/apache/avro/Schema;

    iget-object v4, v0, Lcom/flurry/org/apache/avro/Protocol$Message;->request:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {v3, v4}, Lcom/flurry/org/apache/avro/Schema;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/flurry/org/apache/avro/Protocol$Message;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    iget-object v4, v0, Lcom/flurry/org/apache/avro/Protocol$Message;->props:Lcom/flurry/org/apache/avro/Schema$Props;

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
    .line 156
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Protocol$Message;->doc:Ljava/lang/String;

    return-object v0
.end method

.method public getErrors()Lcom/flurry/org/apache/avro/Schema;
    .locals 1

    .prologue
    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/flurry/org/apache/avro/Schema;->createUnion(Ljava/util/List;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Protocol$Message;->name:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Protocol$Message;->props:Lcom/flurry/org/apache/avro/Schema$Props;

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
    .line 113
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Protocol$Message;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequest()Lcom/flurry/org/apache/avro/Schema;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Protocol$Message;->request:Lcom/flurry/org/apache/avro/Schema;

    return-object v0
.end method

.method public getResponse()Lcom/flurry/org/apache/avro/Schema;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/flurry/org/apache/avro/Schema$Type;->NULL:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static {v0}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Protocol$Message;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/org/apache/avro/Protocol$Message;->request:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/flurry/org/apache/avro/Protocol$Message;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Props;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isOneWay()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method toJson(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .param p1, "gen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 129
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Protocol$Message;->doc:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "doc"

    iget-object v1, p0, Lcom/flurry/org/apache/avro/Protocol$Message;->doc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Protocol$Message;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    invoke-virtual {v0, p1}, Lcom/flurry/org/apache/avro/Schema$Props;->write(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 131
    const-string v0, "request"

    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Protocol$Message;->request:Lcom/flurry/org/apache/avro/Schema;

    iget-object v1, p0, Lcom/flurry/org/apache/avro/Protocol$Message;->this$0:Lcom/flurry/org/apache/avro/Protocol;

    invoke-static {v1}, Lcom/flurry/org/apache/avro/Protocol;->access$100(Lcom/flurry/org/apache/avro/Protocol;)Lcom/flurry/org/apache/avro/Schema$Names;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/flurry/org/apache/avro/Schema;->fieldsToJson(Lcom/flurry/org/apache/avro/Schema$Names;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 134
    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/avro/Protocol$Message;->toJson1(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 135
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeEndObject()V

    .line 136
    return-void
.end method

.method toJson1(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .param p1, "gen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    const-string v0, "response"

    const-string v1, "null"

    invoke-virtual {p1, v0, v1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v0, "one-way"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeBooleanField(Ljava/lang/String;Z)V

    .line 141
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 118
    :try_start_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 119
    .local v2, "writer":Ljava/io/StringWriter;
    sget-object v3, Lcom/flurry/org/apache/avro/Schema;->FACTORY:Lcom/flurry/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v3, v2}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    move-result-object v1

    .line 120
    .local v1, "gen":Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    invoke-virtual {p0, v1}, Lcom/flurry/org/apache/avro/Protocol$Message;->toJson(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 121
    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->flush()V

    .line 122
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 123
    .end local v1    # "gen":Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .end local v2    # "writer":Ljava/io/StringWriter;
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v3, v0}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
