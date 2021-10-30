.class public Lcom/chartboost/sdk/Model/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/chartboost/sdk/Libraries/g$a;

.field public static b:Lcom/chartboost/sdk/Libraries/g$a;

.field public static c:Lcom/chartboost/sdk/Libraries/g$a;

.field public static d:Lcom/chartboost/sdk/Libraries/g$a;

.field private static e:Lcom/chartboost/sdk/Libraries/g$a;

.field private static f:Lcom/chartboost/sdk/Libraries/g$a;

.field private static g:Lcom/chartboost/sdk/Libraries/g$a;

.field private static h:Lcom/chartboost/sdk/Libraries/g$a;

.field private static i:Lcom/chartboost/sdk/Libraries/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 19
    new-array v0, v11, [Lcom/chartboost/sdk/Libraries/g$k;

    const-string v1, "url"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "id"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "local-file"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v9

    const-string v1, "buffer"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->b()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v10

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/g;->a([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Model/b;->e:Lcom/chartboost/sdk/Libraries/g$a;

    .line 26
    new-array v0, v10, [Lcom/chartboost/sdk/Libraries/g$k;

    const-string v1, "url"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "scale"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->b()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "offset"

    new-array v2, v9, [Lcom/chartboost/sdk/Libraries/g$k;

    const-string v3, "x"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->b()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "y"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->b()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/g;->b([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/g;->a([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Model/b;->f:Lcom/chartboost/sdk/Libraries/g$a;

    .line 37
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/g$k;

    const-string v1, "video-landscape"

    sget-object v2, Lcom/chartboost/sdk/Model/b;->e:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "video-portrait"

    sget-object v2, Lcom/chartboost/sdk/Model/b;->e:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "ad-landscape"

    sget-object v2, Lcom/chartboost/sdk/Model/b;->f:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v9

    const-string v1, "frame-landscape"

    sget-object v2, Lcom/chartboost/sdk/Model/b;->f:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v10

    const-string v1, "close-landscape"

    sget-object v2, Lcom/chartboost/sdk/Model/b;->f:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v11

    const/4 v1, 0x5

    const-string v2, "replay-landscape"

    sget-object v3, Lcom/chartboost/sdk/Model/b;->f:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ad-portrait"

    sget-object v3, Lcom/chartboost/sdk/Model/b;->f:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "frame-portrait"

    sget-object v3, Lcom/chartboost/sdk/Model/b;->f:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "close-portrait"

    sget-object v3, Lcom/chartboost/sdk/Model/b;->f:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "replay-portrait"

    sget-object v3, Lcom/chartboost/sdk/Model/b;->f:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "video-click-button"

    sget-object v3, Lcom/chartboost/sdk/Model/b;->f:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "post-video-icon"

    sget-object v3, Lcom/chartboost/sdk/Model/b;->f:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "post-video-button"

    sget-object v3, Lcom/chartboost/sdk/Model/b;->f:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "video-confirmation-icon"

    sget-object v3, Lcom/chartboost/sdk/Model/b;->f:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "video-confirmation-button"

    sget-object v3, Lcom/chartboost/sdk/Model/b;->f:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "post-video-reward-icon"

    sget-object v3, Lcom/chartboost/sdk/Model/b;->f:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "blur-background"

    sget-object v3, Lcom/chartboost/sdk/Model/b;->f:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/g;->a([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Model/b;->g:Lcom/chartboost/sdk/Libraries/g$a;

    .line 57
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/g$k;

    const-string v1, "progress"

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/chartboost/sdk/Libraries/g$k;

    const-string v3, "delay"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->b()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "background-color"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, "progress-color"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v3

    aput-object v3, v2, v9

    const-string v3, "border-color"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v3

    aput-object v3, v2, v10

    const-string v3, "radius"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->b()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/g;->b([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "video-controls-togglable"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->c()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "video-controls-background"

    new-array v2, v9, [Lcom/chartboost/sdk/Libraries/g$k;

    const-string v3, "color"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "border-color"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/g;->b([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v9

    const-string v1, "post-video-toaster"

    new-array v2, v9, [Lcom/chartboost/sdk/Libraries/g$k;

    const-string v3, "title"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "tagline"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/g;->b([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v10

    const-string v1, "pre-popup"

    new-array v2, v11, [Lcom/chartboost/sdk/Libraries/g$k;

    const-string v3, "title"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "text"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, "confirm"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v3

    aput-object v3, v2, v9

    const-string v3, "cancel"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/g;->b([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v11

    const/4 v1, 0x5

    const-string v2, "post-popup"

    new-array v3, v10, [Lcom/chartboost/sdk/Libraries/g$k;

    const-string v4, "title"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "text"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v4

    aput-object v4, v3, v8

    const-string v4, "confirm"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->b([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "cancel-popup"

    new-array v3, v11, [Lcom/chartboost/sdk/Libraries/g$k;

    const-string v4, "title"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "text"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v4

    aput-object v4, v3, v8

    const-string v4, "confirm"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v4

    aput-object v4, v3, v9

    const-string v4, "cancel"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->b([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "confirmation"

    new-array v3, v9, [Lcom/chartboost/sdk/Libraries/g$k;

    const-string v4, "text"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "color"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->b([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "video-progress-timer-enabled"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->c()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "post-video-reward-toaster"

    new-array v3, v9, [Lcom/chartboost/sdk/Libraries/g$k;

    const-string v4, "text"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "position"

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "inside-top"

    aput-object v6, v5, v7

    const-string v6, "outside-bottom"

    aput-object v6, v5, v8

    invoke-static {v5}, Lcom/chartboost/sdk/Libraries/g;->a([Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->b([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "play-another-popup"

    const/4 v3, 0x5

    new-array v3, v3, [Lcom/chartboost/sdk/Libraries/g$k;

    const-string v4, "skip-confirmation"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->c()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "title"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v4

    aput-object v4, v3, v8

    const-string v4, "text"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v4

    aput-object v4, v3, v9

    const-string v4, "cancel"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v4

    aput-object v4, v3, v10

    const-string v4, "confirm"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->b([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/g;->a([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Model/b;->h:Lcom/chartboost/sdk/Libraries/g$a;

    .line 109
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/g$k;

    const-string v1, "close"

    sget-object v2, Lcom/chartboost/sdk/Model/b;->f:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "header-center"

    sget-object v2, Lcom/chartboost/sdk/Model/b;->f:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "header-tile"

    sget-object v2, Lcom/chartboost/sdk/Model/b;->f:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v9

    const-string v1, "header-height"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->b()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v10

    const-string v1, "background-color"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v11

    const/4 v1, 0x5

    const-string v2, "header-text"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "text-color"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "close-landscape"

    sget-object v3, Lcom/chartboost/sdk/Model/b;->f:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "header-landscape"

    sget-object v3, Lcom/chartboost/sdk/Model/b;->f:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "close-portrait"

    sget-object v3, Lcom/chartboost/sdk/Model/b;->f:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "header-portrait"

    sget-object v3, Lcom/chartboost/sdk/Model/b;->f:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "install-button"

    sget-object v3, Lcom/chartboost/sdk/Model/b;->f:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "play-button"

    sget-object v3, Lcom/chartboost/sdk/Model/b;->f:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "offset"

    new-array v3, v9, [Lcom/chartboost/sdk/Libraries/g$k;

    const-string v4, "x"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->b()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "y"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->b()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->b([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/g;->a([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Model/b;->a:Lcom/chartboost/sdk/Libraries/g$a;

    .line 129
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/g$k;

    const-string v1, "type"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "name"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "cgn"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v9

    const-string v1, "more_type"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v10

    const-string v1, "assets"

    new-array v2, v8, [Lcom/chartboost/sdk/Libraries/g$k;

    const-string v3, "icon"

    sget-object v4, Lcom/chartboost/sdk/Model/b;->f:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/g;->a([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v11

    const/4 v1, 0x5

    const-string v2, "text"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "link"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "deep-link"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "itunes_id"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "publisher"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "description"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "border-color"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/g;->a([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/g;->b(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Model/b;->i:Lcom/chartboost/sdk/Libraries/g$a;

    .line 146
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/g$k;

    const-string v1, "status"

    sget-object v2, Lcom/chartboost/sdk/Libraries/a;->a:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "ad_id"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "to"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v9

    const-string v1, "type"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v10

    const-string v1, "native"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v11

    const/4 v1, 0x5

    const-string v2, "message"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "link"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "deep-link"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cgn"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "creative"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "assets"

    sget-object v3, Lcom/chartboost/sdk/Model/b;->g:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ux"

    sget-object v3, Lcom/chartboost/sdk/Model/b;->h:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "reward"

    const-class v3, Ljava/lang/Object;

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/Class;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/g;->a([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Model/b;->b:Lcom/chartboost/sdk/Libraries/g$a;

    .line 162
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/g$k;

    const-string v1, "status"

    sget-object v2, Lcom/chartboost/sdk/Libraries/a;->a:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "message"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "type"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v9

    const-string v1, "assets"

    sget-object v2, Lcom/chartboost/sdk/Model/b;->a:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v10

    const-string v1, "cells"

    sget-object v2, Lcom/chartboost/sdk/Model/b;->i:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v11

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/g;->a([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Model/b;->c:Lcom/chartboost/sdk/Libraries/g$a;

    .line 170
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/g$k;

    const-string v1, "status"

    sget-object v2, Lcom/chartboost/sdk/Libraries/a;->a:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "ad_id"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "to"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v9

    const-string v1, "type"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v10

    const-string v1, "native"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v1

    aput-object v1, v0, v11

    const/4 v1, 0x5

    const-string v2, "message"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "link"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "name"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "deep-link"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "cgn"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "creative"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "icons"

    new-array v3, v10, [Lcom/chartboost/sdk/Libraries/g$k;

    const-string v4, "sm"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "md"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v4

    aput-object v4, v3, v8

    const-string v4, "lg"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/g;->a([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/g;->a([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Model/b;->d:Lcom/chartboost/sdk/Libraries/g$a;

    return-void
.end method
