.class public final Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;
.super Ljava/lang/Object;
.source "PropertySerializerMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SerializerAndMapResult"
.end annotation


# instance fields
.field public final map:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

.field public final serializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;)V
    .locals 0
    .param p2, "map"    # Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "serializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 76
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 77
    return-void
.end method
