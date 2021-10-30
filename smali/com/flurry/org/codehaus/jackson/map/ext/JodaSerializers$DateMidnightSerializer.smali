.class public final Lcom/flurry/org/codehaus/jackson/map/ext/JodaSerializers$DateMidnightSerializer;
.super Lcom/flurry/org/codehaus/jackson/map/ext/JodaSerializers$JodaSerializer;
.source "JodaSerializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/ext/JodaSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DateMidnightSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/ext/JodaSerializers$JodaSerializer",
        "<",
        "Lorg/joda/time/DateMidnight;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 177
    const-class v0, Lorg/joda/time/DateMidnight;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/ext/JodaSerializers$JodaSerializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getSchema(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 2
    .param p1, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;

    .prologue
    .line 198
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_DATES_AS_TIMESTAMPS:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "array"

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/ext/JodaSerializers$DateMidnightSerializer;->createSchemaNode(Ljava/lang/String;Z)Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "string"

    goto :goto_0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "x2"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 174
    check-cast p1, Lorg/joda/time/DateMidnight;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ext/JodaSerializers$DateMidnightSerializer;->serialize(Lorg/joda/time/DateMidnight;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public serialize(Lorg/joda/time/DateMidnight;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .param p1, "dt"    # Lorg/joda/time/DateMidnight;
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 183
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_DATES_AS_TIMESTAMPS:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p3, v0}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStartArray()V

    .line 186
    invoke-virtual {p1}, Lorg/joda/time/DateMidnight;->year()Lorg/joda/time/DateMidnight$Property;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateMidnight$Property;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeNumber(I)V

    .line 187
    invoke-virtual {p1}, Lorg/joda/time/DateMidnight;->monthOfYear()Lorg/joda/time/DateMidnight$Property;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateMidnight$Property;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeNumber(I)V

    .line 188
    invoke-virtual {p1}, Lorg/joda/time/DateMidnight;->dayOfMonth()Lorg/joda/time/DateMidnight$Property;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateMidnight$Property;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeNumber(I)V

    .line 189
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeEndArray()V

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/ext/JodaSerializers$DateMidnightSerializer;->printLocalDate(Lorg/joda/time/ReadableInstant;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method
