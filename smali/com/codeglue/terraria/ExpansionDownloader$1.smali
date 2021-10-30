.class Lcom/codeglue/terraria/ExpansionDownloader$1;
.super Ljava/lang/Object;
.source "ExpansionDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codeglue/terraria/ExpansionDownloader;->CheckIfMusicExists(Ljava/lang/String;Lcom/codeglue/terraria/OctarineActivity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codeglue/terraria/ExpansionDownloader;


# direct methods
.method constructor <init>(Lcom/codeglue/terraria/ExpansionDownloader;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/codeglue/terraria/ExpansionDownloader$1;->this$0:Lcom/codeglue/terraria/ExpansionDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 228
    const-string v0, "Could not find external OBB data. Please reinstall / relaunch the game."

    .line 229
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/codeglue/terraria/ExpansionDownloader$1;->this$0:Lcom/codeglue/terraria/ExpansionDownloader;

    iget-object v2, v2, Lcom/codeglue/terraria/ExpansionDownloader;->terraria:Lcom/codeglue/terraria/OctarineActivity;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 230
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 231
    return-void
.end method
