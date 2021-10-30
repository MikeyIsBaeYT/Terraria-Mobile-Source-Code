.class public Lcom/flurry/org/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterMethodFilter;
.super Ljava/lang/Object;
.source "BasicClassIntrospector.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/map/introspect/MethodFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/introspect/BasicClassIntrospector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetterMethodFilter"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public includeMethod(Ljava/lang/reflect/Method;)Z
    .locals 4
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 311
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 331
    :goto_0
    return v1

    .line 314
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v0, v3

    .line 316
    .local v0, "pcount":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v1, v2

    .line 319
    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 329
    goto :goto_0

    .line 316
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
