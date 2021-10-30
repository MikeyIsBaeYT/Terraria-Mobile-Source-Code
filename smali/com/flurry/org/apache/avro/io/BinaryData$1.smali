.class final Lcom/flurry/org/apache/avro/io/BinaryData$1;
.super Ljava/lang/ThreadLocal;
.source "BinaryData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/io/BinaryData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/BinaryData$1;->initialValue()Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;

    move-result-object v0

    return-object v0
.end method
