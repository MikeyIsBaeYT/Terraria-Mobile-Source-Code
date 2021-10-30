.class public interface abstract annotation Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo;
.super Ljava/lang/Object;
.source "JsonTypeInfo.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/flurry/org/codehaus/jackson/annotate/JacksonAnnotation;
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo;
        defaultImpl = Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$None;
        include = .enum Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;->PROPERTY:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;
        property = ""
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$None;,
        Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;,
        Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract defaultImpl()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract include()Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;
.end method

.method public abstract property()Ljava/lang/String;
.end method

.method public abstract use()Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end method
