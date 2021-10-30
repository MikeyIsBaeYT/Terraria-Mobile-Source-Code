.class public Lcom/flurry/org/codehaus/jackson/map/MappingJsonFactory;
.super Lcom/flurry/org/codehaus/jackson/JsonFactory;
.source "MappingJsonFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/MappingJsonFactory;-><init>(Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;)V
    .locals 1
    .param p1, "mapper"    # Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;-><init>(Lcom/flurry/org/codehaus/jackson/ObjectCodec;)V

    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v0, p0}, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;-><init>(Lcom/flurry/org/codehaus/jackson/JsonFactory;)V

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/MappingJsonFactory;->setCodec(Lcom/flurry/org/codehaus/jackson/ObjectCodec;)Lcom/flurry/org/codehaus/jackson/JsonFactory;

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic getCodec()Lcom/flurry/org/codehaus/jackson/ObjectCodec;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/MappingJsonFactory;->getCodec()Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    return-object v0
.end method

.method public final getCodec()Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MappingJsonFactory;->_objectCodec:Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;

    return-object v0
.end method

.method public getFormatName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "JSON"

    return-object v0
.end method

.method public hasFormat(Lcom/flurry/org/codehaus/jackson/format/InputAccessor;)Lcom/flurry/org/codehaus/jackson/format/MatchStrength;
    .locals 1
    .param p1, "acc"    # Lcom/flurry/org/codehaus/jackson/format/InputAccessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/MappingJsonFactory;->hasJSONFormat(Lcom/flurry/org/codehaus/jackson/format/InputAccessor;)Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    move-result-object v0

    return-object v0
.end method
