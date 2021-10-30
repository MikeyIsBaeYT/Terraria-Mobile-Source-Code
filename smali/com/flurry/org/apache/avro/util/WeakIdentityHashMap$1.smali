.class Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$1;
.super Ljava/lang/Object;
.source "WeakIdentityHashMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;

.field final synthetic val$key:Ljava/lang/Object;

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 73
    .local p0, "this":Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$1;, "Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap.1;"
    iput-object p1, p0, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$1;->this$0:Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;

    iput-object p2, p0, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$1;->val$key:Ljava/lang/Object;

    iput-object p3, p0, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$1;->val$value:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$1;, "Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap.1;"
    iget-object v0, p0, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$1;->val$key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$1;, "Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap.1;"
    iget-object v0, p0, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$1;->val$value:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$1;, "Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap.1;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
