.class final Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$1;
.super Ljava/lang/Object;
.source "DaitchMokotoffSoundex.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex;
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
        "Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;)I
    .locals 2
    .param p1, "rule1"    # Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;
    .param p2, "rule2"    # Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;

    .prologue
    .line 244
    invoke-virtual {p2}, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;->getPatternLength()I

    move-result v0

    invoke-virtual {p1}, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;->getPatternLength()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 241
    check-cast p1, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;

    check-cast p2, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;

    invoke-virtual {p0, p1, p2}, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$1;->compare(Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;)I

    move-result v0

    return v0
.end method
