.class public Lcom/flurry/org/codehaus/jackson/map/RuntimeJsonMappingException;
.super Ljava/lang/RuntimeException;
.source "RuntimeJsonMappingException.java"


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;)V
    .locals 0
    .param p1, "cause"    # Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    return-void
.end method
