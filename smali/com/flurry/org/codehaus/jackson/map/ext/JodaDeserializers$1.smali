.class synthetic Lcom/flurry/org/codehaus/jackson/map/ext/JodaDeserializers$1;
.super Ljava/lang/Object;
.source "JodaDeserializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/ext/JodaDeserializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$codehaus$jackson$JsonToken:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 125
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/JsonToken;->values()[Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/ext/JodaDeserializers$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    :try_start_0
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/ext/JodaDeserializers$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/ext/JodaDeserializers$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
