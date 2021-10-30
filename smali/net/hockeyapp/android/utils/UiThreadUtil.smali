.class public Lnet/hockeyapp/android/utils/UiThreadUtil;
.super Ljava/lang/Object;
.source "UiThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hockeyapp/android/utils/UiThreadUtil$WbUtilHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Lnet/hockeyapp/android/utils/UiThreadUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/hockeyapp/android/utils/UiThreadUtil$1;

    .prologue
    .line 37
    invoke-direct {p0}, Lnet/hockeyapp/android/utils/UiThreadUtil;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/hockeyapp/android/utils/UiThreadUtil;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lnet/hockeyapp/android/utils/UiThreadUtil$WbUtilHolder;->INSTANCE:Lnet/hockeyapp/android/utils/UiThreadUtil;

    return-object v0
.end method


# virtual methods
.method public dismissLoading(Ljava/lang/ref/WeakReference;Landroid/app/ProgressDialog;)V
    .locals 2
    .param p2, "progressDialog"    # Landroid/app/ProgressDialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/app/ProgressDialog;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 78
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 79
    new-instance v1, Lnet/hockeyapp/android/utils/UiThreadUtil$2;

    invoke-direct {v1, p0, p2}, Lnet/hockeyapp/android/utils/UiThreadUtil$2;-><init>(Lnet/hockeyapp/android/utils/UiThreadUtil;Landroid/app/ProgressDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 90
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method public dismissLoadingDialogAndDisplayError(Ljava/lang/ref/WeakReference;Landroid/app/ProgressDialog;I)V
    .locals 2
    .param p2, "progressDialog"    # Landroid/app/ProgressDialog;
    .param p3, "errorDialogId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/app/ProgressDialog;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 58
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 59
    new-instance v1, Lnet/hockeyapp/android/utils/UiThreadUtil$1;

    invoke-direct {v1, p0, p2, v0, p3}, Lnet/hockeyapp/android/utils/UiThreadUtil$1;-><init>(Lnet/hockeyapp/android/utils/UiThreadUtil;Landroid/app/ProgressDialog;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 73
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method public displayToastMessage(Ljava/lang/ref/WeakReference;Ljava/lang/String;I)V
    .locals 2
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 95
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 96
    new-instance v1, Lnet/hockeyapp/android/utils/UiThreadUtil$3;

    invoke-direct {v1, p0, v0, p2, p3}, Lnet/hockeyapp/android/utils/UiThreadUtil$3;-><init>(Lnet/hockeyapp/android/utils/UiThreadUtil;Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 104
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-void
.end method
