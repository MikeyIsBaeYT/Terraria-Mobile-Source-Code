.class abstract Lcom/codeglue/terraria/codec/language/ColognePhonetic$CologneBuffer;
.super Ljava/lang/Object;
.source "ColognePhonetic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codeglue/terraria/codec/language/ColognePhonetic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CologneBuffer"
.end annotation


# instance fields
.field protected final data:[C

.field protected length:I

.field final synthetic this$0:Lcom/codeglue/terraria/codec/language/ColognePhonetic;


# direct methods
.method public constructor <init>(Lcom/codeglue/terraria/codec/language/ColognePhonetic;I)V
    .locals 2
    .param p2, "buffSize"    # I

    .prologue
    const/4 v1, 0x0

    .line 211
    iput-object p1, p0, Lcom/codeglue/terraria/codec/language/ColognePhonetic$CologneBuffer;->this$0:Lcom/codeglue/terraria/codec/language/ColognePhonetic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput v1, p0, Lcom/codeglue/terraria/codec/language/ColognePhonetic$CologneBuffer;->length:I

    .line 212
    new-array v0, p2, [C

    iput-object v0, p0, Lcom/codeglue/terraria/codec/language/ColognePhonetic$CologneBuffer;->data:[C

    .line 213
    iput v1, p0, Lcom/codeglue/terraria/codec/language/ColognePhonetic$CologneBuffer;->length:I

    .line 214
    return-void
.end method

.method public constructor <init>(Lcom/codeglue/terraria/codec/language/ColognePhonetic;[C)V
    .locals 1
    .param p2, "data"    # [C

    .prologue
    .line 206
    iput-object p1, p0, Lcom/codeglue/terraria/codec/language/ColognePhonetic$CologneBuffer;->this$0:Lcom/codeglue/terraria/codec/language/ColognePhonetic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    const/4 v0, 0x0

    iput v0, p0, Lcom/codeglue/terraria/codec/language/ColognePhonetic$CologneBuffer;->length:I

    .line 207
    iput-object p2, p0, Lcom/codeglue/terraria/codec/language/ColognePhonetic$CologneBuffer;->data:[C

    .line 208
    array-length v0, p2

    iput v0, p0, Lcom/codeglue/terraria/codec/language/ColognePhonetic$CologneBuffer;->length:I

    .line 209
    return-void
.end method


# virtual methods
.method protected abstract copyData(II)[C
.end method

.method public length()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/codeglue/terraria/codec/language/ColognePhonetic$CologneBuffer;->length:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 224
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Lcom/codeglue/terraria/codec/language/ColognePhonetic$CologneBuffer;->length:I

    invoke-virtual {p0, v1, v2}, Lcom/codeglue/terraria/codec/language/ColognePhonetic$CologneBuffer;->copyData(II)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
