.class Lcom/flurry/android/AdRequest;
.super Lcom/flurry/org/apache/avro/specific/SpecificRecordBase;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/org/apache/avro/specific/SpecificRecord;


# static fields
.field public static final SCHEMA$:Lcom/flurry/org/apache/avro/Schema;


# instance fields
.field public cA:Ljava/lang/CharSequence;

.field public cB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public ce:J

.field public ch:Ljava/lang/CharSequence;

.field public ci:Ljava/lang/CharSequence;

.field public cj:Ljava/lang/CharSequence;

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

.field public cl:Lcom/flurry/android/Location;

.field public cm:Z

.field public cn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public co:Lcom/flurry/android/AdViewContainer;

.field public cp:Ljava/lang/CharSequence;

.field public cq:Ljava/lang/CharSequence;

.field public cr:Ljava/lang/CharSequence;

.field public cs:Ljava/lang/CharSequence;

.field public ct:Lcom/flurry/android/TestAds;

.field public cu:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public cv:Z

.field public cw:Z

.field public cx:I

.field public cy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/FrequencyCapInfo;",
            ">;"
        }
    .end annotation
.end field

.field public cz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lcom/flurry/org/apache/avro/Schema$Parser;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/Schema$Parser;-><init>()V

    const-string v1, "{\"type\":\"record\",\"name\":\"AdRequest\",\"namespace\":\"com.flurry.android\",\"fields\":[{\"name\":\"apiKey\",\"type\":\"string\"},{\"name\":\"agentVersion\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"adSpaceName\",\"type\":\"string\"},{\"name\":\"sessionId\",\"type\":\"long\"},{\"name\":\"adReportedIds\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"AdReportedId\",\"fields\":[{\"name\":\"type\",\"type\":\"int\"},{\"name\":\"id\",\"type\":\"bytes\"}]}}},{\"name\":\"location\",\"type\":{\"type\":\"record\",\"name\":\"Location\",\"fields\":[{\"name\":\"lat\",\"type\":\"float\",\"default\":0.0},{\"name\":\"lon\",\"type\":\"float\",\"default\":0.0}]},\"default\":\"null\"},{\"name\":\"testDevice\",\"type\":\"boolean\",\"default\":false},{\"name\":\"bindings\",\"type\":{\"type\":\"array\",\"items\":\"int\"}},{\"name\":\"adViewContainer\",\"type\":{\"type\":\"record\",\"name\":\"AdViewContainer\",\"fields\":[{\"name\":\"viewWidth\",\"type\":\"int\",\"default\":0},{\"name\":\"viewHeight\",\"type\":\"int\",\"default\":0},{\"name\":\"screenWidth\",\"type\":\"int\",\"default\":0},{\"name\":\"screenHeight\",\"type\":\"int\",\"default\":0},{\"name\":\"density\",\"type\":\"float\",\"default\":1.0}]},\"default\":\"null\"},{\"name\":\"locale\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"timezone\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"osVersion\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"devicePlatform\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"testAds\",\"type\":{\"type\":\"record\",\"name\":\"TestAds\",\"fields\":[{\"name\":\"adspacePlacement\",\"type\":\"int\",\"default\":0}]},\"default\":\"null\"},{\"name\":\"keywords\",\"type\":{\"type\":\"map\",\"values\":\"string\"},\"default\":[]},{\"name\":\"refresh\",\"type\":\"boolean\",\"default\":false},{\"name\":\"canDoSKAppStore\",\"type\":\"boolean\",\"default\":false},{\"name\":\"networkStatus\",\"type\":\"int\",\"default\":1},{\"name\":\"frequencyCapInfos\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"FrequencyCapInfo\",\"fields\":[{\"name\":\"idHash\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"serveTime\",\"type\":\"long\"},{\"name\":\"expirationTime\",\"type\":\"long\"},{\"name\":\"views\",\"type\":\"int\"},{\"name\":\"newCap\",\"type\":\"int\"},{\"name\":\"previousCap\",\"type\":\"int\"},{\"name\":\"previousCapType\",\"type\":\"int\"}]}}},{\"name\":\"adTrackingEnabled\",\"type\":\"boolean\",\"default\":false},{\"name\":\"preferredLanguage\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"bcat\",\"type\":{\"type\":\"array\",\"items\":\"string\"},\"default\":[]}]}"

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/Schema$Parser;->parse(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/AdRequest;->SCHEMA$:Lcom/flurry/org/apache/avro/Schema;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/specific/SpecificRecordBase;-><init>()V

    .line 439
    return-void
.end method

.method public static bt()Lcom/flurry/android/AdRequest$Builder;
    .locals 1

    .prologue
    .line 423
    new-instance v0, Lcom/flurry/android/AdRequest$Builder;

    invoke-direct {v0}, Lcom/flurry/android/AdRequest$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/flurry/android/TestAds;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/flurry/android/AdRequest;->ct:Lcom/flurry/android/TestAds;

    .line 299
    return-void
.end method

.method public final a(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/AdRequest;->cv:Z

    .line 329
    return-void
.end method

.method public final c(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/flurry/android/AdRequest;->cj:Ljava/lang/CharSequence;

    .line 134
    return-void
.end method

.method public final c(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 313
    iput-object p1, p0, Lcom/flurry/android/AdRequest;->cu:Ljava/util/Map;

    .line 314
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 35
    packed-switch p1, :pswitch_data_0

    .line 58
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    const-string v1, "Bad index"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :pswitch_0
    iget-object v0, p0, Lcom/flurry/android/AdRequest;->ch:Ljava/lang/CharSequence;

    .line 57
    :goto_0
    return-object v0

    .line 37
    :pswitch_1
    iget-object v0, p0, Lcom/flurry/android/AdRequest;->ci:Ljava/lang/CharSequence;

    goto :goto_0

    .line 38
    :pswitch_2
    iget-object v0, p0, Lcom/flurry/android/AdRequest;->cj:Ljava/lang/CharSequence;

    goto :goto_0

    .line 39
    :pswitch_3
    iget-wide v0, p0, Lcom/flurry/android/AdRequest;->ce:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 40
    :pswitch_4
    iget-object v0, p0, Lcom/flurry/android/AdRequest;->ck:Ljava/util/List;

    goto :goto_0

    .line 41
    :pswitch_5
    iget-object v0, p0, Lcom/flurry/android/AdRequest;->cl:Lcom/flurry/android/Location;

    goto :goto_0

    .line 42
    :pswitch_6
    iget-boolean v0, p0, Lcom/flurry/android/AdRequest;->cm:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 43
    :pswitch_7
    iget-object v0, p0, Lcom/flurry/android/AdRequest;->cn:Ljava/util/List;

    goto :goto_0

    .line 44
    :pswitch_8
    iget-object v0, p0, Lcom/flurry/android/AdRequest;->co:Lcom/flurry/android/AdViewContainer;

    goto :goto_0

    .line 45
    :pswitch_9
    iget-object v0, p0, Lcom/flurry/android/AdRequest;->cp:Ljava/lang/CharSequence;

    goto :goto_0

    .line 46
    :pswitch_a
    iget-object v0, p0, Lcom/flurry/android/AdRequest;->cq:Ljava/lang/CharSequence;

    goto :goto_0

    .line 47
    :pswitch_b
    iget-object v0, p0, Lcom/flurry/android/AdRequest;->cr:Ljava/lang/CharSequence;

    goto :goto_0

    .line 48
    :pswitch_c
    iget-object v0, p0, Lcom/flurry/android/AdRequest;->cs:Ljava/lang/CharSequence;

    goto :goto_0

    .line 49
    :pswitch_d
    iget-object v0, p0, Lcom/flurry/android/AdRequest;->ct:Lcom/flurry/android/TestAds;

    goto :goto_0

    .line 50
    :pswitch_e
    iget-object v0, p0, Lcom/flurry/android/AdRequest;->cu:Ljava/util/Map;

    goto :goto_0

    .line 51
    :pswitch_f
    iget-boolean v0, p0, Lcom/flurry/android/AdRequest;->cv:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 52
    :pswitch_10
    iget-boolean v0, p0, Lcom/flurry/android/AdRequest;->cw:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 53
    :pswitch_11
    iget v0, p0, Lcom/flurry/android/AdRequest;->cx:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 54
    :pswitch_12
    iget-object v0, p0, Lcom/flurry/android/AdRequest;->cy:Ljava/util/List;

    goto :goto_0

    .line 55
    :pswitch_13
    iget-boolean v0, p0, Lcom/flurry/android/AdRequest;->cz:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 56
    :pswitch_14
    iget-object v0, p0, Lcom/flurry/android/AdRequest;->cA:Ljava/lang/CharSequence;

    goto :goto_0

    .line 57
    :pswitch_15
    iget-object v0, p0, Lcom/flurry/android/AdRequest;->cB:Ljava/util/List;

    goto :goto_0

    .line 35
    nop

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
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method public getSchema()Lcom/flurry/org/apache/avro/Schema;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/flurry/android/AdRequest;->SCHEMA$:Lcom/flurry/org/apache/avro/Schema;

    return-object v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 64
    packed-switch p1, :pswitch_data_0

    .line 87
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    const-string v1, "Bad index"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :pswitch_0
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/AdRequest;->ch:Ljava/lang/CharSequence;

    .line 86
    :goto_0
    return-void

    .line 66
    :pswitch_1
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/AdRequest;->ci:Ljava/lang/CharSequence;

    goto :goto_0

    .line 67
    :pswitch_2
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/AdRequest;->cj:Ljava/lang/CharSequence;

    goto :goto_0

    .line 68
    :pswitch_3
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/AdRequest;->ce:J

    goto :goto_0

    .line 69
    :pswitch_4
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/flurry/android/AdRequest;->ck:Ljava/util/List;

    goto :goto_0

    .line 70
    :pswitch_5
    check-cast p2, Lcom/flurry/android/Location;

    iput-object p2, p0, Lcom/flurry/android/AdRequest;->cl:Lcom/flurry/android/Location;

    goto :goto_0

    .line 71
    :pswitch_6
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/AdRequest;->cm:Z

    goto :goto_0

    .line 72
    :pswitch_7
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/flurry/android/AdRequest;->cn:Ljava/util/List;

    goto :goto_0

    .line 73
    :pswitch_8
    check-cast p2, Lcom/flurry/android/AdViewContainer;

    iput-object p2, p0, Lcom/flurry/android/AdRequest;->co:Lcom/flurry/android/AdViewContainer;

    goto :goto_0

    .line 74
    :pswitch_9
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/AdRequest;->cp:Ljava/lang/CharSequence;

    goto :goto_0

    .line 75
    :pswitch_a
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/AdRequest;->cq:Ljava/lang/CharSequence;

    goto :goto_0

    .line 76
    :pswitch_b
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/AdRequest;->cr:Ljava/lang/CharSequence;

    goto :goto_0

    .line 77
    :pswitch_c
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/AdRequest;->cs:Ljava/lang/CharSequence;

    goto :goto_0

    .line 78
    :pswitch_d
    check-cast p2, Lcom/flurry/android/TestAds;

    iput-object p2, p0, Lcom/flurry/android/AdRequest;->ct:Lcom/flurry/android/TestAds;

    goto :goto_0

    .line 79
    :pswitch_e
    check-cast p2, Ljava/util/Map;

    iput-object p2, p0, Lcom/flurry/android/AdRequest;->cu:Ljava/util/Map;

    goto :goto_0

    .line 80
    :pswitch_f
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/AdRequest;->cv:Z

    goto :goto_0

    .line 81
    :pswitch_10
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/AdRequest;->cw:Z

    goto :goto_0

    .line 82
    :pswitch_11
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/AdRequest;->cx:I

    goto :goto_0

    .line 83
    :pswitch_12
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/flurry/android/AdRequest;->cy:Ljava/util/List;

    goto :goto_0

    .line 84
    :pswitch_13
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/AdRequest;->cz:Z

    goto :goto_0

    .line 85
    :pswitch_14
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/AdRequest;->cA:Ljava/lang/CharSequence;

    goto :goto_0

    .line 86
    :pswitch_15
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/flurry/android/AdRequest;->cB:Ljava/util/List;

    goto/16 :goto_0

    .line 64
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
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method
