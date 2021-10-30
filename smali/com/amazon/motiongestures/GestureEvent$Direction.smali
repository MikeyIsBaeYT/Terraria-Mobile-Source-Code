.class public final Lcom/amazon/motiongestures/GestureEvent$Direction;
.super Ljava/lang/Object;
.source "GestureEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/motiongestures/GestureEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Direction"
.end annotation


# static fields
.field public static final BACK:I = 0x4

.field public static final FORWARD:I = 0x8

.field public static final LEFT:I = 0x1

.field public static final NONE:I = 0x0

.field public static final RIGHT:I = 0x2


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
