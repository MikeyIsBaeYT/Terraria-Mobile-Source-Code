.class final Lcom/chartboost/sdk/Chartboost$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/Chartboost;->e()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/c;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/c;)V
    .locals 0

    .prologue
    .line 516
    iput-object p1, p0, Lcom/chartboost/sdk/Chartboost$12;->a:Lcom/chartboost/sdk/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$12;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->b()Z

    .line 519
    return-void
.end method
