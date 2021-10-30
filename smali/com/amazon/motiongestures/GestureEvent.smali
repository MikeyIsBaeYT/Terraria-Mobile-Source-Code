.class public final Lcom/amazon/motiongestures/GestureEvent;
.super Ljava/lang/Object;
.source "GestureEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/motiongestures/GestureEvent$Direction;,
        Lcom/amazon/motiongestures/GestureEvent$Action;
    }
.end annotation


# instance fields
.field public action:I

.field public direction:I

.field public gestureId:I

.field public magnitude:F

.field public rotation:I

.field public timestamp_nsecs:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub! You are bundling a stubbed jar in the apk! Please move it to the classpath instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
