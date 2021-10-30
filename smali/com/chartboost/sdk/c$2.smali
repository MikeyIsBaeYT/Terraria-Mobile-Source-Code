.class Lcom/chartboost/sdk/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/Model/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/c;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/c;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/chartboost/sdk/c$2;->a:Lcom/chartboost/sdk/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Model/a;)V
    .locals 3

    .prologue
    .line 125
    .line 126
    iget-object v1, p0, Lcom/chartboost/sdk/c$2;->a:Lcom/chartboost/sdk/c;

    monitor-enter v1

    .line 127
    :try_start_0
    iget-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->f:Z

    .line 128
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v2, Lcom/chartboost/sdk/Model/a$b;->a:Lcom/chartboost/sdk/Model/a$b;

    if-ne v1, v2, :cond_0

    .line 131
    sget-object v1, Lcom/chartboost/sdk/Model/a$b;->b:Lcom/chartboost/sdk/Model/a$b;

    iput-object v1, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    .line 132
    if-eqz v0, :cond_2

    .line 133
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;)V

    .line 138
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 139
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/d;->g(Lcom/chartboost/sdk/Model/a;)V

    .line 140
    :cond_1
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/d;->o(Lcom/chartboost/sdk/Model/a;)V

    .line 141
    return-void

    .line 128
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 135
    :cond_2
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/chartboost/sdk/d;->q(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0
.end method

.method public a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 211
    return-void
.end method

.method public a(Lcom/chartboost/sdk/Model/a;Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 163
    .line 164
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/d;->b()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/d$a;->a(Lcom/chartboost/sdk/Model/a;)V

    .line 165
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->a()Z

    move-result v0

    .line 166
    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v1, Lcom/chartboost/sdk/Model/a$b;->c:Lcom/chartboost/sdk/Model/a$b;

    if-ne v0, v1, :cond_0

    .line 168
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->h()Lcom/chartboost/sdk/e;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/e;->b(Lcom/chartboost/sdk/Model/a;)V

    .line 174
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 175
    :goto_0
    if-eqz v0, :cond_3

    .line 176
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->w()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/chartboost/sdk/c$2;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v1}, Lcom/chartboost/sdk/c;->d()Lcom/chartboost/sdk/impl/az;

    move-result-object v1

    .line 180
    const-string v2, "ad_id"

    invoke-virtual {v1, v2, v0}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 181
    const-string v2, "to"

    invoke-virtual {v1, v2, v0}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 182
    const-string v2, "cgn"

    invoke-virtual {v1, v2, v0}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 183
    const-string v2, "creative"

    invoke-virtual {v1, v2, v0}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 184
    const-string v0, "cgn"

    invoke-virtual {v1, v0, p3}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 185
    const-string v0, "creative"

    invoke-virtual {v1, v0, p3}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 186
    const-string v0, "type"

    invoke-virtual {v1, v0, p3}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 187
    const-string v0, "more_type"

    invoke-virtual {v1, v0, p3}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 188
    const-string v0, "location"

    iget-object v2, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    const-string v0, "retarget_reinstall"

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->e()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    :cond_1
    iput-object v1, p1, Lcom/chartboost/sdk/Model/a;->n:Lcom/chartboost/sdk/impl/az;

    .line 195
    iget-object v0, p0, Lcom/chartboost/sdk/c$2;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p1, p2, v5}, Lcom/chartboost/sdk/c;->b(Lcom/chartboost/sdk/Model/a;Ljava/lang/String;Lcom/chartboost/sdk/c$b;)V

    .line 201
    :goto_1
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/d;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void

    :cond_2
    move v0, v2

    .line 174
    goto :goto_0

    .line 197
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/c$2;->a:Lcom/chartboost/sdk/c;

    iget-object v0, v0, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/impl/bb$a;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_INVALID:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    move-object v1, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/chartboost/sdk/impl/bb$a;->a(Lcom/chartboost/sdk/Model/a;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/c$b;)V

    goto :goto_1
.end method

.method public b(Lcom/chartboost/sdk/Model/a;)V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v1, Lcom/chartboost/sdk/Model/a$b;->c:Lcom/chartboost/sdk/Model/a$b;

    if-ne v0, v1, :cond_0

    .line 149
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->h()Lcom/chartboost/sdk/e;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/e;->b(Lcom/chartboost/sdk/Model/a;)V

    .line 154
    :cond_0
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/d;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public c(Lcom/chartboost/sdk/Model/a;)V
    .locals 4

    .prologue
    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->l:Z

    .line 216
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->c:Lcom/chartboost/sdk/Model/a$c;

    sget-object v1, Lcom/chartboost/sdk/Model/a$c;->c:Lcom/chartboost/sdk/Model/a$c;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->w()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    const-string v3, "reward"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->f(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/chartboost/sdk/a;->didCompleteRewardedVideo(Ljava/lang/String;I)V

    .line 219
    :cond_0
    invoke-static {p1}, Lcom/chartboost/sdk/c;->a(Lcom/chartboost/sdk/Model/a;)V

    .line 220
    return-void
.end method

.method public d(Lcom/chartboost/sdk/Model/a;)V
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->m:Z

    .line 225
    return-void
.end method
