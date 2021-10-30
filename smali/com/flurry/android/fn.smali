.class final Lcom/flurry/android/fn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/android/RequestListener;


# instance fields
.field private synthetic hI:Lcom/flurry/android/fo;


# direct methods
.method constructor <init>(Lcom/flurry/android/fo;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/flurry/android/fn;->hI:Lcom/flurry/android/fo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAd;)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/flurry/android/fn;->hI:Lcom/flurry/android/fo;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/fo;->onAdClicked(Ljava/util/Map;)V

    .line 114
    invoke-static {}, Lcom/flurry/android/fo;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Millennial MMAdView banner overlay launched."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method

.method public final MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAd;)V
    .locals 2

    .prologue
    .line 120
    invoke-static {}, Lcom/flurry/android/fo;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Millennial MMAdView banner request is caching."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method

.method public final requestCompleted(Lcom/millennialmedia/android/MMAd;)V
    .locals 4

    .prologue
    .line 106
    iget-object v0, p0, Lcom/flurry/android/fn;->hI:Lcom/flurry/android/fo;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/fo;->onAdShown(Ljava/util/Map;)V

    .line 107
    invoke-static {}, Lcom/flurry/android/fo;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Millennial MMAdView returned ad."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method

.method public final requestFailed(Lcom/millennialmedia/android/MMAd;Lcom/millennialmedia/android/MMException;)V
    .locals 5

    .prologue
    .line 99
    iget-object v0, p0, Lcom/flurry/android/fn;->hI:Lcom/flurry/android/fo;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/fo;->onRenderFailed(Ljava/util/Map;)V

    .line 100
    invoke-static {}, Lcom/flurry/android/fo;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Millennial MMAdView failed to load ad with error: %d %s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/millennialmedia/android/MMException;->getCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/millennialmedia/android/MMException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method
