.class public Lcom/chartboost/sdk/impl/s;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final a:Lcom/chartboost/sdk/impl/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/s;->a:Lcom/chartboost/sdk/impl/i;

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/chartboost/sdk/impl/i;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/chartboost/sdk/impl/s;->a:Lcom/chartboost/sdk/impl/i;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/s;->a:Lcom/chartboost/sdk/impl/i;

    .line 47
    return-void
.end method
