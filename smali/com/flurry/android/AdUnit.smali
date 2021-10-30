.class Lcom/flurry/android/AdUnit;
.super Lcom/flurry/org/apache/avro/specific/SpecificRecordBase;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/org/apache/avro/specific/SpecificRecord;


# static fields
.field public static final SCHEMA$:Lcom/flurry/org/apache/avro/Schema;


# instance fields
.field public bE:Ljava/lang/CharSequence;

.field public bF:J

.field public bG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/AdFrame;",
            ">;"
        }
    .end annotation
.end field

.field public bH:I

.field public bI:Ljava/lang/CharSequence;

.field public bJ:Ljava/lang/CharSequence;

.field public bK:J

.field public bL:I

.field public bM:I

.field public bN:I

.field public bO:J

.field public bP:J

.field public bQ:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lcom/flurry/org/apache/avro/Schema$Parser;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/Schema$Parser;-><init>()V

    const-string v1, "{\"type\":\"record\",\"name\":\"AdUnit\",\"namespace\":\"com.flurry.android\",\"fields\":[{\"name\":\"adSpace\",\"type\":\"string\"},{\"name\":\"expiration\",\"type\":\"long\"},{\"name\":\"adFrames\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"AdFrame\",\"fields\":[{\"name\":\"binding\",\"type\":\"int\"},{\"name\":\"display\",\"type\":\"string\"},{\"name\":\"content\",\"type\":\"string\"},{\"name\":\"adSpaceLayout\",\"type\":{\"type\":\"record\",\"name\":\"AdSpaceLayout\",\"fields\":[{\"name\":\"adWidth\",\"type\":\"int\"},{\"name\":\"adHeight\",\"type\":\"int\"},{\"name\":\"fix\",\"type\":\"string\"},{\"name\":\"format\",\"type\":\"string\"},{\"name\":\"alignment\",\"type\":\"string\"}]}},{\"name\":\"callbacks\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"Callback\",\"fields\":[{\"name\":\"event\",\"type\":\"string\"},{\"name\":\"actions\",\"type\":{\"type\":\"array\",\"items\":\"string\"}}]}}},{\"name\":\"adGuid\",\"type\":\"string\"}]}}},{\"name\":\"combinable\",\"type\":\"int\",\"default\":0},{\"name\":\"groupId\",\"type\":\"string\"},{\"name\":\"idHash\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"serveTime\",\"type\":\"long\"},{\"name\":\"newCap\",\"type\":\"int\",\"default\":-1},{\"name\":\"previousCap\",\"type\":\"int\",\"default\":-1},{\"name\":\"previousCapType\",\"type\":\"int\",\"default\":0},{\"name\":\"expirationTime\",\"type\":\"long\"},{\"name\":\"price\",\"type\":\"long\",\"default\":0},{\"name\":\"adomain\",\"type\":\"string\",\"default\":\"null\"}]}"

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/Schema$Parser;->parse(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/AdUnit;->SCHEMA$:Lcom/flurry/org/apache/avro/Schema;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/specific/SpecificRecordBase;-><init>()V

    .line 277
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 26
    packed-switch p1, :pswitch_data_0

    .line 40
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    const-string v1, "Bad index"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :pswitch_0
    iget-object v0, p0, Lcom/flurry/android/AdUnit;->bE:Ljava/lang/CharSequence;

    .line 39
    :goto_0
    return-object v0

    .line 28
    :pswitch_1
    iget-wide v0, p0, Lcom/flurry/android/AdUnit;->bF:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 29
    :pswitch_2
    iget-object v0, p0, Lcom/flurry/android/AdUnit;->bG:Ljava/util/List;

    goto :goto_0

    .line 30
    :pswitch_3
    iget v0, p0, Lcom/flurry/android/AdUnit;->bH:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 31
    :pswitch_4
    iget-object v0, p0, Lcom/flurry/android/AdUnit;->bI:Ljava/lang/CharSequence;

    goto :goto_0

    .line 32
    :pswitch_5
    iget-object v0, p0, Lcom/flurry/android/AdUnit;->bJ:Ljava/lang/CharSequence;

    goto :goto_0

    .line 33
    :pswitch_6
    iget-wide v0, p0, Lcom/flurry/android/AdUnit;->bK:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 34
    :pswitch_7
    iget v0, p0, Lcom/flurry/android/AdUnit;->bL:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 35
    :pswitch_8
    iget v0, p0, Lcom/flurry/android/AdUnit;->bM:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 36
    :pswitch_9
    iget v0, p0, Lcom/flurry/android/AdUnit;->bN:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 37
    :pswitch_a
    iget-wide v0, p0, Lcom/flurry/android/AdUnit;->bO:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 38
    :pswitch_b
    iget-wide v0, p0, Lcom/flurry/android/AdUnit;->bP:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 39
    :pswitch_c
    iget-object v0, p0, Lcom/flurry/android/AdUnit;->bQ:Ljava/lang/CharSequence;

    goto :goto_0

    .line 26
    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method public final getAdFrames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/AdFrame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/flurry/android/AdUnit;->bG:Ljava/util/List;

    return-object v0
.end method

.method public final getAdSpace()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/flurry/android/AdUnit;->bE:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getCombinable()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/flurry/android/AdUnit;->bH:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getExpiration()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/flurry/android/AdUnit;->bF:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final getExpirationTime()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 218
    iget-wide v0, p0, Lcom/flurry/android/AdUnit;->bO:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final getGroupId()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/flurry/android/AdUnit;->bI:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getIdHash()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/flurry/android/AdUnit;->bJ:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getNewCap()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/flurry/android/AdUnit;->bL:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getPreviousCap()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/flurry/android/AdUnit;->bM:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getPreviousCapType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/flurry/android/AdUnit;->bN:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getSchema()Lcom/flurry/org/apache/avro/Schema;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/flurry/android/AdUnit;->SCHEMA$:Lcom/flurry/org/apache/avro/Schema;

    return-object v0
.end method

.method public final getServeTime()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/flurry/android/AdUnit;->bK:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 46
    packed-switch p1, :pswitch_data_0

    .line 60
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    const-string v1, "Bad index"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :pswitch_0
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/AdUnit;->bE:Ljava/lang/CharSequence;

    .line 59
    :goto_0
    return-void

    .line 48
    :pswitch_1
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/AdUnit;->bF:J

    goto :goto_0

    .line 49
    :pswitch_2
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/flurry/android/AdUnit;->bG:Ljava/util/List;

    goto :goto_0

    .line 50
    :pswitch_3
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/AdUnit;->bH:I

    goto :goto_0

    .line 51
    :pswitch_4
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/AdUnit;->bI:Ljava/lang/CharSequence;

    goto :goto_0

    .line 52
    :pswitch_5
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/AdUnit;->bJ:Ljava/lang/CharSequence;

    goto :goto_0

    .line 53
    :pswitch_6
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/AdUnit;->bK:J

    goto :goto_0

    .line 54
    :pswitch_7
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/AdUnit;->bL:I

    goto :goto_0

    .line 55
    :pswitch_8
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/AdUnit;->bM:I

    goto :goto_0

    .line 56
    :pswitch_9
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/AdUnit;->bN:I

    goto :goto_0

    .line 57
    :pswitch_a
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/AdUnit;->bO:J

    goto :goto_0

    .line 58
    :pswitch_b
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/AdUnit;->bP:J

    goto :goto_0

    .line 59
    :pswitch_c
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/AdUnit;->bQ:Ljava/lang/CharSequence;

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch
.end method
