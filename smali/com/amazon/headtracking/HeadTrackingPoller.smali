.class public abstract Lcom/amazon/headtracking/HeadTrackingPoller;
.super Ljava/lang/Object;
.source "HeadTrackingPoller.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract sample(Lcom/amazon/headtracking/HeadTrackingEvent;)Z
.end method

.method public abstract updateConfiguration(Lcom/amazon/headtracking/HeadTrackingConfiguration;)V
.end method
