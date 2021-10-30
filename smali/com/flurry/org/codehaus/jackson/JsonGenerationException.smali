.class public Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
.super Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
.source "JsonGenerationException.java"


# static fields
.field static final serialVersionUID:J = 0x7bL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 21
    const/4 v0, 0x0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/JsonLocation;

    invoke-direct {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonLocation;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "rootCause"    # Ljava/lang/Throwable;

    .prologue
    .line 26
    const/4 v0, 0x0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/JsonLocation;

    invoke-direct {p0, p1, v0, p2}, Lcom/flurry/org/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "rootCause"    # Ljava/lang/Throwable;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/Throwable;)V

    .line 17
    return-void
.end method
