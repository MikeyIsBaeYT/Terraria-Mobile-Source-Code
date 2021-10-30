.class public Lcom/chartboost/sdk/impl/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/n$a;,
        Lcom/chartboost/sdk/impl/n$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lcom/chartboost/sdk/impl/b$a;

.field public final c:Lcom/chartboost/sdk/impl/s;

.field public d:Z


# direct methods
.method private constructor <init>(Lcom/chartboost/sdk/impl/s;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/n;->d:Z

    .line 81
    iput-object v1, p0, Lcom/chartboost/sdk/impl/n;->a:Ljava/lang/Object;

    .line 82
    iput-object v1, p0, Lcom/chartboost/sdk/impl/n;->b:Lcom/chartboost/sdk/impl/b$a;

    .line 83
    iput-object p1, p0, Lcom/chartboost/sdk/impl/n;->c:Lcom/chartboost/sdk/impl/s;

    .line 84
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/chartboost/sdk/impl/b$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/chartboost/sdk/impl/b$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/n;->d:Z

    .line 75
    iput-object p1, p0, Lcom/chartboost/sdk/impl/n;->a:Ljava/lang/Object;

    .line 76
    iput-object p2, p0, Lcom/chartboost/sdk/impl/n;->b:Lcom/chartboost/sdk/impl/b$a;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/n;->c:Lcom/chartboost/sdk/impl/s;

    .line 78
    return-void
.end method

.method public static a(Lcom/chartboost/sdk/impl/s;)Lcom/chartboost/sdk/impl/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/chartboost/sdk/impl/s;",
            ")",
            "Lcom/chartboost/sdk/impl/n",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lcom/chartboost/sdk/impl/n;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/n;-><init>(Lcom/chartboost/sdk/impl/s;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Lcom/chartboost/sdk/impl/b$a;)Lcom/chartboost/sdk/impl/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/chartboost/sdk/impl/b$a;",
            ")",
            "Lcom/chartboost/sdk/impl/n",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/chartboost/sdk/impl/n;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/impl/n;-><init>(Ljava/lang/Object;Lcom/chartboost/sdk/impl/b$a;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/chartboost/sdk/impl/n;->c:Lcom/chartboost/sdk/impl/s;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
