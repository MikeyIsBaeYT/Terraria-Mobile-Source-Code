.class public Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;
.super Ljava/lang/Object;
.source "DataFormatDetector.java"


# static fields
.field public static final DEFAULT_MAX_INPUT_LOOKAHEAD:I = 0x40


# instance fields
.field protected final _detectors:[Lcom/flurry/org/codehaus/jackson/JsonFactory;

.field protected final _maxInputLookahead:I

.field protected final _minimalMatch:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

.field protected final _optimalMatch:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/flurry/org/codehaus/jackson/JsonFactory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "detectors":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/flurry/org/codehaus/jackson/JsonFactory;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/flurry/org/codehaus/jackson/JsonFactory;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/org/codehaus/jackson/JsonFactory;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;-><init>([Lcom/flurry/org/codehaus/jackson/JsonFactory;)V

    .line 66
    return-void
.end method

.method public varargs constructor <init>([Lcom/flurry/org/codehaus/jackson/JsonFactory;)V
    .locals 3
    .param p1, "detectors"    # [Lcom/flurry/org/codehaus/jackson/JsonFactory;

    .prologue
    .line 60
    sget-object v0, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->SOLID_MATCH:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->WEAK_MATCH:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    const/16 v2, 0x40

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;-><init>([Lcom/flurry/org/codehaus/jackson/JsonFactory;Lcom/flurry/org/codehaus/jackson/format/MatchStrength;Lcom/flurry/org/codehaus/jackson/format/MatchStrength;I)V

    .line 62
    return-void
.end method

.method private constructor <init>([Lcom/flurry/org/codehaus/jackson/JsonFactory;Lcom/flurry/org/codehaus/jackson/format/MatchStrength;Lcom/flurry/org/codehaus/jackson/format/MatchStrength;I)V
    .locals 0
    .param p1, "detectors"    # [Lcom/flurry/org/codehaus/jackson/JsonFactory;
    .param p2, "optMatch"    # Lcom/flurry/org/codehaus/jackson/format/MatchStrength;
    .param p3, "minMatch"    # Lcom/flurry/org/codehaus/jackson/format/MatchStrength;
    .param p4, "maxInputLookahead"    # I

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;->_detectors:[Lcom/flurry/org/codehaus/jackson/JsonFactory;

    .line 108
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;->_optimalMatch:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    .line 109
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;->_minimalMatch:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    .line 110
    iput p4, p0, Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;->_maxInputLookahead:I

    .line 111
    return-void
.end method

.method private _findFormat(Lcom/flurry/org/codehaus/jackson/format/InputAccessor$Std;)Lcom/flurry/org/codehaus/jackson/format/DataFormatMatcher;
    .locals 9
    .param p1, "acc"    # Lcom/flurry/org/codehaus/jackson/format/InputAccessor$Std;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    const/4 v1, 0x0

    .line 153
    .local v1, "bestMatch":Lcom/flurry/org/codehaus/jackson/JsonFactory;
    const/4 v2, 0x0

    .line 154
    .local v2, "bestMatchStrength":Lcom/flurry/org/codehaus/jackson/format/MatchStrength;
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;->_detectors:[Lcom/flurry/org/codehaus/jackson/JsonFactory;

    .local v0, "arr$":[Lcom/flurry/org/codehaus/jackson/JsonFactory;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v3, v0, v4

    .line 155
    .local v3, "f":Lcom/flurry/org/codehaus/jackson/JsonFactory;
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/format/InputAccessor$Std;->reset()V

    .line 156
    invoke-virtual {v3, p1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->hasFormat(Lcom/flurry/org/codehaus/jackson/format/InputAccessor;)Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    move-result-object v6

    .line 158
    .local v6, "strength":Lcom/flurry/org/codehaus/jackson/format/MatchStrength;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->ordinal()I

    move-result v7

    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;->_minimalMatch:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    invoke-virtual {v8}, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->ordinal()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 154
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 162
    :cond_1
    if-eqz v1, :cond_2

    .line 163
    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->ordinal()I

    move-result v7

    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->ordinal()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 168
    :cond_2
    move-object v1, v3

    .line 169
    move-object v2, v6

    .line 170
    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->ordinal()I

    move-result v7

    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;->_optimalMatch:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    invoke-virtual {v8}, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->ordinal()I

    move-result v8

    if-lt v7, v8, :cond_0

    .line 174
    .end local v3    # "f":Lcom/flurry/org/codehaus/jackson/JsonFactory;
    .end local v6    # "strength":Lcom/flurry/org/codehaus/jackson/format/MatchStrength;
    :cond_3
    invoke-virtual {p1, v1, v2}, Lcom/flurry/org/codehaus/jackson/format/InputAccessor$Std;->createMatcher(Lcom/flurry/org/codehaus/jackson/JsonFactory;Lcom/flurry/org/codehaus/jackson/format/MatchStrength;)Lcom/flurry/org/codehaus/jackson/format/DataFormatMatcher;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public findFormat(Ljava/io/InputStream;)Lcom/flurry/org/codehaus/jackson/format/DataFormatMatcher;
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Lcom/flurry/org/codehaus/jackson/format/InputAccessor$Std;

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;->_maxInputLookahead:I

    new-array v1, v1, [B

    invoke-direct {v0, p1, v1}, Lcom/flurry/org/codehaus/jackson/format/InputAccessor$Std;-><init>(Ljava/io/InputStream;[B)V

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;->_findFormat(Lcom/flurry/org/codehaus/jackson/format/InputAccessor$Std;)Lcom/flurry/org/codehaus/jackson/format/DataFormatMatcher;

    move-result-object v0

    return-object v0
.end method

.method public findFormat([B)Lcom/flurry/org/codehaus/jackson/format/DataFormatMatcher;
    .locals 1
    .param p1, "fullInputData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Lcom/flurry/org/codehaus/jackson/format/InputAccessor$Std;

    invoke-direct {v0, p1}, Lcom/flurry/org/codehaus/jackson/format/InputAccessor$Std;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;->_findFormat(Lcom/flurry/org/codehaus/jackson/format/InputAccessor$Std;)Lcom/flurry/org/codehaus/jackson/format/DataFormatMatcher;

    move-result-object v0

    return-object v0
.end method

.method public withMaxInputLookahead(I)Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;
    .locals 4
    .param p1, "lookaheadBytes"    # I

    .prologue
    .line 97
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;->_maxInputLookahead:I

    if-ne p1, v0, :cond_0

    .line 100
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;
    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;->_detectors:[Lcom/flurry/org/codehaus/jackson/JsonFactory;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;->_optimalMatch:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;->_minimalMatch:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;-><init>([Lcom/flurry/org/codehaus/jackson/JsonFactory;Lcom/flurry/org/codehaus/jackson/format/MatchStrength;Lcom/flurry/org/codehaus/jackson/format/MatchStrength;I)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withMinimalMatch(Lcom/flurry/org/codehaus/jackson/format/MatchStrength;)Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;
    .locals 4
    .param p1, "minMatch"    # Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;->_minimalMatch:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    if-ne p1, v0, :cond_0

    .line 88
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;
    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;->_detectors:[Lcom/flurry/org/codehaus/jackson/JsonFactory;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;->_optimalMatch:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;->_maxInputLookahead:I

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;-><init>([Lcom/flurry/org/codehaus/jackson/JsonFactory;Lcom/flurry/org/codehaus/jackson/format/MatchStrength;Lcom/flurry/org/codehaus/jackson/format/MatchStrength;I)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withOptimalMatch(Lcom/flurry/org/codehaus/jackson/format/MatchStrength;)Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;
    .locals 4
    .param p1, "optMatch"    # Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;->_optimalMatch:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    if-ne p1, v0, :cond_0

    .line 77
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;
    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;->_detectors:[Lcom/flurry/org/codehaus/jackson/JsonFactory;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;->_minimalMatch:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;->_maxInputLookahead:I

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/flurry/org/codehaus/jackson/format/DataFormatDetector;-><init>([Lcom/flurry/org/codehaus/jackson/JsonFactory;Lcom/flurry/org/codehaus/jackson/format/MatchStrength;Lcom/flurry/org/codehaus/jackson/format/MatchStrength;I)V

    move-object p0, v0

    goto :goto_0
.end method
