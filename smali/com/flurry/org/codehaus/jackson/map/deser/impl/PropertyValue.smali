.class public abstract Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyValue;
.super Ljava/lang/Object;
.source "PropertyValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyValue$Map;,
        Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyValue$Any;,
        Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyValue$Regular;
    }
.end annotation


# instance fields
.field public final next:Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyValue;

.field public final value:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyValue;Ljava/lang/Object;)V
    .locals 0
    .param p1, "next"    # Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyValue;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyValue;->next:Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyValue;

    .line 24
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/PropertyValue;->value:Ljava/lang/Object;

    .line 25
    return-void
.end method


# virtual methods
.method public abstract assign(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method
