.class Lcom/flurry/android/SdkAdLog;
.super Lcom/flurry/org/apache/avro/specific/SpecificRecordBase;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/org/apache/avro/specific/SpecificRecord;


# static fields
.field public static final SCHEMA$:Lcom/flurry/org/apache/avro/Schema;


# instance fields
.field public ce:J

.field public cf:Ljava/lang/CharSequence;

.field public cg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/SdkAdEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lcom/flurry/org/apache/avro/Schema$Parser;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/Schema$Parser;-><init>()V

    const-string v1, "{\"type\":\"record\",\"name\":\"SdkAdLog\",\"namespace\":\"com.flurry.android\",\"fields\":[{\"name\":\"sessionId\",\"type\":\"long\"},{\"name\":\"adLogGUID\",\"type\":\"string\"},{\"name\":\"sdkAdEvents\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"SdkAdEvent\",\"fields\":[{\"name\":\"type\",\"type\":\"string\"},{\"name\":\"params\",\"type\":{\"type\":\"map\",\"values\":\"string\"}},{\"name\":\"timeOffset\",\"type\":\"long\"}]}}}]}"

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/Schema$Parser;->parse(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/SdkAdLog;->SCHEMA$:Lcom/flurry/org/apache/avro/Schema;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/specific/SpecificRecordBase;-><init>()V

    .line 97
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/flurry/android/SdkAdLog;->cf:Ljava/lang/CharSequence;

    .line 62
    return-void
.end method

.method public final b(Ljava/lang/Long;)V
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/SdkAdLog;->ce:J

    .line 47
    return-void
.end method

.method public final d(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/SdkAdEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    iput-object p1, p0, Lcom/flurry/android/SdkAdLog;->cg:Ljava/util/List;

    .line 77
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 16
    packed-switch p1, :pswitch_data_0

    .line 20
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    const-string v1, "Bad index"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :pswitch_0
    iget-wide v0, p0, Lcom/flurry/android/SdkAdLog;->ce:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 19
    :goto_0
    return-object v0

    .line 18
    :pswitch_1
    iget-object v0, p0, Lcom/flurry/android/SdkAdLog;->cf:Ljava/lang/CharSequence;

    goto :goto_0

    .line 19
    :pswitch_2
    iget-object v0, p0, Lcom/flurry/android/SdkAdLog;->cg:Ljava/util/List;

    goto :goto_0

    .line 16
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getSchema()Lcom/flurry/org/apache/avro/Schema;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/flurry/android/SdkAdLog;->SCHEMA$:Lcom/flurry/org/apache/avro/Schema;

    return-object v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 26
    packed-switch p1, :pswitch_data_0

    .line 30
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    const-string v1, "Bad index"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :pswitch_0
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/SdkAdLog;->ce:J

    .line 29
    :goto_0
    return-void

    .line 28
    :pswitch_1
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/SdkAdLog;->cf:Ljava/lang/CharSequence;

    goto :goto_0

    .line 29
    :pswitch_2
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/flurry/android/SdkAdLog;->cg:Ljava/util/List;

    goto :goto_0

    .line 26
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
