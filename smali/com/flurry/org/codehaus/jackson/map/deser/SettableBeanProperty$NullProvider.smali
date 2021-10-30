.class public final Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;
.super Ljava/lang/Object;
.source "SettableBeanProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "NullProvider"
.end annotation


# instance fields
.field private final _isPrimitive:Z

.field private final _nullValue:Ljava/lang/Object;

.field private final _rawType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;)V
    .locals 1
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p2, "nullValue"    # Ljava/lang/Object;

    .prologue
    .line 811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 812
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;->_nullValue:Ljava/lang/Object;

    .line 814
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->isPrimitive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;->_isPrimitive:Z

    .line 815
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;->_rawType:Ljava/lang/Class;

    .line 816
    return-void
.end method


# virtual methods
.method public nullValue(Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .param p1, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 820
    iget-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;->_isPrimitive:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->FAIL_ON_NULL_FOR_PRIMITIVES:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not map JSON null into type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;->_rawType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (set DeserializationConfig.Feature.FAIL_ON_NULL_FOR_PRIMITIVES to \'false\' to allow)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;->_nullValue:Ljava/lang/Object;

    return-object v0
.end method
