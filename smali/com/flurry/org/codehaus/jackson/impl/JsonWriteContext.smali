.class public Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;
.super Lcom/flurry/org/codehaus/jackson/JsonStreamContext;
.source "JsonWriteContext.java"


# static fields
.field public static final STATUS_EXPECT_NAME:I = 0x5

.field public static final STATUS_EXPECT_VALUE:I = 0x4

.field public static final STATUS_OK_AFTER_COLON:I = 0x2

.field public static final STATUS_OK_AFTER_COMMA:I = 0x1

.field public static final STATUS_OK_AFTER_SPACE:I = 0x3

.field public static final STATUS_OK_AS_IS:I


# instance fields
.field protected _child:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

.field protected _currentName:Ljava/lang/String;

.field protected final _parent:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;


# direct methods
.method protected constructor <init>(ILcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "parent"    # Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/JsonStreamContext;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->_child:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    .line 49
    iput p1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->_type:I

    .line 50
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->_parent:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->_index:I

    .line 52
    return-void
.end method

.method public static createRootContext()Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;
    .locals 3

    .prologue
    .line 58
    new-instance v0, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;-><init>(ILcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;)V

    return-object v0
.end method

.method private final reset(I)Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->_type:I

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->_index:I

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->_currentName:Ljava/lang/String;

    .line 65
    return-object p0
.end method


# virtual methods
.method protected final appendDesc(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v2, 0x22

    .line 144
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 145
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->_currentName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->_currentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    :goto_0
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    :goto_1
    return-void

    .line 152
    :cond_0
    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 155
    :cond_1
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->_type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 156
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->getCurrentIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 161
    :cond_2
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public final createChildArrayContext()Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 70
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->_child:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    .line 71
    .local v0, "ctxt":Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;
    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    .end local v0    # "ctxt":Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;
    invoke-direct {v0, v1, p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;-><init>(ILcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;)V

    .restart local v0    # "ctxt":Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->_child:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    move-object v1, v0

    .line 75
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {v0, v1}, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->reset(I)Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v1

    goto :goto_0
.end method

.method public final createChildObjectContext()Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 80
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->_child:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    .line 81
    .local v0, "ctxt":Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;
    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    .end local v0    # "ctxt":Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;
    invoke-direct {v0, v1, p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;-><init>(ILcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;)V

    .restart local v0    # "ctxt":Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->_child:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    move-object v1, v0

    .line 85
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {v0, v1}, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->reset(I)Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v1

    goto :goto_0
.end method

.method public final getCurrentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->_currentName:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getParent()Lcom/flurry/org/codehaus/jackson/JsonStreamContext;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->getParent()Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    return-object v0
.end method

.method public final getParent()Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->_parent:Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 175
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->appendDesc(Ljava/lang/StringBuilder;)V

    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeFieldName(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x4

    .line 105
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->_type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 106
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->_currentName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->_currentName:Ljava/lang/String;

    .line 110
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->_index:I

    if-gez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final writeValue()I
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 118
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->_type:I

    if-ne v4, v3, :cond_2

    .line 119
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->_currentName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 120
    const/4 v1, 0x5

    .line 137
    :cond_0
    :goto_0
    return v1

    .line 122
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->_currentName:Ljava/lang/String;

    .line 123
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->_index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->_index:I

    move v1, v3

    .line 124
    goto :goto_0

    .line 128
    :cond_2
    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->_type:I

    if-ne v3, v2, :cond_3

    .line 129
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->_index:I

    .line 130
    .local v0, "ix":I
    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->_index:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->_index:I

    .line 131
    if-ltz v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 136
    .end local v0    # "ix":I
    :cond_3
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->_index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->_index:I

    .line 137
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/JsonWriteContext;->_index:I

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0
.end method
