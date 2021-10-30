.class public final Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;
.super Ljava/lang/Object;
.source "SerializerCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TypeKey"
.end annotation


# instance fields
.field protected _class:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected _hashCode:I

.field protected _isTyped:Z

.field protected _type:Lcom/flurry/org/codehaus/jackson/type/JavaType;


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Z)V
    .locals 1
    .param p1, "key"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p2, "typed"    # Z

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_type:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    .line 233
    iput-boolean p2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_isTyped:Z

    .line 234
    invoke-static {p1, p2}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->hash(Lcom/flurry/org/codehaus/jackson/type/JavaType;Z)I

    move-result v0

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_hashCode:I

    .line 235
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Z)V
    .locals 1
    .param p2, "typed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "key":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_type:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 226
    iput-boolean p2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_isTyped:Z

    .line 227
    invoke-static {p1, p2}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->hash(Ljava/lang/Class;Z)I

    move-result v0

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_hashCode:I

    .line 228
    return-void
.end method

.method private static final hash(Lcom/flurry/org/codehaus/jackson/type/JavaType;Z)I
    .locals 2
    .param p0, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p1, "typed"    # Z

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->hashCode()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 247
    .local v0, "hash":I
    if-eqz p1, :cond_0

    .line 248
    add-int/lit8 v0, v0, -0x1

    .line 250
    :cond_0
    return v0
.end method

.method private static final hash(Ljava/lang/Class;Z)I
    .locals 2
    .param p1, "typed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)I"
        }
    .end annotation

    .prologue
    .line 238
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 239
    .local v0, "hash":I
    if-eqz p1, :cond_0

    .line 240
    add-int/lit8 v0, v0, 0x1

    .line 242
    :cond_0
    return v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 293
    if-ne p1, p0, :cond_1

    .line 301
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 294
    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    .line 295
    .local v0, "other":Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;
    iget-boolean v3, v0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_isTyped:Z

    iget-boolean v4, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_isTyped:Z

    if-ne v3, v4, :cond_3

    .line 296
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    if-eqz v3, :cond_2

    .line 297
    iget-object v3, v0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    .line 299
    :cond_2
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_type:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v2, v0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_type:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v1, v2}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 301
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_hashCode:I

    return v0
.end method

.method public resetTyped(Lcom/flurry/org/codehaus/jackson/type/JavaType;)V
    .locals 2
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .prologue
    const/4 v1, 0x1

    .line 268
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_type:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    .line 270
    iput-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_isTyped:Z

    .line 271
    invoke-static {p1, v1}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->hash(Lcom/flurry/org/codehaus/jackson/type/JavaType;Z)I

    move-result v0

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_hashCode:I

    .line 272
    return-void
.end method

.method public resetTyped(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_type:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 255
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    .line 256
    iput-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_isTyped:Z

    .line 257
    invoke-static {p1, v1}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->hash(Ljava/lang/Class;Z)I

    move-result v0

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_hashCode:I

    .line 258
    return-void
.end method

.method public resetUntyped(Lcom/flurry/org/codehaus/jackson/type/JavaType;)V
    .locals 2
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .prologue
    const/4 v1, 0x0

    .line 275
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_type:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    .line 277
    iput-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_isTyped:Z

    .line 278
    invoke-static {p1, v1}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->hash(Lcom/flurry/org/codehaus/jackson/type/JavaType;Z)I

    move-result v0

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_hashCode:I

    .line 279
    return-void
.end method

.method public resetUntyped(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_type:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 262
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    .line 263
    iput-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_isTyped:Z

    .line 264
    invoke-static {p1, v1}, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->hash(Ljava/lang/Class;Z)I

    move-result v0

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_hashCode:I

    .line 265
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", typed? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_isTyped:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_type:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", typed? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_isTyped:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
