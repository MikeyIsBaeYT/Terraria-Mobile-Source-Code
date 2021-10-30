.class public final Lcom/chartboost/sdk/InPlay/CBInPlay;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static f:Lcom/chartboost/sdk/InPlay/a;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Landroid/graphics/Bitmap;

.field private d:Ljava/lang/String;

.field private e:Lcom/chartboost/sdk/Libraries/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/chartboost/sdk/InPlay/CBInPlay;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/InPlay/CBInPlay;->a:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/chartboost/sdk/InPlay/CBInPlay;->f:Lcom/chartboost/sdk/InPlay/a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static cacheInPlay(Ljava/lang/String;)V
    .locals 2
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-static {}, Lcom/chartboost/sdk/b;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    sget-object v0, Lcom/chartboost/sdk/InPlay/CBInPlay;->a:Ljava/lang/String;

    const-string v1, "Inplay location cannot be empty"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, p0, v1}, Lcom/chartboost/sdk/a;->didFailToLoadInPlay(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 90
    :cond_2
    sget-object v0, Lcom/chartboost/sdk/InPlay/CBInPlay;->f:Lcom/chartboost/sdk/InPlay/a;

    if-nez v0, :cond_3

    .line 91
    invoke-static {}, Lcom/chartboost/sdk/InPlay/a;->a()Lcom/chartboost/sdk/InPlay/a;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/InPlay/CBInPlay;->f:Lcom/chartboost/sdk/InPlay/a;

    .line 92
    :cond_3
    sget-object v0, Lcom/chartboost/sdk/InPlay/CBInPlay;->f:Lcom/chartboost/sdk/InPlay/a;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/InPlay/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInPlay(Ljava/lang/String;)Lcom/chartboost/sdk/InPlay/CBInPlay;
    .locals 3
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-static {}, Lcom/chartboost/sdk/b;->n()Z

    move-result v1

    if-nez v1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-object v0

    .line 118
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    sget-object v1, Lcom/chartboost/sdk/InPlay/CBInPlay;->a:Ljava/lang/String;

    const-string v2, "Inplay location cannot be empty"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 121
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v1

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v1, p0, v2}, Lcom/chartboost/sdk/a;->didFailToLoadInPlay(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 124
    :cond_2
    sget-object v0, Lcom/chartboost/sdk/InPlay/CBInPlay;->f:Lcom/chartboost/sdk/InPlay/a;

    if-nez v0, :cond_3

    .line 125
    invoke-static {}, Lcom/chartboost/sdk/InPlay/a;->a()Lcom/chartboost/sdk/InPlay/a;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/InPlay/CBInPlay;->f:Lcom/chartboost/sdk/InPlay/a;

    .line 126
    :cond_3
    sget-object v0, Lcom/chartboost/sdk/InPlay/CBInPlay;->f:Lcom/chartboost/sdk/InPlay/a;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/InPlay/a;->c(Ljava/lang/String;)Lcom/chartboost/sdk/InPlay/CBInPlay;

    move-result-object v0

    goto :goto_0
.end method

.method public static hasInPlay(Ljava/lang/String;)Z
    .locals 3
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-static {}, Lcom/chartboost/sdk/b;->n()Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    sget-object v1, Lcom/chartboost/sdk/InPlay/CBInPlay;->a:Ljava/lang/String;

    const-string v2, "Inplay location cannot be empty"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 104
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v1

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v1, p0, v2}, Lcom/chartboost/sdk/a;->didFailToLoadInPlay(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 107
    :cond_2
    sget-object v0, Lcom/chartboost/sdk/InPlay/CBInPlay;->f:Lcom/chartboost/sdk/InPlay/a;

    if-nez v0, :cond_3

    .line 108
    invoke-static {}, Lcom/chartboost/sdk/InPlay/a;->a()Lcom/chartboost/sdk/InPlay/a;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/InPlay/CBInPlay;->f:Lcom/chartboost/sdk/InPlay/a;

    .line 109
    :cond_3
    sget-object v0, Lcom/chartboost/sdk/InPlay/CBInPlay;->f:Lcom/chartboost/sdk/InPlay/a;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/InPlay/a;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected a()Lcom/chartboost/sdk/Libraries/e$a;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->e:Lcom/chartboost/sdk/Libraries/e$a;

    return-object v0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->c:Landroid/graphics/Bitmap;

    .line 59
    return-void
.end method

.method protected a(Lcom/chartboost/sdk/Libraries/e$a;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->e:Lcom/chartboost/sdk/Libraries/e$a;

    .line 75
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->b:Ljava/lang/String;

    .line 51
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->d:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public click()V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/chartboost/sdk/InPlay/a;->a()Lcom/chartboost/sdk/InPlay/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/InPlay/a;->b(Lcom/chartboost/sdk/InPlay/CBInPlay;)V

    .line 43
    return-void
.end method

.method public getAppIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->b:Ljava/lang/String;

    return-object v0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/chartboost/sdk/InPlay/a;->a()Lcom/chartboost/sdk/InPlay/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/InPlay/a;->a(Lcom/chartboost/sdk/InPlay/CBInPlay;)V

    .line 39
    return-void
.end method
