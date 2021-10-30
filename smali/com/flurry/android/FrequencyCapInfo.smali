.class Lcom/flurry/android/FrequencyCapInfo;
.super Lcom/flurry/org/apache/avro/specific/SpecificRecordBase;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/org/apache/avro/specific/SpecificRecord;


# static fields
.field public static final SCHEMA$:Lcom/flurry/org/apache/avro/Schema;


# instance fields
.field public bJ:Ljava/lang/CharSequence;

.field public bK:J

.field public bL:I

.field public bM:I

.field public bN:I

.field public bO:J

.field public cI:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lcom/flurry/org/apache/avro/Schema$Parser;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/Schema$Parser;-><init>()V

    const-string v1, "{\"type\":\"record\",\"name\":\"FrequencyCapInfo\",\"namespace\":\"com.flurry.android\",\"fields\":[{\"name\":\"idHash\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"serveTime\",\"type\":\"long\"},{\"name\":\"expirationTime\",\"type\":\"long\"},{\"name\":\"views\",\"type\":\"int\"},{\"name\":\"newCap\",\"type\":\"int\"},{\"name\":\"previousCap\",\"type\":\"int\"},{\"name\":\"previousCapType\",\"type\":\"int\"}]}"

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/Schema$Parser;->parse(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/FrequencyCapInfo;->SCHEMA$:Lcom/flurry/org/apache/avro/Schema;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/specific/SpecificRecordBase;-><init>()V

    .line 169
    return-void
.end method

.method public static bK()Lcom/flurry/android/FrequencyCapInfo$Builder;
    .locals 1

    .prologue
    .line 153
    new-instance v0, Lcom/flurry/android/FrequencyCapInfo$Builder;

    invoke-direct {v0}, Lcom/flurry/android/FrequencyCapInfo$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 20
    packed-switch p1, :pswitch_data_0

    .line 28
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    const-string v1, "Bad index"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :pswitch_0
    iget-object v0, p0, Lcom/flurry/android/FrequencyCapInfo;->bJ:Ljava/lang/CharSequence;

    .line 27
    :goto_0
    return-object v0

    .line 22
    :pswitch_1
    iget-wide v0, p0, Lcom/flurry/android/FrequencyCapInfo;->bK:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 23
    :pswitch_2
    iget-wide v0, p0, Lcom/flurry/android/FrequencyCapInfo;->bO:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 24
    :pswitch_3
    iget v0, p0, Lcom/flurry/android/FrequencyCapInfo;->cI:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 25
    :pswitch_4
    iget v0, p0, Lcom/flurry/android/FrequencyCapInfo;->bL:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 26
    :pswitch_5
    iget v0, p0, Lcom/flurry/android/FrequencyCapInfo;->bM:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 27
    :pswitch_6
    iget v0, p0, Lcom/flurry/android/FrequencyCapInfo;->bN:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 20
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getSchema()Lcom/flurry/org/apache/avro/Schema;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/flurry/android/FrequencyCapInfo;->SCHEMA$:Lcom/flurry/org/apache/avro/Schema;

    return-object v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 34
    packed-switch p1, :pswitch_data_0

    .line 42
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    const-string v1, "Bad index"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :pswitch_0
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/FrequencyCapInfo;->bJ:Ljava/lang/CharSequence;

    .line 41
    :goto_0
    return-void

    .line 36
    :pswitch_1
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/FrequencyCapInfo;->bK:J

    goto :goto_0

    .line 37
    :pswitch_2
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/FrequencyCapInfo;->bO:J

    goto :goto_0

    .line 38
    :pswitch_3
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/FrequencyCapInfo;->cI:I

    goto :goto_0

    .line 39
    :pswitch_4
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/FrequencyCapInfo;->bL:I

    goto :goto_0

    .line 40
    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/FrequencyCapInfo;->bM:I

    goto :goto_0

    .line 41
    :pswitch_6
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/FrequencyCapInfo;->bN:I

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
