.class public Lcom/flurry/org/apache/avro/reflect/ReflectData$AllowNull;
.super Lcom/flurry/org/apache/avro/reflect/ReflectData;
.source "ReflectData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/reflect/ReflectData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AllowNull"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/flurry/org/apache/avro/reflect/ReflectData$AllowNull;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/flurry/org/apache/avro/reflect/ReflectData$AllowNull;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/reflect/ReflectData$AllowNull;-><init>()V

    sput-object v0, Lcom/flurry/org/apache/avro/reflect/ReflectData$AllowNull;->INSTANCE:Lcom/flurry/org/apache/avro/reflect/ReflectData$AllowNull;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/reflect/ReflectData;-><init>()V

    return-void
.end method

.method public static get()Lcom/flurry/org/apache/avro/reflect/ReflectData$AllowNull;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/flurry/org/apache/avro/reflect/ReflectData$AllowNull;->INSTANCE:Lcom/flurry/org/apache/avro/reflect/ReflectData$AllowNull;

    return-object v0
.end method


# virtual methods
.method protected createFieldSchema(Ljava/lang/reflect/Field;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema;
    .locals 2
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/apache/avro/Schema;",
            ">;)",
            "Lcom/flurry/org/apache/avro/Schema;"
        }
    .end annotation

    .prologue
    .line 70
    .local p2, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/flurry/org/apache/avro/Schema;>;"
    invoke-super {p0, p1, p2}, Lcom/flurry/org/apache/avro/reflect/ReflectData;->createFieldSchema(Ljava/lang/reflect/Field;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    .line 71
    .local v0, "schema":Lcom/flurry/org/apache/avro/Schema;
    invoke-static {v0}, Lcom/flurry/org/apache/avro/reflect/ReflectData$AllowNull;->makeNullable(Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v1

    return-object v1
.end method
