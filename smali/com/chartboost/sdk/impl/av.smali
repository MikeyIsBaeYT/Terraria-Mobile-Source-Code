.class public Lcom/chartboost/sdk/impl/av;
.super Lcom/chartboost/sdk/d;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String;

.field private static d:Lcom/chartboost/sdk/impl/av;


# instance fields
.field protected b:I

.field private e:Lcom/chartboost/sdk/Model/a;

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/chartboost/sdk/impl/av;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/impl/av;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/chartboost/sdk/d;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/av;->e:Lcom/chartboost/sdk/Model/a;

    .line 45
    return-void
.end method

.method public static f()Lcom/chartboost/sdk/impl/av;
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lcom/chartboost/sdk/impl/av;->d:Lcom/chartboost/sdk/impl/av;

    if-nez v0, :cond_1

    .line 52
    const-class v1, Lcom/chartboost/sdk/impl/av;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/impl/av;->d:Lcom/chartboost/sdk/impl/av;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/chartboost/sdk/impl/av;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/av;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/av;->d:Lcom/chartboost/sdk/impl/av;

    .line 56
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/impl/av;->d:Lcom/chartboost/sdk/impl/av;

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Z)Lcom/chartboost/sdk/Model/a;
    .locals 3

    .prologue
    .line 100
    new-instance v0, Lcom/chartboost/sdk/Model/a;

    sget-object v1, Lcom/chartboost/sdk/Model/a$c;->b:Lcom/chartboost/sdk/Model/a$c;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/chartboost/sdk/Model/a;-><init>(Lcom/chartboost/sdk/Model/a$c;ZLjava/lang/String;Z)V

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/av;->e:Lcom/chartboost/sdk/Model/a;

    .line 124
    return-void
.end method

.method protected a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Libraries/e$a;)V
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/av;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/av;->g:Z

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/av;->g:Z

    .line 83
    const-string v0, "cells"

    invoke-virtual {p2, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->o()I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/av;->b:I

    .line 87
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 88
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/impl/av;->b:I

    .line 75
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/av;->g()V

    .line 76
    invoke-super {p0, p1}, Lcom/chartboost/sdk/d;->a(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method protected c()Lcom/chartboost/sdk/d$a;
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lcom/chartboost/sdk/impl/av$1;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/av$1;-><init>(Lcom/chartboost/sdk/impl/av;)V

    return-object v0
.end method

.method protected d(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/chartboost/sdk/impl/av;->e:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method protected e(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/impl/az;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lcom/chartboost/sdk/impl/az;

    const-string v1, "/more/get"

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/az;-><init>(Ljava/lang/String;)V

    .line 106
    sget-object v1, Lcom/chartboost/sdk/impl/l$a;->c:Lcom/chartboost/sdk/impl/l$a;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/az;->a(Lcom/chartboost/sdk/impl/l$a;)V

    .line 107
    sget-object v1, Lcom/chartboost/sdk/Model/b;->c:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/az;->a(Lcom/chartboost/sdk/Libraries/g$a;)V

    .line 108
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    const-string v0, "more-apps"

    return-object v0
.end method

.method protected e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/av;->e:Lcom/chartboost/sdk/Model/a;

    .line 134
    return-void
.end method

.method protected g()V
    .locals 0

    .prologue
    .line 209
    return-void
.end method

.method protected l(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/impl/az;
    .locals 4

    .prologue
    .line 113
    new-instance v0, Lcom/chartboost/sdk/impl/az;

    const-string v1, "/more/show"

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/az;-><init>(Ljava/lang/String;)V

    .line 114
    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 115
    const-string v1, "location"

    iget-object v2, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    :cond_0
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->w()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "cells"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    const-string v1, "cells"

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->w()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    const-string v3, "cells"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    :cond_1
    return-object v0
.end method

.method protected q(Lcom/chartboost/sdk/Model/a;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/chartboost/sdk/impl/av;->e:Lcom/chartboost/sdk/Model/a;

    .line 139
    return-void
.end method
