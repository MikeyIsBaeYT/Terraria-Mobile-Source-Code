.class Lnet/hockeyapp/android/PaintActivity$2;
.super Landroid/os/AsyncTask;
.source "PaintActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/PaintActivity;->makeResult()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/io/File;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/PaintActivity;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/PaintActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lnet/hockeyapp/android/PaintActivity;

    .prologue
    .line 165
    iput-object p1, p0, Lnet/hockeyapp/android/PaintActivity$2;->this$0:Lnet/hockeyapp/android/PaintActivity;

    iput-object p2, p0, Lnet/hockeyapp/android/PaintActivity$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 165
    check-cast p1, [Ljava/io/File;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/PaintActivity$2;->doInBackground([Ljava/io/File;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/io/File;)Ljava/lang/Void;
    .locals 5
    .param p1, "args"    # [Ljava/io/File;

    .prologue
    .line 169
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 170
    .local v1, "out":Ljava/io/FileOutputStream;
    iget-object v2, p0, Lnet/hockeyapp/android/PaintActivity$2;->val$bitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 171
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v1    # "out":Ljava/io/FileOutputStream;
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 175
    const-string v2, "HockeyApp"

    const-string v3, "Could not save image."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
