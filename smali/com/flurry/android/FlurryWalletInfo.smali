.class public Lcom/flurry/android/FlurryWalletInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field iv:Ljava/lang/String;

.field iw:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrencyAmount()F
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/flurry/android/FlurryWalletInfo;->iw:F

    return v0
.end method

.method public getCurrencyKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/flurry/android/FlurryWalletInfo;->iv:Ljava/lang/String;

    return-object v0
.end method
