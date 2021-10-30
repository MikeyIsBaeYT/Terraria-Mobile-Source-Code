.class Lcom/codeglue/terraria/Terraria$2;
.super Ljava/lang/Object;
.source "Terraria.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codeglue/terraria/Terraria;->ShowMoreGames()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codeglue/terraria/Terraria;


# direct methods
.method constructor <init>(Lcom/codeglue/terraria/Terraria;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/codeglue/terraria/Terraria$2;->this$0:Lcom/codeglue/terraria/Terraria;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 377
    const-string v0, "Default"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->showMoreApps(Ljava/lang/String;)V

    .line 378
    return-void
.end method
