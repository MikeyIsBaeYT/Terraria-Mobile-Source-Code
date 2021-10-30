.class public Lcom/flurry/org/codehaus/jackson/map/ser/EnumSerializer;
.super Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumSerializer;
.source "EnumSerializer.java"


# annotations
.annotation runtime Lcom/flurry/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;)V
    .locals 0
    .param p1, "v"    # Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumSerializer;-><init>(Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;)V

    .line 16
    return-void
.end method
