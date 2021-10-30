.class final Lcom/flurry/android/ey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/responses/AppCloudSearchResultCompletionHandler;


# instance fields
.field private synthetic gE:Lcom/flurry/android/responses/AppCloudEnumSearchResultCompletionHandler;

.field private synthetic gF:I

.field private synthetic gG:I

.field private synthetic gH:Z

.field private synthetic gq:Lcom/flurry/android/AppCloudSearch;


# direct methods
.method constructor <init>(Lcom/flurry/android/AppCloudSearch;Lcom/flurry/android/responses/AppCloudEnumSearchResultCompletionHandler;IIZ)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/flurry/android/ey;->gq:Lcom/flurry/android/AppCloudSearch;

    iput-object p2, p0, Lcom/flurry/android/ey;->gE:Lcom/flurry/android/responses/AppCloudEnumSearchResultCompletionHandler;

    iput p3, p0, Lcom/flurry/android/ey;->gF:I

    iput p4, p0, Lcom/flurry/android/ey;->gG:I

    iput-boolean p5, p0, Lcom/flurry/android/ey;->gH:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/flurry/android/responses/AppCloudError;)V
    .locals 2

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/flurry/android/ey;->gH:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/flurry/android/responses/AppCloudError;->getErrorCode()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/flurry/android/responses/AppCloudError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not Found"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/ey;->gE:Lcom/flurry/android/responses/AppCloudEnumSearchResultCompletionHandler;

    invoke-interface {v0, p1}, Lcom/flurry/android/responses/AppCloudEnumSearchResultCompletionHandler;->onError(Lcom/flurry/android/responses/AppCloudError;)V

    goto :goto_0
.end method

.method public final onOperationSucceed([Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 289
    iget-object v0, p0, Lcom/flurry/android/ey;->gE:Lcom/flurry/android/responses/AppCloudEnumSearchResultCompletionHandler;

    iget v1, p0, Lcom/flurry/android/ey;->gF:I

    invoke-interface {v0, p1, v1}, Lcom/flurry/android/responses/AppCloudEnumSearchResultCompletionHandler;->onOperationSucceed([Ljava/lang/Object;I)Z

    move-result v1

    .line 291
    array-length v0, p1

    iget v2, p0, Lcom/flurry/android/ey;->gG:I

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_1

    const/4 v0, 0x1

    .line 293
    :goto_0
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/flurry/android/ey;->gq:Lcom/flurry/android/AppCloudSearch;

    iget v1, p0, Lcom/flurry/android/ey;->gG:I

    iget v2, p0, Lcom/flurry/android/ey;->gF:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/flurry/android/ey;->gE:Lcom/flurry/android/responses/AppCloudEnumSearchResultCompletionHandler;

    invoke-static {v0, v1, v2, v3}, Lcom/flurry/android/AppCloudSearch;->a(Lcom/flurry/android/AppCloudSearch;IILcom/flurry/android/responses/AppCloudEnumSearchResultCompletionHandler;)V

    .line 296
    :cond_0
    return-void

    .line 291
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
