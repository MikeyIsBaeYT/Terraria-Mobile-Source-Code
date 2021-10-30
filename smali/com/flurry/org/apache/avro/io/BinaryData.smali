.class public Lcom/flurry/org/apache/avro/io/BinaryData;
.super Ljava/lang/Object;
.source "BinaryData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/apache/avro/io/BinaryData$3;,
        Lcom/flurry/org/apache/avro/io/BinaryData$HashData;,
        Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;
    }
.end annotation


# static fields
.field private static final DECODERS:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;",
            ">;"
        }
    .end annotation
.end field

.field private static final HASH_DATA:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/flurry/org/apache/avro/io/BinaryData$HashData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/flurry/org/apache/avro/io/BinaryData$1;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/io/BinaryData$1;-><init>()V

    sput-object v0, Lcom/flurry/org/apache/avro/io/BinaryData;->DECODERS:Ljava/lang/ThreadLocal;

    .line 208
    new-instance v0, Lcom/flurry/org/apache/avro/io/BinaryData$2;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/io/BinaryData$2;-><init>()V

    sput-object v0, Lcom/flurry/org/apache/avro/io/BinaryData;->HASH_DATA:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compare(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;Lcom/flurry/org/apache/avro/Schema;)I
    .locals 36
    .param p0, "d"    # Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-static/range {p0 .. p0}, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->access$000(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;)Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    move-result-object v14

    .local v14, "d1":Lcom/flurry/org/apache/avro/io/Decoder;
    invoke-static/range {p0 .. p0}, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->access$100(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;)Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    move-result-object v15

    .line 82
    .local v15, "d2":Lcom/flurry/org/apache/avro/io/Decoder;
    sget-object v2, Lcom/flurry/org/apache/avro/io/BinaryData$3;->$SwitchMap$org$apache$avro$Schema$Type:[I

    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 176
    new-instance v2, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    const-string v3, "Unexpected schema to compare!"

    invoke-direct {v2, v3}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/flurry/org/apache/avro/Schema$Field;

    .line 85
    .local v20, "field":Lcom/flurry/org/apache/avro/Schema$Field;
    invoke-virtual/range {v20 .. v20}, Lcom/flurry/org/apache/avro/Schema$Field;->order()Lcom/flurry/org/apache/avro/Schema$Field$Order;

    move-result-object v2

    sget-object v3, Lcom/flurry/org/apache/avro/Schema$Field$Order;->IGNORE:Lcom/flurry/org/apache/avro/Schema$Field$Order;

    if-ne v2, v3, :cond_1

    .line 86
    invoke-virtual/range {v20 .. v20}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v2

    invoke-static {v2, v14}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->skip(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/Decoder;)V

    .line 87
    invoke-virtual/range {v20 .. v20}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v2

    invoke-static {v2, v15}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->skip(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/Decoder;)V

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual/range {v20 .. v20}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/flurry/org/apache/avro/io/BinaryData;->compare(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;Lcom/flurry/org/apache/avro/Schema;)I

    move-result v13

    .line 91
    .local v13, "c":I
    if-eqz v13, :cond_0

    .line 92
    invoke-virtual/range {v20 .. v20}, Lcom/flurry/org/apache/avro/Schema$Field;->order()Lcom/flurry/org/apache/avro/Schema$Field$Order;

    move-result-object v2

    sget-object v3, Lcom/flurry/org/apache/avro/Schema$Field$Order;->DESCENDING:Lcom/flurry/org/apache/avro/Schema$Field$Order;

    if-eq v2, v3, :cond_2

    .end local v13    # "c":I
    :goto_1
    move v2, v13

    .line 174
    .end local v20    # "field":Lcom/flurry/org/apache/avro/Schema$Field;
    .end local v21    # "i$":Ljava/util/Iterator;
    :goto_2
    return v2

    .line 92
    .restart local v13    # "c":I
    .restart local v20    # "field":Lcom/flurry/org/apache/avro/Schema$Field;
    .restart local v21    # "i$":Ljava/util/Iterator;
    :cond_2
    neg-int v13, v13

    goto :goto_1

    .line 94
    .end local v13    # "c":I
    .end local v20    # "field":Lcom/flurry/org/apache/avro/Schema$Field;
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 97
    .end local v21    # "i$":Ljava/util/Iterator;
    :pswitch_1
    invoke-virtual {v14}, Lcom/flurry/org/apache/avro/io/Decoder;->readInt()I

    move-result v24

    .line 98
    .local v24, "i1":I
    invoke-virtual {v15}, Lcom/flurry/org/apache/avro/io/Decoder;->readInt()I

    move-result v25

    .line 99
    .local v25, "i2":I
    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, -0x1

    goto :goto_2

    .line 102
    .end local v24    # "i1":I
    .end local v25    # "i2":I
    :pswitch_2
    invoke-virtual {v14}, Lcom/flurry/org/apache/avro/io/Decoder;->readLong()J

    move-result-wide v28

    .line 103
    .local v28, "l1":J
    invoke-virtual {v15}, Lcom/flurry/org/apache/avro/io/Decoder;->readLong()J

    move-result-wide v30

    .line 104
    .local v30, "l2":J
    cmp-long v2, v28, v30

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    cmp-long v2, v28, v30

    if-lez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, -0x1

    goto :goto_2

    .line 107
    .end local v28    # "l1":J
    .end local v30    # "l2":J
    :pswitch_3
    const-wide/16 v22, 0x0

    .line 108
    .local v22, "i":J
    const-wide/16 v32, 0x0

    .local v32, "r1":J
    const-wide/16 v34, 0x0

    .line 109
    .local v34, "r2":J
    const-wide/16 v28, 0x0

    .restart local v28    # "l1":J
    const-wide/16 v30, 0x0

    .line 111
    .restart local v30    # "l2":J
    :cond_8
    const-wide/16 v2, 0x0

    cmp-long v2, v32, v2

    if-nez v2, :cond_a

    .line 112
    invoke-virtual {v14}, Lcom/flurry/org/apache/avro/io/Decoder;->readLong()J

    move-result-wide v32

    .line 113
    const-wide/16 v2, 0x0

    cmp-long v2, v32, v2

    if-gez v2, :cond_9

    move-wide/from16 v0, v32

    neg-long v0, v0

    move-wide/from16 v32, v0

    invoke-virtual {v14}, Lcom/flurry/org/apache/avro/io/Decoder;->readLong()J

    .line 114
    :cond_9
    add-long v28, v28, v32

    .line 116
    :cond_a
    const-wide/16 v2, 0x0

    cmp-long v2, v34, v2

    if-nez v2, :cond_c

    .line 117
    invoke-virtual {v15}, Lcom/flurry/org/apache/avro/io/Decoder;->readLong()J

    move-result-wide v34

    .line 118
    const-wide/16 v2, 0x0

    cmp-long v2, v34, v2

    if-gez v2, :cond_b

    move-wide/from16 v0, v34

    neg-long v0, v0

    move-wide/from16 v34, v0

    invoke-virtual {v15}, Lcom/flurry/org/apache/avro/io/Decoder;->readLong()J

    .line 119
    :cond_b
    add-long v30, v30, v34

    .line 121
    :cond_c
    const-wide/16 v2, 0x0

    cmp-long v2, v32, v2

    if-eqz v2, :cond_d

    const-wide/16 v2, 0x0

    cmp-long v2, v34, v2

    if-nez v2, :cond_10

    .line 122
    :cond_d
    cmp-long v2, v28, v30

    if-nez v2, :cond_e

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_e
    cmp-long v2, v28, v30

    if-lez v2, :cond_f

    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_f
    const/4 v2, -0x1

    goto/16 :goto_2

    .line 123
    :cond_10
    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v26

    .line 124
    .local v26, "l":J
    :goto_3
    cmp-long v2, v22, v26

    if-gez v2, :cond_8

    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/apache/avro/Schema;->getElementType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/flurry/org/apache/avro/io/BinaryData;->compare(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;Lcom/flurry/org/apache/avro/Schema;)I

    move-result v13

    .line 126
    .restart local v13    # "c":I
    if-eqz v13, :cond_11

    move v2, v13

    goto/16 :goto_2

    .line 127
    :cond_11
    const-wide/16 v2, 0x1

    add-long v22, v22, v2

    const-wide/16 v2, 0x1

    sub-long v32, v32, v2

    const-wide/16 v2, 0x1

    sub-long v34, v34, v2

    .line 128
    goto :goto_3

    .line 132
    .end local v13    # "c":I
    .end local v22    # "i":J
    .end local v26    # "l":J
    .end local v28    # "l1":J
    .end local v30    # "l2":J
    .end local v32    # "r1":J
    .end local v34    # "r2":J
    :pswitch_4
    new-instance v2, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    const-string v3, "Can\'t compare maps!"

    invoke-direct {v2, v3}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 134
    :pswitch_5
    invoke-virtual {v14}, Lcom/flurry/org/apache/avro/io/Decoder;->readInt()I

    move-result v24

    .line 135
    .restart local v24    # "i1":I
    invoke-virtual {v15}, Lcom/flurry/org/apache/avro/io/Decoder;->readInt()I

    move-result v25

    .line 136
    .restart local v25    # "i2":I
    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_12

    .line 137
    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v2

    move/from16 v0, v24

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/org/apache/avro/Schema;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/flurry/org/apache/avro/io/BinaryData;->compare(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;Lcom/flurry/org/apache/avro/Schema;)I

    move-result v2

    goto/16 :goto_2

    .line 139
    :cond_12
    sub-int v2, v24, v25

    goto/16 :goto_2

    .line 143
    .end local v24    # "i1":I
    .end local v25    # "i2":I
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/apache/avro/Schema;->getFixedSize()I

    move-result v4

    .line 144
    .local v4, "size":I
    invoke-static/range {p0 .. p0}, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->access$200(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;)Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->getBuf()[B

    move-result-object v2

    invoke-static/range {p0 .. p0}, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->access$200(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;)Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->getPos()I

    move-result v3

    invoke-static/range {p0 .. p0}, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->access$300(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;)Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->getBuf()[B

    move-result-object v5

    invoke-static/range {p0 .. p0}, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->access$300(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;)Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->getPos()I

    move-result v6

    move v7, v4

    invoke-static/range {v2 .. v7}, Lcom/flurry/org/apache/avro/io/BinaryData;->compareBytes([BII[BII)I

    move-result v13

    .line 146
    .restart local v13    # "c":I
    invoke-static/range {p0 .. p0}, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->access$000(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;)Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->skipFixed(I)V

    .line 147
    invoke-static/range {p0 .. p0}, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->access$100(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;)Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->skipFixed(I)V

    move v2, v13

    .line 148
    goto/16 :goto_2

    .line 151
    .end local v4    # "size":I
    .end local v13    # "c":I
    :pswitch_7
    invoke-virtual {v14}, Lcom/flurry/org/apache/avro/io/Decoder;->readInt()I

    move-result v7

    .line 152
    .local v7, "l1":I
    invoke-virtual {v15}, Lcom/flurry/org/apache/avro/io/Decoder;->readInt()I

    move-result v10

    .line 153
    .local v10, "l2":I
    invoke-static/range {p0 .. p0}, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->access$200(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;)Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->getBuf()[B

    move-result-object v5

    invoke-static/range {p0 .. p0}, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->access$200(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;)Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->getPos()I

    move-result v6

    invoke-static/range {p0 .. p0}, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->access$300(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;)Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->getBuf()[B

    move-result-object v8

    invoke-static/range {p0 .. p0}, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->access$300(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;)Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->getPos()I

    move-result v9

    invoke-static/range {v5 .. v10}, Lcom/flurry/org/apache/avro/io/BinaryData;->compareBytes([BII[BII)I

    move-result v13

    .line 155
    .restart local v13    # "c":I
    invoke-static/range {p0 .. p0}, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->access$000(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;)Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->skipFixed(I)V

    .line 156
    invoke-static/range {p0 .. p0}, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->access$100(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;)Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->skipFixed(I)V

    move v2, v13

    .line 157
    goto/16 :goto_2

    .line 160
    .end local v7    # "l1":I
    .end local v10    # "l2":I
    .end local v13    # "c":I
    :pswitch_8
    invoke-virtual {v14}, Lcom/flurry/org/apache/avro/io/Decoder;->readFloat()F

    move-result v16

    .line 161
    .local v16, "f1":F
    invoke-virtual {v15}, Lcom/flurry/org/apache/avro/io/Decoder;->readFloat()F

    move-result v18

    .line 162
    .local v18, "f2":F
    cmpl-float v2, v16, v18

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_13
    cmpl-float v2, v16, v18

    if-lez v2, :cond_14

    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_14
    const/4 v2, -0x1

    goto/16 :goto_2

    .line 165
    .end local v16    # "f1":F
    .end local v18    # "f2":F
    :pswitch_9
    invoke-virtual {v14}, Lcom/flurry/org/apache/avro/io/Decoder;->readDouble()D

    move-result-wide v16

    .line 166
    .local v16, "f1":D
    invoke-virtual {v15}, Lcom/flurry/org/apache/avro/io/Decoder;->readDouble()D

    move-result-wide v18

    .line 167
    .local v18, "f2":D
    cmpl-double v2, v16, v18

    if-nez v2, :cond_15

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_15
    cmpl-double v2, v16, v18

    if-lez v2, :cond_16

    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_16
    const/4 v2, -0x1

    goto/16 :goto_2

    .line 170
    .end local v16    # "f1":D
    .end local v18    # "f2":D
    :pswitch_a
    invoke-virtual {v14}, Lcom/flurry/org/apache/avro/io/Decoder;->readBoolean()Z

    move-result v11

    .line 171
    .local v11, "b1":Z
    invoke-virtual {v15}, Lcom/flurry/org/apache/avro/io/Decoder;->readBoolean()Z

    move-result v12

    .line 172
    .local v12, "b2":Z
    if-ne v11, v12, :cond_17

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_17
    if-eqz v11, :cond_18

    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_18
    const/4 v2, -0x1

    goto/16 :goto_2

    .line 174
    .end local v11    # "b1":Z
    .end local v12    # "b2":Z
    :pswitch_b
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static compare([BII[BIILcom/flurry/org/apache/avro/Schema;)I
    .locals 8
    .param p0, "b1"    # [B
    .param p1, "s1"    # I
    .param p2, "l1"    # I
    .param p3, "b2"    # [B
    .param p4, "s2"    # I
    .param p5, "l2"    # I
    .param p6, "schema"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 69
    sget-object v1, Lcom/flurry/org/apache/avro/io/BinaryData;->DECODERS:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;

    .local v0, "decoders":Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 70
    invoke-virtual/range {v0 .. v6}, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->set([BII[BII)V

    .line 72
    :try_start_0
    invoke-static {v0, p6}, Lcom/flurry/org/apache/avro/io/BinaryData;->compare(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;Lcom/flurry/org/apache/avro/Schema;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 73
    :catch_0
    move-exception v7

    .line 74
    .local v7, "e":Ljava/io/IOException;
    new-instance v1, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v1, v7}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static compare([BI[BILcom/flurry/org/apache/avro/Schema;)I
    .locals 7
    .param p0, "b1"    # [B
    .param p1, "s1"    # I
    .param p2, "b2"    # [B
    .param p3, "s2"    # I
    .param p4, "schema"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 60
    array-length v0, p0

    sub-int v2, v0, p1

    array-length v0, p2

    sub-int v5, v0, p3

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/flurry/org/apache/avro/io/BinaryData;->compare([BII[BIILcom/flurry/org/apache/avro/Schema;)I

    move-result v0

    return v0
.end method

.method public static compareBytes([BII[BII)I
    .locals 7
    .param p0, "b1"    # [B
    .param p1, "s1"    # I
    .param p2, "l1"    # I
    .param p3, "b2"    # [B
    .param p4, "s2"    # I
    .param p5, "l2"    # I

    .prologue
    .line 184
    add-int v2, p1, p2

    .line 185
    .local v2, "end1":I
    add-int v3, p4, p5

    .line 186
    .local v3, "end2":I
    move v4, p1

    .local v4, "i":I
    move v5, p4

    .local v5, "j":I
    :goto_0
    if-ge v4, v2, :cond_1

    if-ge v5, v3, :cond_1

    .line 187
    aget-byte v6, p0, v4

    and-int/lit16 v0, v6, 0xff

    .line 188
    .local v0, "a":I
    aget-byte v6, p3, v5

    and-int/lit16 v1, v6, 0xff

    .line 189
    .local v1, "b":I
    if-eq v0, v1, :cond_0

    .line 190
    sub-int v6, v0, v1

    .line 193
    .end local v0    # "a":I
    .end local v1    # "b":I
    :goto_1
    return v6

    .line 186
    .restart local v0    # "a":I
    .restart local v1    # "b":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 193
    .end local v0    # "a":I
    .end local v1    # "b":I
    :cond_1
    sub-int v6, p2, p5

    goto :goto_1
.end method

.method public static encodeBoolean(Z[BI)I
    .locals 2
    .param p0, "b"    # Z
    .param p1, "buf"    # [B
    .param p2, "pos"    # I

    .prologue
    const/4 v1, 0x1

    .line 308
    if-eqz p0, :cond_0

    move v0, v1

    :goto_0
    aput-byte v0, p1, p2

    .line 309
    return v1

    .line 308
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static encodeDouble(D[BI)I
    .locals 8
    .param p0, "d"    # D
    .param p2, "buf"    # [B
    .param p3, "pos"    # I

    .prologue
    const-wide/16 v6, -0x1

    .line 412
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 413
    .local v0, "bits":J
    and-long v4, v0, v6

    long-to-int v2, v4

    .line 414
    .local v2, "first":I
    const/16 v4, 0x20

    ushr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v3, v4

    .line 417
    .local v3, "second":I
    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, p2, p3

    .line 418
    add-int/lit8 v4, p3, 0x4

    and-int/lit16 v5, v3, 0xff

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    .line 419
    add-int/lit8 v4, p3, 0x5

    ushr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    .line 420
    add-int/lit8 v4, p3, 0x1

    ushr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    .line 421
    add-int/lit8 v4, p3, 0x2

    ushr-int/lit8 v5, v2, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    .line 422
    add-int/lit8 v4, p3, 0x6

    ushr-int/lit8 v5, v3, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    .line 423
    add-int/lit8 v4, p3, 0x7

    ushr-int/lit8 v5, v3, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    .line 424
    add-int/lit8 v4, p3, 0x3

    ushr-int/lit8 v5, v2, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    .line 425
    const/16 v4, 0x8

    return v4
.end method

.method public static encodeFloat(F[BI)I
    .locals 5
    .param p0, "f"    # F
    .param p1, "buf"    # [B
    .param p2, "pos"    # I

    .prologue
    .line 396
    const/4 v1, 0x1

    .line 397
    .local v1, "len":I
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 399
    .local v0, "bits":I
    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    .line 400
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "len":I
    .local v2, "len":I
    add-int v3, p2, v1

    ushr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 401
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "len":I
    .restart local v1    # "len":I
    add-int/lit8 v3, p2, 0x2

    ushr-int/lit8 v4, v0, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 402
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, p2, 0x3

    ushr-int/lit8 v4, v0, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 403
    const/4 v3, 0x4

    return v3
.end method

.method public static encodeInt(I[BI)I
    .locals 5
    .param p0, "n"    # I
    .param p1, "buf"    # [B
    .param p2, "pos"    # I

    .prologue
    const/16 v4, 0x7f

    .line 319
    shl-int/lit8 v2, p0, 0x1

    shr-int/lit8 v3, p0, 0x1f

    xor-int p0, v2, v3

    .line 320
    move v1, p2

    .line 321
    .local v1, "start":I
    and-int/lit8 v2, p0, -0x80

    if-eqz v2, :cond_0

    .line 322
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "pos":I
    .local v0, "pos":I
    or-int/lit16 v2, p0, 0x80

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    .line 323
    ushr-int/lit8 p0, p0, 0x7

    .line 324
    if-le p0, v4, :cond_1

    .line 325
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "pos":I
    .restart local p2    # "pos":I
    or-int/lit16 v2, p0, 0x80

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 326
    ushr-int/lit8 p0, p0, 0x7

    .line 327
    if-le p0, v4, :cond_0

    .line 328
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "pos":I
    .restart local v0    # "pos":I
    or-int/lit16 v2, p0, 0x80

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    .line 329
    ushr-int/lit8 p0, p0, 0x7

    .line 330
    if-le p0, v4, :cond_1

    .line 331
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "pos":I
    .restart local p2    # "pos":I
    or-int/lit16 v2, p0, 0x80

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 332
    ushr-int/lit8 p0, p0, 0x7

    .line 337
    :cond_0
    :goto_0
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "pos":I
    .restart local v0    # "pos":I
    int-to-byte v2, p0

    aput-byte v2, p1, p2

    .line 338
    sub-int v2, v0, v1

    return v2

    :cond_1
    move p2, v0

    .end local v0    # "pos":I
    .restart local p2    # "pos":I
    goto :goto_0
.end method

.method public static encodeLong(J[BI)I
    .locals 6
    .param p0, "n"    # J
    .param p2, "buf"    # [B
    .param p3, "pos"    # I

    .prologue
    .line 348
    const/4 v2, 0x1

    shl-long v2, p0, v2

    const/16 v4, 0x3f

    shr-long v4, p0, v4

    xor-long p0, v2, v4

    .line 349
    move v1, p3

    .line 350
    .local v1, "start":I
    const-wide/16 v2, -0x80

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 351
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "pos":I
    .local v0, "pos":I
    const-wide/16 v2, 0x80

    or-long/2addr v2, p0

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 352
    const/4 v2, 0x7

    ushr-long/2addr p0, v2

    .line 353
    const-wide/16 v2, 0x7f

    cmp-long v2, p0, v2

    if-lez v2, :cond_1

    .line 354
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "pos":I
    .restart local p3    # "pos":I
    const-wide/16 v2, 0x80

    or-long/2addr v2, p0

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 355
    const/4 v2, 0x7

    ushr-long/2addr p0, v2

    .line 356
    const-wide/16 v2, 0x7f

    cmp-long v2, p0, v2

    if-lez v2, :cond_0

    .line 357
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "pos":I
    .restart local v0    # "pos":I
    const-wide/16 v2, 0x80

    or-long/2addr v2, p0

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 358
    const/4 v2, 0x7

    ushr-long/2addr p0, v2

    .line 359
    const-wide/16 v2, 0x7f

    cmp-long v2, p0, v2

    if-lez v2, :cond_1

    .line 360
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "pos":I
    .restart local p3    # "pos":I
    const-wide/16 v2, 0x80

    or-long/2addr v2, p0

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 361
    const/4 v2, 0x7

    ushr-long/2addr p0, v2

    .line 362
    const-wide/16 v2, 0x7f

    cmp-long v2, p0, v2

    if-lez v2, :cond_0

    .line 363
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "pos":I
    .restart local v0    # "pos":I
    const-wide/16 v2, 0x80

    or-long/2addr v2, p0

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 364
    const/4 v2, 0x7

    ushr-long/2addr p0, v2

    .line 365
    const-wide/16 v2, 0x7f

    cmp-long v2, p0, v2

    if-lez v2, :cond_1

    .line 366
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "pos":I
    .restart local p3    # "pos":I
    const-wide/16 v2, 0x80

    or-long/2addr v2, p0

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 367
    const/4 v2, 0x7

    ushr-long/2addr p0, v2

    .line 368
    const-wide/16 v2, 0x7f

    cmp-long v2, p0, v2

    if-lez v2, :cond_0

    .line 369
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "pos":I
    .restart local v0    # "pos":I
    const-wide/16 v2, 0x80

    or-long/2addr v2, p0

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 370
    const/4 v2, 0x7

    ushr-long/2addr p0, v2

    .line 371
    const-wide/16 v2, 0x7f

    cmp-long v2, p0, v2

    if-lez v2, :cond_1

    .line 372
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "pos":I
    .restart local p3    # "pos":I
    const-wide/16 v2, 0x80

    or-long/2addr v2, p0

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 373
    const/4 v2, 0x7

    ushr-long/2addr p0, v2

    .line 374
    const-wide/16 v2, 0x7f

    cmp-long v2, p0, v2

    if-lez v2, :cond_0

    .line 375
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "pos":I
    .restart local v0    # "pos":I
    const-wide/16 v2, 0x80

    or-long/2addr v2, p0

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 376
    const/4 v2, 0x7

    ushr-long/2addr p0, v2

    move p3, v0

    .line 386
    .end local v0    # "pos":I
    .restart local p3    # "pos":I
    :cond_0
    :goto_0
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "pos":I
    .restart local v0    # "pos":I
    long-to-int v2, p0

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 387
    sub-int v2, v0, v1

    return v2

    :cond_1
    move p3, v0

    .end local v0    # "pos":I
    .restart local p3    # "pos":I
    goto :goto_0
.end method

.method private static hashBytes(ILcom/flurry/org/apache/avro/io/BinaryData$HashData;IZ)I
    .locals 7
    .param p0, "init"    # I
    .param p1, "data"    # Lcom/flurry/org/apache/avro/io/BinaryData$HashData;
    .param p2, "len"    # I
    .param p3, "rev"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    move v2, p0

    .line 283
    .local v2, "hashCode":I
    invoke-static {p1}, Lcom/flurry/org/apache/avro/io/BinaryData$HashData;->access$500(Lcom/flurry/org/apache/avro/io/BinaryData$HashData;)Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->getBuf()[B

    move-result-object v0

    .line 284
    .local v0, "bytes":[B
    invoke-static {p1}, Lcom/flurry/org/apache/avro/io/BinaryData$HashData;->access$500(Lcom/flurry/org/apache/avro/io/BinaryData$HashData;)Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->getPos()I

    move-result v4

    .line 285
    .local v4, "start":I
    add-int v1, v4, p2

    .line 286
    .local v1, "end":I
    if-eqz p3, :cond_0

    .line 287
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-lt v3, v4, :cond_1

    .line 288
    mul-int/lit8 v5, v2, 0x1f

    aget-byte v6, v0, v3

    add-int v2, v5, v6

    .line 287
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 290
    .end local v3    # "i":I
    :cond_0
    move v3, v4

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 291
    mul-int/lit8 v5, v2, 0x1f

    aget-byte v6, v0, v3

    add-int v2, v5, v6

    .line 290
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 292
    :cond_1
    invoke-static {p1}, Lcom/flurry/org/apache/avro/io/BinaryData$HashData;->access$400(Lcom/flurry/org/apache/avro/io/BinaryData$HashData;)Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->skipFixed(I)V

    .line 293
    return v2
.end method

.method private static hashCode(Lcom/flurry/org/apache/avro/io/BinaryData$HashData;Lcom/flurry/org/apache/avro/Schema;)I
    .locals 13
    .param p0, "data"    # Lcom/flurry/org/apache/avro/io/BinaryData$HashData;
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x20

    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 228
    invoke-static {p0}, Lcom/flurry/org/apache/avro/io/BinaryData$HashData;->access$400(Lcom/flurry/org/apache/avro/io/BinaryData$HashData;)Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    move-result-object v0

    .line 229
    .local v0, "decoder":Lcom/flurry/org/apache/avro/io/Decoder;
    sget-object v7, Lcom/flurry/org/apache/avro/io/BinaryData$3;->$SwitchMap$org$apache$avro$Schema$Type:[I

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v10

    invoke-virtual {v10}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v10

    aget v7, v7, v10

    packed-switch v7, :pswitch_data_0

    .line 276
    new-instance v7, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    const-string v10, "Unexpected schema to hashCode!"

    invoke-direct {v7, v10}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 231
    :pswitch_0
    const/4 v3, 0x1

    .line 232
    .local v3, "hashCode":I
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/org/apache/avro/Schema$Field;

    .line 233
    .local v2, "field":Lcom/flurry/org/apache/avro/Schema$Field;
    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/Schema$Field;->order()Lcom/flurry/org/apache/avro/Schema$Field$Order;

    move-result-object v7

    sget-object v10, Lcom/flurry/org/apache/avro/Schema$Field$Order;->IGNORE:Lcom/flurry/org/apache/avro/Schema$Field$Order;

    if-ne v7, v10, :cond_0

    .line 234
    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->skip(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/Decoder;)V

    goto :goto_0

    .line 237
    :cond_0
    mul-int/lit8 v7, v3, 0x1f

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/flurry/org/apache/avro/io/BinaryData;->hashCode(Lcom/flurry/org/apache/avro/io/BinaryData$HashData;Lcom/flurry/org/apache/avro/Schema;)I

    move-result v10

    add-int v3, v7, v10

    goto :goto_0

    .line 242
    .end local v2    # "field":Lcom/flurry/org/apache/avro/Schema$Field;
    .end local v3    # "hashCode":I
    .end local v6    # "i$":Ljava/util/Iterator;
    :pswitch_1
    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/Decoder;->readInt()I

    move-result v3

    .line 274
    :cond_1
    :goto_1
    :pswitch_2
    return v3

    .line 244
    :pswitch_3
    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/Decoder;->readFloat()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_1

    .line 246
    :pswitch_4
    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/Decoder;->readLong()J

    move-result-wide v8

    .line 247
    .local v8, "l":J
    ushr-long v10, v8, v12

    xor-long/2addr v10, v8

    long-to-int v3, v10

    goto :goto_1

    .line 250
    .end local v8    # "l":J
    :pswitch_5
    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/Decoder;->readDouble()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    .line 251
    .restart local v8    # "l":J
    ushr-long v10, v8, v12

    xor-long/2addr v10, v8

    long-to-int v3, v10

    goto :goto_1

    .line 254
    .end local v8    # "l":J
    :pswitch_6
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getElementType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v1

    .line 255
    .local v1, "elementType":Lcom/flurry/org/apache/avro/Schema;
    const/4 v3, 0x1

    .line 256
    .restart local v3    # "hashCode":I
    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/Decoder;->readArrayStart()J

    move-result-wide v8

    .restart local v8    # "l":J
    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_1

    .line 257
    const-wide/16 v4, 0x0

    .local v4, "i":J
    :goto_3
    cmp-long v7, v4, v8

    if-gez v7, :cond_2

    .line 258
    mul-int/lit8 v7, v3, 0x1f

    invoke-static {p0, v1}, Lcom/flurry/org/apache/avro/io/BinaryData;->hashCode(Lcom/flurry/org/apache/avro/io/BinaryData$HashData;Lcom/flurry/org/apache/avro/Schema;)I

    move-result v10

    add-int v3, v7, v10

    .line 257
    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    goto :goto_3

    .line 256
    :cond_2
    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/Decoder;->arrayNext()J

    move-result-wide v8

    goto :goto_2

    .line 262
    .end local v1    # "elementType":Lcom/flurry/org/apache/avro/Schema;
    .end local v3    # "hashCode":I
    .end local v4    # "i":J
    .end local v8    # "l":J
    :pswitch_7
    new-instance v7, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    const-string v10, "Can\'t hashCode maps!"

    invoke-direct {v7, v10}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 264
    :pswitch_8
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/Decoder;->readInt()I

    move-result v10

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/flurry/org/apache/avro/Schema;

    invoke-static {p0, v7}, Lcom/flurry/org/apache/avro/io/BinaryData;->hashCode(Lcom/flurry/org/apache/avro/io/BinaryData$HashData;Lcom/flurry/org/apache/avro/Schema;)I

    move-result v3

    goto :goto_1

    .line 266
    :pswitch_9
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFixedSize()I

    move-result v7

    invoke-static {v11, p0, v7, v3}, Lcom/flurry/org/apache/avro/io/BinaryData;->hashBytes(ILcom/flurry/org/apache/avro/io/BinaryData$HashData;IZ)I

    move-result v3

    goto :goto_1

    .line 268
    :pswitch_a
    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/Decoder;->readInt()I

    move-result v7

    invoke-static {v3, p0, v7, v3}, Lcom/flurry/org/apache/avro/io/BinaryData;->hashBytes(ILcom/flurry/org/apache/avro/io/BinaryData$HashData;IZ)I

    move-result v3

    goto :goto_1

    .line 270
    :pswitch_b
    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/Decoder;->readInt()I

    move-result v7

    invoke-static {v11, p0, v7, v11}, Lcom/flurry/org/apache/avro/io/BinaryData;->hashBytes(ILcom/flurry/org/apache/avro/io/BinaryData$HashData;IZ)I

    move-result v3

    goto :goto_1

    .line 272
    :pswitch_c
    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/Decoder;->readBoolean()Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x4cf

    :goto_4
    move v3, v7

    goto/16 :goto_1

    :cond_3
    const/16 v7, 0x4d5

    goto :goto_4

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_3
        :pswitch_5
        :pswitch_c
        :pswitch_2
    .end packed-switch
.end method

.method public static hashCode([BIILcom/flurry/org/apache/avro/Schema;)I
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "schema"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 217
    sget-object v2, Lcom/flurry/org/apache/avro/io/BinaryData;->HASH_DATA:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/io/BinaryData$HashData;

    .line 218
    .local v0, "data":Lcom/flurry/org/apache/avro/io/BinaryData$HashData;
    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/org/apache/avro/io/BinaryData$HashData;->set([BII)V

    .line 220
    :try_start_0
    invoke-static {v0, p3}, Lcom/flurry/org/apache/avro/io/BinaryData;->hashCode(Lcom/flurry/org/apache/avro/io/BinaryData$HashData;Lcom/flurry/org/apache/avro/Schema;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v2, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static skipLong([BI)I
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "start"    # I

    .prologue
    .line 298
    move v1, p1

    .line 299
    .local v1, "i":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget-byte v0, p0, v1

    .local v0, "b":I
    :goto_0
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_0

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-byte v0, p0, v2

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 300
    :cond_0
    return v2
.end method
