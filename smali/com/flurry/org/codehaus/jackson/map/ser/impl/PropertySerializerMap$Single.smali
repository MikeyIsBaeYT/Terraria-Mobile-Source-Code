.class final Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Single;
.super Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
.source "PropertySerializerMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Single"
.end annotation


# instance fields
.field private final _serializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final _type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "serializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Single;->_type:Ljava/lang/Class;

    .line 132
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Single;->_serializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 133
    return-void
.end method


# virtual methods
.method public newWith(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "serializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Double;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Single;->_type:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Single;->_serializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Double;-><init>(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V

    return-object v0
.end method

.method public serializerFor(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Single;->_type:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Single;->_serializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 141
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
