.class public Lcom/amazon/motiongestures/Gesture;
.super Ljava/lang/Object;
.source "Gesture.java"


# static fields
.field public static final CONTINUOUS_PEEK:I = 0x10

.field public static final PEEK:I = 0x1

.field public static final TILT:I


# instance fields
.field public final directionMask:I

.field public final id:I

.field public final name:Ljava/lang/String;


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

.method public static getGestureFromId(I)Lcom/amazon/motiongestures/Gesture;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub! You are bundling a stubbed jar in the apk! Please move it to the classpath instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
