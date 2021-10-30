.class Lcom/flurry/org/apache/avro/io/JsonDecoder$JsonElement;
.super Ljava/lang/Object;
.source "JsonDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/io/JsonDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JsonElement"
.end annotation


# instance fields
.field public final token:Lcom/flurry/org/codehaus/jackson/JsonToken;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/JsonToken;)V
    .locals 1
    .param p1, "t"    # Lcom/flurry/org/codehaus/jackson/JsonToken;

    .prologue
    .line 519
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flurry/org/apache/avro/io/JsonDecoder$JsonElement;-><init>(Lcom/flurry/org/codehaus/jackson/JsonToken;Ljava/lang/String;)V

    .line 520
    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/JsonToken;Ljava/lang/String;)V
    .locals 0
    .param p1, "t"    # Lcom/flurry/org/codehaus/jackson/JsonToken;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    iput-object p1, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder$JsonElement;->token:Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 515
    iput-object p2, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder$JsonElement;->value:Ljava/lang/String;

    .line 516
    return-void
.end method
