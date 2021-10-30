.class public abstract Lcom/chartboost/sdk/impl/cp;
.super Ljava/io/OutputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Ljava/io/OutputStream;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public a(D)V
    .locals 3

    .prologue
    .line 153
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/cp;->a(J)V

    .line 154
    return-void
.end method

.method public abstract a(I)V
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/cp;->a()I

    move-result v0

    .line 136
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/cp;->a(I)V

    .line 137
    invoke-virtual {p0, p2}, Lcom/chartboost/sdk/impl/cp;->c(I)V

    .line 138
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/cp;->a(I)V

    .line 139
    return-void
.end method

.method public a(J)V
    .locals 5

    .prologue
    const-wide/16 v2, 0xff

    .line 142
    const/4 v0, 0x0

    shr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/cp;->write(I)V

    .line 143
    const/16 v0, 0x8

    shr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/cp;->write(I)V

    .line 144
    const/16 v0, 0x10

    shr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/cp;->write(I)V

    .line 145
    const/16 v0, 0x18

    shr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/cp;->write(I)V

    .line 146
    const/16 v0, 0x20

    shr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/cp;->write(I)V

    .line 147
    const/16 v0, 0x28

    shr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/cp;->write(I)V

    .line 148
    const/16 v0, 0x30

    shr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/cp;->write(I)V

    .line 149
    const/16 v0, 0x38

    shr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/cp;->write(I)V

    .line 150
    return-void
.end method

.method public abstract b()I
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 121
    shr-int/lit8 v0, p1, 0x0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/cp;->write(I)V

    .line 122
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/cp;->write(I)V

    .line 123
    shr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/cp;->write(I)V

    .line 124
    shr-int/lit8 v0, p1, 0x18

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/cp;->write(I)V

    .line 125
    return-void
.end method

.method public c()[B
    .locals 3

    .prologue
    .line 52
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/cp;->b()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 53
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/cp;->a(Ljava/io/OutputStream;)I

    .line 54
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "should be impossible"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 128
    shr-int/lit8 v0, p1, 0x18

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/cp;->write(I)V

    .line 129
    shr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/cp;->write(I)V

    .line 130
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/cp;->write(I)V

    .line 131
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/cp;->write(I)V

    .line 132
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/cp;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/cp;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract write(I)V
.end method

.method public abstract write([B)V
.end method
