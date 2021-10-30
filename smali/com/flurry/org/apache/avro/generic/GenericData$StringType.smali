.class public final enum Lcom/flurry/org/apache/avro/generic/GenericData$StringType;
.super Ljava/lang/Enum;
.source "GenericData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/generic/GenericData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StringType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/org/apache/avro/generic/GenericData$StringType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flurry/org/apache/avro/generic/GenericData$StringType;

.field public static final enum CharSequence:Lcom/flurry/org/apache/avro/generic/GenericData$StringType;

.field public static final enum String:Lcom/flurry/org/apache/avro/generic/GenericData$StringType;

.field public static final enum Utf8:Lcom/flurry/org/apache/avro/generic/GenericData$StringType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/flurry/org/apache/avro/generic/GenericData$StringType;

    const-string v1, "CharSequence"

    invoke-direct {v0, v1, v2}, Lcom/flurry/org/apache/avro/generic/GenericData$StringType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/apache/avro/generic/GenericData$StringType;->CharSequence:Lcom/flurry/org/apache/avro/generic/GenericData$StringType;

    new-instance v0, Lcom/flurry/org/apache/avro/generic/GenericData$StringType;

    const-string v1, "String"

    invoke-direct {v0, v1, v3}, Lcom/flurry/org/apache/avro/generic/GenericData$StringType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/apache/avro/generic/GenericData$StringType;->String:Lcom/flurry/org/apache/avro/generic/GenericData$StringType;

    new-instance v0, Lcom/flurry/org/apache/avro/generic/GenericData$StringType;

    const-string v1, "Utf8"

    invoke-direct {v0, v1, v4}, Lcom/flurry/org/apache/avro/generic/GenericData$StringType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/apache/avro/generic/GenericData$StringType;->Utf8:Lcom/flurry/org/apache/avro/generic/GenericData$StringType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/flurry/org/apache/avro/generic/GenericData$StringType;

    sget-object v1, Lcom/flurry/org/apache/avro/generic/GenericData$StringType;->CharSequence:Lcom/flurry/org/apache/avro/generic/GenericData$StringType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/org/apache/avro/generic/GenericData$StringType;->String:Lcom/flurry/org/apache/avro/generic/GenericData$StringType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/org/apache/avro/generic/GenericData$StringType;->Utf8:Lcom/flurry/org/apache/avro/generic/GenericData$StringType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/flurry/org/apache/avro/generic/GenericData$StringType;->$VALUES:[Lcom/flurry/org/apache/avro/generic/GenericData$StringType;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/org/apache/avro/generic/GenericData$StringType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    const-class v0, Lcom/flurry/org/apache/avro/generic/GenericData$StringType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/generic/GenericData$StringType;

    return-object v0
.end method

.method public static values()[Lcom/flurry/org/apache/avro/generic/GenericData$StringType;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/flurry/org/apache/avro/generic/GenericData$StringType;->$VALUES:[Lcom/flurry/org/apache/avro/generic/GenericData$StringType;

    invoke-virtual {v0}, [Lcom/flurry/org/apache/avro/generic/GenericData$StringType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/org/apache/avro/generic/GenericData$StringType;

    return-object v0
.end method
