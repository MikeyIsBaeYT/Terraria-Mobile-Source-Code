.class public Lcom/flurry/org/codehaus/jackson/map/ext/CoreXMLDeserializers;
.super Ljava/lang/Object;
.source "CoreXMLDeserializers.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/map/util/Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/map/ext/CoreXMLDeserializers$QNameDeserializer;,
        Lcom/flurry/org/codehaus/jackson/map/ext/CoreXMLDeserializers$GregorianCalendarDeserializer;,
        Lcom/flurry/org/codehaus/jackson/map/ext/CoreXMLDeserializers$DurationDeserializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/org/codehaus/jackson/map/util/Provider",
        "<",
        "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer",
        "<*>;>;"
    }
.end annotation


# static fields
.field static final _dataTypeFactory:Ljavax/xml/datatype/DatatypeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    :try_start_0
    invoke-static {}, Ljavax/xml/datatype/DatatypeFactory;->newInstance()Ljavax/xml/datatype/DatatypeFactory;

    move-result-object v1

    sput-object v1, Lcom/flurry/org/codehaus/jackson/map/ext/CoreXMLDeserializers;->_dataTypeFactory:Ljavax/xml/datatype/DatatypeFactory;
    :try_end_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljavax/xml/datatype/DatatypeConfigurationException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    return-void
.end method


# virtual methods
.method public provide()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;

    const/4 v1, 0x0

    new-instance v2, Lcom/flurry/org/codehaus/jackson/map/ext/CoreXMLDeserializers$DurationDeserializer;

    invoke-direct {v2}, Lcom/flurry/org/codehaus/jackson/map/ext/CoreXMLDeserializers$DurationDeserializer;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/flurry/org/codehaus/jackson/map/ext/CoreXMLDeserializers$GregorianCalendarDeserializer;

    invoke-direct {v2}, Lcom/flurry/org/codehaus/jackson/map/ext/CoreXMLDeserializers$GregorianCalendarDeserializer;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/flurry/org/codehaus/jackson/map/ext/CoreXMLDeserializers$QNameDeserializer;

    invoke-direct {v2}, Lcom/flurry/org/codehaus/jackson/map/ext/CoreXMLDeserializers$QNameDeserializer;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
