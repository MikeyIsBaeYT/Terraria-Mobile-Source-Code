.class Lcom/flurry/android/Callback;
.super Lcom/flurry/org/apache/avro/specific/SpecificRecordBase;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/org/apache/avro/specific/SpecificRecord;


# static fields
.field public static final SCHEMA$:Lcom/flurry/org/apache/avro/Schema;


# instance fields
.field public cG:Ljava/lang/CharSequence;

.field public cH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
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

    const-string v1, "{\"type\":\"record\",\"name\":\"Callback\",\"namespace\":\"com.flurry.android\",\"fields\":[{\"name\":\"event\",\"type\":\"string\"},{\"name\":\"actions\",\"type\":{\"type\":\"array\",\"items\":\"string\"}}]}"

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/Schema$Parser;->parse(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/Callback;->SCHEMA$:Lcom/flurry/org/apache/avro/Schema;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/specific/SpecificRecordBase;-><init>()V

    .line 79
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 15
    packed-switch p1, :pswitch_data_0

    .line 18
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    const-string v1, "Bad index"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :pswitch_0
    iget-object v0, p0, Lcom/flurry/android/Callback;->cG:Ljava/lang/CharSequence;

    .line 17
    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/flurry/android/Callback;->cH:Ljava/util/List;

    goto :goto_0

    .line 15
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/flurry/android/Callback;->cH:Ljava/util/List;

    return-object v0
.end method

.method public final getEvent()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/flurry/android/Callback;->cG:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSchema()Lcom/flurry/org/apache/avro/Schema;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/flurry/android/Callback;->SCHEMA$:Lcom/flurry/org/apache/avro/Schema;

    return-object v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 24
    packed-switch p1, :pswitch_data_0

    .line 27
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    const-string v1, "Bad index"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :pswitch_0
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/Callback;->cG:Ljava/lang/CharSequence;

    .line 26
    :goto_0
    return-void

    :pswitch_1
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/flurry/android/Callback;->cH:Ljava/util/List;

    goto :goto_0

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
