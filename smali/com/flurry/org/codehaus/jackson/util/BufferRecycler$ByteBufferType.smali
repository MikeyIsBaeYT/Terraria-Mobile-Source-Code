.class public final enum Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;
.super Ljava/lang/Enum;
.source "BufferRecycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ByteBufferType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

.field public static final enum READ_IO_BUFFER:Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

.field public static final enum WRITE_CONCAT_BUFFER:Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

.field public static final enum WRITE_ENCODING_BUFFER:Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;


# instance fields
.field private final size:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v2, 0xfa0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    new-instance v0, Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    const-string v1, "READ_IO_BUFFER"

    invoke-direct {v0, v1, v3, v2}, Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;->READ_IO_BUFFER:Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    .line 21
    new-instance v0, Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    const-string v1, "WRITE_ENCODING_BUFFER"

    invoke-direct {v0, v1, v4, v2}, Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;->WRITE_ENCODING_BUFFER:Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    .line 27
    new-instance v0, Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    const-string v1, "WRITE_CONCAT_BUFFER"

    const/16 v2, 0x7d0

    invoke-direct {v0, v1, v5, v2}, Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;->WRITE_CONCAT_BUFFER:Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;->READ_IO_BUFFER:Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;->WRITE_ENCODING_BUFFER:Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;->WRITE_CONCAT_BUFFER:Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;->$VALUES:[Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;->size:I

    return-void
.end method

.method static synthetic access$000(Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;)I
    .locals 1
    .param p0, "x0"    # Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    .prologue
    .line 15
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;->size:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    return-object v0
.end method

.method public static values()[Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;->$VALUES:[Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0}, [Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    return-object v0
.end method
