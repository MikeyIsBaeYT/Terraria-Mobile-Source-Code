.class final Lcom/codeglue/terraria/codec/language/bm/Rule$8;
.super Ljava/lang/Object;
.source "Rule.java"

# interfaces
.implements Lcom/codeglue/terraria/codec/language/bm/Rule$RPattern;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codeglue/terraria/codec/language/bm/Rule;->pattern(Ljava/lang/String;)Lcom/codeglue/terraria/codec/language/bm/Rule$RPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bContent:Ljava/lang/String;

.field final synthetic val$shouldMatch:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 569
    iput-object p1, p0, Lcom/codeglue/terraria/codec/language/bm/Rule$8;->val$bContent:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/codeglue/terraria/codec/language/bm/Rule$8;->val$shouldMatch:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isMatch(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1, "input"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 572
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/codeglue/terraria/codec/language/bm/Rule$8;->val$bContent:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v1, v2}, Lcom/codeglue/terraria/codec/language/bm/Rule;->access$300(Ljava/lang/CharSequence;C)Z

    move-result v1

    iget-boolean v2, p0, Lcom/codeglue/terraria/codec/language/bm/Rule$8;->val$shouldMatch:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
