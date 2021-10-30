.class Lcom/chartboost/sdk/InPlay/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/az$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/InPlay/a;->a(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/chartboost/sdk/InPlay/a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/InPlay/a;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/chartboost/sdk/InPlay/a$1;->c:Lcom/chartboost/sdk/InPlay/a;

    iput-object p2, p0, Lcom/chartboost/sdk/InPlay/a$1;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/chartboost/sdk/InPlay/a$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Libraries/e$a;Lcom/chartboost/sdk/impl/az;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 135
    invoke-static {v3}, Lcom/chartboost/sdk/InPlay/a;->a(Z)Z

    .line 136
    invoke-virtual {p1}, Lcom/chartboost/sdk/Libraries/e$a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    new-instance v0, Lcom/chartboost/sdk/InPlay/CBInPlay;

    invoke-direct {v0}, Lcom/chartboost/sdk/InPlay/CBInPlay;-><init>()V

    .line 140
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/InPlay/CBInPlay;->a(Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 141
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/InPlay/CBInPlay;->b(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/chartboost/sdk/InPlay/a$1;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/chartboost/sdk/InPlay/a$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/InPlay/CBInPlay;->a(Ljava/lang/String;)V

    .line 146
    :cond_0
    const-string v1, "icons"

    invoke-virtual {p1, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    .line 148
    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/e$a;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "lg"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 149
    const-string v2, "lg"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-static {}, Lcom/chartboost/sdk/InPlay/a;->c()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 151
    new-instance v2, Lcom/chartboost/sdk/InPlay/a$b;

    iget-object v4, p0, Lcom/chartboost/sdk/InPlay/a$1;->c:Lcom/chartboost/sdk/InPlay/a;

    invoke-direct {v2, v4, v5}, Lcom/chartboost/sdk/InPlay/a$b;-><init>(Lcom/chartboost/sdk/InPlay/a;Lcom/chartboost/sdk/InPlay/a$1;)V

    .line 152
    new-instance v6, Lcom/chartboost/sdk/InPlay/a$a;

    iget-object v4, p0, Lcom/chartboost/sdk/InPlay/a$1;->c:Lcom/chartboost/sdk/InPlay/a;

    invoke-direct {v6, v4, v5}, Lcom/chartboost/sdk/InPlay/a$a;-><init>(Lcom/chartboost/sdk/InPlay/a;Lcom/chartboost/sdk/InPlay/a$1;)V

    .line 153
    iput-object v0, v2, Lcom/chartboost/sdk/InPlay/a$b;->c:Lcom/chartboost/sdk/InPlay/CBInPlay;

    .line 154
    iput-object v1, v2, Lcom/chartboost/sdk/InPlay/a$b;->b:Ljava/lang/String;

    .line 155
    iget-boolean v0, p0, Lcom/chartboost/sdk/InPlay/a$1;->b:Z

    iput-boolean v0, v2, Lcom/chartboost/sdk/InPlay/a$b;->a:Z

    .line 156
    new-instance v0, Lcom/chartboost/sdk/impl/ab;

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/chartboost/sdk/impl/ab;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/n$b;IILandroid/graphics/Bitmap$Config;Lcom/chartboost/sdk/impl/n$a;)V

    .line 157
    invoke-static {}, Lcom/chartboost/sdk/b;->v()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ba;->a(Landroid/content/Context;)Lcom/chartboost/sdk/impl/ba;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/ba;->a()Lcom/chartboost/sdk/impl/m;

    move-result-object v1

    .line 158
    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/m;->a(Lcom/chartboost/sdk/impl/l;)Lcom/chartboost/sdk/impl/l;

    .line 164
    :cond_1
    :goto_0
    return-void

    .line 160
    :cond_2
    iget-object v2, p0, Lcom/chartboost/sdk/InPlay/a$1;->c:Lcom/chartboost/sdk/InPlay/a;

    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3}, Lcom/chartboost/sdk/InPlay/a;->a(Lcom/chartboost/sdk/InPlay/a;Lcom/chartboost/sdk/InPlay/CBInPlay;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public a(Lcom/chartboost/sdk/Libraries/e$a;Lcom/chartboost/sdk/impl/az;Lcom/chartboost/sdk/Model/CBError;)V
    .locals 3

    .prologue
    .line 168
    invoke-static {}, Lcom/chartboost/sdk/InPlay/a;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InPlay cache call failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/chartboost/sdk/InPlay/a;->a(Z)Z

    .line 170
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/InPlay/a$1;->a:Ljava/lang/String;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/chartboost/sdk/Model/CBError;->c()Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/chartboost/sdk/a;->didFailToLoadInPlay(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 172
    :cond_0
    return-void

    .line 171
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
