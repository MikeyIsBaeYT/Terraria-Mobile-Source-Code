.class Lnet/hockeyapp/android/PaintActivity$1;
.super Ljava/lang/Object;
.source "PaintActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/PaintActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/PaintActivity;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/PaintActivity;)V
    .locals 0
    .param p1, "this$0"    # Lnet/hockeyapp/android/PaintActivity;

    .prologue
    .line 125
    iput-object p1, p0, Lnet/hockeyapp/android/PaintActivity$1;->this$0:Lnet/hockeyapp/android/PaintActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 128
    packed-switch p2, :pswitch_data_0

    .line 137
    :goto_0
    return-void

    .line 130
    :pswitch_0
    iget-object v0, p0, Lnet/hockeyapp/android/PaintActivity$1;->this$0:Lnet/hockeyapp/android/PaintActivity;

    invoke-virtual {v0}, Lnet/hockeyapp/android/PaintActivity;->finish()V

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
