.class public Lcom/amazon/headtracking/HeadTrackingConfiguration$Fidelity;
.super Ljava/lang/Object;
.source "HeadTrackingConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/headtracking/HeadTrackingConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fidelity"
.end annotation


# static fields
.field public static final HIGH:I = 0x3

.field public static final LOW_POWER:I = 0x1

.field public static final NORMAL:I = 0x2


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
