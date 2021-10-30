.class final Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
.super Ljava/lang/Object;
.source "BeanPropertyMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Bucket"
.end annotation


# instance fields
.field public final key:Ljava/lang/String;

.field public final next:Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

.field public final value:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;)V
    .locals 0
    .param p1, "next"    # Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->next:Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    .line 195
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->key:Ljava/lang/String;

    .line 196
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->value:Lcom/flurry/org/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 197
    return-void
.end method
