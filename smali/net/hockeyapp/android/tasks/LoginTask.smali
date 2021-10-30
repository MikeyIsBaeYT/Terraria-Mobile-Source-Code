.class public Lnet/hockeyapp/android/tasks/LoginTask;
.super Landroid/os/AsyncTask;
.source "LoginTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private final mode:I

.field private final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private progressDialog:Landroid/app/ProgressDialog;

.field private showProgressDialog:Z

.field private final urlString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ILjava/util/Map;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "urlString"    # Ljava/lang/String;
    .param p4, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 94
    iput-object p1, p0, Lnet/hockeyapp/android/tasks/LoginTask;->context:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lnet/hockeyapp/android/tasks/LoginTask;->handler:Landroid/os/Handler;

    .line 96
    iput-object p3, p0, Lnet/hockeyapp/android/tasks/LoginTask;->urlString:Ljava/lang/String;

    .line 97
    iput p4, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mode:I

    .line 98
    iput-object p5, p0, Lnet/hockeyapp/android/tasks/LoginTask;->params:Ljava/util/Map;

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/hockeyapp/android/tasks/LoginTask;->showProgressDialog:Z

    .line 101
    if-eqz p1, :cond_0

    .line 102
    invoke-static {p1}, Lnet/hockeyapp/android/Constants;->loadFromContext(Landroid/content/Context;)V

    .line 104
    :cond_0
    return-void
.end method

.method private handleResponse(Ljava/lang/String;)Z
    .locals 10
    .param p1, "responseStr"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 221
    iget-object v8, p0, Lnet/hockeyapp/android/tasks/LoginTask;->context:Landroid/content/Context;

    const-string v9, "net.hockeyapp.android.login"

    invoke-virtual {v8, v9, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 224
    .local v3, "prefs":Landroid/content/SharedPreferences;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 225
    .local v4, "response":Lorg/json/JSONObject;
    const-string v8, "status"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 227
    .local v5, "status":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 265
    .end local v4    # "response":Lorg/json/JSONObject;
    .end local v5    # "status":Ljava/lang/String;
    :cond_0
    :goto_0
    return v6

    .line 231
    .restart local v4    # "response":Lorg/json/JSONObject;
    .restart local v5    # "status":Ljava/lang/String;
    :cond_1
    iget v8, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mode:I

    if-ne v8, v7, :cond_2

    .line 232
    const-string v8, "identified"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 233
    const-string v8, "iuid"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "iuid":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 235
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "iuid"

    invoke-interface {v8, v9, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-static {v8}, Lnet/hockeyapp/android/utils/PrefsUtil;->applyChanges(Landroid/content/SharedPreferences$Editor;)V

    move v6, v7

    .line 236
    goto :goto_0

    .line 240
    .end local v2    # "iuid":Ljava/lang/String;
    :cond_2
    iget v8, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 241
    const-string v8, "authorized"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 242
    const-string v8, "auid"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "auid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 244
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "auid"

    invoke-interface {v8, v9, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-static {v8}, Lnet/hockeyapp/android/utils/PrefsUtil;->applyChanges(Landroid/content/SharedPreferences$Editor;)V

    move v6, v7

    .line 245
    goto :goto_0

    .line 249
    .end local v0    # "auid":Ljava/lang/String;
    :cond_3
    iget v8, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mode:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_5

    .line 250
    const-string v8, "validated"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v6, v7

    .line 251
    goto :goto_0

    .line 254
    :cond_4
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "iuid"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "auid"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-static {v7}, Lnet/hockeyapp/android/utils/PrefsUtil;->applyChanges(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    .end local v4    # "response":Lorg/json/JSONObject;
    .end local v5    # "status":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 264
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 258
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v4    # "response":Lorg/json/JSONObject;
    .restart local v5    # "status":Ljava/lang/String;
    :cond_5
    :try_start_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Login mode "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not supported."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private makeRequest(ILjava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 16
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/client/methods/HttpUriRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 182
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v12, 0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_1

    .line 183
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v7, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 186
    .local v8, "param":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v15, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {v15, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    .end local v8    # "param":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v12, "UTF-8"

    invoke-direct {v3, v7, v12}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 190
    .local v3, "form":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    const-string v12, "UTF-8"

    invoke-virtual {v3, v12}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 191
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/hockeyapp/android/tasks/LoginTask;->urlString:Ljava/lang/String;

    invoke-direct {v5, v12}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 192
    .local v5, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v5, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 213
    .end local v3    # "form":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v5    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v7    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :goto_1
    return-object v5

    .line 196
    :cond_1
    const/4 v12, 0x2

    move/from16 v0, p1

    if-ne v0, v12, :cond_2

    .line 197
    const-string v12, "email"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 198
    .local v2, "email":Ljava/lang/String;
    const-string v12, "password"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 199
    .local v10, "password":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Basic "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 200
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    const/4 v14, 0x2

    .line 199
    invoke-static {v13, v14}, Lnet/hockeyapp/android/utils/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "authStr":Ljava/lang/String;
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/hockeyapp/android/tasks/LoginTask;->urlString:Ljava/lang/String;

    invoke-direct {v5, v12}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 203
    .restart local v5    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    const-string v12, "Authorization"

    invoke-virtual {v5, v12, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 207
    .end local v1    # "authStr":Ljava/lang/String;
    .end local v2    # "email":Ljava/lang/String;
    .end local v5    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v10    # "password":Ljava/lang/String;
    :cond_2
    const/4 v12, 0x3

    move/from16 v0, p1

    if-ne v0, v12, :cond_3

    .line 208
    const-string v12, "type"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 209
    .local v11, "type":Ljava/lang/String;
    const-string v12, "id"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 210
    .local v6, "id":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/hockeyapp/android/tasks/LoginTask;->urlString:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 212
    .local v9, "paramUrl":Ljava/lang/String;
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, v9}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .local v4, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    move-object v5, v4

    .line 213
    goto/16 :goto_1

    .line 216
    .end local v4    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v6    # "id":Ljava/lang/String;
    .end local v9    # "paramUrl":Ljava/lang/String;
    .end local v11    # "type":Ljava/lang/String;
    :cond_3
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Login mode "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " not supported."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12
.end method


# virtual methods
.method public attach(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 111
    iput-object p1, p0, Lnet/hockeyapp/android/tasks/LoginTask;->context:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lnet/hockeyapp/android/tasks/LoginTask;->handler:Landroid/os/Handler;

    .line 113
    return-void
.end method

.method public detach()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lnet/hockeyapp/android/tasks/LoginTask;->context:Landroid/content/Context;

    .line 117
    iput-object v0, p0, Lnet/hockeyapp/android/tasks/LoginTask;->handler:Landroid/os/Handler;

    .line 118
    iput-object v0, p0, Lnet/hockeyapp/android/tasks/LoginTask;->progressDialog:Landroid/app/ProgressDialog;

    .line 119
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 130
    invoke-static {}, Lnet/hockeyapp/android/utils/ConnectionManager;->getInstance()Lnet/hockeyapp/android/utils/ConnectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lnet/hockeyapp/android/utils/ConnectionManager;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    .line 133
    .local v1, "httpClient":Lorg/apache/http/client/HttpClient;
    :try_start_0
    iget v6, p0, Lnet/hockeyapp/android/tasks/LoginTask;->mode:I

    iget-object v7, p0, Lnet/hockeyapp/android/tasks/LoginTask;->params:Ljava/util/Map;

    invoke-direct {p0, v6, v7}, Lnet/hockeyapp/android/tasks/LoginTask;->makeRequest(ILjava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    .line 134
    .local v2, "httpUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 136
    .local v4, "response":Lorg/apache/http/HttpResponse;
    if-eqz v4, :cond_0

    .line 137
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 138
    .local v3, "resEntity":Lorg/apache/http/HttpEntity;
    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v5

    .line 141
    .local v5, "responseStr":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 142
    invoke-direct {p0, v5}, Lnet/hockeyapp/android/tasks/LoginTask;->handleResponse(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 156
    .end local v2    # "httpUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v3    # "resEntity":Lorg/apache/http/HttpEntity;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    .end local v5    # "responseStr":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 156
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    :goto_1
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_0

    .line 149
    :catch_1
    move-exception v0

    .line 150
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_1

    .line 152
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v0

    .line 153
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/LoginTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 161
    iget-object v3, p0, Lnet/hockeyapp/android/tasks/LoginTask;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    .line 163
    :try_start_0
    iget-object v3, p0, Lnet/hockeyapp/android/tasks/LoginTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_0
    :goto_0
    iget-object v3, p0, Lnet/hockeyapp/android/tasks/LoginTask;->handler:Landroid/os/Handler;

    if-eqz v3, :cond_1

    .line 172
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 173
    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 174
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "success"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 176
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 177
    iget-object v3, p0, Lnet/hockeyapp/android/tasks/LoginTask;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 179
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    return-void

    .line 165
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 71
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/LoginTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 123
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/LoginTask;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/hockeyapp/android/tasks/LoginTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lnet/hockeyapp/android/tasks/LoginTask;->showProgressDialog:Z

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/LoginTask;->context:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "Please wait..."

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/tasks/LoginTask;->progressDialog:Landroid/app/ProgressDialog;

    .line 126
    :cond_1
    return-void
.end method

.method public setShowProgressDialog(Z)V
    .locals 0
    .param p1, "showProgressDialog"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lnet/hockeyapp/android/tasks/LoginTask;->showProgressDialog:Z

    .line 108
    return-void
.end method
