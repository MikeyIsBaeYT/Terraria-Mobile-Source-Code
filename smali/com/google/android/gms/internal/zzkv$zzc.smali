.class final Lcom/google/android/gms/internal/zzkv$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzkv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic zzabx:Lcom/google/android/gms/internal/zzkv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzkv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkv$zzc;->zzabx:Lcom/google/android/gms/internal/zzkv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzkv$zzc;, "Lcom/google/android/gms/internal/zzkv<TK;TV;>.zzc;"
    .local p1, "object":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzkv$zzc;, "Lcom/google/android/gms/internal/zzkv<TK;TV;>.zzc;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkv$zzc;->zzabx:Lcom/google/android/gms/internal/zzkv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkv;->colClear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzkv$zzc;, "Lcom/google/android/gms/internal/zzkv<TK;TV;>.zzc;"
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkv$zzc;->zzabx:Lcom/google/android/gms/internal/zzkv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzkv;->colIndexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzkv$zzc;, "Lcom/google/android/gms/internal/zzkv<TK;TV;>.zzc;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkv$zzc;->zzabx:Lcom/google/android/gms/internal/zzkv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkv;->colGetMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzkv;->containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzkv$zzc;, "Lcom/google/android/gms/internal/zzkv<TK;TV;>.zzc;"
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzkv;->equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkv$zzc;->zzabx:Lcom/google/android/gms/internal/zzkv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkv;->colGetSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v3, v1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkv$zzc;->zzabx:Lcom/google/android/gms/internal/zzkv;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzkv;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    add-int/2addr v3, v0

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    return v3
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkv$zzc;->zzabx:Lcom/google/android/gms/internal/zzkv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkv;->colGetSize()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzkv$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkv$zzc;->zzabx:Lcom/google/android/gms/internal/zzkv;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzkv$zza;-><init>(Lcom/google/android/gms/internal/zzkv;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzkv$zzc;, "Lcom/google/android/gms/internal/zzkv<TK;TV;>.zzc;"
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkv$zzc;->zzabx:Lcom/google/android/gms/internal/zzkv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzkv;->colIndexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkv$zzc;->zzabx:Lcom/google/android/gms/internal/zzkv;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzkv;->colRemoveAt(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzkv$zzc;, "Lcom/google/android/gms/internal/zzkv<TK;TV;>.zzc;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkv$zzc;->zzabx:Lcom/google/android/gms/internal/zzkv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkv;->colGetMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzkv;->removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzkv$zzc;, "Lcom/google/android/gms/internal/zzkv<TK;TV;>.zzc;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkv$zzc;->zzabx:Lcom/google/android/gms/internal/zzkv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkv;->colGetMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzkv;->retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkv$zzc;->zzabx:Lcom/google/android/gms/internal/zzkv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkv;->colGetSize()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkv$zzc;->zzabx:Lcom/google/android/gms/internal/zzkv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzkv;->toArrayHelper(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzkv$zzc;, "Lcom/google/android/gms/internal/zzkv<TK;TV;>.zzc;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkv$zzc;->zzabx:Lcom/google/android/gms/internal/zzkv;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzkv;->toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
