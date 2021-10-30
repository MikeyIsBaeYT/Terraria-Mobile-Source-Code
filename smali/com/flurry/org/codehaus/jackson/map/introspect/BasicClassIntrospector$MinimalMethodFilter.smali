.class Lcom/flurry/org/codehaus/jackson/map/introspect/BasicClassIntrospector$MinimalMethodFilter;
.super Ljava/lang/Object;
.source "BasicClassIntrospector.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/map/introspect/MethodFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/introspect/BasicClassIntrospector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MinimalMethodFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/org/codehaus/jackson/map/introspect/BasicClassIntrospector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/map/introspect/BasicClassIntrospector$1;

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/introspect/BasicClassIntrospector$MinimalMethodFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public includeMethod(Ljava/lang/reflect/Method;)Z
    .locals 3
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .prologue
    const/4 v1, 0x0

    .line 264
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    :cond_0
    :goto_0
    return v1

    .line 267
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v0, v2

    .line 268
    .local v0, "pcount":I
    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
