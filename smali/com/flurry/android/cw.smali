.class final Lcom/flurry/android/cw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static eV:I


# instance fields
.field private final eW:I

.field private final eX:J

.field private final eY:Ljava/lang/String;

.field private eZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/gc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x1

    sput v0, Lcom/flurry/android/cw;->eV:I

    return-void
.end method

.method constructor <init>(JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget v0, Lcom/flurry/android/cw;->eV:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/flurry/android/cw;->eV:I

    iput v0, p0, Lcom/flurry/android/cw;->eW:I

    .line 22
    iput-wide p1, p0, Lcom/flurry/android/cw;->eX:J

    .line 23
    iput-object p3, p0, Lcom/flurry/android/cw;->eY:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/cw;->eZ:Ljava/util/List;

    .line 26
    return-void
.end method

.method constructor <init>(Ljava/io/DataInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/cw;->eW:I

    .line 31
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/cw;->eX:J

    .line 32
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 33
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput-object v0, p0, Lcom/flurry/android/cw;->eY:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/cw;->eZ:Ljava/util/List;

    .line 35
    invoke-interface {p1}, Ljava/io/DataInput;->readShort()S

    move-result v1

    .line 36
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 38
    iget-object v2, p0, Lcom/flurry/android/cw;->eZ:Ljava/util/List;

    new-instance v3, Lcom/flurry/android/gc;

    invoke-direct {v3, p1}, Lcom/flurry/android/gc;-><init>(Ljava/io/DataInput;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto :goto_0

    .line 40
    :cond_1
    return-void
.end method


# virtual methods
.method final a(Lcom/flurry/android/gc;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/flurry/android/cw;->eZ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method final a(Ljava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    iget v0, p0, Lcom/flurry/android/cw;->eW:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 49
    iget-wide v0, p0, Lcom/flurry/android/cw;->eX:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 50
    iget-object v0, p0, Lcom/flurry/android/cw;->eY:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/flurry/android/cw;->eZ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeShort(I)V

    .line 52
    iget-object v0, p0, Lcom/flurry/android/cw;->eZ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/gc;

    .line 54
    invoke-virtual {v0, p1}, Lcom/flurry/android/gc;->a(Ljava/io/DataOutput;)V

    goto :goto_1

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/cw;->eY:Ljava/lang/String;

    goto :goto_0

    .line 56
    :cond_1
    return-void
.end method

.method final aA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/flurry/android/cw;->eY:Ljava/lang/String;

    return-object v0
.end method

.method final aB()J
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/flurry/android/cw;->eX:J

    return-wide v0
.end method

.method final aC()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/gc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/flurry/android/cw;->eZ:Ljava/util/List;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 80
    if-ne p0, p1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 84
    :cond_1
    instance-of v2, p1, Lcom/flurry/android/cw;

    if-nez v2, :cond_2

    move v0, v1

    .line 85
    goto :goto_0

    .line 88
    :cond_2
    check-cast p1, Lcom/flurry/android/cw;

    .line 90
    iget v2, p0, Lcom/flurry/android/cw;->eW:I

    iget v3, p1, Lcom/flurry/android/cw;->eW:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/flurry/android/cw;->eX:J

    iget-wide v4, p1, Lcom/flurry/android/cw;->eX:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/flurry/android/cw;->eY:Ljava/lang/String;

    iget-object v3, p1, Lcom/flurry/android/cw;->eY:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/flurry/android/cw;->eZ:Ljava/util/List;

    iget-object v3, p1, Lcom/flurry/android/cw;->eZ:Ljava/util/List;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/flurry/android/cw;->eZ:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/flurry/android/cw;->eZ:Ljava/util/List;

    iget-object v3, p1, Lcom/flurry/android/cw;->eZ:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method final getIndex()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/flurry/android/cw;->eW:I

    return v0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 98
    .line 100
    iget v0, p0, Lcom/flurry/android/cw;->eW:I

    or-int/lit8 v0, v0, 0x11

    .line 101
    int-to-long v0, v0

    iget-wide v2, p0, Lcom/flurry/android/cw;->eX:J

    or-long/2addr v0, v2

    long-to-int v0, v0

    .line 103
    iget-object v1, p0, Lcom/flurry/android/cw;->eY:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/flurry/android/cw;->eY:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    or-int/2addr v0, v1

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/flurry/android/cw;->eZ:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/flurry/android/cw;->eZ:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    or-int/2addr v0, v1

    .line 111
    :cond_1
    return v0
.end method
