.class public interface abstract annotation Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect;
.super Ljava/lang/Object;
.source "JsonAutoDetect.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/flurry/org/codehaus/jackson/annotate/JacksonAnnotation;
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect;
        creatorVisibility = .enum Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->DEFAULT:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
        fieldVisibility = .enum Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->DEFAULT:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
        getterVisibility = .enum Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->DEFAULT:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
        isGetterVisibility = .enum Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->DEFAULT:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
        setterVisibility = .enum Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->DEFAULT:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
        value = {
            .enum Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;->ALL:Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;
        }
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$1;,
        Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract creatorVisibility()Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
.end method

.method public abstract fieldVisibility()Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
.end method

.method public abstract getterVisibility()Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
.end method

.method public abstract isGetterVisibility()Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
.end method

.method public abstract setterVisibility()Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
.end method

.method public abstract value()[Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;
.end method
