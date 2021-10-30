.class Lcom/flurry/org/apache/avro/io/JsonDecoder$ReorderBuffer;
.super Ljava/lang/Object;
.source "JsonDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/io/JsonDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReorderBuffer"
.end annotation


# instance fields
.field public origParser:Lcom/flurry/org/codehaus/jackson/JsonParser;

.field public savedFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/apache/avro/io/JsonDecoder$JsonElement;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder$ReorderBuffer;->savedFields:Ljava/util/Map;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/apache/avro/io/JsonDecoder$ReorderBuffer;->origParser:Lcom/flurry/org/codehaus/jackson/JsonParser;

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/org/apache/avro/io/JsonDecoder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flurry/org/apache/avro/io/JsonDecoder$1;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/JsonDecoder$ReorderBuffer;-><init>()V

    return-void
.end method
