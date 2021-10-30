.class public Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
.super Ljava/io/IOException;
.source "JsonProcessingException.java"


# static fields
.field static final serialVersionUID:J = 0x7bL


# instance fields
.field protected mLocation:Lcom/flurry/org/codehaus/jackson/JsonLocation;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonLocation;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "loc"    # Lcom/flurry/org/codehaus/jackson/JsonLocation;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/flurry/org/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    .line 37
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "loc"    # Lcom/flurry/org/codehaus/jackson/JsonLocation;
    .param p3, "rootCause"    # Ljava/lang/Throwable;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 23
    if-eqz p3, :cond_0

    .line 24
    invoke-virtual {p0, p3}, Lcom/flurry/org/codehaus/jackson/JsonProcessingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 26
    :cond_0
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/JsonProcessingException;->mLocation:Lcom/flurry/org/codehaus/jackson/JsonLocation;

    .line 27
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "rootCause"    # Ljava/lang/Throwable;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/flurry/org/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    .line 42
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "rootCause"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, v0, v0, p1}, Lcom/flurry/org/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    .line 47
    return-void
.end method


# virtual methods
.method public getLocation()Lcom/flurry/org/codehaus/jackson/JsonLocation;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/JsonProcessingException;->mLocation:Lcom/flurry/org/codehaus/jackson/JsonLocation;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 60
    invoke-super {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "msg":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 62
    const-string v1, "N/A"

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonProcessingException;->getLocation()Lcom/flurry/org/codehaus/jackson/JsonLocation;

    move-result-object v0

    .line 65
    .local v0, "loc":Lcom/flurry/org/codehaus/jackson/JsonLocation;
    if-eqz v0, :cond_1

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonLocation;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonProcessingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
