.class Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter$1;
.super Ljava/lang/Object;
.source "ReflectDatumWriter.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter;->getArrayElements(Ljava/lang/Object;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private i:I

.field private final length:I

.field final synthetic this$0:Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter;

.field final synthetic val$array:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 71
    .local p0, "this":Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter$1;, "Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter.1;"
    iput-object p1, p0, Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter$1;->this$0:Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter;

    iput-object p2, p0, Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter$1;->val$array:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter$1;->i:I

    .line 73
    iget-object v0, p0, Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter$1;->val$array:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter$1;->length:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 74
    .local p0, "this":Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter$1;, "Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter.1;"
    iget v0, p0, Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter$1;->i:I

    iget v1, p0, Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter$1;->length:I

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

    .prologue
    .line 75
    .local p0, "this":Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter$1;, "Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter.1;"
    iget-object v0, p0, Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter$1;->val$array:Ljava/lang/Object;

    iget v1, p0, Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter$1;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter$1;->i:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter$1;, "Lcom/flurry/org/apache/avro/reflect/ReflectDatumWriter.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
