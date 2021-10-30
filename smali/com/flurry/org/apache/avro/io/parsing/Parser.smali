.class public Lcom/flurry/org/apache/avro/io/parsing/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/apache/avro/io/parsing/Parser$ActionHandler;
    }
.end annotation


# instance fields
.field protected pos:I

.field protected stack:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

.field protected final symbolHandler:Lcom/flurry/org/apache/avro/io/parsing/Parser$ActionHandler;


# direct methods
.method public constructor <init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol;Lcom/flurry/org/apache/avro/io/parsing/Parser$ActionHandler;)V
    .locals 2
    .param p1, "root"    # Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .param p2, "symbolHandler"    # Lcom/flurry/org/apache/avro/io/parsing/Parser$ActionHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->symbolHandler:Lcom/flurry/org/apache/avro/io/parsing/Parser$ActionHandler;

    .line 57
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    iput-object v0, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->stack:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 58
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->stack:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->pos:I

    .line 60
    return-void
.end method

.method private expandStack()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 67
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->stack:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    array-length v1, v1

    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->stack:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    array-length v2, v2

    const/16 v3, 0x400

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v1, v2

    new-array v0, v1, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 68
    .local v0, "newStack":[Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->stack:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->stack:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    array-length v2, v2

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    iput-object v0, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->stack:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 70
    return-void
.end method


# virtual methods
.method public final advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 6
    .param p1, "input"    # Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->stack:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    iget v4, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->pos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->pos:I

    aget-object v2, v3, v4

    .line 85
    .local v2, "top":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    if-ne v2, p1, :cond_1

    .line 101
    .end local v2    # "top":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    :goto_1
    return-object v2

    .line 89
    .restart local v2    # "top":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    :cond_1
    iget-object v0, v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->kind:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    .line 90
    .local v0, "k":Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;
    sget-object v3, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;->IMPLICIT_ACTION:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    if-ne v0, v3, :cond_2

    .line 91
    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->symbolHandler:Lcom/flurry/org/apache/avro/io/parsing/Parser$ActionHandler;

    invoke-interface {v3, p1, v2}, Lcom/flurry/org/apache/avro/io/parsing/Parser$ActionHandler;->doAction(Lcom/flurry/org/apache/avro/io/parsing/Symbol;Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v1

    .line 92
    .local v1, "result":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 93
    goto :goto_1

    .line 95
    .end local v1    # "result":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    :cond_2
    sget-object v3, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;->TERMINAL:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    if-ne v0, v3, :cond_3

    .line 96
    new-instance v3, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt to process a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " when a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was expected."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 99
    :cond_3
    sget-object v3, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;->REPEATER:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    if-ne v0, v3, :cond_4

    move-object v3, v2

    check-cast v3, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Repeater;

    iget-object v3, v3, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Repeater;->end:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-ne p1, v3, :cond_4

    move-object v2, p1

    .line 101
    goto :goto_1

    .line 103
    :cond_4
    invoke-virtual {p0, v2}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->pushProduction(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    goto :goto_0
.end method

.method public depth()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->pos:I

    return v0
.end method

.method public popSymbol()Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->stack:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    iget v1, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->pos:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final processImplicitActions()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    :goto_0
    iget v1, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->pos:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 116
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->stack:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    iget v2, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->pos:I

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    .line 117
    .local v0, "top":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    iget-object v1, v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->kind:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    sget-object v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;->IMPLICIT_ACTION:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    if-ne v1, v2, :cond_0

    .line 118
    iget v1, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->pos:I

    .line 119
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->symbolHandler:Lcom/flurry/org/apache/avro/io/parsing/Parser$ActionHandler;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/flurry/org/apache/avro/io/parsing/Parser$ActionHandler;->doAction(Lcom/flurry/org/apache/avro/io/parsing/Symbol;Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    goto :goto_0

    .line 120
    :cond_0
    iget-object v1, v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->kind:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    sget-object v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;->TERMINAL:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    if-eq v1, v2, :cond_1

    .line 121
    iget v1, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->pos:I

    .line 122
    invoke-virtual {p0, v0}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->pushProduction(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    goto :goto_0

    .line 127
    .end local v0    # "top":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    :cond_1
    return-void
.end method

.method public final processTrailingImplicitActions()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    :goto_0
    iget v1, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->pos:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 134
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->stack:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    iget v2, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->pos:I

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    .line 135
    .local v0, "top":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    iget-object v1, v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->kind:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    sget-object v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;->IMPLICIT_ACTION:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    if-ne v1, v2, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ImplicitAction;

    iget-boolean v1, v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ImplicitAction;->isTrailing:Z

    if-eqz v1, :cond_0

    .line 137
    iget v1, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->pos:I

    .line 138
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->symbolHandler:Lcom/flurry/org/apache/avro/io/parsing/Parser$ActionHandler;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/flurry/org/apache/avro/io/parsing/Parser$ActionHandler;->doAction(Lcom/flurry/org/apache/avro/io/parsing/Symbol;Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    goto :goto_0

    .line 143
    .end local v0    # "top":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    :cond_0
    return-void
.end method

.method public final pushProduction(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V
    .locals 5
    .param p1, "sym"    # Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .prologue
    .line 152
    iget-object v0, p1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->production:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 153
    .local v0, "p":[Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    :goto_0
    iget v1, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->pos:I

    array-length v2, v0

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->stack:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->expandStack()V

    goto :goto_0

    .line 156
    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->stack:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    iget v3, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->pos:I

    array-length v4, v0

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    iget v1, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->pos:I

    array-length v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->pos:I

    .line 158
    return-void
.end method

.method public pushSymbol(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V
    .locals 3
    .param p1, "sym"    # Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .prologue
    .line 178
    iget v0, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->pos:I

    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->stack:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/parsing/Parser;->expandStack()V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->stack:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    iget v1, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->pos:I

    aput-object p1, v0, v1

    .line 182
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x1

    iput v0, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->pos:I

    .line 193
    return-void
.end method

.method public topSymbol()Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->stack:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    iget v1, p0, Lcom/flurry/org/apache/avro/io/parsing/Parser;->pos:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method
