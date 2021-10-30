.class public abstract Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;
.super Ljava/lang/Object;
.source "PropertyNamingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy$LowerCaseWithUnderscoresStrategy;,
        Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy$PropertyNamingStrategyBase;
    }
.end annotation


# static fields
.field public static final CAMEL_CASE_TO_LOWER_CASE_WITH_UNDERSCORES:Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 168
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy$LowerCaseWithUnderscoresStrategy;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy$LowerCaseWithUnderscoresStrategy;-><init>()V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;->CAMEL_CASE_TO_LOWER_CASE_WITH_UNDERSCORES:Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    return-void
.end method


# virtual methods
.method public nameForConstructorParameter(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p2, "ctorParam"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;
    .param p3, "defaultName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedParameter;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "config":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<*>;"
    return-object p3
.end method

.method public nameForField(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p2, "field"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;
    .param p3, "defaultName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "config":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<*>;"
    return-object p3
.end method

.method public nameForGetterMethod(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p2, "method"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .param p3, "defaultName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "config":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<*>;"
    return-object p3
.end method

.method public nameForSetterMethod(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p2, "method"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .param p3, "defaultName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "config":Lcom/flurry/org/codehaus/jackson/map/MapperConfig;, "Lcom/flurry/org/codehaus/jackson/map/MapperConfig<*>;"
    return-object p3
.end method
