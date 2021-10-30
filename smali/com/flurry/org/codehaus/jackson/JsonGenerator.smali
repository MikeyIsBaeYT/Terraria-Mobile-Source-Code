.class public abstract Lcom/flurry/org/codehaus/jackson/JsonGenerator;
.super Ljava/lang/Object;
.source "JsonGenerator.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Lcom/flurry/org/codehaus/jackson/Versioned;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;
    }
.end annotation


# instance fields
.field protected _cfgPrettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canUseSchema(Lcom/flurry/org/codehaus/jackson/FormatSchema;)Z
    .locals 1
    .param p1, "schema"    # Lcom/flurry/org/codehaus/jackson/FormatSchema;

    .prologue
    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public configure(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;Z)Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .locals 0
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 287
    if-eqz p2, :cond_0

    .line 288
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->enable(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    .line 292
    :goto_0
    return-object p0

    .line 290
    :cond_0
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->disable(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    goto :goto_0
.end method

.method public abstract copyCurrentEvent(Lcom/flurry/org/codehaus/jackson/JsonParser;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract copyCurrentStructure(Lcom/flurry/org/codehaus/jackson/JsonParser;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract disable(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;
.end method

.method public disableFeature(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;)V
    .locals 0
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->disable(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    return-void
.end method

.method public abstract enable(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;
.end method

.method public enableFeature(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;)V
    .locals 0
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 324
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->enable(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    return-void
.end method

.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getCharacterEscapes()Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getCodec()Lcom/flurry/org/codehaus/jackson/ObjectCodec;
.end method

.method public getHighestEscapedChar()I
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getOutputContext()Lcom/flurry/org/codehaus/jackson/JsonStreamContext;
.end method

.method public getOutputTarget()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract isClosed()Z
.end method

.method public abstract isEnabled(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;)Z
.end method

.method public isFeatureEnabled(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;)Z
    .locals 1
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 339
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    return v0
.end method

.method public setCharacterEscapes(Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .locals 0
    .param p1, "esc"    # Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;

    .prologue
    .line 431
    return-object p0
.end method

.method public abstract setCodec(Lcom/flurry/org/codehaus/jackson/ObjectCodec;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;
.end method

.method public setFeature(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;Z)V
    .locals 0
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;
    .param p2, "state"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 334
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->configure(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;Z)Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    return-void
.end method

.method public setHighestNonEscapedChar(I)Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .locals 0
    .param p1, "charCode"    # I

    .prologue
    .line 396
    return-object p0
.end method

.method public setPrettyPrinter(Lcom/flurry/org/codehaus/jackson/PrettyPrinter;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .locals 0
    .param p1, "pp"    # Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/flurry/org/codehaus/jackson/PrettyPrinter;

    .line 360
    return-object p0
.end method

.method public setSchema(Lcom/flurry/org/codehaus/jackson/FormatSchema;)V
    .locals 3
    .param p1, "schema"    # Lcom/flurry/org/codehaus/jackson/FormatSchema;

    .prologue
    .line 204
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generator of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support schema of type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/flurry/org/codehaus/jackson/FormatSchema;->getSchemaType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract useDefaultPrettyPrinter()Lcom/flurry/org/codehaus/jackson/JsonGenerator;
.end method

.method public version()Lcom/flurry/org/codehaus/jackson/Version;
    .locals 1

    .prologue
    .line 227
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/Version;->unknownVersion()Lcom/flurry/org/codehaus/jackson/Version;

    move-result-object v0

    return-object v0
.end method

.method public final writeArrayFieldStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1053
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStartArray()V

    .line 1055
    return-void
.end method

.method public abstract writeBinary(Lcom/flurry/org/codehaus/jackson/Base64Variant;[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public writeBinary([B)V
    .locals 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 752
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/Base64Variants;->getDefaultVariant()Lcom/flurry/org/codehaus/jackson/Base64Variant;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeBinary(Lcom/flurry/org/codehaus/jackson/Base64Variant;[BII)V

    .line 753
    return-void
.end method

.method public writeBinary([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 740
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/Base64Variants;->getDefaultVariant()Lcom/flurry/org/codehaus/jackson/Base64Variant;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeBinary(Lcom/flurry/org/codehaus/jackson/Base64Variant;[BII)V

    .line 741
    return-void
.end method

.method public final writeBinaryField(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1033
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 1034
    invoke-virtual {p0, p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeBinary([B)V

    .line 1035
    return-void
.end method

.method public abstract writeBoolean(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public final writeBooleanField(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 927
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 928
    invoke-virtual {p0, p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeBoolean(Z)V

    .line 929
    return-void
.end method

.method public abstract writeEndArray()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeEndObject()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public writeFieldName(Lcom/flurry/org/codehaus/jackson/SerializableString;)V
    .locals 1
    .param p1, "name"    # Lcom/flurry/org/codehaus/jackson/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 535
    invoke-interface {p1}, Lcom/flurry/org/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 536
    return-void
.end method

.method public writeFieldName(Lcom/flurry/org/codehaus/jackson/io/SerializedString;)V
    .locals 1
    .param p1, "name"    # Lcom/flurry/org/codehaus/jackson/io/SerializedString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 516
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/io/SerializedString;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method public abstract writeFieldName(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeNull()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public final writeNullField(Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 942
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 943
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeNull()V

    .line 944
    return-void
.end method

.method public abstract writeNumber(D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeNumber(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeNumber(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeNumber(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeNumber(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public abstract writeNumber(Ljava/math/BigDecimal;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeNumber(Ljava/math/BigInteger;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public final writeNumberField(Ljava/lang/String;D)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 986
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 987
    invoke-virtual {p0, p2, p3}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeNumber(D)V

    .line 988
    return-void
.end method

.method public final writeNumberField(Ljava/lang/String;F)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1001
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 1002
    invoke-virtual {p0, p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeNumber(F)V

    .line 1003
    return-void
.end method

.method public final writeNumberField(Ljava/lang/String;I)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 956
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 957
    invoke-virtual {p0, p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeNumber(I)V

    .line 958
    return-void
.end method

.method public final writeNumberField(Ljava/lang/String;J)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 971
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 972
    invoke-virtual {p0, p2, p3}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeNumber(J)V

    .line 973
    return-void
.end method

.method public final writeNumberField(Ljava/lang/String;Ljava/math/BigDecimal;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1017
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 1018
    invoke-virtual {p0, p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeNumber(Ljava/math/BigDecimal;)V

    .line 1019
    return-void
.end method

.method public abstract writeObject(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public final writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "pojo"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 1089
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 1090
    invoke-virtual {p0, p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeObject(Ljava/lang/Object;)V

    .line 1091
    return-void
.end method

.method public final writeObjectFieldStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1073
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 1075
    return-void
.end method

.method public abstract writeRaw(C)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeRaw(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeRaw(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeRaw([CII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeRawUTF8String([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeRawValue(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeRawValue(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeRawValue([CII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeStartArray()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeStartObject()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public writeString(Lcom/flurry/org/codehaus/jackson/SerializableString;)V
    .locals 1
    .param p1, "text"    # Lcom/flurry/org/codehaus/jackson/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 579
    invoke-interface {p1}, Lcom/flurry/org/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 580
    return-void
.end method

.method public abstract writeString(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeString([CII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public writeStringField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 912
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 913
    invoke-virtual {p0, p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 914
    return-void
.end method

.method public abstract writeTree(Lcom/flurry/org/codehaus/jackson/JsonNode;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract writeUTF8String([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method
