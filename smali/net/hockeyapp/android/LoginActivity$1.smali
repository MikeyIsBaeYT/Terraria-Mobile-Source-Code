.class Lnet/hockeyapp/android/LoginActivity$1;
.super Landroid/os/Handler;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/LoginActivity;->initLoginHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/LoginActivity;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/LoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lnet/hockeyapp/android/LoginActivity;

    .prologue
    .line 117
    iput-object p1, p0, Lnet/hockeyapp/android/LoginActivity$1;->this$0:Lnet/hockeyapp/android/LoginActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 121
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "success"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 123
    .local v1, "success":Z
    if-eqz v1, :cond_1

    .line 124
    iget-object v2, p0, Lnet/hockeyapp/android/LoginActivity$1;->this$0:Lnet/hockeyapp/android/LoginActivity;

    invoke-virtual {v2}, Lnet/hockeyapp/android/LoginActivity;->finish()V

    .line 126
    sget-object v2, Lnet/hockeyapp/android/LoginManager;->listener:Lnet/hockeyapp/android/LoginManagerListener;

    if-eqz v2, :cond_0

    .line 127
    sget-object v2, Lnet/hockeyapp/android/LoginManager;->listener:Lnet/hockeyapp/android/LoginManagerListener;

    invoke-virtual {v2}, Lnet/hockeyapp/android/LoginManagerListener;->onSuccess()V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v2, p0, Lnet/hockeyapp/android/LoginActivity$1;->this$0:Lnet/hockeyapp/android/LoginActivity;

    const-string v3, "Login failed. Check your credentials."

    const/16 v4, 0x7d0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
