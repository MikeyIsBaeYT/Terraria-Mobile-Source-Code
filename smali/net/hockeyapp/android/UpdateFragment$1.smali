.class Lnet/hockeyapp/android/UpdateFragment$1;
.super Lnet/hockeyapp/android/listeners/DownloadFileListener;
.source "UpdateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/UpdateFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/UpdateFragment;

.field final synthetic val$fileDate:Ljava/lang/String;

.field final synthetic val$versionLabel:Landroid/widget/TextView;

.field final synthetic val$versionString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/UpdateFragment;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lnet/hockeyapp/android/UpdateFragment;

    .prologue
    .line 148
    iput-object p1, p0, Lnet/hockeyapp/android/UpdateFragment$1;->this$0:Lnet/hockeyapp/android/UpdateFragment;

    iput-object p2, p0, Lnet/hockeyapp/android/UpdateFragment$1;->val$versionLabel:Landroid/widget/TextView;

    iput-object p3, p0, Lnet/hockeyapp/android/UpdateFragment$1;->val$versionString:Ljava/lang/String;

    iput-object p4, p0, Lnet/hockeyapp/android/UpdateFragment$1;->val$fileDate:Ljava/lang/String;

    invoke-direct {p0}, Lnet/hockeyapp/android/listeners/DownloadFileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadSuccessful(Lnet/hockeyapp/android/tasks/DownloadFileTask;)V
    .locals 9
    .param p1, "task"    # Lnet/hockeyapp/android/tasks/DownloadFileTask;

    .prologue
    .line 151
    instance-of v3, p1, Lnet/hockeyapp/android/tasks/GetFileSizeTask;

    if-eqz v3, :cond_0

    .line 152
    check-cast p1, Lnet/hockeyapp/android/tasks/GetFileSizeTask;

    .end local p1    # "task":Lnet/hockeyapp/android/tasks/DownloadFileTask;
    invoke-virtual {p1}, Lnet/hockeyapp/android/tasks/GetFileSizeTask;->getSize()J

    move-result-wide v0

    .line 153
    .local v0, "appSize":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%.2f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    long-to-float v7, v0

    const/high16 v8, 0x49800000    # 1048576.0f

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " MB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "appSizeString":Ljava/lang/String;
    iget-object v3, p0, Lnet/hockeyapp/android/UpdateFragment$1;->val$versionLabel:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lnet/hockeyapp/android/UpdateFragment$1;->val$versionString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnet/hockeyapp/android/UpdateFragment$1;->val$fileDate:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    .end local v0    # "appSize":J
    .end local v2    # "appSizeString":Ljava/lang/String;
    :cond_0
    return-void
.end method
