.class Lcom/codeglue/terraria/OctarineView;
.super Landroid/opengl/GLSurfaceView;
.source "OctarineView.java"


# instance fields
.field private isFocused:Z

.field private layoutChangedOnce:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 23
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 18
    iput-boolean v3, p0, Lcom/codeglue/terraria/OctarineView;->isFocused:Z

    .line 19
    iput-boolean v3, p0, Lcom/codeglue/terraria/OctarineView;->layoutChangedOnce:Z

    .line 27
    const/4 v3, 0x2

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/codeglue/terraria/OctarineView;->setEGLContextClientVersion(I)V

    .line 29
    new-instance v3, Lcom/codeglue/terraria/OctarineRenderer;

    invoke-direct {v3}, Lcom/codeglue/terraria/OctarineRenderer;-><init>()V

    sput-object v3, Lcom/codeglue/terraria/OctarineBridge;->renderer:Lcom/codeglue/terraria/OctarineRenderer;

    .line 31
    sget-object v3, Lcom/codeglue/terraria/OctarineBridge;->renderer:Lcom/codeglue/terraria/OctarineRenderer;

    invoke-virtual {p0, v3}, Lcom/codeglue/terraria/OctarineView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 33
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 34
    .local v2, "paramList":[Ljava/lang/Class;
    const-class v3, Landroid/opengl/GLSurfaceView;

    const-string v4, "setPreserveEGLContextOnPause"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 38
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_1
    const-string v3, "Octarine"

    const-string v4, "[LIFE] setPreserveEGLContextOnPause trying.."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v3, "Octarine"

    const-string v4, "[LIFE] setPreserveEGLContextOnPause succes!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/codeglue/terraria/OctarineView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    new-instance v4, Lcom/codeglue/terraria/OctarineView$1;

    invoke-direct {v4, p0}, Lcom/codeglue/terraria/OctarineView$1;-><init>(Lcom/codeglue/terraria/OctarineView;)V

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 74
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "paramList":[Ljava/lang/Class;
    :goto_1
    const-string v3, "Octarine"

    const-string v4, "[LIFE] OctarineView"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void

    .line 42
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    .restart local v2    # "paramList":[Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "Octarine"

    const-string v4, "[LIFE] setPreserveEGLContextOnPause failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 68
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "paramList":[Ljava/lang/Class;
    :catch_1
    move-exception v0

    .line 70
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public IsFocused()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/codeglue/terraria/OctarineView;->isFocused:Z

    return v0
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 80
    const-string v1, "onFocusChanged"

    invoke-static {v1}, Lcom/codeglue/terraria/OctarineBridge;->nativePrint(Ljava/lang/String;)V

    .line 82
    invoke-super {p0, p1, p2, p3}, Landroid/opengl/GLSurfaceView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 84
    iput-boolean p1, p0, Lcom/codeglue/terraria/OctarineView;->isFocused:Z

    .line 86
    const-string v0, "Focused: "

    .line 87
    .local v0, "msg":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/codeglue/terraria/OctarineView;->isFocused:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "True"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_0
    invoke-static {v0}, Lcom/codeglue/terraria/OctarineBridge;->displayMessage(Ljava/lang/String;)V

    .line 97
    const-string v1, "Octarine"

    const-string v2, "[LIFE] onFocusChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void

    .line 93
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "False"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x1

    .line 127
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    and-int/lit16 v0, v9, 0xff

    .line 131
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 132
    .local v1, "actionIndex":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    .line 133
    .local v8, "touchID":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 134
    .local v2, "currX":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 135
    .local v3, "currY":F
    const/high16 v9, 0x447a0000    # 1000.0f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    long-to-float v10, v10

    div-float v4, v9, v10

    .line 140
    .local v4, "eventTime":F
    packed-switch v0, :pswitch_data_0

    .line 171
    const-string v9, "Octarine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Received touch event, but not handled! "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    :goto_0
    return v12

    .line 145
    :pswitch_0
    const/4 v9, 0x0

    invoke-static {v8, v9, v2, v3, v4}, Lcom/codeglue/terraria/OctarineBridge;->nativeTouchEvent(IIFFF)V

    goto :goto_0

    .line 150
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    .line 151
    .local v7, "pointerCount":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v5

    .line 153
    .local v5, "historyCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v7, :cond_0

    .line 155
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    .line 156
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 157
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 158
    const/4 v9, 0x2

    invoke-static {v8, v9, v2, v3, v4}, Lcom/codeglue/terraria/OctarineBridge;->nativeTouchEvent(IIFFF)V

    .line 153
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 167
    .end local v5    # "historyCount":I
    .end local v6    # "i":I
    .end local v7    # "pointerCount":I
    :pswitch_2
    invoke-static {v8, v12, v2, v3, v4}, Lcom/codeglue/terraria/OctarineBridge;->nativeTouchEvent(IIFFF)V

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
