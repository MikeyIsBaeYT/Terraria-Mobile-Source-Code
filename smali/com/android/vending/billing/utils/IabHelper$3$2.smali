.class Lcom/android/vending/billing/utils/IabHelper$3$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/billing/utils/IabHelper$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/vending/billing/utils/IabHelper$3;

.field final synthetic val$results:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/vending/billing/utils/IabHelper$3;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 998
    iput-object p1, p0, Lcom/android/vending/billing/utils/IabHelper$3$2;->this$1:Lcom/android/vending/billing/utils/IabHelper$3;

    iput-object p2, p0, Lcom/android/vending/billing/utils/IabHelper$3$2;->val$results:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/android/vending/billing/utils/IabHelper$3$2;->this$1:Lcom/android/vending/billing/utils/IabHelper$3;

    iget-object v0, v0, Lcom/android/vending/billing/utils/IabHelper$3;->val$multiListener:Lcom/android/vending/billing/utils/IabHelper$OnConsumeMultiFinishedListener;

    iget-object v1, p0, Lcom/android/vending/billing/utils/IabHelper$3$2;->this$1:Lcom/android/vending/billing/utils/IabHelper$3;

    iget-object v1, v1, Lcom/android/vending/billing/utils/IabHelper$3;->val$purchases:Ljava/util/List;

    iget-object v2, p0, Lcom/android/vending/billing/utils/IabHelper$3$2;->val$results:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/android/vending/billing/utils/IabHelper$OnConsumeMultiFinishedListener;->onConsumeMultiFinished(Ljava/util/List;Ljava/util/List;)V

    .line 1001
    return-void
.end method
