.class abstract Lcom/chartboost/sdk/impl/bz$c;
.super Lcom/chartboost/sdk/impl/bw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/bz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "c"
.end annotation


# instance fields
.field protected final a:Lcom/chartboost/sdk/impl/cb;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/cb;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/bw;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bz$c;->a:Lcom/chartboost/sdk/impl/cb;

    .line 104
    return-void
.end method
