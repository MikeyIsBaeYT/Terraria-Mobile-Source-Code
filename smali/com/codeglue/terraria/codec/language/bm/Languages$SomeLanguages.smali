.class public final Lcom/codeglue/terraria/codec/language/bm/Languages$SomeLanguages;
.super Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;
.source "Languages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codeglue/terraria/codec/language/bm/Languages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SomeLanguages"
.end annotation


# instance fields
.field private final languages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "languages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;-><init>()V

    .line 87
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/codeglue/terraria/codec/language/bm/Languages$SomeLanguages;->languages:Ljava/util/Set;

    .line 88
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Set;Lcom/codeglue/terraria/codec/language/bm/Languages$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Set;
    .param p2, "x1"    # Lcom/codeglue/terraria/codec/language/bm/Languages$1;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/codeglue/terraria/codec/language/bm/Languages$SomeLanguages;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/codeglue/terraria/codec/language/bm/Languages$SomeLanguages;->languages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAny()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/codeglue/terraria/codec/language/bm/Languages$SomeLanguages;->languages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLanguages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/codeglue/terraria/codec/language/bm/Languages$SomeLanguages;->languages:Ljava/util/Set;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/codeglue/terraria/codec/language/bm/Languages$SomeLanguages;->languages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isSingleton()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 111
    iget-object v1, p0, Lcom/codeglue/terraria/codec/language/bm/Languages$SomeLanguages;->languages:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public merge(Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;)Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;
    .locals 5
    .param p1, "other"    # Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;

    .prologue
    .line 134
    sget-object v4, Lcom/codeglue/terraria/codec/language/bm/Languages;->NO_LANGUAGES:Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;

    if-ne p1, v4, :cond_0

    .line 144
    .end local p0    # "this":Lcom/codeglue/terraria/codec/language/bm/Languages$SomeLanguages;
    :goto_0
    return-object p0

    .line 136
    .restart local p0    # "this":Lcom/codeglue/terraria/codec/language/bm/Languages$SomeLanguages;
    :cond_0
    sget-object v4, Lcom/codeglue/terraria/codec/language/bm/Languages;->ANY_LANGUAGE:Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;

    if-ne p1, v4, :cond_1

    move-object p0, p1

    .line 137
    goto :goto_0

    :cond_1
    move-object v3, p1

    .line 139
    check-cast v3, Lcom/codeglue/terraria/codec/language/bm/Languages$SomeLanguages;

    .line 140
    .local v3, "sl":Lcom/codeglue/terraria/codec/language/bm/Languages$SomeLanguages;
    new-instance v2, Ljava/util/HashSet;

    iget-object v4, p0, Lcom/codeglue/terraria/codec/language/bm/Languages$SomeLanguages;->languages:Ljava/util/Set;

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 141
    .local v2, "ls":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, v3, Lcom/codeglue/terraria/codec/language/bm/Languages$SomeLanguages;->languages:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 142
    .local v1, "lang":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 144
    .end local v1    # "lang":Ljava/lang/String;
    :cond_2
    invoke-static {v2}, Lcom/codeglue/terraria/codec/language/bm/Languages$SomeLanguages;->from(Ljava/util/Set;)Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;

    move-result-object p0

    goto :goto_0
.end method

.method public restrictTo(Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;)Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;
    .locals 6
    .param p1, "other"    # Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;

    .prologue
    .line 116
    sget-object v4, Lcom/codeglue/terraria/codec/language/bm/Languages;->NO_LANGUAGES:Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;

    if-ne p1, v4, :cond_0

    .line 128
    .end local p1    # "other":Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;
    :goto_0
    return-object p1

    .line 118
    .restart local p1    # "other":Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;
    :cond_0
    sget-object v4, Lcom/codeglue/terraria/codec/language/bm/Languages;->ANY_LANGUAGE:Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;

    if-ne p1, v4, :cond_1

    move-object p1, p0

    .line 119
    goto :goto_0

    :cond_1
    move-object v3, p1

    .line 121
    check-cast v3, Lcom/codeglue/terraria/codec/language/bm/Languages$SomeLanguages;

    .line 122
    .local v3, "sl":Lcom/codeglue/terraria/codec/language/bm/Languages$SomeLanguages;
    new-instance v2, Ljava/util/HashSet;

    iget-object v4, p0, Lcom/codeglue/terraria/codec/language/bm/Languages$SomeLanguages;->languages:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    iget-object v5, v3, Lcom/codeglue/terraria/codec/language/bm/Languages$SomeLanguages;->languages:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 123
    .local v2, "ls":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/codeglue/terraria/codec/language/bm/Languages$SomeLanguages;->languages:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 124
    .local v1, "lang":Ljava/lang/String;
    iget-object v4, v3, Lcom/codeglue/terraria/codec/language/bm/Languages$SomeLanguages;->languages:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 125
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 128
    .end local v1    # "lang":Ljava/lang/String;
    :cond_3
    invoke-static {v2}, Lcom/codeglue/terraria/codec/language/bm/Languages$SomeLanguages;->from(Ljava/util/Set;)Lcom/codeglue/terraria/codec/language/bm/Languages$LanguageSet;

    move-result-object p1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Languages("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/codeglue/terraria/codec/language/bm/Languages$SomeLanguages;->languages:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
