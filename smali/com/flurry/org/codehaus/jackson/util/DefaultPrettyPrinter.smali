.class public Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter;
.super Ljava/lang/Object;
.source "DefaultPrettyPrinter.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/PrettyPrinter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter$Lf2SpacesIndenter;,
        Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter$FixedSpaceIndenter;,
        Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter$NopIndenter;
    }
.end annotation


# instance fields
.field protected _arrayIndenter:Lcom/flurry/org/codehaus/jackson/impl/Indenter;

.field protected _nesting:I

.field protected _objectIndenter:Lcom/flurry/org/codehaus/jackson/impl/Indenter;

.field protected _spacesInObjectEntries:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter$FixedSpaceIndenter;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter$FixedSpaceIndenter;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter;->_arrayIndenter:Lcom/flurry/org/codehaus/jackson/impl/Indenter;

    .line 32
    new-instance v0, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter$Lf2SpacesIndenter;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter$Lf2SpacesIndenter;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/flurry/org/codehaus/jackson/impl/Indenter;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter;->_spacesInObjectEntries:Z

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    .line 57
    return-void
.end method


# virtual methods
.method public beforeArrayValues(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .param p1, "jg"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter;->_arrayIndenter:Lcom/flurry/org/codehaus/jackson/impl/Indenter;

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    invoke-interface {v0, p1, v1}, Lcom/flurry/org/codehaus/jackson/impl/Indenter;->writeIndentation(Lcom/flurry/org/codehaus/jackson/JsonGenerator;I)V

    .line 168
    return-void
.end method

.method public beforeObjectEntries(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .param p1, "jg"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/flurry/org/codehaus/jackson/impl/Indenter;

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    invoke-interface {v0, p1, v1}, Lcom/flurry/org/codehaus/jackson/impl/Indenter;->writeIndentation(Lcom/flurry/org/codehaus/jackson/JsonGenerator;I)V

    .line 99
    return-void
.end method

.method public indentArraysWith(Lcom/flurry/org/codehaus/jackson/impl/Indenter;)V
    .locals 0
    .param p1, "i"    # Lcom/flurry/org/codehaus/jackson/impl/Indenter;

    .prologue
    .line 61
    if-nez p1, :cond_0

    new-instance p1, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter$NopIndenter;

    .end local p1    # "i":Lcom/flurry/org/codehaus/jackson/impl/Indenter;
    invoke-direct {p1}, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter$NopIndenter;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter;->_arrayIndenter:Lcom/flurry/org/codehaus/jackson/impl/Indenter;

    .line 62
    return-void
.end method

.method public indentObjectsWith(Lcom/flurry/org/codehaus/jackson/impl/Indenter;)V
    .locals 0
    .param p1, "i"    # Lcom/flurry/org/codehaus/jackson/impl/Indenter;

    .prologue
    .line 66
    if-nez p1, :cond_0

    new-instance p1, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter$NopIndenter;

    .end local p1    # "i":Lcom/flurry/org/codehaus/jackson/impl/Indenter;
    invoke-direct {p1}, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter$NopIndenter;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/flurry/org/codehaus/jackson/impl/Indenter;

    .line 67
    return-void
.end method

.method public spacesInObjectEntries(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter;->_spacesInObjectEntries:Z

    return-void
.end method

.method public writeArrayValueSeparator(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .param p1, "jg"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 183
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 184
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter;->_arrayIndenter:Lcom/flurry/org/codehaus/jackson/impl/Indenter;

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    invoke-interface {v0, p1, v1}, Lcom/flurry/org/codehaus/jackson/impl/Indenter;->writeIndentation(Lcom/flurry/org/codehaus/jackson/JsonGenerator;I)V

    .line 185
    return-void
.end method

.method public writeEndArray(Lcom/flurry/org/codehaus/jackson/JsonGenerator;I)V
    .locals 2
    .param p1, "jg"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p2, "nrOfValues"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter;->_arrayIndenter:Lcom/flurry/org/codehaus/jackson/impl/Indenter;

    invoke-interface {v0}, Lcom/flurry/org/codehaus/jackson/impl/Indenter;->isInline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    .line 194
    :cond_0
    if-lez p2, :cond_1

    .line 195
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter;->_arrayIndenter:Lcom/flurry/org/codehaus/jackson/impl/Indenter;

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    invoke-interface {v0, p1, v1}, Lcom/flurry/org/codehaus/jackson/impl/Indenter;->writeIndentation(Lcom/flurry/org/codehaus/jackson/JsonGenerator;I)V

    .line 199
    :goto_0
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 200
    return-void

    .line 197
    :cond_1
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    goto :goto_0
.end method

.method public writeEndObject(Lcom/flurry/org/codehaus/jackson/JsonGenerator;I)V
    .locals 2
    .param p1, "jg"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .param p2, "nrOfEntries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/flurry/org/codehaus/jackson/impl/Indenter;

    invoke-interface {v0}, Lcom/flurry/org/codehaus/jackson/impl/Indenter;->isInline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    .line 145
    :cond_0
    if-lez p2, :cond_1

    .line 146
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/flurry/org/codehaus/jackson/impl/Indenter;

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    invoke-interface {v0, p1, v1}, Lcom/flurry/org/codehaus/jackson/impl/Indenter;->writeIndentation(Lcom/flurry/org/codehaus/jackson/JsonGenerator;I)V

    .line 150
    :goto_0
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 151
    return-void

    .line 148
    :cond_1
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    goto :goto_0
.end method

.method public writeObjectEntrySeparator(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .param p1, "jg"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 134
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 135
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/flurry/org/codehaus/jackson/impl/Indenter;

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    invoke-interface {v0, p1, v1}, Lcom/flurry/org/codehaus/jackson/impl/Indenter;->writeIndentation(Lcom/flurry/org/codehaus/jackson/JsonGenerator;I)V

    .line 136
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
    .line 114
    iget-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter;->_spacesInObjectEntries:Z

    if-eqz v0, :cond_0

    .line 115
    const-string v0, " : "

    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeRaw(Ljava/lang/String;)V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    goto :goto_0
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
    .line 81
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 82
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
    .line 157
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter;->_arrayIndenter:Lcom/flurry/org/codehaus/jackson/impl/Indenter;

    invoke-interface {v0}, Lcom/flurry/org/codehaus/jackson/impl/Indenter;->isInline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    .line 160
    :cond_0
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 161
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
    .line 88
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 89
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/flurry/org/codehaus/jackson/impl/Indenter;

    invoke-interface {v0}, Lcom/flurry/org/codehaus/jackson/impl/Indenter;->isInline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    .line 92
    :cond_0
    return-void
.end method
