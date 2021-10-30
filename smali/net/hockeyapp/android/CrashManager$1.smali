.class final Lnet/hockeyapp/android/CrashManager$1;
.super Ljava/lang/Object;
.source "CrashManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/CrashManager;->showDialog(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ignoreDefaultHandler:Z

.field final synthetic val$listener:Lnet/hockeyapp/android/CrashManagerListener;

.field final synthetic val$weakContext:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/CrashManagerListener;Ljava/lang/ref/WeakReference;Z)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lnet/hockeyapp/android/CrashManager$1;->val$listener:Lnet/hockeyapp/android/CrashManagerListener;

    iput-object p2, p0, Lnet/hockeyapp/android/CrashManager$1;->val$weakContext:Ljava/lang/ref/WeakReference;

    iput-boolean p3, p0, Lnet/hockeyapp/android/CrashManager$1;->val$ignoreDefaultHandler:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 383
    iget-object v0, p0, Lnet/hockeyapp/android/CrashManager$1;->val$listener:Lnet/hockeyapp/android/CrashManagerListener;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lnet/hockeyapp/android/CrashManager$1;->val$listener:Lnet/hockeyapp/android/CrashManagerListener;

    invoke-virtual {v0}, Lnet/hockeyapp/android/CrashManagerListener;->onUserDeniedCrashes()V

    .line 387
    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/CrashManager$1;->val$weakContext:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lnet/hockeyapp/android/CrashManager;->deleteStackTraces(Ljava/lang/ref/WeakReference;)V

    .line 388
    iget-object v0, p0, Lnet/hockeyapp/android/CrashManager$1;->val$weakContext:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lnet/hockeyapp/android/CrashManager$1;->val$listener:Lnet/hockeyapp/android/CrashManagerListener;

    iget-boolean v2, p0, Lnet/hockeyapp/android/CrashManager$1;->val$ignoreDefaultHandler:Z

    invoke-static {v0, v1, v2}, Lnet/hockeyapp/android/CrashManager;->access$000(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    .line 389
    return-void
.end method
