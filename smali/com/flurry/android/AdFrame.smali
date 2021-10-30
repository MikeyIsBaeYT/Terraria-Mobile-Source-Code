.class Lcom/flurry/android/AdFrame;
.super Lcom/flurry/org/apache/avro/specific/SpecificRecordBase;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/org/apache/avro/specific/SpecificRecord;


# static fields
.field public static final SCHEMA$:Lcom/flurry/org/apache/avro/Schema;


# instance fields
.field public I:I

.field public J:Ljava/lang/CharSequence;

.field public K:Ljava/lang/CharSequence;

.field public L:Lcom/flurry/android/AdSpaceLayout;

.field public M:Ljava/lang/CharSequence;

.field public callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/Callback;",
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

    const-string v1, "{\"type\":\"record\",\"name\":\"AdFrame\",\"namespace\":\"com.flurry.android\",\"fields\":[{\"name\":\"binding\",\"type\":\"int\"},{\"name\":\"display\",\"type\":\"string\"},{\"name\":\"content\",\"type\":\"string\"},{\"name\":\"adSpaceLayout\",\"type\":{\"type\":\"record\",\"name\":\"AdSpaceLayout\",\"fields\":[{\"name\":\"adWidth\",\"type\":\"int\"},{\"name\":\"adHeight\",\"type\":\"int\"},{\"name\":\"fix\",\"type\":\"string\"},{\"name\":\"format\",\"type\":\"string\"},{\"name\":\"alignment\",\"type\":\"string\"}]}},{\"name\":\"callbacks\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"Callback\",\"fields\":[{\"name\":\"event\",\"type\":\"string\"},{\"name\":\"actions\",\"type\":{\"type\":\"array\",\"items\":\"string\"}}]}}},{\"name\":\"adGuid\",\"type\":\"string\"}]}"

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/Schema$Parser;->parse(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/AdFrame;->SCHEMA$:Lcom/flurry/org/apache/avro/Schema;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/specific/SpecificRecordBase;-><init>()V

    .line 151
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 19
    packed-switch p1, :pswitch_data_0

    .line 26
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    const-string v1, "Bad index"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :pswitch_0
    iget v0, p0, Lcom/flurry/android/AdFrame;->I:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 25
    :goto_0
    return-object v0

    .line 21
    :pswitch_1
    iget-object v0, p0, Lcom/flurry/android/AdFrame;->J:Ljava/lang/CharSequence;

    goto :goto_0

    .line 22
    :pswitch_2
    iget-object v0, p0, Lcom/flurry/android/AdFrame;->K:Ljava/lang/CharSequence;

    goto :goto_0

    .line 23
    :pswitch_3
    iget-object v0, p0, Lcom/flurry/android/AdFrame;->L:Lcom/flurry/android/AdSpaceLayout;

    goto :goto_0

    .line 24
    :pswitch_4
    iget-object v0, p0, Lcom/flurry/android/AdFrame;->callbacks:Ljava/util/List;

    goto :goto_0

    .line 25
    :pswitch_5
    iget-object v0, p0, Lcom/flurry/android/AdFrame;->M:Ljava/lang/CharSequence;

    goto :goto_0

    .line 19
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final getAdGuid()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/flurry/android/AdFrame;->M:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getAdSpaceLayout()Lcom/flurry/android/AdSpaceLayout;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/flurry/android/AdFrame;->L:Lcom/flurry/android/AdSpaceLayout;

    return-object v0
.end method

.method public final getBinding()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/flurry/android/AdFrame;->I:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getCallbacks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/Callback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/flurry/android/AdFrame;->callbacks:Ljava/util/List;

    return-object v0
.end method

.method public final getContent()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/flurry/android/AdFrame;->K:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getDisplay()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/flurry/android/AdFrame;->J:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSchema()Lcom/flurry/org/apache/avro/Schema;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/flurry/android/AdFrame;->SCHEMA$:Lcom/flurry/org/apache/avro/Schema;

    return-object v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 32
    packed-switch p1, :pswitch_data_0

    .line 39
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    const-string v1, "Bad index"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :pswitch_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/AdFrame;->I:I

    .line 38
    :goto_0
    return-void

    .line 34
    :pswitch_1
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/AdFrame;->J:Ljava/lang/CharSequence;

    goto :goto_0

    .line 35
    :pswitch_2
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/AdFrame;->K:Ljava/lang/CharSequence;

    goto :goto_0

    .line 36
    :pswitch_3
    check-cast p2, Lcom/flurry/android/AdSpaceLayout;

    iput-object p2, p0, Lcom/flurry/android/AdFrame;->L:Lcom/flurry/android/AdSpaceLayout;

    goto :goto_0

    .line 37
    :pswitch_4
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/flurry/android/AdFrame;->callbacks:Ljava/util/List;

    goto :goto_0

    .line 38
    :pswitch_5
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/AdFrame;->M:Ljava/lang/CharSequence;

    goto :goto_0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
