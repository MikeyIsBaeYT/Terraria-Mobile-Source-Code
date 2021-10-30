.class public Lcom/flurry/org/apache/avro/file/DataFileConstants;
.super Ljava/lang/Object;
.source "DataFileConstants.java"


# static fields
.field public static final CODEC:Ljava/lang/String; = "avro.codec"

.field public static final DEFAULT_SYNC_INTERVAL:I = 0x3e80

.field public static final DEFLATE_CODEC:Ljava/lang/String; = "deflate"

.field public static final FOOTER_BLOCK:J = -0x1L

.field public static final MAGIC:[B

.field public static final NULL_CODEC:Ljava/lang/String; = "null"

.field public static final SCHEMA:Ljava/lang/String; = "avro.schema"

.field public static final SNAPPY_CODEC:Ljava/lang/String; = "snappy"

.field public static final SYNC_SIZE:I = 0x10

.field public static final VERSION:B = 0x1t


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/flurry/org/apache/avro/file/DataFileConstants;->MAGIC:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4ft
        0x62t
        0x6at
        0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
