.class final Lcom/flurry/android/dm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method synthetic constructor <init>()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/android/dm;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 118
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    invoke-virtual {v0, p2}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    const-string v1, "FlurryAgent"

    const-string v2, "Failed to handle uncaught exception"

    invoke-static {v1, v2, v0}, Lcom/flurry/android/cy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
