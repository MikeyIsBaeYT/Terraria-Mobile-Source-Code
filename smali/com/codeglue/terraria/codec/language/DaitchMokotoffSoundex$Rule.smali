.class final Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;
.super Ljava/lang/Object;
.source "DaitchMokotoffSoundex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Rule"
.end annotation


# instance fields
.field private final pattern:Ljava/lang/String;

.field private final replacementAtStart:[Ljava/lang/String;

.field private final replacementBeforeVowel:[Ljava/lang/String;

.field private final replacementDefault:[Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "replacementAtStart"    # Ljava/lang/String;
    .param p3, "replacementBeforeVowel"    # Ljava/lang/String;
    .param p4, "replacementDefault"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;->pattern:Ljava/lang/String;

    .line 171
    const-string v0, "\\|"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;->replacementAtStart:[Ljava/lang/String;

    .line 172
    const-string v0, "\\|"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;->replacementBeforeVowel:[Ljava/lang/String;

    .line 173
    const-string v0, "\\|"

    invoke-virtual {p4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;->replacementDefault:[Ljava/lang/String;

    .line 174
    return-void
.end method

.method static synthetic access$000(Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method private isVowel(C)Z
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 195
    const/16 v0, 0x61

    if-eq p1, v0, :cond_0

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    const/16 v0, 0x69

    if-eq p1, v0, :cond_0

    const/16 v0, 0x6f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x75

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getPatternLength()I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getReplacements(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Ljava/lang/String;
    .param p2, "atStart"    # Z

    .prologue
    .line 181
    if-eqz p2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;->replacementAtStart:[Ljava/lang/String;

    .line 191
    :goto_0
    return-object v2

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;->getPatternLength()I

    move-result v1

    .line 186
    .local v1, "nextIndex":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;->isVowel(C)Z

    move-result v0

    .line 187
    .local v0, "nextCharIsVowel":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 188
    iget-object v2, p0, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;->replacementBeforeVowel:[Ljava/lang/String;

    goto :goto_0

    .line 186
    .end local v0    # "nextCharIsVowel":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 191
    .restart local v0    # "nextCharIsVowel":Z
    :cond_2
    iget-object v2, p0, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;->replacementDefault:[Ljava/lang/String;

    goto :goto_0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;->pattern:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 204
    const-string v0, "%s=(%s,%s,%s)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;->pattern:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;->replacementAtStart:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;->replacementBeforeVowel:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Rule;->replacementDefault:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
