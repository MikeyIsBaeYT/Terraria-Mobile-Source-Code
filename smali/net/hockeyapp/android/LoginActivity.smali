.class public Lnet/hockeyapp/android/LoginActivity;
.super Landroid/app/Activity;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private loginHandler:Landroid/os/Handler;

.field private loginTask:Lnet/hockeyapp/android/tasks/LoginTask;

.field private mode:I

.field private secret:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private configureView()V
    .locals 4

    .prologue
    .line 107
    iget v2, p0, Lnet/hockeyapp/android/LoginActivity;->mode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 108
    const/16 v2, 0x3004

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 109
    .local v1, "passwordInput":Landroid/widget/EditText;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 112
    .end local v1    # "passwordInput":Landroid/widget/EditText;
    :cond_0
    const/16 v2, 0x3005

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 113
    .local v0, "loginButton":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    return-void
.end method

.method private initLoginHandler()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lnet/hockeyapp/android/LoginActivity$1;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/LoginActivity$1;-><init>(Lnet/hockeyapp/android/LoginActivity;)V

    iput-object v0, p0, Lnet/hockeyapp/android/LoginActivity;->loginHandler:Landroid/os/Handler;

    .line 135
    return-void
.end method

.method private performAuthentication()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 138
    const/16 v0, 0x3003

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 139
    .local v6, "email":Ljava/lang/String;
    const/16 v0, 0x3004

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 141
    .local v7, "password":Ljava/lang/String;
    const/4 v8, 0x0

    .line 142
    .local v8, "ready":Z
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 144
    .local v5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v0, p0, Lnet/hockeyapp/android/LoginActivity;->mode:I

    if-ne v0, v1, :cond_2

    .line 145
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v8, v1

    .line 146
    :goto_0
    const-string v0, "email"

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v0, "authcode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnet/hockeyapp/android/LoginActivity;->secret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/LoginActivity;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_0
    :goto_1
    if-eqz v8, :cond_4

    .line 156
    new-instance v0, Lnet/hockeyapp/android/tasks/LoginTask;

    iget-object v2, p0, Lnet/hockeyapp/android/LoginActivity;->loginHandler:Landroid/os/Handler;

    iget-object v3, p0, Lnet/hockeyapp/android/LoginActivity;->url:Ljava/lang/String;

    iget v4, p0, Lnet/hockeyapp/android/LoginActivity;->mode:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lnet/hockeyapp/android/tasks/LoginTask;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ILjava/util/Map;)V

    iput-object v0, p0, Lnet/hockeyapp/android/LoginActivity;->loginTask:Lnet/hockeyapp/android/tasks/LoginTask;

    .line 157
    iget-object v0, p0, Lnet/hockeyapp/android/LoginActivity;->loginTask:Lnet/hockeyapp/android/tasks/LoginTask;

    invoke-static {v0}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 162
    :goto_2
    return-void

    :cond_1
    move v8, v2

    .line 145
    goto :goto_0

    .line 149
    :cond_2
    iget v0, p0, Lnet/hockeyapp/android/LoginActivity;->mode:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 150
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    move v8, v1

    .line 151
    :goto_3
    const-string v0, "email"

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v0, "password"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move v8, v2

    .line 150
    goto :goto_3

    .line 160
    :cond_4
    const/16 v0, 0x501

    invoke-static {v0}, Lnet/hockeyapp/android/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method


# virtual methods
.method public md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 167
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 168
    .local v1, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 169
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 172
    .local v5, "messageDigest":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .local v4, "hexString":Ljava/lang/StringBuilder;
    array-length v7, v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_1

    aget-byte v0, v5, v6

    .line 174
    .local v0, "aMessageDigest":B
    and-int/lit16 v8, v0, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, "h":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_0

    .line 176
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 177
    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 179
    .end local v0    # "aMessageDigest":B
    .end local v3    # "h":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 184
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v4    # "hexString":Ljava/lang/StringBuilder;
    .end local v5    # "messageDigest":[B
    :goto_2
    return-object v6

    .line 181
    :catch_0
    move-exception v2

    .line 182
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 184
    const-string v6, ""

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 197
    :goto_0
    return-void

    .line 191
    :pswitch_0
    invoke-direct {p0}, Lnet/hockeyapp/android/LoginActivity;->performAuthentication()V

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x3005
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    new-instance v2, Lnet/hockeyapp/android/views/LoginView;

    invoke-direct {v2, p0}, Lnet/hockeyapp/android/views/LoginView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/LoginActivity;->setContentView(Landroid/view/View;)V

    .line 88
    invoke-virtual {p0}, Lnet/hockeyapp/android/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 89
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 90
    const-string v2, "url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/hockeyapp/android/LoginActivity;->url:Ljava/lang/String;

    .line 91
    const-string v2, "secret"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/hockeyapp/android/LoginActivity;->secret:Ljava/lang/String;

    .line 92
    const-string v2, "mode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lnet/hockeyapp/android/LoginActivity;->mode:I

    .line 95
    :cond_0
    invoke-direct {p0}, Lnet/hockeyapp/android/LoginActivity;->configureView()V

    .line 96
    invoke-direct {p0}, Lnet/hockeyapp/android/LoginActivity;->initLoginHandler()V

    .line 99
    invoke-virtual {p0}, Lnet/hockeyapp/android/LoginActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    .line 100
    .local v1, "object":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 101
    check-cast v1, Lnet/hockeyapp/android/tasks/LoginTask;

    .end local v1    # "object":Ljava/lang/Object;
    iput-object v1, p0, Lnet/hockeyapp/android/LoginActivity;->loginTask:Lnet/hockeyapp/android/tasks/LoginTask;

    .line 102
    iget-object v2, p0, Lnet/hockeyapp/android/LoginActivity;->loginTask:Lnet/hockeyapp/android/tasks/LoginTask;

    iget-object v3, p0, Lnet/hockeyapp/android/LoginActivity;->loginHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0, v3}, Lnet/hockeyapp/android/tasks/LoginTask;->attach(Landroid/content/Context;Landroid/os/Handler;)V

    .line 104
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 201
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 202
    sget-object v2, Lnet/hockeyapp/android/LoginManager;->listener:Lnet/hockeyapp/android/LoginManagerListener;

    if-eqz v2, :cond_1

    .line 203
    sget-object v1, Lnet/hockeyapp/android/LoginManager;->listener:Lnet/hockeyapp/android/LoginManagerListener;

    invoke-virtual {v1}, Lnet/hockeyapp/android/LoginManagerListener;->onBack()V

    .line 214
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 206
    :cond_1
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lnet/hockeyapp/android/LoginManager;->mainActivity:Ljava/lang/Class;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 208
    const-string v2, "net.hockeyapp.android.EXIT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lnet/hockeyapp/android/LoginActivity;->loginTask:Lnet/hockeyapp/android/tasks/LoginTask;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lnet/hockeyapp/android/LoginActivity;->loginTask:Lnet/hockeyapp/android/tasks/LoginTask;

    invoke-virtual {v0}, Lnet/hockeyapp/android/tasks/LoginTask;->detach()V

    .line 230
    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/LoginActivity;->loginTask:Lnet/hockeyapp/android/tasks/LoginTask;

    return-object v0
.end method
