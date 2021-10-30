.class public final Lcom/chartboost/sdk/Model/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Model/a$1;,
        Lcom/chartboost/sdk/Model/a$a;,
        Lcom/chartboost/sdk/Model/a$d;,
        Lcom/chartboost/sdk/Model/a$c;,
        Lcom/chartboost/sdk/Model/a$b;
    }
.end annotation


# instance fields
.field public a:Ljava/util/Date;

.field public b:Lcom/chartboost/sdk/Model/a$b;

.field public c:Lcom/chartboost/sdk/Model/a$c;

.field public d:Ljava/lang/String;

.field public e:Lcom/chartboost/sdk/Model/a$d;

.field public f:Z

.field public g:Z

.field public h:Lcom/chartboost/sdk/impl/bp;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Lcom/chartboost/sdk/impl/az;

.field public o:Z

.field public p:Z

.field public q:Z

.field private r:Lcom/chartboost/sdk/Libraries/e$a;

.field private s:Z

.field private t:Ljava/lang/Boolean;

.field private u:Lcom/chartboost/sdk/f;

.field private v:Lcom/chartboost/sdk/Model/a$a;

.field private w:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Model/a$c;ZLjava/lang/String;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->t:Ljava/lang/Boolean;

    .line 92
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->j:Z

    .line 97
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->k:Z

    .line 99
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->l:Z

    .line 101
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->m:Z

    .line 107
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->p:Z

    .line 109
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->q:Z

    .line 114
    sget-object v0, Lcom/chartboost/sdk/Model/a$b;->a:Lcom/chartboost/sdk/Model/a$b;

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    .line 115
    iput-boolean p2, p0, Lcom/chartboost/sdk/Model/a;->f:Z

    .line 116
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->g:Z

    .line 117
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->o:Z

    .line 118
    iput-boolean v2, p0, Lcom/chartboost/sdk/Model/a;->p:Z

    .line 119
    iput-object p1, p0, Lcom/chartboost/sdk/Model/a;->c:Lcom/chartboost/sdk/Model/a$c;

    .line 120
    iput-boolean p4, p0, Lcom/chartboost/sdk/Model/a;->i:Z

    .line 121
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Libraries/e$a;

    .line 122
    sget-object v0, Lcom/chartboost/sdk/Model/a$d;->d:Lcom/chartboost/sdk/Model/a$d;

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    .line 123
    iput-object p3, p0, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    .line 124
    iput-boolean v2, p0, Lcom/chartboost/sdk/Model/a;->s:Z

    .line 125
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 126
    const-string v0, "Default"

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    .line 127
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Libraries/e$a;)V
    .locals 0

    .prologue
    .line 386
    if-nez p1, :cond_0

    sget-object p1, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;

    :cond_0
    iput-object p1, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Libraries/e$a;

    .line 387
    return-void
.end method

.method public a(Lcom/chartboost/sdk/Libraries/e$a;Lcom/chartboost/sdk/Model/a$a;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 130
    if-nez p1, :cond_0

    .line 131
    invoke-static {}, Lcom/chartboost/sdk/Libraries/e$a;->a()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object p1

    .line 132
    :cond_0
    iput-object p1, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Libraries/e$a;

    .line 133
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->a:Ljava/util/Date;

    .line 134
    sget-object v0, Lcom/chartboost/sdk/Model/a$b;->a:Lcom/chartboost/sdk/Model/a$b;

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    .line 135
    iput-object p2, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    .line 137
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "native"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 138
    if-eqz v0, :cond_2

    .line 139
    sget-object v0, Lcom/chartboost/sdk/Model/a$1;->a:[I

    iget-object v1, p0, Lcom/chartboost/sdk/Model/a;->c:Lcom/chartboost/sdk/Model/a$c;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/a$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 170
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/f;->a(Lcom/chartboost/sdk/Libraries/e$a;)Z

    .line 171
    return-void

    .line 141
    :pswitch_1
    const-string v0, "media-type"

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "video"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    sget-object v0, Lcom/chartboost/sdk/Model/a$d;->b:Lcom/chartboost/sdk/Model/a$d;

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    .line 144
    new-instance v0, Lcom/chartboost/sdk/impl/ai;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/ai;-><init>(Lcom/chartboost/sdk/Model/a;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    .line 145
    iput-boolean v2, p0, Lcom/chartboost/sdk/Model/a;->s:Z

    goto :goto_0

    .line 148
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/Model/a$d;->a:Lcom/chartboost/sdk/Model/a$d;

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    .line 149
    new-instance v0, Lcom/chartboost/sdk/impl/ah;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/ah;-><init>(Lcom/chartboost/sdk/Model/a;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    goto :goto_0

    .line 153
    :pswitch_2
    sget-object v0, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    .line 154
    new-instance v0, Lcom/chartboost/sdk/impl/ai;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/ai;-><init>(Lcom/chartboost/sdk/Model/a;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    .line 155
    iput-boolean v2, p0, Lcom/chartboost/sdk/Model/a;->s:Z

    goto :goto_0

    .line 158
    :pswitch_3
    new-instance v0, Lcom/chartboost/sdk/impl/aw;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/aw;-><init>(Lcom/chartboost/sdk/Model/a;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    .line 159
    iput-boolean v2, p0, Lcom/chartboost/sdk/Model/a;->s:Z

    goto :goto_0

    .line 167
    :cond_2
    new-instance v0, Lcom/chartboost/sdk/impl/br;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/br;-><init>(Lcom/chartboost/sdk/Model/a;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    invoke-interface {v0, p0, p1}, Lcom/chartboost/sdk/Model/a$a;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 235
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/chartboost/sdk/Model/a;->w:Ljava/lang/Runnable;

    .line 319
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->s:Z

    return v0
.end method

.method public a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 193
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v3, Lcom/chartboost/sdk/Model/a$b;->c:Lcom/chartboost/sdk/Model/a$b;

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->k:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 216
    :goto_0
    return v0

    .line 196
    :cond_1
    if-eqz p1, :cond_3

    .line 197
    :goto_1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v3, "deep-link"

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 200
    :try_start_0
    invoke-static {v0}, Lcom/chartboost/sdk/impl/bb;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_4

    .line 202
    :try_start_1
    new-instance v3, Ljava/lang/Boolean;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v3, p0, Lcom/chartboost/sdk/Model/a;->t:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v0

    .line 211
    :cond_2
    :goto_2
    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->o:Z

    if-eqz v0, :cond_5

    move v0, v1

    .line 212
    goto :goto_0

    .line 196
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v3, "link"

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 204
    :cond_4
    :try_start_2
    new-instance v0, Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->t:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 207
    :catch_0
    move-exception v0

    goto :goto_2

    .line 213
    :cond_5
    iput-boolean v2, p0, Lcom/chartboost/sdk/Model/a;->o:Z

    .line 214
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->p:Z

    .line 215
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    invoke-interface {v0, p0, p1, p2}, Lcom/chartboost/sdk/Model/a$a;->a(Lcom/chartboost/sdk/Model/a;Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    move v0, v2

    .line 216
    goto :goto_0

    .line 207
    :catch_1
    move-exception v3

    move-object p1, v0

    goto :goto_2
.end method

.method public b()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    if-eqz v0, :cond_0

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->p:Z

    .line 181
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/Model/a$a;->b(Lcom/chartboost/sdk/Model/a;)V

    .line 183
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/Model/a$a;->a(Lcom/chartboost/sdk/Model/a;)V

    .line 189
    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->t:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->t:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/Model/a$a;->c(Lcom/chartboost/sdk/Model/a;)V

    .line 241
    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/Model/a$a;->d(Lcom/chartboost/sdk/Model/a;)V

    .line 248
    :cond_0
    return-void
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->b()Z

    .line 256
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 257
    const/4 v0, 0x1

    .line 263
    :goto_0
    return v0

    .line 259
    :cond_0
    const-string v0, "CBImpression"

    const-string v1, "reinitializing -- no view protocol exists!!"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    :cond_1
    const-string v0, "CBImpression"

    const-string v1, "reinitializing -- view not yet created"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()V
    .locals 2

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/a;->j()V

    .line 269
    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->g:Z

    if-nez v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->d()V

    .line 274
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    .line 275
    const-string v0, "CBImpression"

    const-string v1, "Destroying the view and view data"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public j()V
    .locals 3

    .prologue
    .line 280
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->h:Lcom/chartboost/sdk/impl/bp;

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->h:Lcom/chartboost/sdk/impl/bp;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bp;->d()V

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/f$a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->h:Lcom/chartboost/sdk/impl/bp;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v1}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bp;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->h:Lcom/chartboost/sdk/impl/bp;

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_2

    .line 291
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->f()V

    .line 293
    :cond_2
    const-string v0, "CBImpression"

    const-string v1, "Destroying the view"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    return-void

    .line 285
    :catch_0
    move-exception v0

    .line 286
    const-string v1, "CBImpression"

    const-string v2, "Exception raised while cleaning up views"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public k()Lcom/chartboost/sdk/Model/CBError$CBImpressionError;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->c()Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    move-result-object v0

    .line 303
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Lcom/chartboost/sdk/f$a;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    .line 309
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/f$a;->setVisibility(I)V

    .line 315
    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->k:Z

    .line 323
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 326
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->w:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->w:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->w:Ljava/lang/Runnable;

    .line 330
    :cond_0
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->k:Z

    .line 331
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->j:Z

    .line 332
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "ad_id"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()Lcom/chartboost/sdk/d;
    .locals 2

    .prologue
    .line 339
    sget-object v0, Lcom/chartboost/sdk/Model/a$1;->a:[I

    iget-object v1, p0, Lcom/chartboost/sdk/Model/a;->c:Lcom/chartboost/sdk/Model/a$c;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/a$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 346
    invoke-static {}, Lcom/chartboost/sdk/impl/ae;->f()Lcom/chartboost/sdk/impl/ae;

    move-result-object v0

    :goto_0
    return-object v0

    .line 341
    :pswitch_0
    invoke-static {}, Lcom/chartboost/sdk/impl/av;->f()Lcom/chartboost/sdk/impl/av;

    move-result-object v0

    goto :goto_0

    .line 343
    :pswitch_1
    invoke-static {}, Lcom/chartboost/sdk/impl/af;->h()Lcom/chartboost/sdk/impl/af;

    move-result-object v0

    goto :goto_0

    .line 339
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public r()V
    .locals 1

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/d;->j(Lcom/chartboost/sdk/Model/a;)V

    .line 356
    return-void
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->j()Z

    move-result v0

    .line 362
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()V
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->o:Z

    .line 367
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->k()V

    .line 369
    :cond_0
    return-void
.end method

.method public u()V
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->o:Z

    .line 373
    return-void
.end method

.method public v()V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->l()V

    .line 378
    :cond_0
    return-void
.end method

.method public w()Lcom/chartboost/sdk/Libraries/e$a;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Libraries/e$a;

    if-nez v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Libraries/e$a;

    goto :goto_0
.end method

.method public x()Lcom/chartboost/sdk/f;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    return-object v0
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->p:Z

    return v0
.end method
