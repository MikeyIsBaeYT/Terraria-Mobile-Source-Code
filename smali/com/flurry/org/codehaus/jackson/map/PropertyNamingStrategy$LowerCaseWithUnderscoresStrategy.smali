.class public Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy$LowerCaseWithUnderscoresStrategy;
.super Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy$PropertyNamingStrategyBase;
.source "PropertyNamingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LowerCaseWithUnderscoresStrategy"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy$PropertyNamingStrategyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public translate(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x5f

    .line 227
    if-nez p1, :cond_1

    .line 255
    .end local p1    # "input":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 228
    .restart local p1    # "input":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 229
    .local v2, "length":I
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v6, v2, 0x2

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 230
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 231
    .local v4, "resultLength":I
    const/4 v5, 0x0

    .line 232
    .local v5, "wasPrevTranslated":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_6

    .line 234
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 235
    .local v0, "c":C
    if-gtz v1, :cond_2

    if-eq v0, v7, :cond_4

    .line 237
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 239
    if-nez v5, :cond_3

    if-lez v4, :cond_3

    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-eq v6, v7, :cond_3

    .line 241
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    add-int/lit8 v4, v4, 0x1

    .line 244
    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    .line 245
    const/4 v5, 0x1

    .line 251
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 252
    add-int/lit8 v4, v4, 0x1

    .line 232
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 249
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 255
    .end local v0    # "c":C
    :cond_6
    if-lez v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
