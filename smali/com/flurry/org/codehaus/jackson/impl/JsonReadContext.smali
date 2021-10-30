.class public final Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;
.super Lcom/flurry/org/codehaus/jackson/JsonStreamContext;
.source "JsonReadContext.java"


# instance fields
.field protected _child:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

.field protected _columnNr:I

.field protected _currentName:Ljava/lang/String;

.field protected _lineNr:I

.field protected final _parent:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;III)V
    .locals 1
    .param p1, "parent"    # Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;
    .param p2, "type"    # I
    .param p3, "lineNr"    # I
    .param p4, "colNr"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/JsonStreamContext;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->_child:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    .line 45
    iput p2, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->_type:I

    .line 46
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->_parent:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    .line 47
    iput p3, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->_lineNr:I

    .line 48
    iput p4, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->_columnNr:I

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->_index:I

    .line 50
    return-void
.end method

.method public static createRootContext()Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 73
    new-instance v0, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;-><init>(Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;III)V

    return-object v0
.end method

.method public static createRootContext(II)Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;
    .locals 3
    .param p0, "lineNr"    # I
    .param p1, "colNr"    # I

    .prologue
    .line 65
    new-instance v0, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;-><init>(Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;III)V

    return-object v0
.end method


# virtual methods
.method public final createChildArrayContext(II)Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;
    .locals 3
    .param p1, "lineNr"    # I
    .param p2, "colNr"    # I

    .prologue
    const/4 v2, 0x1

    .line 78
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->_child:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    .line 79
    .local v0, "ctxt":Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;
    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    .end local v0    # "ctxt":Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;
    invoke-direct {v0, p0, v2, p1, p2}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;-><init>(Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;III)V

    .restart local v0    # "ctxt":Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->_child:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-object v1, v0

    .line 84
    .end local v0    # "ctxt":Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;
    .local v1, "ctxt":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 83
    .end local v1    # "ctxt":Ljava/lang/Object;
    .restart local v0    # "ctxt":Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;
    :cond_0
    invoke-virtual {v0, v2, p1, p2}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->reset(III)V

    move-object v1, v0

    .line 84
    .restart local v1    # "ctxt":Ljava/lang/Object;
    goto :goto_0
.end method

.method public final createChildObjectContext(II)Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;
    .locals 3
    .param p1, "lineNr"    # I
    .param p2, "colNr"    # I

    .prologue
    const/4 v2, 0x2

    .line 89
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->_child:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    .line 90
    .local v0, "ctxt":Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;
    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    .end local v0    # "ctxt":Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;
    invoke-direct {v0, p0, v2, p1, p2}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;-><init>(Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;III)V

    .restart local v0    # "ctxt":Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->_child:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-object v1, v0

    .line 95
    .end local v0    # "ctxt":Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;
    .local v1, "ctxt":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 94
    .end local v1    # "ctxt":Ljava/lang/Object;
    .restart local v0    # "ctxt":Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;
    :cond_0
    invoke-virtual {v0, v2, p1, p2}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->reset(III)V

    move-object v1, v0

    .line 95
    .restart local v1    # "ctxt":Ljava/lang/Object;
    goto :goto_0
.end method

.method public final expectComma()Z
    .locals 2

    .prologue
    .line 142
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->_index:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->_index:I

    .line 143
    .local v0, "ix":I
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->_type:I

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getCurrentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->_currentName:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getParent()Lcom/flurry/org/codehaus/jackson/JsonStreamContext;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->getParent()Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    return-object v0
.end method

.method public final getParent()Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->_parent:Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;

    return-object v0
.end method

.method public final getStartLocation(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/JsonLocation;
    .locals 6
    .param p1, "srcRef"    # Ljava/lang/Object;

    .prologue
    .line 125
    const-wide/16 v2, -0x1

    .line 127
    .local v2, "totalChars":J
    new-instance v0, Lcom/flurry/org/codehaus/jackson/JsonLocation;

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->_lineNr:I

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->_columnNr:I

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method protected final reset(III)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "lineNr"    # I
    .param p3, "colNr"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->_type:I

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->_index:I

    .line 56
    iput p2, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->_lineNr:I

    .line 57
    iput p3, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->_columnNr:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->_currentName:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setCurrentName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->_currentName:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x22

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 165
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->_type:I

    packed-switch v1, :pswitch_data_0

    .line 186
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 167
    :pswitch_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 170
    :pswitch_1
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->getCurrentIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 175
    :pswitch_2
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->_currentName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonReadContext;->_currentName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    :goto_1
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 181
    :cond_0
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
