.class public Lcom/flurry/org/codehaus/jackson/map/ser/MapSerializer;
.super Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;
.source "MapSerializer.java"


# annotations
.annotation runtime Lcom/flurry/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 20
    move-object v1, v2

    check-cast v1, Ljava/util/HashSet;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-direct/range {v0 .. v8}, Lcom/flurry/org/codehaus/jackson/map/ser/MapSerializer;-><init>(Ljava/util/HashSet;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)V

    .line 21
    return-void
.end method

.method protected constructor <init>(Ljava/util/HashSet;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)V
    .locals 9
    .param p2, "keyType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "valueType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p4, "valueTypeIsStatic"    # Z
    .param p5, "vts"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .param p7, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Z",
            "Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 46
    .local p1, "ignoredEntries":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p6, "keySerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;-><init>(Ljava/util/HashSet;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)V

    .line 47
    return-void
.end method

.method protected constructor <init>(Ljava/util/HashSet;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)V
    .locals 0
    .param p2, "keyType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "valueType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p4, "valueTypeIsStatic"    # Z
    .param p5, "vts"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .param p8, "property"    # Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Z",
            "Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "ignoredEntries":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p6, "keySerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .local p7, "valueSerializer":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-direct/range {p0 .. p8}, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;-><init>(Ljava/util/HashSet;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)V

    .line 57
    return-void
.end method

.method protected constructor <init>(Ljava/util/HashSet;Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 9
    .param p2, "valueType"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "valueTypeIsStatic"    # Z
    .param p4, "vts"    # Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Z",
            "Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p1, "ignoredEntries":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 33
    sget-object v2, Lcom/flurry/org/codehaus/jackson/map/ser/MapSerializer;->UNSPECIFIED_TYPE:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v7, v6

    move-object v8, v6

    invoke-direct/range {v0 .. v8}, Lcom/flurry/org/codehaus/jackson/map/ser/std/MapSerializer;-><init>(Ljava/util/HashSet;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)V

    .line 34
    return-void
.end method
