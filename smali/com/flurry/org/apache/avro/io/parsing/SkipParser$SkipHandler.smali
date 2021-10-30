.class public interface abstract Lcom/flurry/org/apache/avro/io/parsing/SkipParser$SkipHandler;
.super Ljava/lang/Object;
.source "SkipParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/io/parsing/SkipParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SkipHandler"
.end annotation


# virtual methods
.method public abstract skipAction()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract skipTopSymbol()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
