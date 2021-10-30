.class final Lnet/hockeyapp/android/CrashManager$4;
.super Ljava/lang/Thread;
.source "CrashManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/CrashManager;->sendCrashes(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lnet/hockeyapp/android/CrashManagerListener;

.field final synthetic val$weakContext:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lnet/hockeyapp/android/CrashManager$4;->val$weakContext:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lnet/hockeyapp/android/CrashManager$4;->val$listener:Lnet/hockeyapp/android/CrashManagerListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lnet/hockeyapp/android/CrashManager$4;->val$weakContext:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lnet/hockeyapp/android/CrashManager$4;->val$listener:Lnet/hockeyapp/android/CrashManagerListener;

    invoke-static {v0, v1}, Lnet/hockeyapp/android/CrashManager;->submitStackTraces(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;)V

    .line 435
    const/4 v0, 0x0

    invoke-static {v0}, Lnet/hockeyapp/android/CrashManager;->access$202(Z)Z

    .line 436
    return-void
.end method
