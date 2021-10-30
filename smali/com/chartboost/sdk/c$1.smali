.class Lcom/chartboost/sdk/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/c;->b(Lcom/chartboost/sdk/Model/a;Ljava/lang/String;Lcom/chartboost/sdk/c$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/Model/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/chartboost/sdk/c$b;

.field final synthetic d:Lcom/chartboost/sdk/c;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/c;Lcom/chartboost/sdk/Model/a;Ljava/lang/String;Lcom/chartboost/sdk/c$b;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/chartboost/sdk/c$1;->d:Lcom/chartboost/sdk/c;

    iput-object p2, p0, Lcom/chartboost/sdk/c$1;->a:Lcom/chartboost/sdk/Model/a;

    iput-object p3, p0, Lcom/chartboost/sdk/c$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/chartboost/sdk/c$1;->c:Lcom/chartboost/sdk/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/chartboost/sdk/c$1$1;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/c$1$1;-><init>(Lcom/chartboost/sdk/c$1;Z)V

    .line 97
    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 98
    return-void
.end method
