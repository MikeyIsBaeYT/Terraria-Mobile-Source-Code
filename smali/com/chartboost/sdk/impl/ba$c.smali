.class public Lcom/chartboost/sdk/impl/ba$c;
.super Lcom/chartboost/sdk/impl/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private b:Lcom/chartboost/sdk/Model/CBError;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Model/CBError;)V
    .locals 0

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/s;-><init>()V

    .line 395
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ba$c;->b:Lcom/chartboost/sdk/Model/CBError;

    .line 396
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/ba$c;)Lcom/chartboost/sdk/Model/CBError;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba$c;->b:Lcom/chartboost/sdk/Model/CBError;

    return-object v0
.end method
