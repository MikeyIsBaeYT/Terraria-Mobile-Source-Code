.class final Lcom/flurry/android/cy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static fb:I

.field private static fc:Z

.field private static fd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/16 v0, 0xfa0

    sput v0, Lcom/flurry/android/cy;->fb:I

    .line 11
    const/4 v0, 0x0

    sput-boolean v0, Lcom/flurry/android/cy;->fc:Z

    .line 20
    const/4 v0, 0x5

    sput v0, Lcom/flurry/android/cy;->fd:I

    .line 21
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 103
    sget-boolean v0, Lcom/flurry/android/cy;->fc:Z

    if-nez v0, :cond_2

    sget v0, Lcom/flurry/android/cy;->fd:I

    if-gt v0, p0, :cond_2

    .line 104
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_2

    sget v1, Lcom/flurry/android/cy;->fb:I

    sub-int v3, v0, v2

    if-le v1, v3, :cond_1

    move v1, v0

    :goto_2
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_1
    sget v1, Lcom/flurry/android/cy;->fb:I

    add-int/2addr v1, v2

    goto :goto_2

    .line 106
    :cond_2
    return-void
.end method

.method static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Lcom/flurry/android/cy;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    return-void
.end method

.method static aD()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/flurry/android/cy;->fc:Z

    .line 27
    return-void
.end method

.method static aE()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/flurry/android/cy;->fc:Z

    .line 33
    return-void
.end method

.method private static b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/flurry/android/cy;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x6

    invoke-static {v0, p0, p1, p2}, Lcom/flurry/android/cy;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    return-void
.end method

.method static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/flurry/android/cy;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/flurry/android/cy;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/flurry/android/cy;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method static f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/flurry/android/cy;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method static g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/flurry/android/cy;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method static setLogLevel(I)V
    .locals 0

    .prologue
    .line 43
    sput p0, Lcom/flurry/android/cy;->fd:I

    .line 44
    return-void
.end method
