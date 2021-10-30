.class public Lcom/chartboost/sdk/Libraries/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Libraries/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/e$b;->a:Ljava/lang/String;

    .line 75
    instance-of v0, p2, Lcom/chartboost/sdk/Libraries/e$a;

    if-eqz v0, :cond_0

    .line 76
    check-cast p2, Lcom/chartboost/sdk/Libraries/e$a;

    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/e$a;->n()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/e$b;->b:Ljava/lang/Object;

    .line 79
    :goto_0
    return-void

    .line 78
    :cond_0
    iput-object p2, p0, Lcom/chartboost/sdk/Libraries/e$b;->b:Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic a(Lcom/chartboost/sdk/Libraries/e$b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/chartboost/sdk/Libraries/e$b;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$b;->b:Ljava/lang/Object;

    return-object v0
.end method
