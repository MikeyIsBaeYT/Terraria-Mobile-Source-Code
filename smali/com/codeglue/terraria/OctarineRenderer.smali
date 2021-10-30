.class Lcom/codeglue/terraria/OctarineRenderer;
.super Ljava/lang/Object;
.source "OctarineRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private scrHeight:I

.field private scrWidth:I

.field private screenShotBuffer:[I

.field private takingScreenshot:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lcom/codeglue/terraria/OctarineRenderer;->scrWidth:I

    .line 19
    iput v0, p0, Lcom/codeglue/terraria/OctarineRenderer;->scrHeight:I

    .line 21
    iput-boolean v0, p0, Lcom/codeglue/terraria/OctarineRenderer;->takingScreenshot:Z

    return-void
.end method


# virtual methods
.method public TakeScreenshot()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/codeglue/terraria/OctarineRenderer;->takingScreenshot:Z

    .line 57
    return-void
.end method

.method TakeScreenshotAndShare(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 83
    iget-object v0, p0, Lcom/codeglue/terraria/OctarineRenderer;->screenShotBuffer:[I

    invoke-static {v0}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v7

    .line 84
    .local v7, "intBuffer":Ljava/nio/IntBuffer;
    invoke-virtual {v7, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 85
    iget v3, p0, Lcom/codeglue/terraria/OctarineRenderer;->scrWidth:I

    iget v4, p0, Lcom/codeglue/terraria/OctarineRenderer;->scrHeight:I

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move-object v0, p1

    move v2, v1

    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 86
    new-instance v0, Lcom/codeglue/terraria/ShareImage;

    iget-object v1, p0, Lcom/codeglue/terraria/OctarineRenderer;->screenShotBuffer:[I

    iget v2, p0, Lcom/codeglue/terraria/OctarineRenderer;->scrWidth:I

    iget v3, p0, Lcom/codeglue/terraria/OctarineRenderer;->scrHeight:I

    move v4, v8

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/codeglue/terraria/ShareImage;-><init>([IIIZZ)V

    .line 87
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v3, 0x0

    .line 64
    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v1, v2}, Lcom/codeglue/terraria/OctarineBridge;->nativeOnUpdate(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    iget-boolean v1, p0, Lcom/codeglue/terraria/OctarineRenderer;->takingScreenshot:Z

    if-eqz v1, :cond_0

    .line 74
    iput-boolean v3, p0, Lcom/codeglue/terraria/OctarineRenderer;->takingScreenshot:Z

    .line 75
    invoke-virtual {p0, p1}, Lcom/codeglue/terraria/OctarineRenderer;->TakeScreenshotAndShare(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 77
    :cond_0
    sput-boolean v3, Lcom/codeglue/terraria/VirtualKeyboard;->keyHandled:Z

    .line 78
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDrawFrame::error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/codeglue/terraria/OctarineBridge;->nativePrint(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 10
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/4 v9, 0x0

    const v8, 0x40228f5c    # 2.54f

    .line 32
    const-string v6, "Octarine"

    const-string v7, "[LIFE] onSurfaceChanged"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iput p2, p0, Lcom/codeglue/terraria/OctarineRenderer;->scrWidth:I

    .line 35
    iput p3, p0, Lcom/codeglue/terraria/OctarineRenderer;->scrHeight:I

    .line 36
    iget v6, p0, Lcom/codeglue/terraria/OctarineRenderer;->scrWidth:I

    iget v7, p0, Lcom/codeglue/terraria/OctarineRenderer;->scrHeight:I

    mul-int/2addr v6, v7

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/codeglue/terraria/OctarineRenderer;->screenShotBuffer:[I

    .line 38
    sget-object v6, Lcom/codeglue/terraria/OctarineBridge;->metrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    sget-object v7, Lcom/codeglue/terraria/OctarineBridge;->metrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v7, v8

    div-float v5, v6, v7

    .line 39
    .local v5, "screenCmWidth":F
    sget-object v6, Lcom/codeglue/terraria/OctarineBridge;->metrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v6, v6

    sget-object v7, Lcom/codeglue/terraria/OctarineBridge;->metrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v7, v8

    div-float v4, v6, v7

    .line 41
    .local v4, "screenCmHeight":F
    sget-object v6, Lcom/codeglue/terraria/OctarineBridge;->metrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    sget-object v7, Lcom/codeglue/terraria/OctarineBridge;->metrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v3, v6, v7

    .line 42
    .local v3, "scrW":F
    sget-object v6, Lcom/codeglue/terraria/OctarineBridge;->metrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v6, v6

    sget-object v7, Lcom/codeglue/terraria/OctarineBridge;->metrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v2, v6, v7

    .line 44
    .local v2, "scrH":F
    mul-float v6, v3, v3

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    .line 46
    .local v1, "inchDiagonal":F
    const/4 v6, 0x1

    new-array v0, v6, [I

    .line 47
    .local v0, "depthbits":[I
    const/16 v6, 0xd56

    invoke-interface {p1, v6, v0, v9}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    .line 48
    const-string v6, "Octarine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Depth Bits: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v0, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-static {p2, p3, v5, v4, v1}, Lcom/codeglue/terraria/OctarineBridge;->nativeOnResizeSurface(IIFFF)V

    .line 51
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 25
    const-string v0, "Octarine"

    const-string v1, "[LIFE] onSurfaceCreated - new OPENGL CONTEXT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {}, Lcom/codeglue/terraria/OctarineBridge;->nativeOnSurfaceChanged()V

    .line 27
    return-void
.end method
