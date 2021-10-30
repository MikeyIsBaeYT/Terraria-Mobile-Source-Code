.class public final Lcom/flurry/org/apache/avro/file/DataFileStream$Header;
.super Ljava/lang/Object;
.source "DataFileStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/file/DataFileStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Header"
.end annotation


# instance fields
.field meta:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private transient metaKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field schema:Lcom/flurry/org/apache/avro/Schema;

.field sync:[B


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream$Header;->meta:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream$Header;->metaKeyList:Ljava/util/List;

    .line 56
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream$Header;->sync:[B

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/org/apache/avro/file/DataFileStream$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flurry/org/apache/avro/file/DataFileStream$1;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/file/DataFileStream$Header;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/flurry/org/apache/avro/file/DataFileStream$Header;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/flurry/org/apache/avro/file/DataFileStream$Header;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileStream$Header;->metaKeyList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/flurry/org/apache/avro/file/DataFileStream$Header;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/flurry/org/apache/avro/file/DataFileStream$Header;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/flurry/org/apache/avro/file/DataFileStream$Header;->metaKeyList:Ljava/util/List;

    return-object p1
.end method
