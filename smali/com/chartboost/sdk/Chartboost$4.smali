.class final Lcom/chartboost/sdk/Chartboost$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/Chartboost;->createSurfaceView(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1111
    iput-object p1, p0, Lcom/chartboost/sdk/Chartboost$4;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1115
    const-string v0, "VideoInit"

    const-string v1, "preparing activity for video surface"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1116
    new-instance v0, Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/chartboost/sdk/Chartboost$4;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 1117
    iget-object v1, p0, Lcom/chartboost/sdk/Chartboost$4;->a:Landroid/app/Activity;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1118
    return-void
.end method
