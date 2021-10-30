.class public Lcom/flurry/org/apache/avro/data/Json$Reader;
.super Ljava/lang/Object;
.source "Json.java"

# interfaces
.implements Lcom/flurry/org/apache/avro/io/DatumReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/data/Json;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/org/apache/avro/io/DatumReader",
        "<",
        "Lcom/flurry/org/codehaus/jackson/JsonNode;",
        ">;"
    }
.end annotation


# instance fields
.field private resolver:Lcom/flurry/org/apache/avro/io/ResolvingDecoder;

.field private written:Lcom/flurry/org/apache/avro/Schema;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/flurry/org/codehaus/jackson/JsonNode;Lcom/flurry/org/apache/avro/io/Decoder;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 5
    .param p1, "reuse"    # Lcom/flurry/org/codehaus/jackson/JsonNode;
    .param p2, "in"    # Lcom/flurry/org/apache/avro/io/Decoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v1, p0, Lcom/flurry/org/apache/avro/data/Json$Reader;->written:Lcom/flurry/org/apache/avro/Schema;

    if-nez v1, :cond_0

    .line 83
    invoke-static {p2}, Lcom/flurry/org/apache/avro/data/Json;->read(Lcom/flurry/org/apache/avro/io/Decoder;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/apache/avro/data/Json$Reader;->resolver:Lcom/flurry/org/apache/avro/io/ResolvingDecoder;

    if-nez v1, :cond_1

    .line 87
    invoke-static {}, Lcom/flurry/org/apache/avro/io/DecoderFactory;->get()Lcom/flurry/org/apache/avro/io/DecoderFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/apache/avro/data/Json$Reader;->written:Lcom/flurry/org/apache/avro/Schema;

    sget-object v3, Lcom/flurry/org/apache/avro/data/Json;->SCHEMA:Lcom/flurry/org/apache/avro/Schema;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/flurry/org/apache/avro/io/DecoderFactory;->resolvingDecoder(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/Decoder;)Lcom/flurry/org/apache/avro/io/ResolvingDecoder;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/org/apache/avro/data/Json$Reader;->resolver:Lcom/flurry/org/apache/avro/io/ResolvingDecoder;

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/flurry/org/apache/avro/data/Json$Reader;->resolver:Lcom/flurry/org/apache/avro/io/ResolvingDecoder;

    invoke-virtual {v1, p2}, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->configure(Lcom/flurry/org/apache/avro/io/Decoder;)Lcom/flurry/org/apache/avro/io/ValidatingDecoder;

    .line 89
    iget-object v1, p0, Lcom/flurry/org/apache/avro/data/Json$Reader;->resolver:Lcom/flurry/org/apache/avro/io/ResolvingDecoder;

    invoke-static {v1}, Lcom/flurry/org/apache/avro/data/Json;->read(Lcom/flurry/org/apache/avro/io/Decoder;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 90
    .local v0, "result":Lcom/flurry/org/codehaus/jackson/JsonNode;
    iget-object v1, p0, Lcom/flurry/org/apache/avro/data/Json$Reader;->resolver:Lcom/flurry/org/apache/avro/io/ResolvingDecoder;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->drain()V

    goto :goto_0
.end method

.method public bridge synthetic read(Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Decoder;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/flurry/org/apache/avro/io/Decoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    check-cast p1, Lcom/flurry/org/codehaus/jackson/JsonNode;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/apache/avro/data/Json$Reader;->read(Lcom/flurry/org/codehaus/jackson/JsonNode;Lcom/flurry/org/apache/avro/io/Decoder;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public setSchema(Lcom/flurry/org/apache/avro/Schema;)V
    .locals 2
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 77
    sget-object v0, Lcom/flurry/org/apache/avro/data/Json;->SCHEMA:Lcom/flurry/org/apache/avro/Schema;

    iget-object v1, p0, Lcom/flurry/org/apache/avro/data/Json$Reader;->written:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/Schema;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .end local p1    # "schema":Lcom/flurry/org/apache/avro/Schema;
    :cond_0
    iput-object p1, p0, Lcom/flurry/org/apache/avro/data/Json$Reader;->written:Lcom/flurry/org/apache/avro/Schema;

    .line 78
    return-void
.end method
