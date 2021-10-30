.class public Lcom/flurry/org/apache/avro/generic/GenericDatumReader;
.super Ljava/lang/Object;
.source "GenericDatumReader.java"

# interfaces
.implements Lcom/flurry/org/apache/avro/io/DatumReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/apache/avro/generic/GenericDatumReader$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/flurry/org/apache/avro/io/DatumReader",
        "<TD;>;"
    }
.end annotation


# static fields
.field private static final RESOLVER_CACHE:Ljava/lang/ThreadLocal;
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
.end field


# instance fields
.field private actual:Lcom/flurry/org/apache/avro/Schema;

.field private final creator:Ljava/lang/Thread;

.field private creatorResolver:Lcom/flurry/org/apache/avro/io/ResolvingDecoder;

.field private final data:Lcom/flurry/org/apache/avro/generic/GenericData;

.field private expected:Lcom/flurry/org/apache/avro/Schema;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/flurry/org/apache/avro/generic/GenericDatumReader$1;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader$1;-><init>()V

    sput-object v0, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->RESOLVER_CACHE:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumReader;, "Lcom/flurry/org/apache/avro/generic/GenericDatumReader<TD;>;"
    const/4 v1, 0x0

    .line 46
    invoke-static {}, Lcom/flurry/org/apache/avro/generic/GenericData;->get()Lcom/flurry/org/apache/avro/generic/GenericData;

    move-result-object v0

    invoke-direct {p0, v1, v1, v0}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;-><init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/generic/GenericData;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/apache/avro/Schema;)V
    .locals 1
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 51
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumReader;, "Lcom/flurry/org/apache/avro/generic/GenericDatumReader<TD;>;"
    invoke-static {}, Lcom/flurry/org/apache/avro/generic/GenericData;->get()Lcom/flurry/org/apache/avro/generic/GenericData;

    move-result-object v0

    invoke-direct {p0, p1, p1, v0}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;-><init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/generic/GenericData;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;)V
    .locals 1
    .param p1, "writer"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "reader"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 56
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumReader;, "Lcom/flurry/org/apache/avro/generic/GenericDatumReader<TD;>;"
    invoke-static {}, Lcom/flurry/org/apache/avro/generic/GenericData;->get()Lcom/flurry/org/apache/avro/generic/GenericData;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;-><init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/generic/GenericData;)V

    .line 57
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/generic/GenericData;)V
    .locals 1
    .param p1, "writer"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "reader"    # Lcom/flurry/org/apache/avro/Schema;
    .param p3, "data"    # Lcom/flurry/org/apache/avro/generic/GenericData;

    .prologue
    .line 59
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumReader;, "Lcom/flurry/org/apache/avro/generic/GenericDatumReader<TD;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->creatorResolver:Lcom/flurry/org/apache/avro/io/ResolvingDecoder;

    .line 60
    iput-object p1, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->actual:Lcom/flurry/org/apache/avro/Schema;

    .line 61
    iput-object p2, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->expected:Lcom/flurry/org/apache/avro/Schema;

    .line 62
    iput-object p3, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->data:Lcom/flurry/org/apache/avro/generic/GenericData;

    .line 63
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->creator:Ljava/lang/Thread;

    .line 64
    return-void
.end method

.method public static skip(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/Decoder;)V
    .locals 14
    .param p0, "schema"    # Lcom/flurry/org/apache/avro/Schema;
    .param p1, "in"    # Lcom/flurry/org/apache/avro/io/Decoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x1

    const-wide/16 v10, 0x0

    .line 366
    sget-object v8, Lcom/flurry/org/apache/avro/generic/GenericDatumReader$2;->$SwitchMap$org$apache$avro$Schema$Type:[I

    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v9

    invoke-virtual {v9}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 409
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 368
    :pswitch_0
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/org/apache/avro/Schema$Field;

    .line 369
    .local v1, "field":Lcom/flurry/org/apache/avro/Schema$Field;
    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v8

    invoke-static {v8, p1}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->skip(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/Decoder;)V

    goto :goto_0

    .line 372
    .end local v1    # "field":Lcom/flurry/org/apache/avro/Schema$Field;
    .end local v4    # "i$":Ljava/util/Iterator;
    :pswitch_1
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/io/Decoder;->readInt()I

    .line 411
    :cond_0
    :goto_1
    :pswitch_2
    return-void

    .line 375
    :pswitch_3
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/Schema;->getElementType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    .line 376
    .local v0, "elementType":Lcom/flurry/org/apache/avro/Schema;
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/io/Decoder;->skipArray()J

    move-result-wide v6

    .local v6, "l":J
    :goto_2
    cmp-long v8, v6, v10

    if-lez v8, :cond_0

    .line 377
    const-wide/16 v2, 0x0

    .local v2, "i":J
    :goto_3
    cmp-long v8, v2, v6

    if-gez v8, :cond_1

    .line 378
    invoke-static {v0, p1}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->skip(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/Decoder;)V

    .line 377
    add-long/2addr v2, v12

    goto :goto_3

    .line 376
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/io/Decoder;->skipArray()J

    move-result-wide v6

    goto :goto_2

    .line 383
    .end local v0    # "elementType":Lcom/flurry/org/apache/avro/Schema;
    .end local v2    # "i":J
    .end local v6    # "l":J
    :pswitch_4
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/Schema;->getValueType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v5

    .line 384
    .local v5, "value":Lcom/flurry/org/apache/avro/Schema;
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/io/Decoder;->skipMap()J

    move-result-wide v6

    .restart local v6    # "l":J
    :goto_4
    cmp-long v8, v6, v10

    if-lez v8, :cond_0

    .line 385
    const-wide/16 v2, 0x0

    .restart local v2    # "i":J
    :goto_5
    cmp-long v8, v2, v6

    if-gez v8, :cond_2

    .line 386
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/io/Decoder;->skipString()V

    .line 387
    invoke-static {v5, p1}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->skip(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/Decoder;)V

    .line 385
    add-long/2addr v2, v12

    goto :goto_5

    .line 384
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/io/Decoder;->skipMap()J

    move-result-wide v6

    goto :goto_4

    .line 392
    .end local v2    # "i":J
    .end local v5    # "value":Lcom/flurry/org/apache/avro/Schema;
    .end local v6    # "l":J
    :pswitch_5
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/io/Decoder;->readIndex()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/flurry/org/apache/avro/Schema;

    invoke-static {v8, p1}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->skip(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/Decoder;)V

    goto :goto_1

    .line 395
    :pswitch_6
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/Schema;->getFixedSize()I

    move-result v8

    invoke-virtual {p1, v8}, Lcom/flurry/org/apache/avro/io/Decoder;->skipFixed(I)V

    goto :goto_1

    .line 398
    :pswitch_7
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/io/Decoder;->skipString()V

    goto :goto_1

    .line 401
    :pswitch_8
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/io/Decoder;->skipBytes()V

    goto :goto_1

    .line 403
    :pswitch_9
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/io/Decoder;->readInt()I

    goto :goto_1

    .line 404
    :pswitch_a
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/io/Decoder;->readLong()J

    goto :goto_1

    .line 405
    :pswitch_b
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/io/Decoder;->readFloat()F

    goto :goto_1

    .line 406
    :pswitch_c
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/io/Decoder;->readDouble()D

    goto :goto_1

    .line 407
    :pswitch_d
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/io/Decoder;->readBoolean()Z

    goto :goto_1

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected addToArray(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 0
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "pos"    # J
    .param p4, "e"    # Ljava/lang/Object;

    .prologue
    .line 226
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumReader;, "Lcom/flurry/org/apache/avro/generic/GenericDatumReader<TD;>;"
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "array":Ljava/lang/Object;
    invoke-interface {p1, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 227
    return-void
.end method

.method protected addToMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "map"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 250
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumReader;, "Lcom/flurry/org/apache/avro/generic/GenericDatumReader<TD;>;"
    check-cast p1, Ljava/util/Map;

    .end local p1    # "map":Ljava/lang/Object;
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    return-void
.end method

.method protected createBytes([B)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 362
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumReader;, "Lcom/flurry/org/apache/avro/generic/GenericDatumReader<TD;>;"
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected createEnum(Ljava/lang/String;Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;
    .locals 1
    .param p1, "symbol"    # Ljava/lang/String;
    .param p2, "schema"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 188
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumReader;, "Lcom/flurry/org/apache/avro/generic/GenericDatumReader<TD;>;"
    new-instance v0, Lcom/flurry/org/apache/avro/generic/GenericData$EnumSymbol;

    invoke-direct {v0, p2, p1}, Lcom/flurry/org/apache/avro/generic/GenericData$EnumSymbol;-><init>(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createFixed(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;
    .locals 1
    .param p1, "old"    # Ljava/lang/Object;
    .param p2, "schema"    # Lcom/flurry/org/apache/avro/Schema;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 270
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumReader;, "Lcom/flurry/org/apache/avro/generic/GenericDatumReader<TD;>;"
    iget-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->data:Lcom/flurry/org/apache/avro/generic/GenericData;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/org/apache/avro/generic/GenericData;->createFixed(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected createFixed(Ljava/lang/Object;[BLcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;
    .locals 1
    .param p1, "old"    # Ljava/lang/Object;
    .param p2, "bytes"    # [B
    .param p3, "schema"    # Lcom/flurry/org/apache/avro/Schema;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 281
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumReader;, "Lcom/flurry/org/apache/avro/generic/GenericDatumReader<TD;>;"
    iget-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->data:Lcom/flurry/org/apache/avro/generic/GenericData;

    invoke-virtual {v0, p1, p2, p3}, Lcom/flurry/org/apache/avro/generic/GenericData;->createFixed(Ljava/lang/Object;[BLcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected createString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 342
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumReader;, "Lcom/flurry/org/apache/avro/generic/GenericDatumReader<TD;>;"
    new-instance v0, Lcom/flurry/org/apache/avro/util/Utf8;

    invoke-direct {v0, p1}, Lcom/flurry/org/apache/avro/util/Utf8;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getData()Lcom/flurry/org/apache/avro/generic/GenericData;
    .locals 1

    .prologue
    .line 67
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumReader;, "Lcom/flurry/org/apache/avro/generic/GenericDatumReader<TD;>;"
    iget-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->data:Lcom/flurry/org/apache/avro/generic/GenericData;

    return-object v0
.end method

.method public getExpected()Lcom/flurry/org/apache/avro/Schema;
    .locals 1

    .prologue
    .line 82
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumReader;, "Lcom/flurry/org/apache/avro/generic/GenericDatumReader<TD;>;"
    iget-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->expected:Lcom/flurry/org/apache/avro/Schema;

    return-object v0
.end method

.method protected final getResolver(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/io/ResolvingDecoder;
    .locals 6
    .param p1, "actual"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "expected"    # Lcom/flurry/org/apache/avro/Schema;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumReader;, "Lcom/flurry/org/apache/avro/generic/GenericDatumReader<TD;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 107
    .local v1, "currThread":Ljava/lang/Thread;
    iget-object v3, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->creator:Ljava/lang/Thread;

    if-ne v1, v3, :cond_1

    iget-object v3, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->creatorResolver:Lcom/flurry/org/apache/avro/io/ResolvingDecoder;

    if-eqz v3, :cond_1

    .line 108
    iget-object v2, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->creatorResolver:Lcom/flurry/org/apache/avro/io/ResolvingDecoder;

    .line 127
    :cond_0
    :goto_0
    return-object v2

    .line 111
    :cond_1
    sget-object v3, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->RESOLVER_CACHE:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 112
    .local v0, "cache":Ljava/util/Map;, "Ljava/util/Map<Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/ResolvingDecoder;>;"
    if-nez v0, :cond_2

    .line 113
    new-instance v0, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;

    .end local v0    # "cache":Ljava/util/Map;, "Ljava/util/Map<Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/ResolvingDecoder;>;"
    invoke-direct {v0}, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;-><init>()V

    .line 114
    .restart local v0    # "cache":Ljava/util/Map;, "Ljava/util/Map<Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/ResolvingDecoder;>;"
    sget-object v3, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->RESOLVER_CACHE:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;

    .line 117
    .local v2, "resolver":Lcom/flurry/org/apache/avro/io/ResolvingDecoder;
    if-nez v2, :cond_3

    .line 118
    invoke-static {}, Lcom/flurry/org/apache/avro/io/DecoderFactory;->get()Lcom/flurry/org/apache/avro/io/DecoderFactory;

    move-result-object v3

    invoke-static {p1, p2}, Lcom/flurry/org/apache/avro/Schema;->applyAliases(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p2, v5}, Lcom/flurry/org/apache/avro/io/DecoderFactory;->resolvingDecoder(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/Decoder;)Lcom/flurry/org/apache/avro/io/ResolvingDecoder;

    move-result-object v2

    .line 120
    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_3
    iget-object v3, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->creator:Ljava/lang/Thread;

    if-ne v1, v3, :cond_0

    .line 124
    iput-object v2, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->creatorResolver:Lcom/flurry/org/apache/avro/io/ResolvingDecoder;

    goto :goto_0
.end method

.method public getSchema()Lcom/flurry/org/apache/avro/Schema;
    .locals 1

    .prologue
    .line 70
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumReader;, "Lcom/flurry/org/apache/avro/generic/GenericDatumReader<TD;>;"
    iget-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->actual:Lcom/flurry/org/apache/avro/Schema;

    return-object v0
.end method

.method protected newArray(Ljava/lang/Object;ILcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;
    .locals 1
    .param p1, "old"    # Ljava/lang/Object;
    .param p2, "size"    # I
    .param p3, "schema"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 304
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumReader;, "Lcom/flurry/org/apache/avro/generic/GenericDatumReader<TD;>;"
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 305
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 307
    .end local p1    # "old":Ljava/lang/Object;
    :goto_0
    return-object p1

    .restart local p1    # "old":Ljava/lang/Object;
    :cond_0
    new-instance p1, Lcom/flurry/org/apache/avro/generic/GenericData$Array;

    .end local p1    # "old":Ljava/lang/Object;
    invoke-direct {p1, p2, p3}, Lcom/flurry/org/apache/avro/generic/GenericData$Array;-><init>(ILcom/flurry/org/apache/avro/Schema;)V

    goto :goto_0
.end method

.method protected newMap(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .param p1, "old"    # Ljava/lang/Object;
    .param p2, "size"    # I

    .prologue
    .line 315
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumReader;, "Lcom/flurry/org/apache/avro/generic/GenericDatumReader<TD;>;"
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 316
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 318
    .end local p1    # "old":Ljava/lang/Object;
    :goto_0
    return-object p1

    .restart local p1    # "old":Ljava/lang/Object;
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    .end local p1    # "old":Ljava/lang/Object;
    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    goto :goto_0
.end method

.method protected newRecord(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;
    .locals 1
    .param p1, "old"    # Ljava/lang/Object;
    .param p2, "schema"    # Lcom/flurry/org/apache/avro/Schema;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 296
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumReader;, "Lcom/flurry/org/apache/avro/generic/GenericDatumReader<TD;>;"
    iget-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->data:Lcom/flurry/org/apache/avro/generic/GenericData;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/org/apache/avro/generic/GenericData;->newRecord(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected peekArray(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "array"    # Ljava/lang/Object;

    .prologue
    .line 217
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumReader;, "Lcom/flurry/org/apache/avro/generic/GenericDatumReader<TD;>;"
    instance-of v0, p1, Lcom/flurry/org/apache/avro/generic/GenericArray;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/flurry/org/apache/avro/generic/GenericArray;

    .end local p1    # "array":Ljava/lang/Object;
    invoke-interface {p1}, Lcom/flurry/org/apache/avro/generic/GenericArray;->peek()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .restart local p1    # "array":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected read(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/ResolvingDecoder;)Ljava/lang/Object;
    .locals 3
    .param p1, "old"    # Ljava/lang/Object;
    .param p2, "expected"    # Lcom/flurry/org/apache/avro/Schema;
    .param p3, "in"    # Lcom/flurry/org/apache/avro/io/ResolvingDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumReader;, "Lcom/flurry/org/apache/avro/generic/GenericDatumReader<TD;>;"
    sget-object v0, Lcom/flurry/org/apache/avro/generic/GenericDatumReader$2;->$SwitchMap$org$apache$avro$Schema$Type:[I

    invoke-virtual {p2}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 158
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->readRecord(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/ResolvingDecoder;)Ljava/lang/Object;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    .line 145
    :pswitch_1
    invoke-virtual {p0, p2, p3}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->readEnum(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/Decoder;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 146
    :pswitch_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->readArray(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/ResolvingDecoder;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 147
    :pswitch_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->readMap(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/ResolvingDecoder;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 148
    :pswitch_4
    invoke-virtual {p2}, Lcom/flurry/org/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->readIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {p0, p1, v0, p3}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->read(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/ResolvingDecoder;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 149
    :pswitch_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->readFixed(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/Decoder;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 150
    :pswitch_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->readString(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/Decoder;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 151
    :pswitch_7
    invoke-virtual {p0, p1, p3}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->readBytes(Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Decoder;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 152
    :pswitch_8
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->readInt(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/Decoder;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 153
    :pswitch_9
    invoke-virtual {p3}, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 154
    :pswitch_a
    invoke-virtual {p3}, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 155
    :pswitch_b
    invoke-virtual {p3}, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 156
    :pswitch_c
    invoke-virtual {p3}, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->readBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 157
    :pswitch_d
    invoke-virtual {p3}, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->readNull()V

    const/4 v0, 0x0

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public read(Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Decoder;)Ljava/lang/Object;
    .locals 4
    .param p2, "in"    # Lcom/flurry/org/apache/avro/io/Decoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lcom/flurry/org/apache/avro/io/Decoder;",
            ")TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumReader;, "Lcom/flurry/org/apache/avro/generic/GenericDatumReader<TD;>;"
    .local p1, "reuse":Ljava/lang/Object;, "TD;"
    iget-object v2, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->actual:Lcom/flurry/org/apache/avro/Schema;

    iget-object v3, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->expected:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {p0, v2, v3}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->getResolver(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/io/ResolvingDecoder;

    move-result-object v0

    .line 134
    .local v0, "resolver":Lcom/flurry/org/apache/avro/io/ResolvingDecoder;
    invoke-virtual {v0, p2}, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->configure(Lcom/flurry/org/apache/avro/io/Decoder;)Lcom/flurry/org/apache/avro/io/ValidatingDecoder;

    .line 135
    iget-object v2, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->expected:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {p0, p1, v2, v0}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->read(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/ResolvingDecoder;)Ljava/lang/Object;

    move-result-object v1

    .line 136
    .local v1, "result":Ljava/lang/Object;, "TD;"
    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->drain()V

    .line 137
    return-object v1
.end method

.method protected readArray(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/ResolvingDecoder;)Ljava/lang/Object;
    .locals 11
    .param p1, "old"    # Ljava/lang/Object;
    .param p2, "expected"    # Lcom/flurry/org/apache/avro/Schema;
    .param p3, "in"    # Lcom/flurry/org/apache/avro/io/ResolvingDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumReader;, "Lcom/flurry/org/apache/avro/generic/GenericDatumReader<TD;>;"
    invoke-virtual {p2}, Lcom/flurry/org/apache/avro/Schema;->getElementType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v1

    .line 196
    .local v1, "expectedType":Lcom/flurry/org/apache/avro/Schema;
    invoke-virtual {p3}, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->readArrayStart()J

    move-result-wide v6

    .line 197
    .local v6, "l":J
    const-wide/16 v2, 0x0

    .line 198
    .local v2, "base":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_2

    .line 199
    long-to-int v8, v6

    invoke-virtual {p0, p1, v8, p2}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->newArray(Ljava/lang/Object;ILcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object v0

    .line 201
    .local v0, "array":Ljava/lang/Object;
    :cond_0
    const-wide/16 v4, 0x0

    .local v4, "i":J
    :goto_0
    cmp-long v8, v4, v6

    if-gez v8, :cond_1

    .line 202
    add-long v8, v2, v4

    invoke-virtual {p0, v0}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->peekArray(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p0, v10, v1, p3}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->read(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/ResolvingDecoder;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p0, v0, v8, v9, v10}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->addToArray(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 201
    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    goto :goto_0

    .line 204
    :cond_1
    add-long/2addr v2, v6

    .line 205
    invoke-virtual {p3}, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->arrayNext()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gtz v8, :cond_0

    .line 208
    .end local v0    # "array":Ljava/lang/Object;
    .end local v4    # "i":J
    :goto_1
    return-object v0

    :cond_2
    const/4 v8, 0x0

    invoke-virtual {p0, p1, v8, p2}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->newArray(Ljava/lang/Object;ILcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method protected readBytes(Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Decoder;)Ljava/lang/Object;
    .locals 1
    .param p1, "old"    # Ljava/lang/Object;
    .param p2, "in"    # Lcom/flurry/org/apache/avro/io/Decoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumReader;, "Lcom/flurry/org/apache/avro/generic/GenericDatumReader<TD;>;"
    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/nio/ByteBuffer;

    .end local p1    # "old":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p2, p1}, Lcom/flurry/org/apache/avro/io/Decoder;->readBytes(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .restart local p1    # "old":Ljava/lang/Object;
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method protected readEnum(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/Decoder;)Ljava/lang/Object;
    .locals 2
    .param p1, "expected"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "in"    # Lcom/flurry/org/apache/avro/io/Decoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumReader;, "Lcom/flurry/org/apache/avro/generic/GenericDatumReader<TD;>;"
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getEnumSymbols()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/flurry/org/apache/avro/io/Decoder;->readEnum()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->createEnum(Ljava/lang/String;Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected readFixed(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/Decoder;)Ljava/lang/Object;
    .locals 4
    .param p1, "old"    # Ljava/lang/Object;
    .param p2, "expected"    # Lcom/flurry/org/apache/avro/Schema;
    .param p3, "in"    # Lcom/flurry/org/apache/avro/io/Decoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumReader;, "Lcom/flurry/org/apache/avro/generic/GenericDatumReader<TD;>;"
    iget-object v1, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->data:Lcom/flurry/org/apache/avro/generic/GenericData;

    invoke-virtual {v1, p1, p2}, Lcom/flurry/org/apache/avro/generic/GenericData;->createFixed(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/generic/GenericFixed;

    .line 258
    .local v0, "fixed":Lcom/flurry/org/apache/avro/generic/GenericFixed;
    invoke-interface {v0}, Lcom/flurry/org/apache/avro/generic/GenericFixed;->bytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/flurry/org/apache/avro/Schema;->getFixedSize()I

    move-result v3

    invoke-virtual {p3, v1, v2, v3}, Lcom/flurry/org/apache/avro/io/Decoder;->readFixed([BII)V

    .line 259
    return-object v0
.end method

.method protected readInt(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/Decoder;)Ljava/lang/Object;
    .locals 1
    .param p1, "old"    # Ljava/lang/Object;
    .param p2, "expected"    # Lcom/flurry/org/apache/avro/Schema;
    .param p3, "in"    # Lcom/flurry/org/apache/avro/io/Decoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumReader;, "Lcom/flurry/org/apache/avro/generic/GenericDatumReader<TD;>;"
    invoke-virtual {p3}, Lcom/flurry/org/apache/avro/io/Decoder;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected readMap(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/ResolvingDecoder;)Ljava/lang/Object;
    .locals 12
    .param p1, "old"    # Ljava/lang/Object;
    .param p2, "expected"    # Lcom/flurry/org/apache/avro/Schema;
    .param p3, "in"    # Lcom/flurry/org/apache/avro/io/ResolvingDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumReader;, "Lcom/flurry/org/apache/avro/generic/GenericDatumReader<TD;>;"
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 233
    invoke-virtual {p2}, Lcom/flurry/org/apache/avro/Schema;->getValueType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    .line 234
    .local v0, "eValue":Lcom/flurry/org/apache/avro/Schema;
    invoke-virtual {p3}, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->readMapStart()J

    move-result-wide v2

    .line 235
    .local v2, "l":J
    long-to-int v5, v2

    invoke-virtual {p0, p1, v5}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->newMap(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    .line 236
    .local v4, "map":Ljava/lang/Object;
    cmp-long v5, v2, v10

    if-lez v5, :cond_2

    .line 238
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    int-to-long v6, v1

    cmp-long v5, v6, v2

    if-gez v5, :cond_1

    .line 239
    invoke-virtual {p0, v8, p2, p3}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->readString(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/Decoder;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v8, v0, p3}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->read(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/ResolvingDecoder;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->addToMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {p3}, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->mapNext()J

    move-result-wide v2

    cmp-long v5, v2, v10

    if-gtz v5, :cond_0

    .line 243
    .end local v1    # "i":I
    :cond_2
    return-object v4
.end method

.method protected readRecord(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/ResolvingDecoder;)Ljava/lang/Object;
    .locals 11
    .param p1, "old"    # Ljava/lang/Object;
    .param p2, "expected"    # Lcom/flurry/org/apache/avro/Schema;
    .param p3, "in"    # Lcom/flurry/org/apache/avro/io/ResolvingDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumReader;, "Lcom/flurry/org/apache/avro/generic/GenericDatumReader<TD;>;"
    iget-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->data:Lcom/flurry/org/apache/avro/generic/GenericData;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/org/apache/avro/generic/GenericData;->newRecord(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object v1

    .line 167
    .local v1, "r":Ljava/lang/Object;
    iget-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->data:Lcom/flurry/org/apache/avro/generic/GenericData;

    invoke-virtual {v0, v1, p2}, Lcom/flurry/org/apache/avro/generic/GenericData;->getRecordState(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object v5

    .line 169
    .local v5, "state":Ljava/lang/Object;
    invoke-virtual {p3}, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->readFieldOrder()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v6

    .local v6, "arr$":[Lcom/flurry/org/apache/avro/Schema$Field;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_1

    aget-object v7, v6, v8

    .line 170
    .local v7, "f":Lcom/flurry/org/apache/avro/Schema$Field;
    invoke-virtual {v7}, Lcom/flurry/org/apache/avro/Schema$Field;->pos()I

    move-result v3

    .line 171
    .local v3, "pos":I
    invoke-virtual {v7}, Lcom/flurry/org/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "name":Ljava/lang/String;
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->data:Lcom/flurry/org/apache/avro/generic/GenericData;

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/flurry/org/apache/avro/generic/GenericData;->getField(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 173
    .local v10, "oldDatum":Ljava/lang/Object;
    :goto_1
    iget-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->data:Lcom/flurry/org/apache/avro/generic/GenericData;

    invoke-virtual {v7}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v4

    invoke-virtual {p0, v10, v4, p3}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->read(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/ResolvingDecoder;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/org/apache/avro/generic/GenericData;->setField(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 169
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 172
    .end local v10    # "oldDatum":Ljava/lang/Object;
    :cond_0
    const/4 v10, 0x0

    goto :goto_1

    .line 176
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "pos":I
    .end local v7    # "f":Lcom/flurry/org/apache/avro/Schema$Field;
    :cond_1
    return-object v1
.end method

.method protected readString(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/Decoder;)Ljava/lang/Object;
    .locals 2
    .param p1, "old"    # Ljava/lang/Object;
    .param p2, "expected"    # Lcom/flurry/org/apache/avro/Schema;
    .param p3, "in"    # Lcom/flurry/org/apache/avro/io/Decoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumReader;, "Lcom/flurry/org/apache/avro/generic/GenericDatumReader<TD;>;"
    iget-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->data:Lcom/flurry/org/apache/avro/generic/GenericData;

    const-string v0, "String"

    iget-object v1, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->data:Lcom/flurry/org/apache/avro/generic/GenericData;

    const-string v1, "avro.java.string"

    invoke-virtual {p2, v1}, Lcom/flurry/org/apache/avro/Schema;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p3}, Lcom/flurry/org/apache/avro/io/Decoder;->readString()Ljava/lang/String;

    move-result-object v0

    .line 329
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->readString(Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Decoder;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected readString(Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Decoder;)Ljava/lang/Object;
    .locals 1
    .param p1, "old"    # Ljava/lang/Object;
    .param p2, "in"    # Lcom/flurry/org/apache/avro/io/Decoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumReader;, "Lcom/flurry/org/apache/avro/generic/GenericDatumReader<TD;>;"
    instance-of v0, p1, Lcom/flurry/org/apache/avro/util/Utf8;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/flurry/org/apache/avro/util/Utf8;

    .end local p1    # "old":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p2, p1}, Lcom/flurry/org/apache/avro/io/Decoder;->readString(Lcom/flurry/org/apache/avro/util/Utf8;)Lcom/flurry/org/apache/avro/util/Utf8;

    move-result-object v0

    return-object v0

    .restart local p1    # "old":Ljava/lang/Object;
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setExpected(Lcom/flurry/org/apache/avro/Schema;)V
    .locals 1
    .param p1, "reader"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 86
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumReader;, "Lcom/flurry/org/apache/avro/generic/GenericDatumReader<TD;>;"
    iput-object p1, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->expected:Lcom/flurry/org/apache/avro/Schema;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->creatorResolver:Lcom/flurry/org/apache/avro/io/ResolvingDecoder;

    .line 88
    return-void
.end method

.method public setSchema(Lcom/flurry/org/apache/avro/Schema;)V
    .locals 1
    .param p1, "writer"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 74
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericDatumReader;, "Lcom/flurry/org/apache/avro/generic/GenericDatumReader<TD;>;"
    iput-object p1, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->actual:Lcom/flurry/org/apache/avro/Schema;

    .line 75
    iget-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->expected:Lcom/flurry/org/apache/avro/Schema;

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->actual:Lcom/flurry/org/apache/avro/Schema;

    iput-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->expected:Lcom/flurry/org/apache/avro/Schema;

    .line 78
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->creatorResolver:Lcom/flurry/org/apache/avro/io/ResolvingDecoder;

    .line 79
    return-void
.end method
