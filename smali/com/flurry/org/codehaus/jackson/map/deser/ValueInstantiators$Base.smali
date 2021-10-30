.class public Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators$Base;
.super Ljava/lang/Object;
.source "ValueInstantiators.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueInstantiator(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/BeanDescription;Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;)Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;
    .locals 0
    .param p1, "config"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
    .param p2, "beanDesc"    # Lcom/flurry/org/codehaus/jackson/map/BeanDescription;
    .param p3, "defaultInstantiator"    # Lcom/flurry/org/codehaus/jackson/map/deser/ValueInstantiator;

    .prologue
    .line 49
    return-object p3
.end method
