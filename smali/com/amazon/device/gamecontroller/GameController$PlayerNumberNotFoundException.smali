.class public Lcom/amazon/device/gamecontroller/GameController$PlayerNumberNotFoundException;
.super Ljava/lang/Exception;
.source "GameController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/gamecontroller/GameController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayerNumberNotFoundException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub! You are bundling a stubbed jar in the apk! Please move it to the classpath instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
