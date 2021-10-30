.class public Lcom/codeglue/terraria/CustomResultReceiver;
.super Landroid/os/ResultReceiver;
.source "CustomResultReceiver.java"


# instance fields
.field receiver:Lcom/codeglue/terraria/Receiver;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 14
    return-void
.end method


# virtual methods
.method public SetReceiver(Lcom/codeglue/terraria/Receiver;)V
    .locals 0
    .param p1, "receiver"    # Lcom/codeglue/terraria/Receiver;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/codeglue/terraria/CustomResultReceiver;->receiver:Lcom/codeglue/terraria/Receiver;

    .line 20
    return-void
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/codeglue/terraria/CustomResultReceiver;->receiver:Lcom/codeglue/terraria/Receiver;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/codeglue/terraria/CustomResultReceiver;->receiver:Lcom/codeglue/terraria/Receiver;

    invoke-interface {v0, p1, p2}, Lcom/codeglue/terraria/Receiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 29
    :cond_0
    return-void
.end method
