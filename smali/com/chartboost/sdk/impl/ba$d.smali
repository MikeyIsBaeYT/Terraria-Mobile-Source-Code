.class public Lcom/chartboost/sdk/impl/ba$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:Lcom/chartboost/sdk/Libraries/e$a;

.field private b:Lcom/chartboost/sdk/impl/i;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Libraries/e$a;Lcom/chartboost/sdk/impl/i;)V
    .locals 0

    .prologue
    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ba$d;->a:Lcom/chartboost/sdk/Libraries/e$a;

    .line 405
    iput-object p2, p0, Lcom/chartboost/sdk/impl/ba$d;->b:Lcom/chartboost/sdk/impl/i;

    .line 406
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/ba$d;)Lcom/chartboost/sdk/Libraries/e$a;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba$d;->a:Lcom/chartboost/sdk/Libraries/e$a;

    return-object v0
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/ba$d;)Lcom/chartboost/sdk/impl/i;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba$d;->b:Lcom/chartboost/sdk/impl/i;

    return-object v0
.end method
