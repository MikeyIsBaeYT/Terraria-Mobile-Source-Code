.class Lcom/codeglue/terraria/OctarineView$1;
.super Ljava/lang/Object;
.source "OctarineView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codeglue/terraria/OctarineView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codeglue/terraria/OctarineView;


# direct methods
.method constructor <init>(Lcom/codeglue/terraria/OctarineView;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/codeglue/terraria/OctarineView$1;->this$0:Lcom/codeglue/terraria/OctarineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 51
    const-string v0, "Octarine"

    const-string v1, "[LIFE] surfaceChanged - callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 56
    const-string v0, "Octarine"

    const-string v1, "[LIFE] surfaceCreated - callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 61
    const-string v0, "Octarine"

    const-string v1, "[LIFE] surfaceDestroyed - callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {}, Lcom/codeglue/terraria/OctarineBridge;->nativeOnSurfaceDestroyed()V

    .line 64
    return-void
.end method
