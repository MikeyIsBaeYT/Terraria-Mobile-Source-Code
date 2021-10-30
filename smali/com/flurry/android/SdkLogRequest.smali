.class Lcom/flurry/android/SdkLogRequest;
.super Lcom/flurry/org/apache/avro/specific/SpecificRecordBase;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/org/apache/avro/specific/SpecificRecord;


# static fields
.field public static final SCHEMA$:Lcom/flurry/org/apache/avro/Schema;


# instance fields
.field public cR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/SdkAdLog;",
            ">;"
        }
    .end annotation
.end field

.field public cS:J

.field public ch:Ljava/lang/CharSequence;

.field public ck:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/AdReportedId;",
            ">;"
        }
    .end annotation
.end field

.field public cm:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lcom/flurry/org/apache/avro/Schema$Parser;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/Schema$Parser;-><init>()V

    const-string v1, "{\"type\":\"record\",\"name\":\"SdkLogRequest\",\"namespace\":\"com.flurry.android\",\"fields\":[{\"name\":\"apiKey\",\"type\":\"string\"},{\"name\":\"adReportedIds\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"AdReportedId\",\"fields\":[{\"name\":\"type\",\"type\":\"int\"},{\"name\":\"id\",\"type\":\"bytes\"}]}}},{\"name\":\"sdkAdLogs\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"SdkAdLog\",\"fields\":[{\"name\":\"sessionId\",\"type\":\"long\"},{\"name\":\"adLogGUID\",\"type\":\"string\"},{\"name\":\"sdkAdEvents\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"SdkAdEvent\",\"fields\":[{\"name\":\"type\",\"type\":\"string\"},{\"name\":\"params\",\"type\":{\"type\":\"map\",\"values\":\"string\"}},{\"name\":\"timeOffset\",\"type\":\"long\"}]}}}]}}},{\"name\":\"agentTimestamp\",\"type\":\"long\"},{\"name\":\"testDevice\",\"type\":\"boolean\",\"default\":false}]}"

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/Schema$Parser;->parse(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/SdkLogRequest;->SCHEMA$:Lcom/flurry/org/apache/avro/Schema;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/specific/SpecificRecordBase;-><init>()V

    .line 133
    return-void
.end method

.method public static X()Lcom/flurry/android/SdkLogRequest$Builder;
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lcom/flurry/android/SdkLogRequest$Builder;

    invoke-direct {v0}, Lcom/flurry/android/SdkLogRequest$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 18
    packed-switch p1, :pswitch_data_0

    .line 24
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    const-string v1, "Bad index"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :pswitch_0
    iget-object v0, p0, Lcom/flurry/android/SdkLogRequest;->ch:Ljava/lang/CharSequence;

    .line 23
    :goto_0
    return-object v0

    .line 20
    :pswitch_1
    iget-object v0, p0, Lcom/flurry/android/SdkLogRequest;->ck:Ljava/util/List;

    goto :goto_0

    .line 21
    :pswitch_2
    iget-object v0, p0, Lcom/flurry/android/SdkLogRequest;->cR:Ljava/util/List;

    goto :goto_0

    .line 22
    :pswitch_3
    iget-wide v0, p0, Lcom/flurry/android/SdkLogRequest;->cS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 23
    :pswitch_4
    iget-boolean v0, p0, Lcom/flurry/android/SdkLogRequest;->cm:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 18
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getSchema()Lcom/flurry/org/apache/avro/Schema;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/flurry/android/SdkLogRequest;->SCHEMA$:Lcom/flurry/org/apache/avro/Schema;

    return-object v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 30
    packed-switch p1, :pswitch_data_0

    .line 36
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    const-string v1, "Bad index"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :pswitch_0
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/SdkLogRequest;->ch:Ljava/lang/CharSequence;

    .line 35
    :goto_0
    return-void

    .line 32
    :pswitch_1
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/flurry/android/SdkLogRequest;->ck:Ljava/util/List;

    goto :goto_0

    .line 33
    :pswitch_2
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/flurry/android/SdkLogRequest;->cR:Ljava/util/List;

    goto :goto_0

    .line 34
    :pswitch_3
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/SdkLogRequest;->cS:J

    goto :goto_0

    .line 35
    :pswitch_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/SdkLogRequest;->cm:Z

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
