.class Lcom/codeglue/terraria/GoogleDriveCache$1;
.super Ljava/lang/Object;
.source "GoogleDriveCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codeglue/terraria/GoogleDriveCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codeglue/terraria/GoogleDriveCache;


# direct methods
.method constructor <init>(Lcom/codeglue/terraria/GoogleDriveCache;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/codeglue/terraria/GoogleDriveCache$1;->this$0:Lcom/codeglue/terraria/GoogleDriveCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/codeglue/terraria/GoogleDriveCache$1;->this$0:Lcom/codeglue/terraria/GoogleDriveCache;

    invoke-static {v0}, Lcom/codeglue/terraria/GoogleDriveCache;->access$000(Lcom/codeglue/terraria/GoogleDriveCache;)V

    .line 98
    return-void
.end method
