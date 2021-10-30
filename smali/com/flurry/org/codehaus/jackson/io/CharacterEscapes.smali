.class public abstract Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;
.super Ljava/lang/Object;
.source "CharacterEscapes.java"


# static fields
.field public static final ESCAPE_CUSTOM:I = -0x2

.field public static final ESCAPE_NONE:I = 0x0

.field public static final ESCAPE_STANDARD:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static standardAsciiEscapesForJSON()[I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 67
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/util/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v0

    .line 68
    .local v0, "esc":[I
    array-length v1, v0

    .line 69
    .local v1, "len":I
    new-array v2, v1, [I

    .line 70
    .local v2, "result":[I
    array-length v3, v0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    return-object v2
.end method


# virtual methods
.method public abstract getEscapeCodesForAscii()[I
.end method

.method public abstract getEscapeSequence(I)Lcom/flurry/org/codehaus/jackson/SerializableString;
.end method
