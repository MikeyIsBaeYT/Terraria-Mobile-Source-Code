.class Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;
.super Ljava/lang/Object;
.source "BlockingBinaryEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlockedValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public items:I

.field public itemsLeftToWrite:J

.field public lastFullItem:I

.field public start:I

.field public state:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

.field public type:Lcom/flurry/org/apache/avro/Schema$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->type:Lcom/flurry/org/apache/avro/Schema$Type;

    .line 125
    sget-object v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->ROOT:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    iput-object v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->lastFullItem:I

    iput v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->start:I

    .line 127
    const/4 v0, 0x1

    iput v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->items:I

    .line 128
    return-void
.end method


# virtual methods
.method public check(Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;I)Z
    .locals 3
    .param p1, "prev"    # Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;
    .param p2, "pos"    # I

    .prologue
    const/4 v2, 0x1

    .line 135
    sget-boolean v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    sget-object v1, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->ROOT:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->type:Lcom/flurry/org/apache/avro/Schema$Type;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 136
    :cond_0
    sget-boolean v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    sget-object v1, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->ROOT:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->type:Lcom/flurry/org/apache/avro/Schema$Type;

    sget-object v1, Lcom/flurry/org/apache/avro/Schema$Type;->ARRAY:Lcom/flurry/org/apache/avro/Schema$Type;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->type:Lcom/flurry/org/apache/avro/Schema$Type;

    sget-object v1, Lcom/flurry/org/apache/avro/Schema$Type;->MAP:Lcom/flurry/org/apache/avro/Schema$Type;

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 139
    :cond_1
    sget-boolean v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->items:I

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 140
    :cond_2
    sget-boolean v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->items:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->start:I

    if-eq v0, p2, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 141
    :cond_3
    sget-boolean v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->items:I

    if-lt v2, v0, :cond_4

    iget v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->start:I

    iget v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->lastFullItem:I

    if-eq v0, v1, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 142
    :cond_4
    sget-boolean v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->items:I

    if-le v0, v2, :cond_5

    iget v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->start:I

    iget v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->lastFullItem:I

    if-le v0, v1, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 143
    :cond_5
    sget-boolean v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->lastFullItem:I

    if-le v0, p2, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 145
    :cond_6
    sget-object v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$1;->$SwitchMap$org$apache$avro$io$BlockingBinaryEncoder$BlockedValue$State:[I

    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 161
    :cond_7
    const/4 v0, 0x0

    return v0

    .line 147
    :pswitch_0
    sget-boolean v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->$assertionsDisabled:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->start:I

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 148
    :cond_8
    sget-boolean v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->$assertionsDisabled:Z

    if-nez v0, :cond_7

    if-eqz p1, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 151
    :pswitch_1
    sget-boolean v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->$assertionsDisabled:Z

    if-nez v0, :cond_9

    iget v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->start:I

    if-gez v0, :cond_9

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 152
    :cond_9
    sget-boolean v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->$assertionsDisabled:Z

    if-nez v0, :cond_a

    iget v0, p1, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->lastFullItem:I

    iget v1, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->start:I

    if-le v0, v1, :cond_a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 153
    :cond_a
    sget-boolean v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->$assertionsDisabled:Z

    if-nez v0, :cond_7

    iget v0, p1, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->items:I

    if-le v2, v0, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 156
    :pswitch_2
    sget-boolean v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->$assertionsDisabled:Z

    if-nez v0, :cond_b

    iget v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->start:I

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 157
    :cond_b
    sget-boolean v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    iget v0, p0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->items:I

    if-eq v0, v2, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 158
    :cond_c
    sget-boolean v0, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->$assertionsDisabled:Z

    if-nez v0, :cond_7

    iget-object v0, p1, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    sget-object v1, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->ROOT:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    if-eq v0, v1, :cond_7

    iget-object v0, p1, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    sget-object v1, Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->OVERFLOW:Lcom/flurry/org/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    if-eq v0, v1, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
