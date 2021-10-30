.class public Lcom/flurry/org/codehaus/jackson/map/ser/std/NullSerializer;
.super Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;
.source "NullSerializer.java"


# annotations
.annotation runtime Lcom/flurry/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final instance:Lcom/flurry/org/codehaus/jackson/map/ser/std/NullSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ser/std/NullSerializer;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/ser/std/NullSerializer;-><init>()V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/ser/std/NullSerializer;->instance:Lcom/flurry/org/codehaus/jackson/map/ser/std/NullSerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getSchema(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 36
    const-string v0, "null"

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/ser/std/NullSerializer;->createSchemaNode(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "jgen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeNull()V

    .line 30
    return-void
.end method
