.class final Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme$1;
.super Ljava/lang/Object;
.source "Rule.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;)I
    .locals 4
    .param p1, "o1"    # Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;
    .param p2, "o2"    # Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;

    .prologue
    .line 88
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {p1}, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;->access$000(Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 89
    invoke-static {p2}, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;->access$000(Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 90
    const/4 v0, 0x1

    .line 102
    :cond_0
    :goto_1
    return v0

    .line 92
    :cond_1
    invoke-static {p1}, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;->access$000(Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    invoke-static {p2}, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;->access$000(Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    sub-int v0, v2, v3

    .line 93
    .local v0, "c":I
    if-nez v0, :cond_0

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v0    # "c":I
    :cond_2
    invoke-static {p1}, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;->access$000(Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-static {p2}, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;->access$000(Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 99
    const/4 v0, -0x1

    goto :goto_1

    .line 102
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 85
    check-cast p1, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;

    check-cast p2, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;

    invoke-virtual {p0, p1, p2}, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme$1;->compare(Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;)I

    move-result v0

    return v0
.end method
