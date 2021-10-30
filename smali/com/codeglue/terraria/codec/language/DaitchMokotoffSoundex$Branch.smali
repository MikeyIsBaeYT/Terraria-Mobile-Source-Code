.class final Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;
.super Ljava/lang/Object;
.source "DaitchMokotoffSoundex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Branch"
.end annotation


# instance fields
.field private final builder:Ljava/lang/StringBuilder;

.field private cachedString:Ljava/lang/String;

.field private lastReplacement:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;->builder:Ljava/lang/StringBuilder;

    .line 84
    iput-object v1, p0, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;->lastReplacement:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;->cachedString:Ljava/lang/String;

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$1;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;-><init>()V

    return-void
.end method


# virtual methods
.method public createBranch()Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;
    .locals 3

    .prologue
    .line 94
    new-instance v0, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;

    invoke-direct {v0}, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;-><init>()V

    .line 95
    .local v0, "branch":Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;
    iget-object v1, v0, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-object v1, p0, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;->lastReplacement:Ljava/lang/String;

    iput-object v1, v0, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;->lastReplacement:Ljava/lang/String;

    .line 97
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 102
    if-ne p0, p1, :cond_0

    .line 103
    const/4 v0, 0x1

    .line 109
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v0

    .line 105
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;

    if-nez v0, :cond_1

    .line 106
    const/4 v0, 0x0

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 116
    :goto_0
    iget-object v0, p0, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;->builder:Ljava/lang/StringBuilder;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;->cachedString:Ljava/lang/String;

    goto :goto_0

    .line 120
    :cond_0
    return-void
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public processNextReplacement(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "replacement"    # Ljava/lang/String;
    .param p2, "forceAppend"    # Z

    .prologue
    const/4 v3, 0x6

    .line 136
    iget-object v1, p0, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;->lastReplacement:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;->lastReplacement:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 138
    .local v0, "append":Z
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v1, v3, :cond_2

    .line 139
    iget-object v1, p0, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-object v1, p0, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 142
    iget-object v1, p0, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;->builder:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 144
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;->cachedString:Ljava/lang/String;

    .line 147
    :cond_2
    iput-object p1, p0, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;->lastReplacement:Ljava/lang/String;

    .line 148
    return-void

    .line 136
    .end local v0    # "append":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;->cachedString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;->cachedString:Ljava/lang/String;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/codeglue/terraria/codec/language/DaitchMokotoffSoundex$Branch;->cachedString:Ljava/lang/String;

    return-object v0
.end method
