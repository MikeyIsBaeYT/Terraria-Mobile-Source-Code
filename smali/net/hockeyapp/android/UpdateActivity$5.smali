.class Lnet/hockeyapp/android/UpdateActivity$5;
.super Ljava/lang/Object;
.source "UpdateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/UpdateActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/UpdateActivity;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/UpdateActivity;)V
    .locals 0
    .param p1, "this$0"    # Lnet/hockeyapp/android/UpdateActivity;

    .prologue
    .line 345
    iput-object p1, p0, Lnet/hockeyapp/android/UpdateActivity$5;->this$0:Lnet/hockeyapp/android/UpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 347
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity$5;->this$0:Lnet/hockeyapp/android/UpdateActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/hockeyapp/android/UpdateActivity;->access$002(Lnet/hockeyapp/android/UpdateActivity;Lnet/hockeyapp/android/objects/ErrorObject;)Lnet/hockeyapp/android/objects/ErrorObject;

    .line 348
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 349
    return-void
.end method
