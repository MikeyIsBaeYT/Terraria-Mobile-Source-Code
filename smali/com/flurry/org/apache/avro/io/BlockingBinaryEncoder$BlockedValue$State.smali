.class public final enum Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;
.super Ljava/lang/Enum;
.source "BlockingBinaryEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

.field public static final enum OVERFLOW:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

.field public static final enum REGULAR:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

.field public static final enum ROOT:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    new-instance v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    const-string v1, "ROOT"

    invoke-direct {v0, v1, v2}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->ROOT:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    .line 84
    new-instance v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    const-string v1, "REGULAR"

    invoke-direct {v0, v1, v3}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->REGULAR:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    .line 95
    new-instance v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    const-string v1, "OVERFLOW"

    invoke-direct {v0, v1, v4}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->OVERFLOW:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    sget-object v1, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->ROOT:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->REGULAR:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->OVERFLOW:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->$VALUES:[Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

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
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 70
    const-class v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    return-object v0
.end method

.method public static values()[Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->$VALUES:[Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    invoke-virtual {v0}, [Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    return-object v0
.end method
