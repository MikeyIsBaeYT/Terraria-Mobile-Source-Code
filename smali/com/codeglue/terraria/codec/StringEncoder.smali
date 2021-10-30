.class public interface abstract Lcom/codeglue/terraria/codec/StringEncoder;
.super Ljava/lang/Object;
.source "StringEncoder.java"

# interfaces
.implements Lcom/codeglue/terraria/codec/Encoder;


# virtual methods
.method public abstract encode(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codeglue/terraria/codec/EncoderException;
        }
    .end annotation
.end method
