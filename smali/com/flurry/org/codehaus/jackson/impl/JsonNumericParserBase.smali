.class public abstract Lcom/flurry/org/codehaus/jackson/impl/JsonNumericParserBase;
.super Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;
.source "JsonNumericParserBase.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/io/IOContext;I)V
    .locals 0
    .param p1, "ctxt"    # Lcom/flurry/org/codehaus/jackson/io/IOContext;
    .param p2, "features"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/impl/JsonParserBase;-><init>(Lcom/flurry/org/codehaus/jackson/io/IOContext;I)V

    .line 19
    return-void
.end method
