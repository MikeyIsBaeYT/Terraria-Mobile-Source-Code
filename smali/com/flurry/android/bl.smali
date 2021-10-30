.class final Lcom/flurry/android/bl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dA:I

.field private dB:I

.field private dv:Ljava/lang/String;

.field private dw:J

.field private dx:J

.field private dy:I

.field private dz:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method constructor <init>(Ljava/io/DataInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/bl;->dv:Ljava/lang/String;

    .line 35
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/bl;->dw:J

    .line 36
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/bl;->dx:J

    .line 37
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/bl;->dy:I

    .line 38
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/bl;->dz:I

    .line 39
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/bl;->dA:I

    .line 40
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/bl;->dB:I

    .line 41
    return-void
.end method

.method constructor <init>(Ljava/lang/String;JJIII)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/flurry/android/bl;->dv:Ljava/lang/String;

    .line 24
    iput-wide p2, p0, Lcom/flurry/android/bl;->dw:J

    .line 25
    iput-wide p4, p0, Lcom/flurry/android/bl;->dx:J

    .line 26
    iput p6, p0, Lcom/flurry/android/bl;->dz:I

    .line 27
    iput p7, p0, Lcom/flurry/android/bl;->dA:I

    .line 28
    iput p8, p0, Lcom/flurry/android/bl;->dB:I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/android/bl;->dy:I

    .line 30
    return-void
.end method


# virtual methods
.method final a(Ljava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/flurry/android/bl;->dv:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 46
    iget-wide v0, p0, Lcom/flurry/android/bl;->dw:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 47
    iget-wide v0, p0, Lcom/flurry/android/bl;->dx:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 48
    iget v0, p0, Lcom/flurry/android/bl;->dy:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 49
    iget v0, p0, Lcom/flurry/android/bl;->dz:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 50
    iget v0, p0, Lcom/flurry/android/bl;->dA:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 51
    iget v0, p0, Lcom/flurry/android/bl;->dB:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 52
    return-void
.end method

.method public final aa()Lcom/flurry/android/bl;
    .locals 9

    .prologue
    .line 56
    new-instance v0, Lcom/flurry/android/bl;

    iget-object v1, p0, Lcom/flurry/android/bl;->dv:Ljava/lang/String;

    iget-wide v2, p0, Lcom/flurry/android/bl;->dw:J

    iget-wide v4, p0, Lcom/flurry/android/bl;->dx:J

    iget v6, p0, Lcom/flurry/android/bl;->dz:I

    iget v7, p0, Lcom/flurry/android/bl;->dA:I

    iget v8, p0, Lcom/flurry/android/bl;->dB:I

    invoke-direct/range {v0 .. v8}, Lcom/flurry/android/bl;-><init>(Ljava/lang/String;JJIII)V

    .line 57
    iget v1, p0, Lcom/flurry/android/bl;->dy:I

    iput v1, v0, Lcom/flurry/android/bl;->dy:I

    .line 59
    return-object v0
.end method

.method public final ab()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/flurry/android/bl;->dv:Ljava/lang/String;

    return-object v0
.end method

.method public final ac()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/flurry/android/bl;->dy:I

    return v0
.end method

.method public final ad()V
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/flurry/android/bl;->dy:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/android/bl;->dy:I

    .line 80
    return-void
.end method

.method public final ae()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/flurry/android/bl;->dz:I

    return v0
.end method

.method public final af()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/flurry/android/bl;->dA:I

    return v0
.end method

.method public final ag()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/flurry/android/bl;->dB:I

    return v0
.end method

.method public final ah()J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/flurry/android/bl;->dx:J

    return-wide v0
.end method

.method public final ai()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/flurry/android/bl;->dw:J

    return-wide v0
.end method
