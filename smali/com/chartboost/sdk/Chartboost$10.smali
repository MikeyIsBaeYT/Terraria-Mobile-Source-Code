.class final Lcom/chartboost/sdk/Chartboost$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/Chartboost;->onPause(Landroid/app/Activity;)V
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
    .line 408
    iput-object p1, p0, Lcom/chartboost/sdk/Chartboost$10;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$10;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/k;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/k;

    move-result-object v0

    .line 412
    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->d(Lcom/chartboost/sdk/Libraries/k;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->b(Lcom/chartboost/sdk/Libraries/k;)V

    .line 415
    :cond_0
    return-void
.end method
