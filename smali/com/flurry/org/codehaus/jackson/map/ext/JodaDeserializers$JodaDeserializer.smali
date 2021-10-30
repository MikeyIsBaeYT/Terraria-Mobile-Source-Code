.class abstract Lcom/flurry/org/codehaus/jackson/map/ext/JodaDeserializers$JodaDeserializer;
.super Lcom/flurry/org/codehaus/jackson/map/deser/std/StdScalarDeserializer;
.source "JodaDeserializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/ext/JodaDeserializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "JodaDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdScalarDeserializer",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final _localDateTimeFormat:Lorg/joda/time/format/DateTimeFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->localDateOptionalTimeParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/ext/JodaDeserializers$JodaDeserializer;->_localDateTimeFormat:Lorg/joda/time/format/DateTimeFormatter;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/ext/JodaDeserializers$JodaDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/ext/JodaDeserializers$JodaDeserializer<TT;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected parseLocal(Lcom/flurry/org/codehaus/jackson/JsonParser;)Lorg/joda/time/DateTime;
    .locals 2
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/ext/JodaDeserializers$JodaDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/ext/JodaDeserializers$JodaDeserializer<TT;>;"
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 55
    const/4 v1, 0x0

    .line 57
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/ext/JodaDeserializers$JodaDeserializer;->_localDateTimeFormat:Lorg/joda/time/format/DateTimeFormatter;

    invoke-virtual {v1, v0}, Lorg/joda/time/format/DateTimeFormatter;->parseDateTime(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v1

    goto :goto_0
.end method
