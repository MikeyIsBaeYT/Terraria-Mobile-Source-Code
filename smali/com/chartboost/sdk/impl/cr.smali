.class Lcom/chartboost/sdk/impl/cr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[C


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/chartboost/sdk/impl/cr;->a:[C

    return-void
.end method
