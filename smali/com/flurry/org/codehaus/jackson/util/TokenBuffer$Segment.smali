.class public final Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;
.super Ljava/lang/Object;
.source "TokenBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/util/TokenBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Segment"
.end annotation


# static fields
.field public static final TOKENS_PER_SEGMENT:I = 0x10

.field private static final TOKEN_TYPES_BY_INDEX:[Lcom/flurry/org/codehaus/jackson/JsonToken;


# instance fields
.field protected _next:Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;

.field protected _tokenTypes:J

.field protected final _tokens:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1130
    const/16 v1, 0x10

    new-array v1, v1, [Lcom/flurry/org/codehaus/jackson/JsonToken;

    sput-object v1, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;->TOKEN_TYPES_BY_INDEX:[Lcom/flurry/org/codehaus/jackson/JsonToken;

    .line 1131
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/JsonToken;->values()[Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 1132
    .local v0, "t":[Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v1, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;->TOKEN_TYPES_BY_INDEX:[Lcom/flurry/org/codehaus/jackson/JsonToken;

    const/16 v2, 0xf

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1133
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1150
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;->_tokens:[Ljava/lang/Object;

    .line 1152
    return-void
.end method


# virtual methods
.method public append(ILcom/flurry/org/codehaus/jackson/JsonToken;)Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;
    .locals 2
    .param p1, "index"    # I
    .param p2, "tokenType"    # Lcom/flurry/org/codehaus/jackson/JsonToken;

    .prologue
    .line 1176
    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 1177
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;->set(ILcom/flurry/org/codehaus/jackson/JsonToken;)V

    .line 1178
    const/4 v0, 0x0

    .line 1182
    :goto_0
    return-object v0

    .line 1180
    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;->_next:Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;

    .line 1181
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;->_next:Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;->set(ILcom/flurry/org/codehaus/jackson/JsonToken;)V

    .line 1182
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;->_next:Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;

    goto :goto_0
.end method

.method public append(ILcom/flurry/org/codehaus/jackson/JsonToken;Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;
    .locals 2
    .param p1, "index"    # I
    .param p2, "tokenType"    # Lcom/flurry/org/codehaus/jackson/JsonToken;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 1187
    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 1188
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;->set(ILcom/flurry/org/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 1189
    const/4 v0, 0x0

    .line 1193
    :goto_0
    return-object v0

    .line 1191
    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;->_next:Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;

    .line 1192
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;->_next:Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p3}, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;->set(ILcom/flurry/org/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 1193
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;->_next:Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;->_tokens:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public next()Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;->_next:Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;

    return-object v0
.end method

.method public set(ILcom/flurry/org/codehaus/jackson/JsonToken;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "tokenType"    # Lcom/flurry/org/codehaus/jackson/JsonToken;

    .prologue
    .line 1198
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    int-to-long v0, v2

    .line 1202
    .local v0, "typeCode":J
    if-lez p1, :cond_0

    .line 1203
    shl-int/lit8 v2, p1, 0x2

    shl-long/2addr v0, v2

    .line 1205
    :cond_0
    iget-wide v2, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;->_tokenTypes:J

    or-long/2addr v2, v0

    iput-wide v2, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;->_tokenTypes:J

    .line 1206
    return-void
.end method

.method public set(ILcom/flurry/org/codehaus/jackson/JsonToken;Ljava/lang/Object;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "tokenType"    # Lcom/flurry/org/codehaus/jackson/JsonToken;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 1210
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;->_tokens:[Ljava/lang/Object;

    aput-object p3, v2, p1

    .line 1211
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    int-to-long v0, v2

    .line 1215
    .local v0, "typeCode":J
    if-lez p1, :cond_0

    .line 1216
    shl-int/lit8 v2, p1, 0x2

    shl-long/2addr v0, v2

    .line 1218
    :cond_0
    iget-wide v2, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;->_tokenTypes:J

    or-long/2addr v2, v0

    iput-wide v2, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;->_tokenTypes:J

    .line 1219
    return-void
.end method

.method public type(I)Lcom/flurry/org/codehaus/jackson/JsonToken;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 1158
    iget-wide v2, p0, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;->_tokenTypes:J

    .line 1159
    .local v2, "l":J
    if-lez p1, :cond_0

    .line 1160
    shl-int/lit8 v1, p1, 0x2

    shr-long/2addr v2, v1

    .line 1162
    :cond_0
    long-to-int v1, v2

    and-int/lit8 v0, v1, 0xf

    .line 1163
    .local v0, "ix":I
    sget-object v1, Lcom/flurry/org/codehaus/jackson/util/TokenBuffer$Segment;->TOKEN_TYPES_BY_INDEX:[Lcom/flurry/org/codehaus/jackson/JsonToken;

    aget-object v1, v1, v0

    return-object v1
.end method
