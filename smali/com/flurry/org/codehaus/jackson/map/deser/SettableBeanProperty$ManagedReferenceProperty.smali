.class public final Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;
.super Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
.source "SettableBeanProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ManagedReferenceProperty"
.end annotation


# instance fields
.field protected final _backProperty:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

.field protected final _isContainer:Z

.field protected final _managedProperty:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

.field protected final _referenceName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)V
    .locals 1
    .param p1, "src"    # Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 631
    .local p2, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;-><init>(Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)V

    .line 632
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_referenceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_referenceName:Ljava/lang/String;

    .line 633
    iget-boolean v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_isContainer:Z

    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_isContainer:Z

    .line 634
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_managedProperty:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_managedProperty:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 635
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_backProperty:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_backProperty:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 636
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;Lcom/flurry/org/codehaus/jackson/map/util/Annotations;Z)V
    .locals 3
    .param p1, "refName"    # Ljava/lang/String;
    .param p2, "forward"    # Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .param p3, "backward"    # Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .param p4, "contextAnnotations"    # Lcom/flurry/org/codehaus/jackson/map/util/Annotations;
    .param p5, "isContainer"    # Z

    .prologue
    .line 621
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->getType()Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    iget-object v2, p2, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueTypeDeserializer:Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;

    invoke-direct {p0, v0, v1, v2, p4}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/util/Annotations;)V

    .line 623
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_referenceName:Ljava/lang/String;

    .line 624
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_managedProperty:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 625
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_backProperty:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 626
    iput-boolean p5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_isContainer:Z

    .line 627
    return-void
.end method


# virtual methods
.method public deserializeAndSet(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    .locals 1
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .param p3, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 667
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_managedProperty:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 668
    return-void
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 651
    .local p1, "acls":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_managedProperty:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getMember()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_managedProperty:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->getMember()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

    move-result-object v0

    return-object v0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 674
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_managedProperty:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-virtual {v4, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 678
    if-eqz p2, :cond_7

    .line 679
    iget-boolean v4, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_isContainer:Z

    if-eqz v4, :cond_6

    .line 680
    instance-of v4, p2, [Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 681
    check-cast p2, [Ljava/lang/Object;

    .end local p2    # "value":Ljava/lang/Object;
    move-object v0, p2

    check-cast v0, [Ljava/lang/Object;

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_7

    aget-object v3, v0, v1

    .line 682
    .local v3, "ob":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 683
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_backProperty:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-virtual {v4, v3, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 681
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 686
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "ob":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v4, p2, Ljava/util/Collection;

    if-eqz v4, :cond_3

    .line 687
    check-cast p2, Ljava/util/Collection;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 688
    .restart local v3    # "ob":Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 689
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_backProperty:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-virtual {v4, v3, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 692
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "ob":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v4, p2, Ljava/util/Map;

    if-eqz v4, :cond_5

    .line 693
    check-cast p2, Ljava/util/Map;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 694
    .restart local v3    # "ob":Ljava/lang/Object;
    if-eqz v3, :cond_4

    .line 695
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_backProperty:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-virtual {v4, v3, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 699
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "ob":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported container type ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") when resolving reference \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_referenceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 703
    :cond_6
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_backProperty:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-virtual {v4, p2, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 706
    .end local p2    # "value":Ljava/lang/Object;
    :cond_7
    return-void
.end method

.method public withValueDeserializer(Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;"
        }
    .end annotation

    .prologue
    .line 640
    .local p1, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;

    invoke-direct {v0, p0, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;-><init>(Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)V

    return-object v0
.end method

.method public bridge synthetic withValueDeserializer(Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .prologue
    .line 601
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->withValueDeserializer(Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;

    move-result-object v0

    return-object v0
.end method
