.class public Lcom/flurry/org/apache/avro/Schema$Field;
.super Ljava/lang/Object;
.source "Schema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/Schema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/apache/avro/Schema$Field$Order;
    }
.end annotation


# instance fields
.field private aliases:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultValue:Lcom/flurry/org/codehaus/jackson/JsonNode;

.field private final doc:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final order:Lcom/flurry/org/apache/avro/Schema$Field$Order;

.field private transient position:I

.field private final props:Lcom/flurry/org/apache/avro/Schema$Props;

.field private final schema:Lcom/flurry/org/apache/avro/Schema;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/flurry/org/apache/avro/Schema;Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonNode;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "schema"    # Lcom/flurry/org/apache/avro/Schema;
    .param p3, "doc"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Lcom/flurry/org/codehaus/jackson/JsonNode;

    .prologue
    .line 407
    sget-object v5, Lcom/flurry/org/apache/avro/Schema$Field$Order;->ASCENDING:Lcom/flurry/org/apache/avro/Schema$Field$Order;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/apache/avro/Schema$Field;-><init>(Ljava/lang/String;Lcom/flurry/org/apache/avro/Schema;Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonNode;Lcom/flurry/org/apache/avro/Schema$Field$Order;)V

    .line 408
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/flurry/org/apache/avro/Schema;Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonNode;Lcom/flurry/org/apache/avro/Schema$Field$Order;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "schema"    # Lcom/flurry/org/apache/avro/Schema;
    .param p3, "doc"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Lcom/flurry/org/codehaus/jackson/JsonNode;
    .param p5, "order"    # Lcom/flurry/org/apache/avro/Schema$Field$Order;

    .prologue
    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/org/apache/avro/Schema$Field;->position:I

    .line 403
    new-instance v0, Lcom/flurry/org/apache/avro/Schema$Props;

    invoke-static {}, Lcom/flurry/org/apache/avro/Schema;->access$100()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/Schema$Props;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Field;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    .line 411
    invoke-static {p1}, Lcom/flurry/org/apache/avro/Schema;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Field;->name:Ljava/lang/String;

    .line 412
    iput-object p2, p0, Lcom/flurry/org/apache/avro/Schema$Field;->schema:Lcom/flurry/org/apache/avro/Schema;

    .line 413
    iput-object p3, p0, Lcom/flurry/org/apache/avro/Schema$Field;->doc:Ljava/lang/String;

    .line 414
    iput-object p4, p0, Lcom/flurry/org/apache/avro/Schema$Field;->defaultValue:Lcom/flurry/org/codehaus/jackson/JsonNode;

    .line 415
    iput-object p5, p0, Lcom/flurry/org/apache/avro/Schema$Field;->order:Lcom/flurry/org/apache/avro/Schema$Field$Order;

    .line 416
    return-void
.end method

.method static synthetic access$1300(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/flurry/org/apache/avro/Schema$Field;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Field;->aliases:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .param p0, "x0"    # Lcom/flurry/org/apache/avro/Schema$Field;
    .param p1, "x1"    # Ljava/util/Set;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/flurry/org/apache/avro/Schema$Field;->aliases:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/flurry/org/apache/avro/Schema$Field;)Lcom/flurry/org/apache/avro/Schema$Props;
    .locals 1
    .param p0, "x0"    # Lcom/flurry/org/apache/avro/Schema$Field;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Field;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/flurry/org/apache/avro/Schema$Field;)Lcom/flurry/org/apache/avro/Schema;
    .locals 1
    .param p0, "x0"    # Lcom/flurry/org/apache/avro/Schema$Field;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Field;->schema:Lcom/flurry/org/apache/avro/Schema;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/flurry/org/apache/avro/Schema$Field;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Field;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/flurry/org/apache/avro/Schema$Field;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Field;->doc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/flurry/org/apache/avro/Schema$Field;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 1
    .param p0, "x0"    # Lcom/flurry/org/apache/avro/Schema$Field;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Field;->defaultValue:Lcom/flurry/org/codehaus/jackson/JsonNode;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/flurry/org/apache/avro/Schema$Field;)Lcom/flurry/org/apache/avro/Schema$Field$Order;
    .locals 1
    .param p0, "x0"    # Lcom/flurry/org/apache/avro/Schema$Field;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Field;->order:Lcom/flurry/org/apache/avro/Schema$Field$Order;

    return-object v0
.end method

.method static synthetic access$700(Lcom/flurry/org/apache/avro/Schema$Field;)I
    .locals 1
    .param p0, "x0"    # Lcom/flurry/org/apache/avro/Schema$Field;

    .prologue
    .line 387
    iget v0, p0, Lcom/flurry/org/apache/avro/Schema$Field;->position:I

    return v0
.end method

.method static synthetic access$702(Lcom/flurry/org/apache/avro/Schema$Field;I)I
    .locals 0
    .param p0, "x0"    # Lcom/flurry/org/apache/avro/Schema$Field;
    .param p1, "x1"    # I

    .prologue
    .line 387
    iput p1, p0, Lcom/flurry/org/apache/avro/Schema$Field;->position:I

    return p1
.end method

.method private defaultValueEquals(Lcom/flurry/org/codehaus/jackson/JsonNode;)Z
    .locals 2
    .param p1, "thatDefaultValue"    # Lcom/flurry/org/codehaus/jackson/JsonNode;

    .prologue
    .line 459
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Field;->defaultValue:Lcom/flurry/org/codehaus/jackson/JsonNode;

    if-nez v0, :cond_1

    .line 460
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 463
    :goto_0
    return v0

    .line 460
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Field;->defaultValue:Lcom/flurry/org/codehaus/jackson/JsonNode;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getValueAsDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 462
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getValueAsDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    goto :goto_0

    .line 463
    :cond_2
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Field;->defaultValue:Lcom/flurry/org/codehaus/jackson/JsonNode;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/JsonNode;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public addAlias(Ljava/lang/String;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 437
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Field;->aliases:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 438
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Field;->aliases:Ljava/util/Set;

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Field;->aliases:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 440
    return-void
.end method

.method public declared-synchronized addProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 430
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Field;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/org/apache/avro/Schema$Props;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    monitor-exit p0

    return-void

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public aliases()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 443
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Field;->aliases:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 444
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 445
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Field;->aliases:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public defaultValue()Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Field;->defaultValue:Lcom/flurry/org/codehaus/jackson/JsonNode;

    return-object v0
.end method

.method public doc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Field;->doc:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 448
    if-ne p1, p0, :cond_1

    .line 451
    :cond_0
    :goto_0
    return v1

    .line 449
    :cond_1
    instance-of v3, p1, Lcom/flurry/org/apache/avro/Schema$Field;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 450
    check-cast v0, Lcom/flurry/org/apache/avro/Schema$Field;

    .line 451
    .local v0, "that":Lcom/flurry/org/apache/avro/Schema$Field;
    iget-object v3, p0, Lcom/flurry/org/apache/avro/Schema$Field;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/flurry/org/apache/avro/Schema$Field;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/flurry/org/apache/avro/Schema$Field;->schema:Lcom/flurry/org/apache/avro/Schema;

    iget-object v4, v0, Lcom/flurry/org/apache/avro/Schema$Field;->schema:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {v3, v4}, Lcom/flurry/org/apache/avro/Schema;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/flurry/org/apache/avro/Schema$Field;->defaultValue:Lcom/flurry/org/codehaus/jackson/JsonNode;

    invoke-direct {p0, v3}, Lcom/flurry/org/apache/avro/Schema$Field;->defaultValueEquals(Lcom/flurry/org/codehaus/jackson/JsonNode;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/flurry/org/apache/avro/Schema$Field;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    iget-object v4, v0, Lcom/flurry/org/apache/avro/Schema$Field;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    invoke-virtual {v3, v4}, Lcom/flurry/org/apache/avro/Schema$Props;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public declared-synchronized getProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 427
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Field;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    invoke-virtual {v0, p1}, Lcom/flurry/org/apache/avro/Schema$Props;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Field;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/org/apache/avro/Schema$Field;->schema:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema;->computeHash()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Field;->name:Ljava/lang/String;

    return-object v0
.end method

.method public order()Lcom/flurry/org/apache/avro/Schema$Field$Order;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Field;->order:Lcom/flurry/org/apache/avro/Schema$Field$Order;

    return-object v0
.end method

.method public pos()I
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Lcom/flurry/org/apache/avro/Schema$Field;->position:I

    return v0
.end method

.method public props()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 434
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Field;->props:Lcom/flurry/org/apache/avro/Schema$Props;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public schema()Lcom/flurry/org/apache/avro/Schema;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Field;->schema:Lcom/flurry/org/apache/avro/Schema;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/flurry/org/apache/avro/Schema$Field;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/apache/avro/Schema$Field;->schema:Lcom/flurry/org/apache/avro/Schema;

    invoke-static {v1}, Lcom/flurry/org/apache/avro/Schema;->access$300(Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/flurry/org/apache/avro/Schema$Field;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
