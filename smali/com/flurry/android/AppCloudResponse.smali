.class public Lcom/flurry/android/AppCloudResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bW:Lcom/flurry/android/AppCloudObject;

.field bX:Lcom/flurry/android/AppCloudUser;

.field bY:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/flurry/android/AppCloudResponse;->bY:Lorg/json/JSONObject;

    .line 16
    return-void
.end method


# virtual methods
.method public getHTTPResponseCode()I
    .locals 2

    .prologue
    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/AppCloudResponse;->bY:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/flurry/android/AppCloudResponse;->bY:Lorg/json/JSONObject;

    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 88
    :goto_0
    return v0

    .line 82
    :cond_0
    const/16 v0, 0x190

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 88
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getObject()Lcom/flurry/android/AppCloudObject;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/flurry/android/AppCloudResponse;->bW:Lcom/flurry/android/AppCloudObject;

    return-object v0
.end method

.method public getResponse()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/flurry/android/AppCloudResponse;->bY:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/AppCloudResponse;->bY:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/flurry/android/AppCloudResponse;->bY:Lorg/json/JSONObject;

    const-string v1, "note"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    .line 40
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 44
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getUser()Lcom/flurry/android/AppCloudUser;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/flurry/android/AppCloudResponse;->bX:Lcom/flurry/android/AppCloudUser;

    return-object v0
.end method

.method public isSuccessful()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/flurry/android/AppCloudResponse;->bY:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/flurry/android/AppCloudResponse;->bY:Lorg/json/JSONObject;

    const-string v2, "code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/flurry/android/AppCloudResponse;->bY:Lorg/json/JSONObject;

    const-string v2, "code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/16 v2, 0xc9

    if-ne v1, v2, :cond_1

    .line 23
    :cond_0
    const/4 v0, 0x1

    .line 31
    :cond_1
    :goto_0
    return v0

    .line 27
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setObject(Lcom/flurry/android/AppCloudObject;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/flurry/android/AppCloudResponse;->bW:Lcom/flurry/android/AppCloudObject;

    .line 55
    return-void
.end method

.method public setUser(Lcom/flurry/android/AppCloudUser;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/flurry/android/AppCloudResponse;->bX:Lcom/flurry/android/AppCloudUser;

    .line 60
    return-void
.end method
