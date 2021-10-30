.class public interface abstract Lcom/bda/controller/IControllerListener;
.super Ljava/lang/Object;
.source "IControllerListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bda/controller/IControllerListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onKeyEvent(Lcom/bda/controller/KeyEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onMotionEvent(Lcom/bda/controller/MotionEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStateEvent(Lcom/bda/controller/StateEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
