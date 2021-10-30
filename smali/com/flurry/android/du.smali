.class final Lcom/flurry/android/du;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/responses/AppCloudLoginResponseHandler;


# instance fields
.field private synthetic fD:Ljava/lang/String;

.field private synthetic fE:Lcom/flurry/android/FlurryWalletHandler;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/flurry/android/FlurryWalletHandler;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/flurry/android/du;->fD:Ljava/lang/String;

    iput-object p2, p0, Lcom/flurry/android/du;->fE:Lcom/flurry/android/FlurryWalletHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/flurry/android/responses/AppCloudError;)V
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/flurry/android/du;->fE:Lcom/flurry/android/FlurryWalletHandler;

    new-instance v1, Lcom/flurry/android/responses/AppCloudError;

    invoke-virtual {p1}, Lcom/flurry/android/responses/AppCloudError;->getErrorCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/flurry/android/responses/AppCloudError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/flurry/android/responses/AppCloudError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/flurry/android/FlurryWalletHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    .line 74
    return-void
.end method

.method public final onOperationSucceed(Lcom/flurry/android/AppCloudUser;)V
    .locals 3

    .prologue
    .line 66
    invoke-static {p1}, Lcom/flurry/android/FlurryWallet;->a(Lcom/flurry/android/AppCloudUser;)Lcom/flurry/android/AppCloudUser;

    .line 67
    invoke-virtual {p1}, Lcom/flurry/android/AppCloudUser;->getId()Ljava/lang/String;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/flurry/android/du;->fD:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/android/du;->fE:Lcom/flurry/android/FlurryWalletHandler;

    invoke-static {v1, v0, v2}, Lcom/flurry/android/FlurryWallet;->addObserverForUser(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/android/FlurryWalletHandler;)V

    .line 69
    return-void
.end method
