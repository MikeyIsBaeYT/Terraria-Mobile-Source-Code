.class final enum Lcom/flurry/org/apache/avro/data/Json$JsonType;
.super Ljava/lang/Enum;
.source "Json.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/data/Json;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "JsonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/org/apache/avro/data/Json$JsonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flurry/org/apache/avro/data/Json$JsonType;

.field public static final enum ARRAY:Lcom/flurry/org/apache/avro/data/Json$JsonType;

.field public static final enum BOOLEAN:Lcom/flurry/org/apache/avro/data/Json$JsonType;

.field public static final enum DOUBLE:Lcom/flurry/org/apache/avro/data/Json$JsonType;

.field public static final enum LONG:Lcom/flurry/org/apache/avro/data/Json$JsonType;

.field public static final enum NULL:Lcom/flurry/org/apache/avro/data/Json$JsonType;

.field public static final enum OBJECT:Lcom/flurry/org/apache/avro/data/Json$JsonType;

.field public static final enum STRING:Lcom/flurry/org/apache/avro/data/Json$JsonType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 96
    new-instance v0, Lcom/flurry/org/apache/avro/data/Json$JsonType;

    const-string v1, "LONG"

    invoke-direct {v0, v1, v3}, Lcom/flurry/org/apache/avro/data/Json$JsonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/apache/avro/data/Json$JsonType;->LONG:Lcom/flurry/org/apache/avro/data/Json$JsonType;

    new-instance v0, Lcom/flurry/org/apache/avro/data/Json$JsonType;

    const-string v1, "DOUBLE"

    invoke-direct {v0, v1, v4}, Lcom/flurry/org/apache/avro/data/Json$JsonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/apache/avro/data/Json$JsonType;->DOUBLE:Lcom/flurry/org/apache/avro/data/Json$JsonType;

    new-instance v0, Lcom/flurry/org/apache/avro/data/Json$JsonType;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v5}, Lcom/flurry/org/apache/avro/data/Json$JsonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/apache/avro/data/Json$JsonType;->STRING:Lcom/flurry/org/apache/avro/data/Json$JsonType;

    new-instance v0, Lcom/flurry/org/apache/avro/data/Json$JsonType;

    const-string v1, "BOOLEAN"

    invoke-direct {v0, v1, v6}, Lcom/flurry/org/apache/avro/data/Json$JsonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/apache/avro/data/Json$JsonType;->BOOLEAN:Lcom/flurry/org/apache/avro/data/Json$JsonType;

    new-instance v0, Lcom/flurry/org/apache/avro/data/Json$JsonType;

    const-string v1, "NULL"

    invoke-direct {v0, v1, v7}, Lcom/flurry/org/apache/avro/data/Json$JsonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/apache/avro/data/Json$JsonType;->NULL:Lcom/flurry/org/apache/avro/data/Json$JsonType;

    new-instance v0, Lcom/flurry/org/apache/avro/data/Json$JsonType;

    const-string v1, "ARRAY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/flurry/org/apache/avro/data/Json$JsonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/apache/avro/data/Json$JsonType;->ARRAY:Lcom/flurry/org/apache/avro/data/Json$JsonType;

    new-instance v0, Lcom/flurry/org/apache/avro/data/Json$JsonType;

    const-string v1, "OBJECT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/flurry/org/apache/avro/data/Json$JsonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/apache/avro/data/Json$JsonType;->OBJECT:Lcom/flurry/org/apache/avro/data/Json$JsonType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/flurry/org/apache/avro/data/Json$JsonType;

    sget-object v1, Lcom/flurry/org/apache/avro/data/Json$JsonType;->LONG:Lcom/flurry/org/apache/avro/data/Json$JsonType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/org/apache/avro/data/Json$JsonType;->DOUBLE:Lcom/flurry/org/apache/avro/data/Json$JsonType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/org/apache/avro/data/Json$JsonType;->STRING:Lcom/flurry/org/apache/avro/data/Json$JsonType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/org/apache/avro/data/Json$JsonType;->BOOLEAN:Lcom/flurry/org/apache/avro/data/Json$JsonType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flurry/org/apache/avro/data/Json$JsonType;->NULL:Lcom/flurry/org/apache/avro/data/Json$JsonType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/org/apache/avro/data/Json$JsonType;->ARRAY:Lcom/flurry/org/apache/avro/data/Json$JsonType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/org/apache/avro/data/Json$JsonType;->OBJECT:Lcom/flurry/org/apache/avro/data/Json$JsonType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/flurry/org/apache/avro/data/Json$JsonType;->$VALUES:[Lcom/flurry/org/apache/avro/data/Json$JsonType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/org/apache/avro/data/Json$JsonType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 96
    const-class v0, Lcom/flurry/org/apache/avro/data/Json$JsonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/data/Json$JsonType;

    return-object v0
.end method

.method public static values()[Lcom/flurry/org/apache/avro/data/Json$JsonType;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/flurry/org/apache/avro/data/Json$JsonType;->$VALUES:[Lcom/flurry/org/apache/avro/data/Json$JsonType;

    invoke-virtual {v0}, [Lcom/flurry/org/apache/avro/data/Json$JsonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/org/apache/avro/data/Json$JsonType;

    return-object v0
.end method
