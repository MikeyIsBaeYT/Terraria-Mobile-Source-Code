.class Lcom/flurry/android/TestAds;
.super Lcom/flurry/org/apache/avro/specific/SpecificRecordBase;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/org/apache/avro/specific/SpecificRecord;


# static fields
.field public static final SCHEMA$:Lcom/flurry/org/apache/avro/Schema;


# instance fields
.field public eh:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lcom/flurry/org/apache/avro/Schema$Parser;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/Schema$Parser;-><init>()V

    const-string v1, "{\"type\":\"record\",\"name\":\"TestAds\",\"namespace\":\"com.flurry.android\",\"fields\":[{\"name\":\"adspacePlacement\",\"type\":\"int\",\"default\":0}]}"

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/Schema$Parser;->parse(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/TestAds;->SCHEMA$:Lcom/flurry/org/apache/avro/Schema;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/specific/SpecificRecordBase;-><init>()V

    .line 61
    return-void
.end method

.method public static bN()Lcom/flurry/android/TestAds$Builder;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/flurry/android/TestAds$Builder;

    invoke-direct {v0}, Lcom/flurry/android/TestAds$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 14
    packed-switch p1, :pswitch_data_0

    .line 16
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    const-string v1, "Bad index"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :pswitch_0
    iget v0, p0, Lcom/flurry/android/TestAds;->eh:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 14
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getSchema()Lcom/flurry/org/apache/avro/Schema;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/flurry/android/TestAds;->SCHEMA$:Lcom/flurry/org/apache/avro/Schema;

    return-object v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 22
    packed-switch p1, :pswitch_data_0

    .line 24
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    const-string v1, "Bad index"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :pswitch_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/TestAds;->eh:I

    return-void

    .line 22
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
