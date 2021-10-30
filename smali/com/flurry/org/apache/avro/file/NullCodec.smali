.class final Lcom/flurry/org/apache/avro/file/NullCodec;
.super Lcom/flurry/org/apache/avro/file/Codec;
.source "NullCodec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/apache/avro/file/NullCodec$Option;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/flurry/org/apache/avro/file/NullCodec;

.field public static final OPTION:Lcom/flurry/org/apache/avro/file/CodecFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/flurry/org/apache/avro/file/NullCodec;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/file/NullCodec;-><init>()V

    sput-object v0, Lcom/flurry/org/apache/avro/file/NullCodec;->INSTANCE:Lcom/flurry/org/apache/avro/file/NullCodec;

    .line 36
    new-instance v0, Lcom/flurry/org/apache/avro/file/NullCodec$Option;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/file/NullCodec$Option;-><init>()V

    sput-object v0, Lcom/flurry/org/apache/avro/file/NullCodec;->OPTION:Lcom/flurry/org/apache/avro/file/CodecFactory;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/file/Codec;-><init>()V

    .line 28
    return-void
.end method

.method static synthetic access$000()Lcom/flurry/org/apache/avro/file/NullCodec;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/flurry/org/apache/avro/file/NullCodec;->INSTANCE:Lcom/flurry/org/apache/avro/file/NullCodec;

    return-object v0
.end method


# virtual methods
.method compress(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    return-object p1
.end method

.method decompress(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 55
    if-ne p0, p1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "null"

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x2

    return v0
.end method
