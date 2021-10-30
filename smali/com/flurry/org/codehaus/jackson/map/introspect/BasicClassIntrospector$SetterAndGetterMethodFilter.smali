.class public final Lcom/flurry/org/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterAndGetterMethodFilter;
.super Lcom/flurry/org/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterMethodFilter;
.source "BasicClassIntrospector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/introspect/BasicClassIntrospector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetterAndGetterMethodFilter"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterMethodFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public includeMethod(Ljava/lang/reflect/Method;)Z
    .locals 4
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 349
    invoke-super {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterMethodFilter;->includeMethod(Ljava/lang/reflect/Method;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 361
    :cond_0
    :goto_0
    return v1

    .line 352
    :cond_1
    invoke-static {p1}, Lcom/flurry/org/codehaus/jackson/map/util/ClassUtil;->hasGetterSignature(Ljava/lang/reflect/Method;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 353
    goto :goto_0

    .line 356
    :cond_2
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 357
    .local v0, "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Ljava/util/Collection;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 361
    goto :goto_0
.end method
