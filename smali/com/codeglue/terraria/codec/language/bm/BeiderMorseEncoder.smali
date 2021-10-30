.class public Lcom/codeglue/terraria/codec/language/bm/BeiderMorseEncoder;
.super Ljava/lang/Object;
.source "BeiderMorseEncoder.java"

# interfaces
.implements Lcom/codeglue/terraria/codec/StringEncoder;


# instance fields
.field private engine:Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;

    sget-object v1, Lcom/codeglue/terraria/codec/language/bm/NameType;->GENERIC:Lcom/codeglue/terraria/codec/language/bm/NameType;

    sget-object v2, Lcom/codeglue/terraria/codec/language/bm/RuleType;->APPROX:Lcom/codeglue/terraria/codec/language/bm/RuleType;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;-><init>(Lcom/codeglue/terraria/codec/language/bm/NameType;Lcom/codeglue/terraria/codec/language/bm/RuleType;Z)V

    iput-object v0, p0, Lcom/codeglue/terraria/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codeglue/terraria/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 85
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/codeglue/terraria/codec/EncoderException;

    const-string v1, "BeiderMorseEncoder encode parameter is not of type String"

    invoke-direct {v0, v1}, Lcom/codeglue/terraria/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    check-cast p1, Ljava/lang/String;

    .end local p1    # "source":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/codeglue/terraria/codec/language/bm/BeiderMorseEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codeglue/terraria/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 93
    if-nez p1, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/codeglue/terraria/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;

    invoke-virtual {v0, p1}, Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNameType()Lcom/codeglue/terraria/codec/language/bm/NameType;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/codeglue/terraria/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;

    invoke-virtual {v0}, Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;->getNameType()Lcom/codeglue/terraria/codec/language/bm/NameType;

    move-result-object v0

    return-object v0
.end method

.method public getRuleType()Lcom/codeglue/terraria/codec/language/bm/RuleType;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/codeglue/terraria/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;

    invoke-virtual {v0}, Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;->getRuleType()Lcom/codeglue/terraria/codec/language/bm/RuleType;

    move-result-object v0

    return-object v0
.end method

.method public isConcat()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/codeglue/terraria/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;

    invoke-virtual {v0}, Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;->isConcat()Z

    move-result v0

    return v0
.end method

.method public setConcat(Z)V
    .locals 4
    .param p1, "concat"    # Z

    .prologue
    .line 134
    new-instance v0, Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;

    iget-object v1, p0, Lcom/codeglue/terraria/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;

    invoke-virtual {v1}, Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;->getNameType()Lcom/codeglue/terraria/codec/language/bm/NameType;

    move-result-object v1

    iget-object v2, p0, Lcom/codeglue/terraria/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;

    invoke-virtual {v2}, Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;->getRuleType()Lcom/codeglue/terraria/codec/language/bm/RuleType;

    move-result-object v2

    iget-object v3, p0, Lcom/codeglue/terraria/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;

    invoke-virtual {v3}, Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;->getMaxPhonemes()I

    move-result v3

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;-><init>(Lcom/codeglue/terraria/codec/language/bm/NameType;Lcom/codeglue/terraria/codec/language/bm/RuleType;ZI)V

    iput-object v0, p0, Lcom/codeglue/terraria/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;

    .line 138
    return-void
.end method

.method public setMaxPhonemes(I)V
    .locals 4
    .param p1, "maxPhonemes"    # I

    .prologue
    .line 175
    new-instance v0, Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;

    iget-object v1, p0, Lcom/codeglue/terraria/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;

    invoke-virtual {v1}, Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;->getNameType()Lcom/codeglue/terraria/codec/language/bm/NameType;

    move-result-object v1

    iget-object v2, p0, Lcom/codeglue/terraria/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;

    invoke-virtual {v2}, Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;->getRuleType()Lcom/codeglue/terraria/codec/language/bm/RuleType;

    move-result-object v2

    iget-object v3, p0, Lcom/codeglue/terraria/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;

    invoke-virtual {v3}, Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;->isConcat()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;-><init>(Lcom/codeglue/terraria/codec/language/bm/NameType;Lcom/codeglue/terraria/codec/language/bm/RuleType;ZI)V

    iput-object v0, p0, Lcom/codeglue/terraria/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;

    .line 179
    return-void
.end method

.method public setNameType(Lcom/codeglue/terraria/codec/language/bm/NameType;)V
    .locals 4
    .param p1, "nameType"    # Lcom/codeglue/terraria/codec/language/bm/NameType;

    .prologue
    .line 148
    new-instance v0, Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;

    iget-object v1, p0, Lcom/codeglue/terraria/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;

    invoke-virtual {v1}, Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;->getRuleType()Lcom/codeglue/terraria/codec/language/bm/RuleType;

    move-result-object v1

    iget-object v2, p0, Lcom/codeglue/terraria/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;

    invoke-virtual {v2}, Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;->isConcat()Z

    move-result v2

    iget-object v3, p0, Lcom/codeglue/terraria/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;

    invoke-virtual {v3}, Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;->getMaxPhonemes()I

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;-><init>(Lcom/codeglue/terraria/codec/language/bm/NameType;Lcom/codeglue/terraria/codec/language/bm/RuleType;ZI)V

    iput-object v0, p0, Lcom/codeglue/terraria/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;

    .line 152
    return-void
.end method

.method public setRuleType(Lcom/codeglue/terraria/codec/language/bm/RuleType;)V
    .locals 4
    .param p1, "ruleType"    # Lcom/codeglue/terraria/codec/language/bm/RuleType;

    .prologue
    .line 161
    new-instance v0, Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;

    iget-object v1, p0, Lcom/codeglue/terraria/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;

    invoke-virtual {v1}, Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;->getNameType()Lcom/codeglue/terraria/codec/language/bm/NameType;

    move-result-object v1

    iget-object v2, p0, Lcom/codeglue/terraria/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;

    invoke-virtual {v2}, Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;->isConcat()Z

    move-result v2

    iget-object v3, p0, Lcom/codeglue/terraria/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;

    invoke-virtual {v3}, Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;->getMaxPhonemes()I

    move-result v3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;-><init>(Lcom/codeglue/terraria/codec/language/bm/NameType;Lcom/codeglue/terraria/codec/language/bm/RuleType;ZI)V

    iput-object v0, p0, Lcom/codeglue/terraria/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/codeglue/terraria/codec/language/bm/PhoneticEngine;

    .line 165
    return-void
.end method
