.class Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;
.super Ljava/lang/ref/WeakReference;
.source "WeakIdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IdentityWeakReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<TK;>;"
    }
.end annotation


# instance fields
.field hash:I

.field final synthetic this$0:Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;


# direct methods
.method constructor <init>(Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;Ljava/lang/Object;)V
    .locals 1
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 149
    .local p0, "this":Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;, "Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap<TK;TV;>.IdentityWeakReference;"
    iput-object p1, p0, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;->this$0:Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;

    .line 150
    invoke-static {p1}, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;->access$000(Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 151
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;->hash:I

    .line 152
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;, "Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap<TK;TV;>.IdentityWeakReference;"
    const/4 v1, 0x1

    .line 159
    if-ne p0, p1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 162
    check-cast v0, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;

    .line 163
    .local v0, "ref":Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;, "Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap<TK;TV;>.IdentityWeakReference;"
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 166
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 155
    .local p0, "this":Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;, "Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap<TK;TV;>.IdentityWeakReference;"
    iget v0, p0, Lcom/flurry/org/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;->hash:I

    return v0
.end method
