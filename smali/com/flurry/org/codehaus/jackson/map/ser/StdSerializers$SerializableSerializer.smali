.class public final Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$SerializableSerializer;
.super Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializableSerializer;
.source "StdSerializers.java"


# annotations
.annotation runtime Lcom/flurry/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SerializableSerializer"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 361
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializableSerializer;-><init>()V

    return-void
.end method
