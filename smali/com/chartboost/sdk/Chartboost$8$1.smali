.class Lcom/chartboost/sdk/Chartboost$8$1;
.super Lcom/chartboost/sdk/impl/az$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/Chartboost$8;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/Chartboost$8;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/Chartboost$8;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/chartboost/sdk/Chartboost$8$1;->a:Lcom/chartboost/sdk/Chartboost$8;

    invoke-direct {p0}, Lcom/chartboost/sdk/impl/az$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Libraries/e$a;Lcom/chartboost/sdk/impl/az;)V
    .locals 6

    .prologue
    .line 342
    invoke-static {}, Lcom/chartboost/sdk/b;->v()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Landroid/content/Context;)Z

    move-result v0

    .line 343
    if-eqz v0, :cond_0

    .line 344
    const-string v0, "latest-sdk-version"

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 345
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "5.2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 346
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Chartboost SDK is not up to date. (Current: %s, Latest: %s)\n Download latest SDK at:\n\thttps://www.chartboost.com/support/sdk_download/?os=ios"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "5.2.0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;)V

    .line 351
    :cond_0
    return-void
.end method
