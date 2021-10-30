.class Lcom/chartboost/sdk/impl/ba$1;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/ba;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/ba;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/ba;JJ)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ba$1;->a:Lcom/chartboost/sdk/impl/ba;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba$1;->a:Lcom/chartboost/sdk/impl/ba;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ba;->c()V

    .line 563
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 560
    return-void
.end method
