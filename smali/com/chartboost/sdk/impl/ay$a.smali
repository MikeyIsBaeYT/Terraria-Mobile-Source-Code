.class Lcom/chartboost/sdk/impl/ay$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/ay;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/ay;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ay$a;->a:Lcom/chartboost/sdk/impl/ay;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 83
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 87
    invoke-static {}, Lcom/chartboost/sdk/impl/ay;->a()Lcom/chartboost/sdk/impl/ay;

    move-result-object v0

    .line 88
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/ay;->a(Landroid/content/Context;)V

    .line 89
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ay;->notifyObservers()V

    .line 90
    return-void
.end method
