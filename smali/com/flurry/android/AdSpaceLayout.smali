.class Lcom/flurry/android/AdSpaceLayout;
.super Lcom/flurry/org/apache/avro/specific/SpecificRecordBase;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/org/apache/avro/specific/SpecificRecord;


# static fields
.field public static final SCHEMA$:Lcom/flurry/org/apache/avro/Schema;


# instance fields
.field public cU:I

.field public cV:I

.field public cW:Ljava/lang/CharSequence;

.field public cX:Ljava/lang/CharSequence;

.field public cY:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lcom/flurry/org/apache/avro/Schema$Parser;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/Schema$Parser;-><init>()V

    const-string v1, "{\"type\":\"record\",\"name\":\"AdSpaceLayout\",\"namespace\":\"com.flurry.android\",\"fields\":[{\"name\":\"adWidth\",\"type\":\"int\"},{\"name\":\"adHeight\",\"type\":\"int\"},{\"name\":\"fix\",\"type\":\"string\"},{\"name\":\"format\",\"type\":\"string\"},{\"name\":\"alignment\",\"type\":\"string\"}]}"

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/Schema$Parser;->parse(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/AdSpaceLayout;->SCHEMA$:Lcom/flurry/org/apache/avro/Schema;

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
    iget v0, p0, Lcom/flurry/android/AdSpaceLayout;->cU:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 23
    :goto_0
    return-object v0

    .line 20
    :pswitch_1
    iget v0, p0, Lcom/flurry/android/AdSpaceLayout;->cV:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 21
    :pswitch_2
    iget-object v0, p0, Lcom/flurry/android/AdSpaceLayout;->cW:Ljava/lang/CharSequence;

    goto :goto_0

    .line 22
    :pswitch_3
    iget-object v0, p0, Lcom/flurry/android/AdSpaceLayout;->cX:Ljava/lang/CharSequence;

    goto :goto_0

    .line 23
    :pswitch_4
    iget-object v0, p0, Lcom/flurry/android/AdSpaceLayout;->cY:Ljava/lang/CharSequence;

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

.method public final getAdHeight()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/flurry/android/AdSpaceLayout;->cV:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getAdWidth()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/flurry/android/AdSpaceLayout;->cU:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getAlignment()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/flurry/android/AdSpaceLayout;->cY:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getFix()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/flurry/android/AdSpaceLayout;->cW:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getFormat()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/flurry/android/AdSpaceLayout;->cX:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSchema()Lcom/flurry/org/apache/avro/Schema;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/flurry/android/AdSpaceLayout;->SCHEMA$:Lcom/flurry/org/apache/avro/Schema;

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
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/AdSpaceLayout;->cU:I

    .line 35
    :goto_0
    return-void

    .line 32
    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/AdSpaceLayout;->cV:I

    goto :goto_0

    .line 33
    :pswitch_2
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/AdSpaceLayout;->cW:Ljava/lang/CharSequence;

    goto :goto_0

    .line 34
    :pswitch_3
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/AdSpaceLayout;->cX:Ljava/lang/CharSequence;

    goto :goto_0

    .line 35
    :pswitch_4
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/AdSpaceLayout;->cY:Ljava/lang/CharSequence;

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
