.class public final Lcom/chartboost/sdk/impl/bb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/bb$a;
    }
.end annotation


# static fields
.field private static c:Lcom/chartboost/sdk/impl/bb;


# instance fields
.field private a:Lcom/chartboost/sdk/impl/bb$a;

.field private b:Lcom/chartboost/sdk/Model/a;


# direct methods
.method private constructor <init>(Lcom/chartboost/sdk/impl/bb$a;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bb;->a:Lcom/chartboost/sdk/impl/bb$a;

    .line 47
    return-void
.end method

.method public static a(Lcom/chartboost/sdk/impl/bb$a;)Lcom/chartboost/sdk/impl/bb;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/chartboost/sdk/impl/bb;->c:Lcom/chartboost/sdk/impl/bb;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/chartboost/sdk/impl/bb;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/bb;-><init>(Lcom/chartboost/sdk/impl/bb$a;)V

    sput-object v0, Lcom/chartboost/sdk/impl/bb;->c:Lcom/chartboost/sdk/impl/bb;

    .line 41
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/impl/bb;->c:Lcom/chartboost/sdk/impl/bb;

    return-object v0
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/bb;Ljava/lang/String;Landroid/content/Context;Lcom/chartboost/sdk/c$b;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/chartboost/sdk/impl/bb;->a(Ljava/lang/String;Landroid/content/Context;Lcom/chartboost/sdk/c$b;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;Lcom/chartboost/sdk/c$b;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 124
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->b:Lcom/chartboost/sdk/Model/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->b:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->b:Lcom/chartboost/sdk/Model/a;

    sget-object v1, Lcom/chartboost/sdk/Model/a$b;->f:Lcom/chartboost/sdk/Model/a$b;

    iput-object v1, v0, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    .line 132
    :cond_0
    if-nez p2, :cond_1

    .line 133
    invoke-static {}, Lcom/chartboost/sdk/b;->v()Landroid/content/Context;

    move-result-object p2

    .line 134
    :cond_1
    if-nez p2, :cond_3

    .line 135
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->a:Lcom/chartboost/sdk/impl/bb$a;

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->a:Lcom/chartboost/sdk/impl/bb$a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bb;->b:Lcom/chartboost/sdk/Model/a;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBClickError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    move-object v3, p1

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/chartboost/sdk/impl/bb$a;->a(Lcom/chartboost/sdk/Model/a;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/c$b;)V

    .line 169
    :cond_2
    :goto_0
    return-void

    .line 141
    :cond_3
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    instance-of v1, p2, Landroid/app/Activity;

    if-nez v1, :cond_4

    .line 143
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 144
    :cond_4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 145
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, p1

    .line 167
    :goto_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->a:Lcom/chartboost/sdk/impl/bb$a;

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->a:Lcom/chartboost/sdk/impl/bb$a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bb;->b:Lcom/chartboost/sdk/Model/a;

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/chartboost/sdk/impl/bb$a;->a(Lcom/chartboost/sdk/Model/a;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/c$b;)V

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    const-string v0, "market://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 149
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://market.android.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 150
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    instance-of v1, p2, Landroid/app/Activity;

    if-nez v1, :cond_5

    .line 152
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 153
    :cond_5
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 154
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, p1

    .line 160
    goto :goto_1

    .line 155
    :catch_1
    move-exception v0

    move-object v3, p1

    .line 156
    const-string v1, "CBURLOpener"

    const-string v4, "Exception raised openeing an inavld playstore URL"

    invoke-static {v1, v4, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->a:Lcom/chartboost/sdk/impl/bb$a;

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->a:Lcom/chartboost/sdk/impl/bb$a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bb;->b:Lcom/chartboost/sdk/Model/a;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_UNRECOGNIZED:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/chartboost/sdk/impl/bb$a;->a(Lcom/chartboost/sdk/Model/a;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/c$b;)V

    goto :goto_0

    .line 162
    :cond_6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->a:Lcom/chartboost/sdk/impl/bb$a;

    if-eqz v0, :cond_7

    .line 163
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->a:Lcom/chartboost/sdk/impl/bb$a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bb;->b:Lcom/chartboost/sdk/Model/a;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_UNRECOGNIZED:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    move-object v3, p1

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/chartboost/sdk/impl/bb$a;->a(Lcom/chartboost/sdk/Model/a;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/c$b;)V

    :cond_7
    move-object v3, p1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 173
    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/b;->v()Landroid/content/Context;

    move-result-object v1

    .line 174
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    instance-of v3, v1, Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 176
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 177
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 178
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 179
    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 180
    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 184
    :cond_1
    :goto_0
    return v0

    .line 181
    :catch_0
    move-exception v1

    .line 182
    const-string v2, "CBURLOpener"

    const-string v3, "Cannot open URL"

    invoke-static {v2, v3, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Model/a;Ljava/lang/String;Landroid/app/Activity;Lcom/chartboost/sdk/c$b;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 59
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bb;->b:Lcom/chartboost/sdk/Model/a;

    .line 62
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 70
    if-nez v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->a:Lcom/chartboost/sdk/impl/bb$a;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->a:Lcom/chartboost/sdk/impl/bb$a;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_INVALID:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    move-object v1, p1

    move-object v3, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/chartboost/sdk/impl/bb$a;->a(Lcom/chartboost/sdk/Model/a;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/c$b;)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->a:Lcom/chartboost/sdk/impl/bb$a;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb;->a:Lcom/chartboost/sdk/impl/bb$a;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_INVALID:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    move-object v1, p1

    move-object v3, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/chartboost/sdk/impl/bb$a;->a(Lcom/chartboost/sdk/Model/a;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/c$b;)V

    goto :goto_0

    .line 76
    :cond_1
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 77
    invoke-direct {p0, p2, p3, p4}, Lcom/chartboost/sdk/impl/bb;->a(Ljava/lang/String;Landroid/content/Context;Lcom/chartboost/sdk/c$b;)V

    goto :goto_0

    .line 81
    :cond_2
    new-instance v0, Lcom/chartboost/sdk/impl/bb$1;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/chartboost/sdk/impl/bb$1;-><init>(Lcom/chartboost/sdk/impl/bb;Ljava/lang/String;Landroid/app/Activity;Lcom/chartboost/sdk/c$b;)V

    .line 120
    invoke-static {}, Lcom/chartboost/sdk/impl/ax;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
