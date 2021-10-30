.class interface abstract Lcom/flurry/android/IFlurryAds;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract cleanUpSession(Landroid/content/Context;)V
.end method

.method public abstract onContinueSession(Landroid/content/Context;)V
.end method

.method public abstract onEndSession(Landroid/content/Context;)V
.end method

.method public abstract onStartNewSession(Landroid/content/Context;JJ)V
.end method

.method public abstract savePersistentAdLogData()V
.end method

.method public abstract savePersistentFreqCapData()V
.end method

.method public abstract setReportedIds(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/android/ReportedIdType;",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation
.end method
