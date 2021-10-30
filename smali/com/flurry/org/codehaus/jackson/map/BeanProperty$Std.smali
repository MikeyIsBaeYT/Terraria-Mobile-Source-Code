.class public Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;
.super Ljava/lang/Object;
.source "BeanProperty.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/map/BeanProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/BeanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Std"
.end annotation


# instance fields
.field protected final _contextAnnotations:Lcom/flurry/org/codehaus/jackson/map/util/Annotations;

.field protected final _member:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

.field protected final _name:Ljava/lang/String;

.field protected final _type:Lcom/flurry/org/codehaus/jackson/type/JavaType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/util/Annotations;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p3, "contextAnnotations"    # Lcom/flurry/org/codehaus/jackson/map/util/Annotations;
    .param p4, "member"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;->_name:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;->_type:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 90
    iput-object p4, p0, Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;->_member:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

    .line 91
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;->_contextAnnotations:Lcom/flurry/org/codehaus/jackson/map/util/Annotations;

    .line 92
    return-void
.end method


# virtual methods
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
    .line 100
    .local p1, "acls":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;->_member:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getContextAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
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
    .line 105
    .local p1, "acls":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;->_contextAnnotations:Lcom/flurry/org/codehaus/jackson/map/util/Annotations;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;->_contextAnnotations:Lcom/flurry/org/codehaus/jackson/map/util/Annotations;

    invoke-interface {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/util/Annotations;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    goto :goto_0
.end method

.method public getMember()Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;->_member:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;->_type:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public withType(Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;
    .locals 4
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .prologue
    .line 95
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;->_name:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;->_contextAnnotations:Lcom/flurry/org/codehaus/jackson/map/util/Annotations;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;->_member:Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/util/Annotations;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)V

    return-object v0
.end method
