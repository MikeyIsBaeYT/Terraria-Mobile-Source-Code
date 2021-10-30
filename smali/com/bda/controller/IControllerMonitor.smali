.class public interface abstract Lcom/bda/controller/IControllerMonitor;
.super Ljava/lang/Object;
.source "IControllerMonitor.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bda/controller/IControllerMonitor$Stub;
    }
.end annotation


# virtual methods
.method public abstract onLog(IILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
