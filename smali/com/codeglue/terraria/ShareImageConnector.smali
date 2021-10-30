.class Lcom/codeglue/terraria/ShareImageConnector;
.super Ljava/lang/Object;
.source "ShareImage.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field shareImage:Lcom/codeglue/terraria/ShareImage;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 46
    const-string v0, "ShareConnection::onServiceConnected(..)"

    invoke-static {v0}, Lcom/codeglue/terraria/OctarineBridge;->nativePrint(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/codeglue/terraria/ShareImageConnector;->shareImage:Lcom/codeglue/terraria/ShareImage;

    .line 40
    return-void
.end method
