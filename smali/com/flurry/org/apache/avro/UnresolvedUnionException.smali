.class public Lcom/flurry/org/apache/avro/UnresolvedUnionException;
.super Lcom/flurry/org/apache/avro/AvroRuntimeException;
.source "UnresolvedUnionException.java"


# instance fields
.field private unionSchema:Lcom/flurry/org/apache/avro/Schema;

.field private unresolvedDatum:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;)V
    .locals 2
    .param p1, "unionSchema"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "unresolvedDatum"    # Ljava/lang/Object;

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not in union "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/flurry/org/apache/avro/UnresolvedUnionException;->unionSchema:Lcom/flurry/org/apache/avro/Schema;

    .line 29
    iput-object p2, p0, Lcom/flurry/org/apache/avro/UnresolvedUnionException;->unresolvedDatum:Ljava/lang/Object;

    .line 30
    return-void
.end method


# virtual methods
.method public getUnionSchema()Lcom/flurry/org/apache/avro/Schema;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/flurry/org/apache/avro/UnresolvedUnionException;->unionSchema:Lcom/flurry/org/apache/avro/Schema;

    return-object v0
.end method

.method public getUnresolvedDatum()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/flurry/org/apache/avro/UnresolvedUnionException;->unresolvedDatum:Ljava/lang/Object;

    return-object v0
.end method
