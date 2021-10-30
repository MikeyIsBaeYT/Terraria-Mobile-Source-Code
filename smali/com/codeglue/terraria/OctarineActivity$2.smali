.class Lcom/codeglue/terraria/OctarineActivity$2;
.super Ljava/lang/Object;
.source "OctarineActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codeglue/terraria/OctarineActivity;->SetViewOptions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codeglue/terraria/OctarineActivity;


# direct methods
.method constructor <init>(Lcom/codeglue/terraria/OctarineActivity;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/codeglue/terraria/OctarineActivity$2;->this$0:Lcom/codeglue/terraria/OctarineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 299
    const/4 v2, 0x0

    .line 302
    .local v2, "newUiOptions":I
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_0

    .line 304
    const/4 v3, 0x4

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    .line 305
    .local v0, "hasBackKey":Z
    const/4 v3, 0x3

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v1

    .line 307
    .local v1, "hasHomeKey":Z
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 310
    const-string v3, "Octarine"

    const-string v4, "Setting no navigation bar"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .end local v0    # "hasBackKey":Z
    .end local v1    # "hasHomeKey":Z
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/codeglue/terraria/OctarineActivity$2;->this$0:Lcom/codeglue/terraria/OctarineActivity;

    invoke-virtual {v3}, Lcom/codeglue/terraria/OctarineActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 328
    :goto_1
    return-void

    .line 315
    .restart local v0    # "hasBackKey":Z
    .restart local v1    # "hasHomeKey":Z
    :cond_1
    const-string v3, "Octarine"

    const-string v4, "Setting SYSTEM_UI_FLAG_IMMERSIVE_STICKY"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    or-int/lit16 v2, v2, 0x1000

    .line 317
    or-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 324
    .end local v0    # "hasBackKey":Z
    .end local v1    # "hasHomeKey":Z
    :catch_0
    move-exception v3

    goto :goto_1
.end method
