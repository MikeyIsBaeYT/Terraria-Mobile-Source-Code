.class Lcom/codeglue/terraria/GoogleDriveCache$CachedData;
.super Ljava/lang/Object;
.source "GoogleDriveCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codeglue/terraria/GoogleDriveCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CachedData"
.end annotation


# instance fields
.field public filename:Ljava/lang/String;

.field public modifiedDate:Ljava/util/Date;

.field final synthetic this$0:Lcom/codeglue/terraria/GoogleDriveCache;


# direct methods
.method constructor <init>(Lcom/codeglue/terraria/GoogleDriveCache;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/codeglue/terraria/GoogleDriveCache$CachedData;->this$0:Lcom/codeglue/terraria/GoogleDriveCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
