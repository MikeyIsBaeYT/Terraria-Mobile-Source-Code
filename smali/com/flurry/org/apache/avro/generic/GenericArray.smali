.class public interface abstract Lcom/flurry/org/apache/avro/generic/GenericArray;
.super Ljava/lang/Object;
.source "GenericArray.java"

# interfaces
.implements Ljava/util/List;
.implements Lcom/flurry/org/apache/avro/generic/GenericContainer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List",
        "<TT;>;",
        "Lcom/flurry/org/apache/avro/generic/GenericContainer;"
    }
.end annotation


# virtual methods
.method public abstract peek()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract reverse()V
.end method
