.class Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI$1;
.super Ljava/lang/Object;
.source "CheckUpdateTaskWithUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->showDialog(Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;)V
    .locals 0
    .param p1, "this$0"    # Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;

    .prologue
    .line 115
    iput-object p1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI$1;->this$0:Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI$1;->this$0:Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;

    invoke-virtual {v0}, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->cleanUp()V

    .line 118
    return-void
.end method
