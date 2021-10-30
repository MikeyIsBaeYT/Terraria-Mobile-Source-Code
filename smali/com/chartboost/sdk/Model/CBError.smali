.class public final Lcom/chartboost/sdk/Model/CBError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Model/CBError$1;,
        Lcom/chartboost/sdk/Model/CBError$a;,
        Lcom/chartboost/sdk/Model/CBError$CBClickError;,
        Lcom/chartboost/sdk/Model/CBError$CBImpressionError;
    }
.end annotation


# instance fields
.field private a:Lcom/chartboost/sdk/Model/CBError$a;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Lcom/chartboost/sdk/Model/CBError$a;
    .param p2, "errorDesc"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/chartboost/sdk/Model/CBError;->a:Lcom/chartboost/sdk/Model/CBError$a;

    .line 77
    iput-object p2, p0, Lcom/chartboost/sdk/Model/CBError;->b:Ljava/lang/String;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/CBError;->c:Z

    .line 79
    return-void
.end method


# virtual methods
.method public a()Lcom/chartboost/sdk/Model/CBError$a;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/chartboost/sdk/Model/CBError;->a:Lcom/chartboost/sdk/Model/CBError$a;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/chartboost/sdk/Model/CBError;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/chartboost/sdk/Model/CBError$CBImpressionError;
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$1;->a:[I

    iget-object v1, p0, Lcom/chartboost/sdk/Model/CBError;->a:Lcom/chartboost/sdk/Model/CBError$a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 102
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NETWORK_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    :goto_0
    return-object v0

    .line 94
    :pswitch_0
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    goto :goto_0

    .line 96
    :pswitch_1
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNET_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    goto :goto_0

    .line 98
    :pswitch_2
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_AD_FOUND:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
