.class final Lcom/flurry/android/cg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/flurry/android/cg;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/cg;->p:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static a(Ljava/io/DataInput;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/cw;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    .line 34
    const v1, 0xb5fa

    if-eq v1, v0, :cond_0

    .line 35
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected data format"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    invoke-static {p0}, Lcom/flurry/android/cg;->b(Ljava/io/DataInput;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/List;Ljava/io/DataOutput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/cw;",
            ">;",
            "Ljava/io/DataOutput;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    const v0, 0xb5fa

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeShort(I)V

    .line 27
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/cw;

    const/4 v2, 0x1

    :try_start_0
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeShort(I)V

    invoke-virtual {v0, p1}, Lcom/flurry/android/cw;->a(Ljava/io/DataOutput;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/android/cg;->p:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to write adLog with GUID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/flurry/android/cw;->aA()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0, v1}, Lcom/flurry/android/cy;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeShort(I)V

    .line 29
    return-void
.end method

.method private static b(Ljava/io/DataInput;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/cw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    .line 61
    const/4 v2, 0x1

    if-eq v2, v0, :cond_0

    .line 68
    :goto_1
    return-object v1

    .line 64
    :cond_0
    new-instance v0, Lcom/flurry/android/cw;

    invoke-direct {v0, p0}, Lcom/flurry/android/cw;-><init>(Ljava/io/DataInput;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/android/cg;->p:Ljava/lang/String;

    const-string v4, "unable to read adLog: "

    invoke-static {v2, v3, v4, v0}, Lcom/flurry/android/cy;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
