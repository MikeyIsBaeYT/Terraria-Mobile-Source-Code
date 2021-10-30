.class final Lcom/chartboost/sdk/Chartboost$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/Chartboost;->startWithAppId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/chartboost/sdk/Chartboost$1;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/chartboost/sdk/Chartboost$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/chartboost/sdk/Chartboost$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 148
    new-instance v0, Lcom/chartboost/sdk/Chartboost;

    iget-object v1, p0, Lcom/chartboost/sdk/Chartboost$1;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/chartboost/sdk/Chartboost$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/chartboost/sdk/Chartboost$1;->c:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/chartboost/sdk/Chartboost;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Chartboost$1;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/Chartboost;)Lcom/chartboost/sdk/Chartboost;

    .line 149
    return-void
.end method
