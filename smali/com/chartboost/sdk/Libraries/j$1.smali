.class Lcom/chartboost/sdk/Libraries/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/bc$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Libraries/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/Libraries/j;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/Libraries/j;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/j$1;->a:Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Libraries/j$a;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/j$1;->a:Lcom/chartboost/sdk/Libraries/j;

    invoke-static {v0, p1}, Lcom/chartboost/sdk/Libraries/j;->a(Lcom/chartboost/sdk/Libraries/j;Lcom/chartboost/sdk/Libraries/j$a;)Lcom/chartboost/sdk/Libraries/j$a;

    .line 166
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/j$1;->a:Lcom/chartboost/sdk/Libraries/j;

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/j;->a(Lcom/chartboost/sdk/Libraries/j;)Lcom/chartboost/sdk/f;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/j$1;->a:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/f;->a(Lcom/chartboost/sdk/f$b;)V

    .line 167
    return-void
.end method
