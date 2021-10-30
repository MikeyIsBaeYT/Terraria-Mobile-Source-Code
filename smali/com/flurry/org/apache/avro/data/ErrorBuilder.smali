.class public interface abstract Lcom/flurry/org/apache/avro/data/ErrorBuilder;
.super Ljava/lang/Object;
.source "ErrorBuilder.java"

# interfaces
.implements Lcom/flurry/org/apache/avro/data/RecordBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/flurry/org/apache/avro/data/RecordBuilder",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method public abstract clearCause()Lcom/flurry/org/apache/avro/data/ErrorBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/org/apache/avro/data/ErrorBuilder",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract clearValue()Lcom/flurry/org/apache/avro/data/ErrorBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/org/apache/avro/data/ErrorBuilder",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract getCause()Ljava/lang/Throwable;
.end method

.method public abstract getValue()Ljava/lang/Object;
.end method

.method public abstract hasCause()Z
.end method

.method public abstract hasValue()Z
.end method

.method public abstract setCause(Ljava/lang/Throwable;)Lcom/flurry/org/apache/avro/data/ErrorBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/flurry/org/apache/avro/data/ErrorBuilder",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract setValue(Ljava/lang/Object;)Lcom/flurry/org/apache/avro/data/ErrorBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/flurry/org/apache/avro/data/ErrorBuilder",
            "<TT;>;"
        }
    .end annotation
.end method
