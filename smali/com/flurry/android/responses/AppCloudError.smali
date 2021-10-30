.class public Lcom/flurry/android/responses/AppCloudError;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private fa:I

.field private mErrorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/flurry/android/responses/AppCloudError;->fa:I

    .line 9
    iput-object p2, p0, Lcom/flurry/android/responses/AppCloudError;->mErrorMessage:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/flurry/android/responses/AppCloudError;->fa:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/flurry/android/responses/AppCloudError;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method
