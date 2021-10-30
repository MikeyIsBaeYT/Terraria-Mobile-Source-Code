.class public Lcom/flurry/org/codehaus/jackson/JsonParseException;
.super Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
.source "JsonParseException.java"


# static fields
.field static final serialVersionUID:J = 0x7bL


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonLocation;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "loc"    # Lcom/flurry/org/codehaus/jackson/JsonLocation;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonLocation;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "loc"    # Lcom/flurry/org/codehaus/jackson/JsonLocation;
    .param p3, "root"    # Ljava/lang/Throwable;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    .line 22
    return-void
.end method
