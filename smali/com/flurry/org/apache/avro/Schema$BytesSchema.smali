.class Lcom/flurry/org/apache/avro/Schema$BytesSchema;
.super Lcom/flurry/org/apache/avro/Schema;
.source "Schema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/Schema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BytesSchema"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 895
    sget-object v0, Lcom/flurry/org/apache/avro/Schema$Type;->BYTES:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/Schema;-><init>(Lcom/flurry/org/apache/avro/Schema$Type;)V

    return-void
.end method
