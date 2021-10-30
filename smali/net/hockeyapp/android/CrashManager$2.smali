.class final Lnet/hockeyapp/android/CrashManager$2;
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
.method constructor <init>(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lnet/hockeyapp/android/CrashManager$2;->val$weakContext:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lnet/hockeyapp/android/CrashManager$2;->val$listener:Lnet/hockeyapp/android/CrashManagerListener;

    iput-boolean p3, p0, Lnet/hockeyapp/android/CrashManager$2;->val$ignoreDefaultHandler:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lnet/hockeyapp/android/CrashManager$2;->val$weakContext:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 397
    iget-object v2, p0, Lnet/hockeyapp/android/CrashManager$2;->val$weakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "context":Landroid/content/Context;
    check-cast v0, Landroid/content/Context;

    .line 400
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    if-nez v0, :cond_1

    .line 408
    :goto_0
    return-void

    .line 404
    :cond_1
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 405
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "always_send_crash_reports"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 407
    iget-object v2, p0, Lnet/hockeyapp/android/CrashManager$2;->val$weakContext:Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lnet/hockeyapp/android/CrashManager$2;->val$listener:Lnet/hockeyapp/android/CrashManagerListener;

    iget-boolean v4, p0, Lnet/hockeyapp/android/CrashManager$2;->val$ignoreDefaultHandler:Z

    invoke-static {v2, v3, v4}, Lnet/hockeyapp/android/CrashManager;->access$100(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    goto :goto_0
.end method
