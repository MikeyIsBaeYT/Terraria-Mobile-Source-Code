.class public Lcom/chartboost/sdk/Libraries/g$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Libraries/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/chartboost/sdk/Libraries/g$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)V
    .locals 0

    .prologue
    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/g$k;->a:Ljava/lang/String;

    .line 382
    iput-object p2, p0, Lcom/chartboost/sdk/Libraries/g$k;->b:Lcom/chartboost/sdk/Libraries/g$a;

    .line 383
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/Libraries/g$k;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/g$k;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/g$k;->b:Lcom/chartboost/sdk/Libraries/g$a;

    return-object v0
.end method
