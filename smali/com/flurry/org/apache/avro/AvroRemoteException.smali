.class public Lcom/flurry/org/apache/avro/AvroRemoteException;
.super Ljava/io/IOException;
.source "AvroRemoteException.java"


# instance fields
.field private value:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 35
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/flurry/org/apache/avro/AvroRemoteException;->value:Ljava/lang/Object;

    .line 37
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 40
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    iput-object p1, p0, Lcom/flurry/org/apache/avro/AvroRemoteException;->value:Ljava/lang/Object;

    .line 42
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Throwable;

    .prologue
    .line 30
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/AvroRemoteException;-><init>(Ljava/lang/Object;)V

    .line 31
    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/avro/AvroRemoteException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 32
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/flurry/org/apache/avro/AvroRemoteException;->value:Ljava/lang/Object;

    return-object v0
.end method
