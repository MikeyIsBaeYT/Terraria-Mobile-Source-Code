.class final Lcom/flurry/org/apache/avro/generic/GenericDatumReader$1;
.super Ljava/lang/ThreadLocal;
.source "GenericDatumReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/generic/GenericDatumReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/util/Map",
        "<",
        "Lcom/flurry/org/apache/avro/Schema;",
        "Ljava/util/Map",
        "<",
        "Lcom/flurry/org/apache/avro/Schema;",
        "Lcom/flurry/org/apache/avro/io/ResolvingDecoder;",
        ">;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader$1;->initialValue()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/org/apache/avro/Schema;",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/org/apache/avro/Schema;",
            "Lcom/flurry/org/apache/avro/io/ResolvingDecoder;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;-><init>()V

    return-object v0
.end method
