.class public Lcom/codeglue/terraria/codec/language/Caverphone;
.super Ljava/lang/Object;
.source "Caverphone.java"

# interfaces
.implements Lcom/codeglue/terraria/codec/StringEncoder;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final encoder:Lcom/codeglue/terraria/codec/language/Caverphone2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/codeglue/terraria/codec/language/Caverphone2;

    invoke-direct {v0}, Lcom/codeglue/terraria/codec/language/Caverphone2;-><init>()V

    iput-object v0, p0, Lcom/codeglue/terraria/codec/language/Caverphone;->encoder:Lcom/codeglue/terraria/codec/language/Caverphone2;

    .line 48
    return-void
.end method


# virtual methods
.method public caverphone(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/codeglue/terraria/codec/language/Caverphone;->encoder:Lcom/codeglue/terraria/codec/language/Caverphone2;

    invoke-virtual {v0, p1}, Lcom/codeglue/terraria/codec/language/Caverphone2;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codeglue/terraria/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 74
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/codeglue/terraria/codec/EncoderException;

    const-string v1, "Parameter supplied to Caverphone encode is not of type java.lang.String"

    invoke-direct {v0, v1}, Lcom/codeglue/terraria/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    check-cast p1, Ljava/lang/String;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/codeglue/terraria/codec/language/Caverphone;->caverphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/codeglue/terraria/codec/language/Caverphone;->caverphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCaverphoneEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "str1"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/codeglue/terraria/codec/language/Caverphone;->caverphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/codeglue/terraria/codec/language/Caverphone;->caverphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
