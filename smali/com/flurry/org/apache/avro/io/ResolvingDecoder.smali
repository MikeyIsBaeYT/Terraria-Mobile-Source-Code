.class public Lcom/flurry/org/apache/avro/io/ResolvingDecoder;
.super Lcom/flurry/org/apache/avro/io/ValidatingDecoder;
.source "ResolvingDecoder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private backup:Lcom/flurry/org/apache/avro/io/Decoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/Decoder;)V
    .locals 1
    .param p1, "writer"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "reader"    # Lcom/flurry/org/apache/avro/Schema;
    .param p3, "in"    # Lcom/flurry/org/apache/avro/io/Decoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {p1, p2}, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->resolve(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;-><init>(Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Decoder;)V

    .line 47
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Decoder;)V
    .locals 0
    .param p1, "resolver"    # Ljava/lang/Object;
    .param p2, "in"    # Lcom/flurry/org/apache/avro/io/Decoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    check-cast p1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .end local p1    # "resolver":Ljava/lang/Object;
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/apache/avro/io/ValidatingDecoder;-><init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol;Lcom/flurry/org/apache/avro/io/Decoder;)V

    .line 60
    return-void
.end method

.method public static resolve(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;
    .locals 2
    .param p0, "writer"    # Lcom/flurry/org/apache/avro/Schema;
    .param p1, "reader"    # Lcom/flurry/org/apache/avro/Schema;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    if-nez p0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "writer cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    if-nez p1, :cond_1

    .line 80
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "reader cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->generate(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public doAction(Lcom/flurry/org/apache/avro/io/parsing/Symbol;Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 7
    .param p1, "input"    # Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .param p2, "top"    # Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 214
    instance-of v5, p2, Lcom/flurry/org/apache/avro/io/parsing/Symbol$FieldOrderAction;

    if-eqz v5, :cond_1

    .line 215
    sget-object v5, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->FIELD_ACTION:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-ne p1, v5, :cond_0

    .line 242
    .end local p2    # "top":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    :goto_0
    return-object p2

    .restart local p2    # "top":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    :cond_0
    move-object p2, v4

    .line 215
    goto :goto_0

    .line 216
    :cond_1
    instance-of v5, p2, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ResolvingAction;

    if-eqz v5, :cond_3

    move-object v3, p2

    .line 217
    check-cast v3, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ResolvingAction;

    .line 218
    .local v3, "t":Lcom/flurry/org/apache/avro/io/parsing/Symbol$ResolvingAction;
    iget-object v4, v3, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ResolvingAction;->reader:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-eq v4, p1, :cond_2

    .line 219
    new-instance v4, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ResolvingAction;->reader:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " while looking for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 222
    :cond_2
    iget-object p2, v3, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ResolvingAction;->writer:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    goto :goto_0

    .line 224
    .end local v3    # "t":Lcom/flurry/org/apache/avro/io/parsing/Symbol$ResolvingAction;
    :cond_3
    instance-of v5, p2, Lcom/flurry/org/apache/avro/io/parsing/Symbol$SkipAction;

    if-eqz v5, :cond_4

    .line 225
    check-cast p2, Lcom/flurry/org/apache/avro/io/parsing/Symbol$SkipAction;

    .end local p2    # "top":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    iget-object v2, p2, Lcom/flurry/org/apache/avro/io/parsing/Symbol$SkipAction;->symToSkip:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 226
    .local v2, "symToSkip":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    iget-object v5, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v5, v2}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->skipSymbol(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .end local v2    # "symToSkip":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    :goto_1
    move-object p2, v4

    .line 242
    goto :goto_0

    .line 227
    .restart local p2    # "top":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    :cond_4
    instance-of v5, p2, Lcom/flurry/org/apache/avro/io/parsing/Symbol$WriterUnionAction;

    if-eqz v5, :cond_5

    .line 228
    iget-object v5, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v5}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->popSymbol()Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;

    .line 229
    .local v0, "branches":Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;
    iget-object v5, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    iget-object v6, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    invoke-virtual {v6}, Lcom/flurry/org/apache/avro/io/Decoder;->readIndex()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;->getSymbol(I)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->pushSymbol(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    goto :goto_1

    .line 230
    .end local v0    # "branches":Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;
    :cond_5
    instance-of v5, p2, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ErrorAction;

    if-eqz v5, :cond_6

    .line 231
    new-instance v4, Lcom/flurry/org/apache/avro/AvroTypeException;

    check-cast p2, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ErrorAction;

    .end local p2    # "top":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    iget-object v5, p2, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ErrorAction;->msg:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 232
    .restart local p2    # "top":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    :cond_6
    instance-of v5, p2, Lcom/flurry/org/apache/avro/io/parsing/Symbol$DefaultStartAction;

    if-eqz v5, :cond_7

    move-object v1, p2

    .line 233
    check-cast v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol$DefaultStartAction;

    .line 234
    .local v1, "dsa":Lcom/flurry/org/apache/avro/io/parsing/Symbol$DefaultStartAction;
    iget-object v5, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    iput-object v5, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->backup:Lcom/flurry/org/apache/avro/io/Decoder;

    .line 235
    invoke-static {}, Lcom/flurry/org/apache/avro/io/DecoderFactory;->get()Lcom/flurry/org/apache/avro/io/DecoderFactory;

    move-result-object v5

    iget-object v6, v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol$DefaultStartAction;->contents:[B

    invoke-virtual {v5, v6, v4}, Lcom/flurry/org/apache/avro/io/DecoderFactory;->binaryDecoder([BLcom/flurry/org/apache/avro/io/BinaryDecoder;)Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    move-result-object v5

    iput-object v5, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    goto :goto_1

    .line 237
    .end local v1    # "dsa":Lcom/flurry/org/apache/avro/io/parsing/Symbol$DefaultStartAction;
    :cond_7
    sget-object v5, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->DEFAULT_END_ACTION:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-ne p2, v5, :cond_8

    .line 238
    iget-object v5, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->backup:Lcom/flurry/org/apache/avro/io/Decoder;

    iput-object v5, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    goto :goto_1

    .line 240
    :cond_8
    new-instance v4, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public final drain()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->processImplicitActions()V

    .line 148
    return-void
.end method

.method public readDouble()D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    sget-object v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->DOUBLE:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v1, v2}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v0

    .line 179
    .local v0, "actual":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->INT:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/io/Decoder;->readInt()I

    move-result v1

    int-to-double v2, v1

    .line 187
    :goto_0
    return-wide v2

    .line 181
    :cond_0
    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->LONG:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/io/Decoder;->readLong()J

    move-result-wide v2

    long-to-double v2, v2

    goto :goto_0

    .line 183
    :cond_1
    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->FLOAT:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_2

    .line 184
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/io/Decoder;->readFloat()F

    move-result v1

    float-to-double v2, v1

    goto :goto_0

    .line 186
    :cond_2
    sget-boolean v1, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->DOUBLE:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-eq v0, v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 187
    :cond_3
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/io/Decoder;->readDouble()D

    move-result-wide v2

    goto :goto_0
.end method

.method public readEnum()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    sget-object v4, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ENUM:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v3, v4}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 194
    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->popSymbol()Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v2

    check-cast v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol$EnumAdjustAction;

    .line 195
    .local v2, "top":Lcom/flurry/org/apache/avro/io/parsing/Symbol$EnumAdjustAction;
    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/io/Decoder;->readEnum()I

    move-result v0

    .line 196
    .local v0, "n":I
    iget-object v3, v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol$EnumAdjustAction;->adjustments:[Ljava/lang/Object;

    aget-object v1, v3, v0

    .line 197
    .local v1, "o":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 198
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    .line 200
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_0
    new-instance v3, Lcom/flurry/org/apache/avro/AvroTypeException;

    check-cast v1, Ljava/lang/String;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-direct {v3, v1}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final readFieldOrder()[Lcom/flurry/org/apache/avro/Schema$Field;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->FIELD_ACTION:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$FieldOrderAction;

    iget-object v0, v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$FieldOrderAction;->fields:[Lcom/flurry/org/apache/avro/Schema$Field;

    return-object v0
.end method

.method public readFloat()F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    sget-object v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->FLOAT:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v1, v2}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v0

    .line 166
    .local v0, "actual":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->INT:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/io/Decoder;->readInt()I

    move-result v1

    int-to-float v1, v1

    .line 172
    :goto_0
    return v1

    .line 168
    :cond_0
    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->LONG:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/io/Decoder;->readLong()J

    move-result-wide v2

    long-to-float v1, v2

    goto :goto_0

    .line 171
    :cond_1
    sget-boolean v1, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->FLOAT:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-eq v0, v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 172
    :cond_2
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/io/Decoder;->readFloat()F

    move-result v1

    goto :goto_0
.end method

.method public readIndex()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    sget-object v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->UNION:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v1, v2}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 207
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->popSymbol()Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$UnionAdjustAction;

    .line 208
    .local v0, "top":Lcom/flurry/org/apache/avro/io/parsing/Symbol$UnionAdjustAction;
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    iget-object v2, v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$UnionAdjustAction;->symToParse:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v1, v2}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->pushSymbol(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 209
    iget v1, v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$UnionAdjustAction;->rindex:I

    return v1
.end method

.method public readLong()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    sget-object v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->LONG:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v1, v2}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->advance(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v0

    .line 153
    .local v0, "actual":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->INT:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/io/Decoder;->readInt()I

    move-result v1

    int-to-long v2, v1

    .line 159
    :goto_0
    return-wide v2

    .line 155
    :cond_0
    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->DOUBLE:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-ne v0, v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/io/Decoder;->readDouble()D

    move-result-wide v2

    double-to-long v2, v2

    goto :goto_0

    .line 158
    :cond_1
    sget-boolean v1, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->LONG:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-eq v0, v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/io/Decoder;->readLong()J

    move-result-wide v2

    goto :goto_0
.end method

.method public skipAction()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->popSymbol()Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v2

    .line 248
    .local v2, "top":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    instance-of v3, v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ResolvingAction;

    if-eqz v3, :cond_1

    .line 249
    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    check-cast v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ResolvingAction;

    .end local v2    # "top":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    iget-object v4, v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ResolvingAction;->writer:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v3, v4}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->pushSymbol(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 250
    .restart local v2    # "top":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    :cond_1
    instance-of v3, v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol$SkipAction;

    if-eqz v3, :cond_2

    .line 251
    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    check-cast v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol$SkipAction;

    .end local v2    # "top":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    iget-object v4, v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol$SkipAction;->symToSkip:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {v3, v4}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->pushSymbol(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    goto :goto_0

    .line 252
    .restart local v2    # "top":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    :cond_2
    instance-of v3, v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol$WriterUnionAction;

    if-eqz v3, :cond_3

    .line 253
    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->popSymbol()Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;

    .line 254
    .local v0, "branches":Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;
    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->parser:Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    iget-object v4, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/io/Decoder;->readIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;->getSymbol(I)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->pushSymbol(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    goto :goto_0

    .line 255
    .end local v0    # "branches":Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;
    :cond_3
    instance-of v3, v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ErrorAction;

    if-eqz v3, :cond_4

    .line 256
    new-instance v3, Lcom/flurry/org/apache/avro/AvroTypeException;

    check-cast v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ErrorAction;

    .end local v2    # "top":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    iget-object v4, v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ErrorAction;->msg:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 257
    .restart local v2    # "top":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    :cond_4
    instance-of v3, v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol$DefaultStartAction;

    if-eqz v3, :cond_5

    move-object v1, v2

    .line 258
    check-cast v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol$DefaultStartAction;

    .line 259
    .local v1, "dsa":Lcom/flurry/org/apache/avro/io/parsing/Symbol$DefaultStartAction;
    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    iput-object v3, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->backup:Lcom/flurry/org/apache/avro/io/Decoder;

    .line 260
    invoke-static {}, Lcom/flurry/org/apache/avro/io/DecoderFactory;->get()Lcom/flurry/org/apache/avro/io/DecoderFactory;

    move-result-object v3

    iget-object v4, v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol$DefaultStartAction;->contents:[B

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/flurry/org/apache/avro/io/DecoderFactory;->binaryDecoder([BLcom/flurry/org/apache/avro/io/BinaryDecoder;)Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    move-result-object v3

    iput-object v3, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    goto :goto_0

    .line 262
    .end local v1    # "dsa":Lcom/flurry/org/apache/avro/io/parsing/Symbol$DefaultStartAction;
    :cond_5
    sget-object v3, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->DEFAULT_END_ACTION:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    if-ne v2, v3, :cond_0

    .line 263
    iget-object v3, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->backup:Lcom/flurry/org/apache/avro/io/Decoder;

    iput-object v3, p0, Lcom/flurry/org/apache/avro/io/ResolvingDecoder;->in:Lcom/flurry/org/apache/avro/io/Decoder;

    goto :goto_0
.end method
