.class Lcom/codeglue/terraria/ExpansionDownloader$2;
.super Ljava/lang/Thread;
.source "ExpansionDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codeglue/terraria/ExpansionDownloader;->ReadExpansionFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field activity:Lcom/codeglue/terraria/OctarineActivity;

.field context:Landroid/content/Context;

.field delegate:Lcom/codeglue/terraria/ObbCallback;

.field final synthetic this$0:Lcom/codeglue/terraria/ExpansionDownloader;


# direct methods
.method constructor <init>(Lcom/codeglue/terraria/ExpansionDownloader;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/codeglue/terraria/ExpansionDownloader$2;->this$0:Lcom/codeglue/terraria/ExpansionDownloader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/codeglue/terraria/ExpansionDownloader$2;Lcom/codeglue/terraria/OctarineActivity;Landroid/content/Context;Lcom/codeglue/terraria/ObbCallback;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/codeglue/terraria/ExpansionDownloader$2;
    .param p1, "x1"    # Lcom/codeglue/terraria/OctarineActivity;
    .param p2, "x2"    # Landroid/content/Context;
    .param p3, "x3"    # Lcom/codeglue/terraria/ObbCallback;

    .prologue
    .line 393
    invoke-direct {p0, p1, p2, p3}, Lcom/codeglue/terraria/ExpansionDownloader$2;->init(Lcom/codeglue/terraria/OctarineActivity;Landroid/content/Context;Lcom/codeglue/terraria/ObbCallback;)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method private init(Lcom/codeglue/terraria/OctarineActivity;Landroid/content/Context;Lcom/codeglue/terraria/ObbCallback;)Ljava/lang/Thread;
    .locals 0
    .param p1, "a"    # Lcom/codeglue/terraria/OctarineActivity;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "o"    # Lcom/codeglue/terraria/ObbCallback;

    .prologue
    .line 417
    iput-object p3, p0, Lcom/codeglue/terraria/ExpansionDownloader$2;->delegate:Lcom/codeglue/terraria/ObbCallback;

    .line 418
    iput-object p1, p0, Lcom/codeglue/terraria/ExpansionDownloader$2;->activity:Lcom/codeglue/terraria/OctarineActivity;

    .line 419
    iput-object p2, p0, Lcom/codeglue/terraria/ExpansionDownloader$2;->context:Landroid/content/Context;

    .line 420
    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 401
    const-string v2, "Octarine"

    const-string v3, "ExpansionDownloader: Extracting files"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-instance v1, Lcom/codeglue/terraria/Unpacker;

    iget-object v2, p0, Lcom/codeglue/terraria/ExpansionDownloader$2;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/codeglue/terraria/ExpansionDownloader$2;->activity:Lcom/codeglue/terraria/OctarineActivity;

    invoke-direct {v1, v2, v3}, Lcom/codeglue/terraria/Unpacker;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    .line 403
    .local v1, "unpacker":Lcom/codeglue/terraria/Unpacker;
    invoke-virtual {v1}, Lcom/codeglue/terraria/Unpacker;->extract()Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "dataFolder":Ljava/lang/String;
    const-string v2, "Octarine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ExpansionDownloader: datafolder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v2, p0, Lcom/codeglue/terraria/ExpansionDownloader$2;->this$0:Lcom/codeglue/terraria/ExpansionDownloader;

    iget-object v3, p0, Lcom/codeglue/terraria/ExpansionDownloader$2;->activity:Lcom/codeglue/terraria/OctarineActivity;

    invoke-virtual {v2, v0, v3}, Lcom/codeglue/terraria/ExpansionDownloader;->CheckIfMusicExists(Ljava/lang/String;Lcom/codeglue/terraria/OctarineActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 409
    iget-object v2, p0, Lcom/codeglue/terraria/ExpansionDownloader$2;->delegate:Lcom/codeglue/terraria/ObbCallback;

    invoke-interface {v2, v0}, Lcom/codeglue/terraria/ObbCallback;->OnExtractionDone(Ljava/lang/String;)V

    .line 412
    :cond_0
    const/4 v2, 0x0

    sput-boolean v2, Lcom/codeglue/terraria/ExpansionDownloader;->expandingFiles:Z

    .line 413
    return-void
.end method
