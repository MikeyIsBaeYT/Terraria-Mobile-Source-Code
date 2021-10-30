.class public Lcom/flurry/org/codehaus/jackson/util/MinimalPrettyPrinter;
.super Ljava/lang/Object;
.source "MinimalPrettyPrinter.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/PrettyPrinter;


# static fields
.field public static final DEFAULT_ROOT_VALUE_SEPARATOR:Ljava/lang/String; = " "


# instance fields
.field protected _rootValueSeparator:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, " "

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/util/MinimalPrettyPrinter;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "rootValueSeparator"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, " "

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/MinimalPrettyPrinter;->_rootValueSeparator:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/util/MinimalPrettyPrinter;->_rootValueSeparator:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public beforeArrayValues(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
    .locals 0
    .param p1, "jg"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 130
    return-void
.end method

.method public beforeObjectEntries(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
    .locals 0
    .param p1, "jg"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 81
    return-void
.end method

.method public setRootValueSeparator(Ljava/lang/String;)V
    .locals 0
    .param p1, "sep"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/util/MinimalPrettyPrinter;->_rootValueSeparator:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public writeArrayValueSeparator(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .param p1, "jg"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 143
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 144
    return-void
.end method

.method public writeEndArray(Lcom/flurry/org/codehaus/jackson/JsonGenerator;I)V
    .locals 1
    .param p1, "jg"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p2, "nrOfValues"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 150
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 151
    return-void
.end method

.method public writeEndObject(Lcom/flurry/org/codehaus/jackson/JsonGenerator;I)V
    .locals 1
    .param p1, "jg"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p2, "nrOfEntries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 115
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 116
    return-void
.end method

.method public writeObjectEntrySeparator(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .param p1, "jg"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 108
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 109
    return-void
.end method

.method public writeObjectFieldValueSeparator(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .param p1, "jg"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 94
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 95
    return-void
.end method

.method public writeRootValueSeparator(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .param p1, "jg"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/MinimalPrettyPrinter;->_rootValueSeparator:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/MinimalPrettyPrinter;->_rootValueSeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeRaw(Ljava/lang/String;)V

    .line 67
    :cond_0
    return-void
.end method

.method public writeStartArray(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .param p1, "jg"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 122
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 123
    return-void
.end method

.method public writeStartObject(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .param p1, "jg"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 73
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 74
    return-void
.end method
