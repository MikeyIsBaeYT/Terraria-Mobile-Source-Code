.class Lcom/flurry/org/apache/avro/generic/GenericData$Array$1;
.super Ljava/lang/Object;
.source "GenericData.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/org/apache/avro/generic/GenericData$Array;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private position:I

.field final synthetic this$0:Lcom/flurry/org/apache/avro/generic/GenericData$Array;


# direct methods
.method constructor <init>(Lcom/flurry/org/apache/avro/generic/GenericData$Array;)V
    .locals 1

    .prologue
    .line 149
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericData$Array$1;, "Lcom/flurry/org/apache/avro/generic/GenericData$Array.1;"
    iput-object p1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array$1;->this$0:Lcom/flurry/org/apache/avro/generic/GenericData$Array;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array$1;->position:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 151
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericData$Array$1;, "Lcom/flurry/org/apache/avro/generic/GenericData$Array.1;"
    iget v0, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array$1;->position:I

    iget-object v1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array$1;->this$0:Lcom/flurry/org/apache/avro/generic/GenericData$Array;

    invoke-static {v1}, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->access$100(Lcom/flurry/org/apache/avro/generic/GenericData$Array;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericData$Array$1;, "Lcom/flurry/org/apache/avro/generic/GenericData$Array.1;"
    iget-object v0, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array$1;->this$0:Lcom/flurry/org/apache/avro/generic/GenericData$Array;

    invoke-static {v0}, Lcom/flurry/org/apache/avro/generic/GenericData$Array;->access$200(Lcom/flurry/org/apache/avro/generic/GenericData$Array;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array$1;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/apache/avro/generic/GenericData$Array$1;->position:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 153
    .local p0, "this":Lcom/flurry/org/apache/avro/generic/GenericData$Array$1;, "Lcom/flurry/org/apache/avro/generic/GenericData$Array.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
