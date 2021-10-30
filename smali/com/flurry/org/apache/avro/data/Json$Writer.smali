.class public Lcom/flurry/org/apache/avro/data/Json$Writer;
.super Ljava/lang/Object;
.source "Json.java"

# interfaces
.implements Lcom/flurry/org/apache/avro/io/DatumWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/data/Json;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Writer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/org/apache/avro/io/DatumWriter",
        "<",
        "Lcom/flurry/org/codehaus/jackson/JsonNode;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setSchema(Lcom/flurry/org/apache/avro/Schema;)V
    .locals 3
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 61
    sget-object v0, Lcom/flurry/org/apache/avro/data/Json;->SCHEMA:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {v0, p1}, Lcom/flurry/org/apache/avro/Schema;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not the Json schema: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    return-void
.end method

.method public write(Lcom/flurry/org/codehaus/jackson/JsonNode;Lcom/flurry/org/apache/avro/io/Encoder;)V
    .locals 0
    .param p1, "datum"    # Lcom/flurry/org/codehaus/jackson/JsonNode;
    .param p2, "out"    # Lcom/flurry/org/apache/avro/io/Encoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {p1, p2}, Lcom/flurry/org/apache/avro/data/Json;->write(Lcom/flurry/org/codehaus/jackson/JsonNode;Lcom/flurry/org/apache/avro/io/Encoder;)V

    .line 68
    return-void
.end method

.method public bridge synthetic write(Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Encoder;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/flurry/org/apache/avro/io/Encoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    check-cast p1, Lcom/flurry/org/codehaus/jackson/JsonNode;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/apache/avro/data/Json$Writer;->write(Lcom/flurry/org/codehaus/jackson/JsonNode;Lcom/flurry/org/apache/avro/io/Encoder;)V

    return-void
.end method
