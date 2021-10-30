.class public final enum Lcom/flurry/org/apache/avro/Schema$Field$Order;
.super Ljava/lang/Enum;
.source "Schema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/Schema$Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Order"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/org/apache/avro/Schema$Field$Order;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flurry/org/apache/avro/Schema$Field$Order;

.field public static final enum ASCENDING:Lcom/flurry/org/apache/avro/Schema$Field$Order;

.field public static final enum DESCENDING:Lcom/flurry/org/apache/avro/Schema$Field$Order;

.field public static final enum IGNORE:Lcom/flurry/org/apache/avro/Schema$Field$Order;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 391
    new-instance v0, Lcom/flurry/org/apache/avro/Schema$Field$Order;

    const-string v1, "ASCENDING"

    invoke-direct {v0, v1, v2}, Lcom/flurry/org/apache/avro/Schema$Field$Order;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/apache/avro/Schema$Field$Order;->ASCENDING:Lcom/flurry/org/apache/avro/Schema$Field$Order;

    new-instance v0, Lcom/flurry/org/apache/avro/Schema$Field$Order;

    const-string v1, "DESCENDING"

    invoke-direct {v0, v1, v3}, Lcom/flurry/org/apache/avro/Schema$Field$Order;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/apache/avro/Schema$Field$Order;->DESCENDING:Lcom/flurry/org/apache/avro/Schema$Field$Order;

    new-instance v0, Lcom/flurry/org/apache/avro/Schema$Field$Order;

    const-string v1, "IGNORE"

    invoke-direct {v0, v1, v4}, Lcom/flurry/org/apache/avro/Schema$Field$Order;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/apache/avro/Schema$Field$Order;->IGNORE:Lcom/flurry/org/apache/avro/Schema$Field$Order;

    .line 390
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/flurry/org/apache/avro/Schema$Field$Order;

    sget-object v1, Lcom/flurry/org/apache/avro/Schema$Field$Order;->ASCENDING:Lcom/flurry/org/apache/avro/Schema$Field$Order;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/org/apache/avro/Schema$Field$Order;->DESCENDING:Lcom/flurry/org/apache/avro/Schema$Field$Order;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/org/apache/avro/Schema$Field$Order;->IGNORE:Lcom/flurry/org/apache/avro/Schema$Field$Order;

    aput-object v1, v0, v4

    sput-object v0, Lcom/flurry/org/apache/avro/Schema$Field$Order;->$VALUES:[Lcom/flurry/org/apache/avro/Schema$Field$Order;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 393
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/Schema$Field$Order;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Field$Order;->name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1200(Lcom/flurry/org/apache/avro/Schema$Field$Order;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/flurry/org/apache/avro/Schema$Field$Order;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Field$Order;->name:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Schema$Field$Order;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 390
    const-class v0, Lcom/flurry/org/apache/avro/Schema$Field$Order;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/Schema$Field$Order;

    return-object v0
.end method

.method public static values()[Lcom/flurry/org/apache/avro/Schema$Field$Order;
    .locals 1

    .prologue
    .line 390
    sget-object v0, Lcom/flurry/org/apache/avro/Schema$Field$Order;->$VALUES:[Lcom/flurry/org/apache/avro/Schema$Field$Order;

    invoke-virtual {v0}, [Lcom/flurry/org/apache/avro/Schema$Field$Order;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/org/apache/avro/Schema$Field$Order;

    return-object v0
.end method
