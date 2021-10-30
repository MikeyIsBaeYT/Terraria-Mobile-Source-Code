.class Lcom/chartboost/sdk/f$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/f$a;->b(II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/f$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/f$a;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/chartboost/sdk/f$a$1;->a:Lcom/chartboost/sdk/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/chartboost/sdk/f$a$1;->a:Lcom/chartboost/sdk/f$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f$a;->requestLayout()V

    .line 87
    return-void
.end method
