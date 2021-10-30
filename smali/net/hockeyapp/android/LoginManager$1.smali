.class final Lnet/hockeyapp/android/LoginManager$1;
.super Landroid/os/Handler;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/LoginManager;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lnet/hockeyapp/android/LoginManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 147
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 148
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "success"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 150
    .local v1, "success":Z
    if-nez v1, :cond_0

    .line 151
    iget-object v2, p0, Lnet/hockeyapp/android/LoginManager$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lnet/hockeyapp/android/LoginManager;->access$000(Landroid/content/Context;)V

    .line 153
    :cond_0
    return-void
.end method
