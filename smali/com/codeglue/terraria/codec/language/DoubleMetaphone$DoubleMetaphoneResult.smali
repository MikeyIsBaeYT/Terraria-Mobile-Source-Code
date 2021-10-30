.class public Lcom/codeglue/terraria/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
.super Ljava/lang/Object;
.source "DoubleMetaphone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codeglue/terraria/codec/language/DoubleMetaphone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DoubleMetaphoneResult"
.end annotation


# instance fields
.field private final alternate:Ljava/lang/StringBuilder;

.field private final maxLength:I

.field private final primary:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/codeglue/terraria/codec/language/DoubleMetaphone;


# direct methods
.method public constructor <init>(Lcom/codeglue/terraria/codec/language/DoubleMetaphone;I)V
    .locals 2
    .param p2, "maxLength"    # I

    .prologue
    .line 942
    iput-object p1, p0, Lcom/codeglue/terraria/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->this$0:Lcom/codeglue/terraria/codec/language/DoubleMetaphone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codeglue/terraria/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->this$0:Lcom/codeglue/terraria/codec/language/DoubleMetaphone;

    invoke-virtual {v1}, Lcom/codeglue/terraria/codec/language/DoubleMetaphone;->getMaxCodeLen()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/codeglue/terraria/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    .line 939
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codeglue/terraria/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->this$0:Lcom/codeglue/terraria/codec/language/DoubleMetaphone;

    invoke-virtual {v1}, Lcom/codeglue/terraria/codec/language/DoubleMetaphone;->getMaxCodeLen()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/codeglue/terraria/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    .line 943
    iput p2, p0, Lcom/codeglue/terraria/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    .line 944
    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 0
    .param p1, "value"    # C

    .prologue
    .line 947
    invoke-virtual {p0, p1}, Lcom/codeglue/terraria/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendPrimary(C)V

    .line 948
    invoke-virtual {p0, p1}, Lcom/codeglue/terraria/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    .line 949
    return-void
.end method

.method public append(CC)V
    .locals 0
    .param p1, "primary"    # C
    .param p2, "alternate"    # C

    .prologue
    .line 952
    invoke-virtual {p0, p1}, Lcom/codeglue/terraria/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendPrimary(C)V

    .line 953
    invoke-virtual {p0, p2}, Lcom/codeglue/terraria/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    .line 954
    return-void
.end method

.method public append(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 969
    invoke-virtual {p0, p1}, Lcom/codeglue/terraria/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendPrimary(Ljava/lang/String;)V

    .line 970
    invoke-virtual {p0, p1}, Lcom/codeglue/terraria/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(Ljava/lang/String;)V

    .line 971
    return-void
.end method

.method public append(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "primary"    # Ljava/lang/String;
    .param p2, "alternate"    # Ljava/lang/String;

    .prologue
    .line 974
    invoke-virtual {p0, p1}, Lcom/codeglue/terraria/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendPrimary(Ljava/lang/String;)V

    .line 975
    invoke-virtual {p0, p2}, Lcom/codeglue/terraria/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(Ljava/lang/String;)V

    .line 976
    return-void
.end method

.method public appendAlternate(C)V
    .locals 2
    .param p1, "value"    # C

    .prologue
    .line 963
    iget-object v0, p0, Lcom/codeglue/terraria/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget v1, p0, Lcom/codeglue/terraria/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v0, v1, :cond_0

    .line 964
    iget-object v0, p0, Lcom/codeglue/terraria/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 966
    :cond_0
    return-void
.end method

.method public appendAlternate(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 988
    iget v1, p0, Lcom/codeglue/terraria/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    iget-object v2, p0, Lcom/codeglue/terraria/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int v0, v1, v2

    .line 989
    .local v0, "addChars":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 990
    iget-object v1, p0, Lcom/codeglue/terraria/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    :goto_0
    return-void

    .line 992
    :cond_0
    iget-object v1, p0, Lcom/codeglue/terraria/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public appendPrimary(C)V
    .locals 2
    .param p1, "value"    # C

    .prologue
    .line 957
    iget-object v0, p0, Lcom/codeglue/terraria/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget v1, p0, Lcom/codeglue/terraria/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v0, v1, :cond_0

    .line 958
    iget-object v0, p0, Lcom/codeglue/terraria/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 960
    :cond_0
    return-void
.end method

.method public appendPrimary(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 979
    iget v1, p0, Lcom/codeglue/terraria/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    iget-object v2, p0, Lcom/codeglue/terraria/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int v0, v1, v2

    .line 980
    .local v0, "addChars":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 981
    iget-object v1, p0, Lcom/codeglue/terraria/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    :goto_0
    return-void

    .line 983
    :cond_0
    iget-object v1, p0, Lcom/codeglue/terraria/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getAlternate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/codeglue/terraria/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrimary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 997
    iget-object v0, p0, Lcom/codeglue/terraria/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/codeglue/terraria/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget v1, p0, Lcom/codeglue/terraria/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/codeglue/terraria/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget v1, p0, Lcom/codeglue/terraria/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
