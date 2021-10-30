.class public abstract Lcom/flurry/org/apache/avro/file/CodecFactory;
.super Ljava/lang/Object;
.source "CodecFactory.java"


# static fields
.field private static final DEFAULT_DEFLATE_LEVEL:I = -0x1

.field private static final REGISTERED:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/apache/avro/file/CodecFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/flurry/org/apache/avro/file/CodecFactory;->REGISTERED:Ljava/util/Map;

    .line 67
    const-string v0, "null"

    invoke-static {}, Lcom/flurry/org/apache/avro/file/CodecFactory;->nullCodec()Lcom/flurry/org/apache/avro/file/CodecFactory;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/org/apache/avro/file/CodecFactory;->addCodec(Ljava/lang/String;Lcom/flurry/org/apache/avro/file/CodecFactory;)Lcom/flurry/org/apache/avro/file/CodecFactory;

    .line 68
    const-string v0, "deflate"

    const/4 v1, -0x1

    invoke-static {v1}, Lcom/flurry/org/apache/avro/file/CodecFactory;->deflateCodec(I)Lcom/flurry/org/apache/avro/file/CodecFactory;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/org/apache/avro/file/CodecFactory;->addCodec(Ljava/lang/String;Lcom/flurry/org/apache/avro/file/CodecFactory;)Lcom/flurry/org/apache/avro/file/CodecFactory;

    .line 69
    const-string v0, "snappy"

    invoke-static {}, Lcom/flurry/org/apache/avro/file/CodecFactory;->snappyCodec()Lcom/flurry/org/apache/avro/file/CodecFactory;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/org/apache/avro/file/CodecFactory;->addCodec(Ljava/lang/String;Lcom/flurry/org/apache/avro/file/CodecFactory;)Lcom/flurry/org/apache/avro/file/CodecFactory;

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCodec(Ljava/lang/String;Lcom/flurry/org/apache/avro/file/CodecFactory;)Lcom/flurry/org/apache/avro/file/CodecFactory;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "c"    # Lcom/flurry/org/apache/avro/file/CodecFactory;

    .prologue
    .line 92
    sget-object v0, Lcom/flurry/org/apache/avro/file/CodecFactory;->REGISTERED:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/file/CodecFactory;

    return-object v0
.end method

.method public static deflateCodec(I)Lcom/flurry/org/apache/avro/file/CodecFactory;
    .locals 1
    .param p0, "compressionLevel"    # I

    .prologue
    .line 47
    new-instance v0, Lcom/flurry/org/apache/avro/file/DeflateCodec$Option;

    invoke-direct {v0, p0}, Lcom/flurry/org/apache/avro/file/DeflateCodec$Option;-><init>(I)V

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/flurry/org/apache/avro/file/CodecFactory;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 82
    sget-object v1, Lcom/flurry/org/apache/avro/file/CodecFactory;->REGISTERED:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/file/CodecFactory;

    .line 83
    .local v0, "o":Lcom/flurry/org/apache/avro/file/CodecFactory;
    if-nez v0, :cond_0

    .line 84
    new-instance v1, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized codec: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_0
    return-object v0
.end method

.method public static nullCodec()Lcom/flurry/org/apache/avro/file/CodecFactory;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/flurry/org/apache/avro/file/NullCodec;->OPTION:Lcom/flurry/org/apache/avro/file/CodecFactory;

    return-object v0
.end method

.method public static snappyCodec()Lcom/flurry/org/apache/avro/file/CodecFactory;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/flurry/org/apache/avro/file/SnappyCodec$Option;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/file/SnappyCodec$Option;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected abstract createInstance()Lcom/flurry/org/apache/avro/file/Codec;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/file/CodecFactory;->createInstance()Lcom/flurry/org/apache/avro/file/Codec;

    move-result-object v0

    .line 98
    .local v0, "instance":Lcom/flurry/org/apache/avro/file/Codec;
    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/file/Codec;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
