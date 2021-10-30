.class final Lcom/flurry/android/bi;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/flurry/android/AdUnit;",
        ">;>;"
    }
.end annotation


# instance fields
.field private Q:Landroid/content/Context;

.field private ag:Landroid/view/ViewGroup;

.field private dq:Ljava/lang/String;

.field private dr:Lcom/flurry/android/FlurryAdSize;

.field private ds:Z

.field private dt:Z

.field private synthetic du:Lcom/flurry/android/FlurryAds;


# direct methods
.method public constructor <init>(Lcom/flurry/android/FlurryAds;Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/FlurryAdSize;)V
    .locals 0

    .prologue
    .line 1132
    iput-object p1, p0, Lcom/flurry/android/bi;->du:Lcom/flurry/android/FlurryAds;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1133
    iput-object p2, p0, Lcom/flurry/android/bi;->Q:Landroid/content/Context;

    .line 1134
    iput-object p3, p0, Lcom/flurry/android/bi;->dq:Ljava/lang/String;

    .line 1135
    iput-object p4, p0, Lcom/flurry/android/bi;->dr:Lcom/flurry/android/FlurryAdSize;

    .line 1136
    return-void
.end method

.method public constructor <init>(Lcom/flurry/android/FlurryAds;Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/FlurryAdSize;Landroid/view/ViewGroup;ZZ)V
    .locals 0

    .prologue
    .line 1140
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/bi;-><init>(Lcom/flurry/android/FlurryAds;Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/FlurryAdSize;)V

    .line 1141
    iput-object p5, p0, Lcom/flurry/android/bi;->ag:Landroid/view/ViewGroup;

    .line 1142
    iput-boolean p7, p0, Lcom/flurry/android/bi;->ds:Z

    .line 1143
    iput-boolean p6, p0, Lcom/flurry/android/bi;->dt:Z

    .line 1144
    return-void
.end method

.method private varargs Z()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/AdUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1152
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/bi;->du:Lcom/flurry/android/FlurryAds;

    iget-object v1, p0, Lcom/flurry/android/bi;->Q:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/android/bi;->dq:Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/android/bi;->ag:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/flurry/android/bi;->dr:Lcom/flurry/android/FlurryAdSize;

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;ZLcom/flurry/android/FlurryAdSize;)Ljava/util/List;

    move-result-object v0

    .line 1153
    iget-object v1, p0, Lcom/flurry/android/bi;->du:Lcom/flurry/android/FlurryAds;

    iget-object v1, v1, Lcom/flurry/android/FlurryAds;->hk:Lcom/flurry/android/aa;

    iget-object v2, p0, Lcom/flurry/android/bi;->Q:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/flurry/android/aa;->a(Landroid/content/Context;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1159
    :goto_0
    return-object v0

    .line 1156
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1159
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1122
    invoke-direct {p0}, Lcom/flurry/android/bi;->Z()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1122
    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/android/bi;->dt:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/flurry/android/bi;->ds:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/bi;->du:Lcom/flurry/android/FlurryAds;

    iget-object v1, p0, Lcom/flurry/android/bi;->Q:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/android/bi;->dq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/FlurryAds;->g(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/flurry/android/bi;->dt:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/flurry/android/bi;->ds:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/bi;->du:Lcom/flurry/android/FlurryAds;

    iget-object v1, p0, Lcom/flurry/android/bi;->Q:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/android/bi;->dq:Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/android/bi;->ag:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
