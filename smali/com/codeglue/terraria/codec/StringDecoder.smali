.class public interface abstract Lcom/codeglue/terraria/codec/StringDecoder;
.super Ljava/lang/Object;
.source "StringDecoder.java"

# interfaces
.implements Lcom/codeglue/terraria/codec/Decoder;


# virtual methods
.method public abstract decode(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codeglue/terraria/codec/DecoderException;
        }
    .end annotation
.end method
