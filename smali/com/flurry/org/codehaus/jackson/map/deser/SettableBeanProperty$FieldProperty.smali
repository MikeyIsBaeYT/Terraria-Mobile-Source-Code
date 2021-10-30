.class public final Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;
.super Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
.source "SettableBeanProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldProperty"
.end annotation


# instance fields
.field protected final _annotated:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;

.field protected final _field:Ljava/lang/reflect/Field;


# direct methods
.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)V
    .locals 1
    .param p1, "src"    # Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 545
    .local p2, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;-><init>(Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)V

    .line 546
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;->_annotated:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;->_annotated:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;

    .line 547
    iget-object v0, p1, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;->_field:Ljava/lang/reflect/Field;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;->_field:Ljava/lang/reflect/Field;

    .line 548
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/util/Annotations;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "typeDeser"    # Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;
    .param p4, "contextAnnotations"    # Lcom/flurry/org/codehaus/jackson/map/util/Annotations;
    .param p5, "field"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;

    .prologue
    .line 539
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/TypeDeserializer;Lcom/flurry/org/codehaus/jackson/map/util/Annotations;)V

    .line 540
    iput-object p5, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;->_annotated:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;

    .line 541
    invoke-virtual {p5}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;->getAnnotated()Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;->_field:Ljava/lang/reflect/Field;

    .line 542
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
    .line 579
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 580
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
    .line 563
    .local p1, "acls":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;->_annotated:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getMember()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;->_annotated:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;

    return-object v0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 587
    :try_start_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;->_field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    :goto_0
    return-void

    .line 588
    :catch_0
    move-exception v0

    .line 589
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;->_throwAsIOE(Ljava/lang/Exception;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public withValueDeserializer(Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;"
        }
    .end annotation

    .prologue
    .line 552
    .local p1, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;

    invoke-direct {v0, p0, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;-><init>(Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)V

    return-object v0
.end method

.method public bridge synthetic withValueDeserializer(Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .prologue
    .line 526
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;->withValueDeserializer(Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;

    move-result-object v0

    return-object v0
.end method
