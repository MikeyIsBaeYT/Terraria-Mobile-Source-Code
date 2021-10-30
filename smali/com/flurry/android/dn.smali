.class final Lcom/flurry/android/dn;
.super Lcom/flurry/android/AppCloudResponse;
.source "SourceFile"


# instance fields
.field private fl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flurry/android/AppCloudObject;",
            ">;"
        }
    .end annotation
.end field

.field private fm:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flurry/android/AppCloudUser;",
            ">;"
        }
    .end annotation
.end field

.field private fn:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/flurry/android/AppCloudResponse;Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p1, Lcom/flurry/android/AppCloudResponse;->bY:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/flurry/android/AppCloudResponse;-><init>(Lorg/json/JSONObject;)V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/dn;->fl:Ljava/util/ArrayList;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/dn;->fm:Ljava/util/ArrayList;

    .line 15
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/dn;->fn:Ljava/lang/Boolean;

    .line 20
    iput-object p2, p0, Lcom/flurry/android/dn;->fn:Ljava/lang/Boolean;

    .line 21
    invoke-virtual {p0}, Lcom/flurry/android/dn;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-direct {p0}, Lcom/flurry/android/dn;->aF()V

    .line 25
    :cond_0
    return-void
.end method

.method private aF()V
    .locals 5

    .prologue
    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/dn;->bY:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/flurry/android/dn;->bY:Lorg/json/JSONObject;

    const-string v1, "set"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 36
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 38
    iget-object v3, p0, Lcom/flurry/android/dn;->fn:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    iget-object v3, p0, Lcom/flurry/android/dn;->fm:Ljava/util/ArrayList;

    new-instance v4, Lcom/flurry/android/AppCloudUser;

    invoke-direct {v4, v2}, Lcom/flurry/android/AppCloudUser;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_0
    iget-object v3, p0, Lcom/flurry/android/dn;->fl:Ljava/util/ArrayList;

    new-instance v4, Lcom/flurry/android/AppCloudObject;

    invoke-direct {v4, v2}, Lcom/flurry/android/AppCloudObject;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 48
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 51
    :cond_1
    return-void
.end method


# virtual methods
.method public final getObjects()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flurry/android/AppCloudObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/flurry/android/dn;->fl:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getUsers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flurry/android/AppCloudUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/flurry/android/dn;->fm:Ljava/util/ArrayList;

    return-object v0
.end method
