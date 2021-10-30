.class public final Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;
.super Ljava/lang/Object;
.source "Rule.java"

# interfaces
.implements Lcom/codeglue/terraria/codec/language/bm/Rule$PhonemeExpr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codeglue/terraria/codec/language/bm/Rule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Phoneme"
.end annotation


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final languages:Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;

.field private final phonemeText:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme$1;

    invoke-direct {v0}, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme$1;-><init>()V

    sput-object v0, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;)V
    .locals 2
    .param p1, "phonemeLeft"    # Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;
    .param p2, "phonemeRight"    # Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;

    .prologue
    .line 115
    iget-object v0, p1, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;->languages:Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;

    invoke-direct {p0, v0, v1}, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;-><init>(Ljava/lang/CharSequence;Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;)V

    .line 116
    iget-object v0, p0, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;)V
    .locals 2
    .param p1, "phonemeLeft"    # Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;
    .param p2, "phonemeRight"    # Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;
    .param p3, "languages"    # Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;

    .prologue
    .line 120
    iget-object v0, p1, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, p3}, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;-><init>(Ljava/lang/CharSequence;Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;)V

    .line 121
    iget-object v0, p0, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;)V
    .locals 1
    .param p1, "phonemeText"    # Ljava/lang/CharSequence;
    .param p2, "languages"    # Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    .line 111
    iput-object p2, p0, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;->languages:Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    return-object v0
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;)Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;
    .locals 1
    .param p1, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 126
    return-object p0
.end method

.method public getLanguages()Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;->languages:Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;

    return-object v0
.end method

.method public getPhonemeText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public getPhonemes()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public join(Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;)Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;
    .locals 4
    .param p1, "right"    # Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 151
    new-instance v0, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;->languages:Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;

    iget-object v3, p1, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;->languages:Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;

    invoke-virtual {v2, v3}, Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;->restrictTo(Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;)Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;-><init>(Ljava/lang/CharSequence;Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;)V

    return-object v0
.end method

.method public mergeWithLanguage(Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;)Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;
    .locals 3
    .param p1, "lang"    # Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;

    .prologue
    .line 163
    new-instance v0, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;

    iget-object v1, p0, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;->languages:Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;

    invoke-virtual {v2, p1}, Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;->merge(Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;)Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;-><init>(Ljava/lang/CharSequence;Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/codeglue/terraria/codec/language/bm/Rule$Phoneme;->languages:Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
