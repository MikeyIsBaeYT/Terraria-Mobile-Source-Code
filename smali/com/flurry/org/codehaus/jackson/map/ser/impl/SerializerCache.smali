.class public final Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache;
.super Ljava/lang/Object;
.source "SerializerCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;
    }
.end annotation


# instance fields
.field private _readOnlyMap:Lcom/flurry/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

.field private _sharedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache;->_readOnlyMap:Lcom/flurry/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    .line 42
    return-void
.end method


# virtual methods
.method public addAndResolveNonTypedSerializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 3
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 171
    .local p2, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Z)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache;->_readOnlyMap:Lcom/flurry/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    .line 183
    :cond_0
    instance-of v0, p2, Lcom/flurry/org/codehaus/jackson/map/ResolvableSerializer;

    if-eqz v0, :cond_1

    .line 184
    check-cast p2, Lcom/flurry/org/codehaus/jackson/map/ResolvableSerializer;

    .end local p2    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-interface {p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ResolvableSerializer;->resolve(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    .line 186
    :cond_1
    monitor-exit p0

    .line 187
    return-void

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addAndResolveNonTypedSerializer(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 3
    .param p3, "provider"    # Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;-><init>(Ljava/lang/Class;Z)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache;->_readOnlyMap:Lcom/flurry/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    .line 158
    :cond_0
    instance-of v0, p2, Lcom/flurry/org/codehaus/jackson/map/ResolvableSerializer;

    if-eqz v0, :cond_1

    .line 159
    check-cast p2, Lcom/flurry/org/codehaus/jackson/map/ResolvableSerializer;

    .end local p2    # "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-interface {p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ResolvableSerializer;->resolve(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    .line 161
    :cond_1
    monitor-exit p0

    .line 162
    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addTypedSerializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 3
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p2, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Z)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache;->_readOnlyMap:Lcom/flurry/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    .line 126
    :cond_0
    monitor-exit p0

    .line 127
    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addTypedSerializer(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "ser":Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    monitor-enter p0

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;-><init>(Ljava/lang/Class;Z)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache;->_readOnlyMap:Lcom/flurry/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    .line 136
    :cond_0
    monitor-exit p0

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    monitor-exit p0

    return-void

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getReadOnlyLookupMap()Lcom/flurry/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;
    .locals 2

    .prologue
    .line 51
    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache;->_readOnlyMap:Lcom/flurry/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    .line 53
    .local v0, "m":Lcom/flurry/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;
    if-nez v0, :cond_0

    .line 54
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->from(Ljava/util/HashMap;)Lcom/flurry/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache;->_readOnlyMap:Lcom/flurry/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    .line 56
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->instance()Lcom/flurry/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    move-result-object v1

    return-object v1

    .line 56
    .end local v0    # "m":Lcom/flurry/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public typedValueSerializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 3
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Z)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    monitor-exit p0

    return-object v0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public typedValueSerializer(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;-><init>(Ljava/lang/Class;Z)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    monitor-exit p0

    return-object v0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public untypedValueSerializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 3
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Z)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    monitor-exit p0

    return-object v0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public untypedValueSerializer(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;-><init>(Ljava/lang/Class;Z)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    monitor-exit p0

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
