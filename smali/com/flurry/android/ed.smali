.class final Lcom/flurry/android/ed;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/responses/AppCloudLoginResponseHandler;


# instance fields
.field private synthetic ga:Ljava/util/HashMap;

.field private synthetic gb:Lcom/flurry/android/gq;

.field private synthetic gc:Lcom/flurry/android/AppCloudResponseHandler;


# direct methods
.method constructor <init>(Ljava/util/HashMap;Lcom/flurry/android/gq;Lcom/flurry/android/AppCloudResponseHandler;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/flurry/android/ed;->ga:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/flurry/android/ed;->gb:Lcom/flurry/android/gq;

    iput-object p3, p0, Lcom/flurry/android/ed;->gc:Lcom/flurry/android/AppCloudResponseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/flurry/android/responses/AppCloudError;)V
    .locals 3

    .prologue
    .line 236
    const-string v0, "FlurryAppCloudRequestManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RELOGIN FAILED DUE TO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/android/responses/AppCloudError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/android/responses/AppCloudError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/flurry/android/AppCloudUser;->setCurrentUser(Lcom/flurry/android/AppCloudUser;)V

    .line 240
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "{code:\"400\",note:\"invalid user session\"}"

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 241
    new-instance v1, Lcom/flurry/android/AppCloudResponse;

    invoke-direct {v1, v0}, Lcom/flurry/android/AppCloudResponse;-><init>(Lorg/json/JSONObject;)V

    .line 242
    iget-object v0, p0, Lcom/flurry/android/ed;->gc:Lcom/flurry/android/AppCloudResponseHandler;

    invoke-interface {v0, v1}, Lcom/flurry/android/AppCloudResponseHandler;->handleResponse(Lcom/flurry/android/AppCloudResponse;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 248
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 245
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final onOperationSucceed(Lcom/flurry/android/AppCloudUser;)V
    .locals 4

    .prologue
    .line 208
    const-string v0, "FlurryAppCloudRequestManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RELOGIN SUCCEED, new APPCLOUD_USER_SESSION = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/flurry/android/FlurryAppCloudRequestManager;->UserSession:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/ed;->ga:Ljava/util/HashMap;

    invoke-static {}, Lcom/flurry/android/FlurryAppCloudRequestManager;->ap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v0, p0, Lcom/flurry/android/ed;->ga:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/flurry/android/FlurryAppCloudRequestManager;->b(Ljava/util/HashMap;)V

    .line 214
    sget-object v0, Lcom/flurry/android/ef;->gd:[I

    iget-object v1, p0, Lcom/flurry/android/ed;->gb:Lcom/flurry/android/gq;

    invoke-virtual {v1}, Lcom/flurry/android/gq;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 232
    :goto_0
    return-void

    .line 217
    :pswitch_0
    new-instance v0, Lcom/flurry/android/ap;

    invoke-direct {v0}, Lcom/flurry/android/ap;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/HashMap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/flurry/android/ed;->ga:Ljava/util/HashMap;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/flurry/android/ap;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 220
    :pswitch_1
    :try_start_1
    new-instance v0, Lcom/flurry/android/bt;

    invoke-direct {v0}, Lcom/flurry/android/bt;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/HashMap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/flurry/android/ed;->ga:Ljava/util/HashMap;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/flurry/android/bt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 223
    :pswitch_2
    new-instance v0, Lcom/flurry/android/fw;

    invoke-direct {v0}, Lcom/flurry/android/fw;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/HashMap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/flurry/android/ed;->ga:Ljava/util/HashMap;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/flurry/android/fw;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 226
    :pswitch_3
    new-instance v0, Lcom/flurry/android/fb;

    invoke-direct {v0}, Lcom/flurry/android/fb;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/HashMap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/flurry/android/ed;->ga:Ljava/util/HashMap;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/flurry/android/fb;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
