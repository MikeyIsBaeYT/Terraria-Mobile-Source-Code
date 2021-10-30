.class public abstract Lcom/flurry/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter;
.super Ljava/lang/Object;
.source "FilteredBeanPropertyWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;,
        Lcom/flurry/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$SingleView;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static constructViewBased(Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;[Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    .locals 2
    .param p0, "base"    # Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "viewsToIncludeIn":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 19
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$SingleView;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {v0, p0, v1}, Lcom/flurry/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$SingleView;-><init>(Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;Ljava/lang/Class;)V

    .line 21
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;

    invoke-direct {v0, p0, p1}, Lcom/flurry/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;-><init>(Lcom/flurry/org/codehaus/jackson/map/ser/BeanPropertyWriter;[Ljava/lang/Class;)V

    goto :goto_0
.end method
