.class public interface abstract annotation Lcom/flurry/org/codehaus/jackson/map/annotate/JacksonInject;
.super Ljava/lang/Object;
.source "JacksonInject.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/flurry/org/codehaus/jackson/annotate/JacksonAnnotation;
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/flurry/org/codehaus/jackson/map/annotate/JacksonInject;
        value = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract value()Ljava/lang/String;
.end method
