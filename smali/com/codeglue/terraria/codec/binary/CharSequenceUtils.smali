.class public Lcom/codeglue/terraria/codec/binary/CharSequenceUtils;
.super Ljava/lang/Object;
.source "CharSequenceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z
    .locals 15
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "ignoreCase"    # Z
    .param p2, "thisStart"    # I
    .param p3, "substring"    # Ljava/lang/CharSequence;
    .param p4, "start"    # I
    .param p5, "length"    # I

    .prologue
    .line 51
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object/from16 v0, p3

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, p0

    .line 52
    check-cast v1, Ljava/lang/String;

    move-object/from16 v4, p3

    check-cast v4, Ljava/lang/String;

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    .line 77
    :goto_0
    return v1

    .line 54
    :cond_0
    move/from16 v9, p2

    .line 55
    .local v9, "index1":I
    move/from16 v11, p4

    .line 56
    .local v11, "index2":I
    move/from16 v13, p5

    .local v13, "tmpLen":I
    move v14, v13

    .end local v13    # "tmpLen":I
    .local v14, "tmpLen":I
    move v12, v11

    .end local v11    # "index2":I
    .local v12, "index2":I
    move v10, v9

    .line 58
    .end local v9    # "index1":I
    .local v10, "index1":I
    :goto_1
    add-int/lit8 v13, v14, -0x1

    .end local v14    # "tmpLen":I
    .restart local v13    # "tmpLen":I
    if-lez v14, :cond_4

    .line 59
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "index1":I
    .restart local v9    # "index1":I
    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 60
    .local v7, "c1":C
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "index2":I
    .restart local v11    # "index2":I
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .line 62
    .local v8, "c2":C
    if-ne v7, v8, :cond_1

    move v14, v13

    .end local v13    # "tmpLen":I
    .restart local v14    # "tmpLen":I
    move v12, v11

    .end local v11    # "index2":I
    .restart local v12    # "index2":I
    move v10, v9

    .line 63
    .end local v9    # "index1":I
    .restart local v10    # "index1":I
    goto :goto_1

    .line 66
    .end local v10    # "index1":I
    .end local v12    # "index2":I
    .end local v14    # "tmpLen":I
    .restart local v9    # "index1":I
    .restart local v11    # "index2":I
    .restart local v13    # "tmpLen":I
    :cond_1
    if-nez p1, :cond_2

    .line 67
    const/4 v1, 0x0

    goto :goto_0

    .line 71
    :cond_2
    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    if-eq v1, v2, :cond_3

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-static {v8}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    if-eq v1, v2, :cond_3

    .line 73
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    move v14, v13

    .end local v13    # "tmpLen":I
    .restart local v14    # "tmpLen":I
    move v12, v11

    .end local v11    # "index2":I
    .restart local v12    # "index2":I
    move v10, v9

    .line 75
    .end local v9    # "index1":I
    .restart local v10    # "index1":I
    goto :goto_1

    .line 77
    .end local v7    # "c1":C
    .end local v8    # "c2":C
    .end local v14    # "tmpLen":I
    .restart local v13    # "tmpLen":I
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method
