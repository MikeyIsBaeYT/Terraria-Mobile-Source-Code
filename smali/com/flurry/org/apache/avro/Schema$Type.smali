.class public final enum Lcom/flurry/org/apache/avro/Schema$Type;
.super Ljava/lang/Enum;
.source "Schema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/Schema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/org/apache/avro/Schema$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flurry/org/apache/avro/Schema$Type;

.field public static final enum ARRAY:Lcom/flurry/org/apache/avro/Schema$Type;

.field public static final enum BOOLEAN:Lcom/flurry/org/apache/avro/Schema$Type;

.field public static final enum BYTES:Lcom/flurry/org/apache/avro/Schema$Type;

.field public static final enum DOUBLE:Lcom/flurry/org/apache/avro/Schema$Type;

.field public static final enum ENUM:Lcom/flurry/org/apache/avro/Schema$Type;

.field public static final enum FIXED:Lcom/flurry/org/apache/avro/Schema$Type;

.field public static final enum FLOAT:Lcom/flurry/org/apache/avro/Schema$Type;

.field public static final enum INT:Lcom/flurry/org/apache/avro/Schema$Type;

.field public static final enum LONG:Lcom/flurry/org/apache/avro/Schema$Type;

.field public static final enum MAP:Lcom/flurry/org/apache/avro/Schema$Type;

.field public static final enum NULL:Lcom/flurry/org/apache/avro/Schema$Type;

.field public static final enum RECORD:Lcom/flurry/org/apache/avro/Schema$Type;

.field public static final enum STRING:Lcom/flurry/org/apache/avro/Schema$Type;

.field public static final enum UNION:Lcom/flurry/org/apache/avro/Schema$Type;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    new-instance v0, Lcom/flurry/org/apache/avro/Schema$Type;

    const-string v1, "RECORD"

    invoke-direct {v0, v1, v3}, Lcom/flurry/org/apache/avro/Schema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/apache/avro/Schema$Type;->RECORD:Lcom/flurry/org/apache/avro/Schema$Type;

    new-instance v0, Lcom/flurry/org/apache/avro/Schema$Type;

    const-string v1, "ENUM"

    invoke-direct {v0, v1, v4}, Lcom/flurry/org/apache/avro/Schema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/apache/avro/Schema$Type;->ENUM:Lcom/flurry/org/apache/avro/Schema$Type;

    new-instance v0, Lcom/flurry/org/apache/avro/Schema$Type;

    const-string v1, "ARRAY"

    invoke-direct {v0, v1, v5}, Lcom/flurry/org/apache/avro/Schema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/apache/avro/Schema$Type;->ARRAY:Lcom/flurry/org/apache/avro/Schema$Type;

    new-instance v0, Lcom/flurry/org/apache/avro/Schema$Type;

    const-string v1, "MAP"

    invoke-direct {v0, v1, v6}, Lcom/flurry/org/apache/avro/Schema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/apache/avro/Schema$Type;->MAP:Lcom/flurry/org/apache/avro/Schema$Type;

    new-instance v0, Lcom/flurry/org/apache/avro/Schema$Type;

    const-string v1, "UNION"

    invoke-direct {v0, v1, v7}, Lcom/flurry/org/apache/avro/Schema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/apache/avro/Schema$Type;->UNION:Lcom/flurry/org/apache/avro/Schema$Type;

    new-instance v0, Lcom/flurry/org/apache/avro/Schema$Type;

    const-string v1, "FIXED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/flurry/org/apache/avro/Schema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/apache/avro/Schema$Type;->FIXED:Lcom/flurry/org/apache/avro/Schema$Type;

    new-instance v0, Lcom/flurry/org/apache/avro/Schema$Type;

    const-string v1, "STRING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/flurry/org/apache/avro/Schema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/apache/avro/Schema$Type;->STRING:Lcom/flurry/org/apache/avro/Schema$Type;

    new-instance v0, Lcom/flurry/org/apache/avro/Schema$Type;

    const-string v1, "BYTES"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/flurry/org/apache/avro/Schema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/apache/avro/Schema$Type;->BYTES:Lcom/flurry/org/apache/avro/Schema$Type;

    .line 92
    new-instance v0, Lcom/flurry/org/apache/avro/Schema$Type;

    const-string v1, "INT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/flurry/org/apache/avro/Schema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/apache/avro/Schema$Type;->INT:Lcom/flurry/org/apache/avro/Schema$Type;

    new-instance v0, Lcom/flurry/org/apache/avro/Schema$Type;

    const-string v1, "LONG"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/flurry/org/apache/avro/Schema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/apache/avro/Schema$Type;->LONG:Lcom/flurry/org/apache/avro/Schema$Type;

    new-instance v0, Lcom/flurry/org/apache/avro/Schema$Type;

    const-string v1, "FLOAT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/flurry/org/apache/avro/Schema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/apache/avro/Schema$Type;->FLOAT:Lcom/flurry/org/apache/avro/Schema$Type;

    new-instance v0, Lcom/flurry/org/apache/avro/Schema$Type;

    const-string v1, "DOUBLE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/flurry/org/apache/avro/Schema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/apache/avro/Schema$Type;->DOUBLE:Lcom/flurry/org/apache/avro/Schema$Type;

    new-instance v0, Lcom/flurry/org/apache/avro/Schema$Type;

    const-string v1, "BOOLEAN"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/flurry/org/apache/avro/Schema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/apache/avro/Schema$Type;->BOOLEAN:Lcom/flurry/org/apache/avro/Schema$Type;

    new-instance v0, Lcom/flurry/org/apache/avro/Schema$Type;

    const-string v1, "NULL"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/flurry/org/apache/avro/Schema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/apache/avro/Schema$Type;->NULL:Lcom/flurry/org/apache/avro/Schema$Type;

    .line 90
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/flurry/org/apache/avro/Schema$Type;

    sget-object v1, Lcom/flurry/org/apache/avro/Schema$Type;->RECORD:Lcom/flurry/org/apache/avro/Schema$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/org/apache/avro/Schema$Type;->ENUM:Lcom/flurry/org/apache/avro/Schema$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/org/apache/avro/Schema$Type;->ARRAY:Lcom/flurry/org/apache/avro/Schema$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/org/apache/avro/Schema$Type;->MAP:Lcom/flurry/org/apache/avro/Schema$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flurry/org/apache/avro/Schema$Type;->UNION:Lcom/flurry/org/apache/avro/Schema$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/org/apache/avro/Schema$Type;->FIXED:Lcom/flurry/org/apache/avro/Schema$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/org/apache/avro/Schema$Type;->STRING:Lcom/flurry/org/apache/avro/Schema$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/flurry/org/apache/avro/Schema$Type;->BYTES:Lcom/flurry/org/apache/avro/Schema$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/flurry/org/apache/avro/Schema$Type;->INT:Lcom/flurry/org/apache/avro/Schema$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/flurry/org/apache/avro/Schema$Type;->LONG:Lcom/flurry/org/apache/avro/Schema$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/flurry/org/apache/avro/Schema$Type;->FLOAT:Lcom/flurry/org/apache/avro/Schema$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/flurry/org/apache/avro/Schema$Type;->DOUBLE:Lcom/flurry/org/apache/avro/Schema$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/flurry/org/apache/avro/Schema$Type;->BOOLEAN:Lcom/flurry/org/apache/avro/Schema$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/flurry/org/apache/avro/Schema$Type;->NULL:Lcom/flurry/org/apache/avro/Schema$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/flurry/org/apache/avro/Schema$Type;->$VALUES:[Lcom/flurry/org/apache/avro/Schema$Type;

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
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/Schema$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Type;->name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/flurry/org/apache/avro/Schema$Type;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/flurry/org/apache/avro/Schema$Type;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Type;->name:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Schema$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 90
    const-class v0, Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/Schema$Type;

    return-object v0
.end method

.method public static values()[Lcom/flurry/org/apache/avro/Schema$Type;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/flurry/org/apache/avro/Schema$Type;->$VALUES:[Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-virtual {v0}, [Lcom/flurry/org/apache/avro/Schema$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/org/apache/avro/Schema$Type;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Schema$Type;->name:Ljava/lang/String;

    return-object v0
.end method
