.class public final Lcom/amazon/motiongestures/GestureEvent$Action;
.super Ljava/lang/Object;
.source "GestureEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/motiongestures/GestureEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Action"
.end annotation


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final OFF:I = 0x2

.field public static final ON:I = 0x1

.field public static final UPDATE:I = 0x4


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
