.class final Lcom/flurry/android/ce;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile ei:Ljava/lang/String;

.field private static volatile ej:Ljava/lang/String;

.field private static volatile ek:Ljava/lang/String;

.field private static el:Z


# instance fields
.field em:Lcom/flurry/android/FlurryDataSenderIndex;

.field private en:Ljava/lang/String;

.field private eo:Ljava/lang/String;

.field ep:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/flurry/android/ce;->ei:Ljava/lang/String;

    .line 24
    const-string v0, "http://data.flurry.com/aap.do"

    sput-object v0, Lcom/flurry/android/ce;->ej:Ljava/lang/String;

    .line 25
    const-string v0, "https://data.flurry.com/aap.do"

    sput-object v0, Lcom/flurry/android/ce;->ek:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/flurry/android/ce;->el:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/flurry/android/ce;->mContext:Landroid/content/Context;

    .line 36
    iput-object v0, p0, Lcom/flurry/android/ce;->em:Lcom/flurry/android/FlurryDataSenderIndex;

    .line 38
    iput-object v0, p0, Lcom/flurry/android/ce;->en:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/flurry/android/ce;->eo:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/ce;->ep:Ljava/util/Set;

    .line 45
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 46
    const-string v0, "FlurryDataSender"

    const-string v1, "FlurryDataSender constructor running on the MAIN thread!"

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    iput-object p1, p0, Lcom/flurry/android/ce;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/flurry/android/ce;->en:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/flurry/android/ce;->eo:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/flurry/android/FlurryDataSenderIndex;

    invoke-virtual {p0}, Lcom/flurry/android/ce;->au()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/flurry/android/FlurryDataSenderIndex;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flurry/android/ce;->em:Lcom/flurry/android/FlurryDataSenderIndex;

    .line 56
    invoke-direct {p0}, Lcom/flurry/android/ce;->av()V

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/flurry/android/ce;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/flurry/android/ce;->av()V

    return-void
.end method

.method private av()V
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 188
    sget-object v0, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/flurry/android/FlurryAgent;->an:Lcom/flurry/android/FlurryAgent;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryAgent;->getNetworkStatus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    const-string v0, "FlurryDataSender"

    const-string v1, "Reports were not sent! No Internet connection!"

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_0
    return-void

    .line 194
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/ce;->au()Ljava/lang/String;

    move-result-object v5

    .line 195
    iget-object v0, p0, Lcom/flurry/android/ce;->em:Lcom/flurry/android/FlurryDataSenderIndex;

    invoke-virtual {v0, v5}, Lcom/flurry/android/FlurryDataSenderIndex;->getNotSentBlocksForDataKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 196
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    const-string v0, "FlurryDataSender"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of not sent blocks = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 202
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 204
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 206
    iget-object v3, p0, Lcom/flurry/android/ce;->ep:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 208
    iget-object v3, p0, Lcom/flurry/android/ce;->ep:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const/16 v7, 0x8

    if-gt v3, v7, :cond_4

    move v3, v4

    :goto_1
    if-eqz v3, :cond_0

    .line 212
    new-instance v3, Lcom/flurry/android/FlurryDataSenderBlockInfo;

    iget-object v7, p0, Lcom/flurry/android/ce;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7, v0}, Lcom/flurry/android/FlurryDataSenderBlockInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 216
    invoke-virtual {v3}, Lcom/flurry/android/FlurryDataSenderBlockInfo;->getData()[B

    move-result-object v7

    .line 218
    if-eqz v7, :cond_2

    array-length v3, v7

    if-nez v3, :cond_5

    .line 219
    :cond_2
    const-string v3, "FlurryDataSender"

    const-string v7, "Internal ERROR! Report is empty!"

    invoke-static {v3, v7}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v3, p0, Lcom/flurry/android/ce;->em:Lcom/flurry/android/FlurryDataSenderIndex;

    invoke-virtual {v3, v0, v5}, Lcom/flurry/android/FlurryDataSenderIndex;->removeBlockInfoWithIdentifier(Ljava/lang/String;Ljava/lang/String;)Z

    .line 202
    :cond_3
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    move v3, v2

    .line 208
    goto :goto_1

    .line 224
    :cond_5
    iget-object v3, p0, Lcom/flurry/android/ce;->ep:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v3, Lcom/flurry/android/ce;->ei:Ljava/lang/String;

    if-eqz v3, :cond_6

    sget-object v3, Lcom/flurry/android/ce;->ei:Ljava/lang/String;

    :goto_3
    const-string v8, "FlurryDataSender"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FlurryDataSender: start upload data with id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/flurry/android/cy;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    new-instance v9, Lcom/flurry/android/cu;

    invoke-direct {v9, p0}, Lcom/flurry/android/cu;-><init>(Lcom/flurry/android/ce;)V

    const-string v10, "del"

    invoke-virtual {v8, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "url"

    invoke-virtual {v8, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "data"

    invoke-virtual {v8, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "id"

    invoke-virtual {v8, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/flurry/android/FlurryDataSenderAsyncOperation;

    invoke-direct {v0}, Lcom/flurry/android/FlurryDataSenderAsyncOperation;-><init>()V

    new-array v3, v4, [Ljava/util/HashMap;

    aput-object v8, v3, v2

    invoke-virtual {v0, v3}, Lcom/flurry/android/FlurryDataSenderAsyncOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    :cond_6
    sget-boolean v3, Lcom/flurry/android/ce;->el:Z

    if-eqz v3, :cond_7

    sget-object v3, Lcom/flurry/android/ce;->ek:Ljava/lang/String;

    goto :goto_3

    :cond_7
    sget-object v3, Lcom/flurry/android/ce;->ej:Ljava/lang/String;

    goto :goto_3
.end method

.method static getUseHttps()Z
    .locals 1

    .prologue
    .line 118
    sget-boolean v0, Lcom/flurry/android/ce;->el:Z

    return v0
.end method

.method static setReportUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 106
    if-eqz p0, :cond_0

    const-string v0, ".do"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 108
    :cond_0
    sput-object p0, Lcom/flurry/android/ce;->ei:Ljava/lang/String;

    .line 111
    return-void
.end method

.method static setUseHttps(Z)V
    .locals 0

    .prologue
    .line 114
    sput-boolean p0, Lcom/flurry/android/ce;->el:Z

    .line 115
    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 153
    :cond_0
    const-string v0, "FlurryDataSender"

    const-string v1, "Report that has to be sent is EMPTY or NULL"

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/ce;->au()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/flurry/android/FlurryDataSenderBlockInfo;

    iget-object v2, p0, Lcom/flurry/android/ce;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/flurry/android/FlurryDataSenderBlockInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/flurry/android/FlurryDataSenderBlockInfo;->setData([B)Z

    invoke-virtual {v1}, Lcom/flurry/android/FlurryDataSenderBlockInfo;->getIdentifier()Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/android/ce;->em:Lcom/flurry/android/FlurryDataSenderIndex;

    invoke-virtual {v2, v1, v0}, Lcom/flurry/android/FlurryDataSenderIndex;->addBlockInfo(Lcom/flurry/android/FlurryDataSenderBlockInfo;Ljava/lang/String;)V

    .line 159
    :cond_2
    invoke-direct {p0}, Lcom/flurry/android/ce;->av()V

    goto :goto_0
.end method

.method final au()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/ce;->en:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/ce;->eo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    return-object v0
.end method

.method final onNetworkStateChanged(Z)V
    .locals 0

    .prologue
    .line 63
    if-eqz p1, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/flurry/android/ce;->av()V

    .line 66
    :cond_0
    return-void
.end method
