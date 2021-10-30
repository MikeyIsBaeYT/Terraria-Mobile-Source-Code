.class final Lcom/codeglue/terraria/codec/language/bm/Rule$1;
.super Ljava/lang/Object;
.source "Rule.java"

# interfaces
.implements Lcom/codeglue/terraria/codec/language/bm/Rule$RPattern;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codeglue/terraria/codec/language/bm/Rule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isMatch(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "input"    # Ljava/lang/CharSequence;

    .prologue
    .line 199
    const/4 v0, 0x1

    return v0
.end method
