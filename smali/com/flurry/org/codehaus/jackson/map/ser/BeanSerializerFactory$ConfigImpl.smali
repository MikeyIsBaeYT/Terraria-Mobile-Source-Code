.class public Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;
.super Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;
.source "BeanSerializerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigImpl"
.end annotation


# static fields
.field protected static final NO_MODIFIERS:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;

.field protected static final NO_SERIALIZERS:[Lcom/flurry/org/codehaus/jackson/map/Serializers;


# instance fields
.field protected final _additionalKeySerializers:[Lcom/flurry/org/codehaus/jackson/map/Serializers;

.field protected final _additionalSerializers:[Lcom/flurry/org/codehaus/jackson/map/Serializers;

.field protected final _modifiers:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    new-array v0, v1, [Lcom/flurry/org/codehaus/jackson/map/Serializers;

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->NO_SERIALIZERS:[Lcom/flurry/org/codehaus/jackson/map/Serializers;

    .line 85
    new-array v0, v1, [Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->NO_MODIFIERS:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, v0, v0, v0}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;-><init>([Lcom/flurry/org/codehaus/jackson/map/Serializers;[Lcom/flurry/org/codehaus/jackson/map/Serializers;[Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;)V

    .line 108
    return-void
.end method

.method protected constructor <init>([Lcom/flurry/org/codehaus/jackson/map/Serializers;[Lcom/flurry/org/codehaus/jackson/map/Serializers;[Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;)V
    .locals 0
    .param p1, "allAdditionalSerializers"    # [Lcom/flurry/org/codehaus/jackson/map/Serializers;
    .param p2, "allAdditionalKeySerializers"    # [Lcom/flurry/org/codehaus/jackson/map/Serializers;
    .param p3, "modifiers"    # [Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;-><init>()V

    .line 114
    if-nez p1, :cond_0

    sget-object p1, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->NO_SERIALIZERS:[Lcom/flurry/org/codehaus/jackson/map/Serializers;

    .end local p1    # "allAdditionalSerializers":[Lcom/flurry/org/codehaus/jackson/map/Serializers;
    :cond_0
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->_additionalSerializers:[Lcom/flurry/org/codehaus/jackson/map/Serializers;

    .line 116
    if-nez p2, :cond_1

    sget-object p2, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->NO_SERIALIZERS:[Lcom/flurry/org/codehaus/jackson/map/Serializers;

    .end local p2    # "allAdditionalKeySerializers":[Lcom/flurry/org/codehaus/jackson/map/Serializers;
    :cond_1
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->_additionalKeySerializers:[Lcom/flurry/org/codehaus/jackson/map/Serializers;

    .line 118
    if-nez p3, :cond_2

    sget-object p3, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->NO_MODIFIERS:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;

    .end local p3    # "modifiers":[Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;
    :cond_2
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->_modifiers:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;

    .line 119
    return-void
.end method


# virtual methods
.method public hasKeySerializers()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->_additionalKeySerializers:[Lcom/flurry/org/codehaus/jackson/map/Serializers;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSerializerModifiers()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->_modifiers:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSerializers()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->_additionalSerializers:[Lcom/flurry/org/codehaus/jackson/map/Serializers;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySerializers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/Serializers;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->_additionalKeySerializers:[Lcom/flurry/org/codehaus/jackson/map/Serializers;

    invoke-static {v0}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->arrayAsIterable([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public serializerModifiers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->_modifiers:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;

    invoke-static {v0}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->arrayAsIterable([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public serializers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/Serializers;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->_additionalSerializers:[Lcom/flurry/org/codehaus/jackson/map/Serializers;

    invoke-static {v0}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->arrayAsIterable([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public withAdditionalKeySerializers(Lcom/flurry/org/codehaus/jackson/map/Serializers;)Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;
    .locals 4
    .param p1, "additional"    # Lcom/flurry/org/codehaus/jackson/map/Serializers;

    .prologue
    .line 134
    if-nez p1, :cond_0

    .line 135
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can not pass null Serializers"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->_additionalKeySerializers:[Lcom/flurry/org/codehaus/jackson/map/Serializers;

    invoke-static {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/org/codehaus/jackson/map/Serializers;

    .line 138
    .local v0, "all":[Lcom/flurry/org/codehaus/jackson/map/Serializers;
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->_additionalSerializers:[Lcom/flurry/org/codehaus/jackson/map/Serializers;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->_modifiers:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;

    invoke-direct {v1, v2, v0, v3}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;-><init>([Lcom/flurry/org/codehaus/jackson/map/Serializers;[Lcom/flurry/org/codehaus/jackson/map/Serializers;[Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;)V

    return-object v1
.end method

.method public withAdditionalSerializers(Lcom/flurry/org/codehaus/jackson/map/Serializers;)Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;
    .locals 4
    .param p1, "additional"    # Lcom/flurry/org/codehaus/jackson/map/Serializers;

    .prologue
    .line 124
    if-nez p1, :cond_0

    .line 125
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can not pass null Serializers"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->_additionalSerializers:[Lcom/flurry/org/codehaus/jackson/map/Serializers;

    invoke-static {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/org/codehaus/jackson/map/Serializers;

    .line 128
    .local v0, "all":[Lcom/flurry/org/codehaus/jackson/map/Serializers;
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->_additionalKeySerializers:[Lcom/flurry/org/codehaus/jackson/map/Serializers;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->_modifiers:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;

    invoke-direct {v1, v0, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;-><init>([Lcom/flurry/org/codehaus/jackson/map/Serializers;[Lcom/flurry/org/codehaus/jackson/map/Serializers;[Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;)V

    return-object v1
.end method

.method public withSerializerModifier(Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;)Lcom/flurry/org/codehaus/jackson/map/SerializerFactory$Config;
    .locals 4
    .param p1, "modifier"    # Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;

    .prologue
    .line 144
    if-nez p1, :cond_0

    .line 145
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can not pass null modifier"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->_modifiers:[Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;

    invoke-static {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;

    .line 148
    .local v0, "modifiers":[Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->_additionalSerializers:[Lcom/flurry/org/codehaus/jackson/map/Serializers;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->_additionalKeySerializers:[Lcom/flurry/org/codehaus/jackson/map/Serializers;

    invoke-direct {v1, v2, v3, v0}, Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;-><init>([Lcom/flurry/org/codehaus/jackson/map/Serializers;[Lcom/flurry/org/codehaus/jackson/map/Serializers;[Lcom/flurry/org/codehaus/jackson/map/ser/BeanSerializerModifier;)V

    return-object v1
.end method
