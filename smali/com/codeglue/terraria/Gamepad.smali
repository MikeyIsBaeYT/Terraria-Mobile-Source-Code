.class public Lcom/codeglue/terraria/Gamepad;
.super Ljava/lang/Object;
.source "Gamepad.java"


# instance fields
.field private moga:Lcom/codeglue/terraria/MogaController;

.field private shield:Lcom/codeglue/terraria/ShieldController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v7, p0, Lcom/codeglue/terraria/Gamepad;->moga:Lcom/codeglue/terraria/MogaController;

    .line 25
    iput-object v7, p0, Lcom/codeglue/terraria/Gamepad;->shield:Lcom/codeglue/terraria/ShieldController;

    .line 29
    const/4 v3, 0x0

    .line 30
    .local v3, "hasNVController":Z
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    .line 31
    .local v2, "devids":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_1

    aget v5, v0, v4

    .line 33
    .local v5, "id":I
    invoke-static {v5}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    .line 34
    .local v1, "dev":Landroid/view/InputDevice;
    const-string v7, "Octarine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "controller "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "NVIDIA Controller"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "nvidia_joypad"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    const/4 v3, 0x1

    .line 36
    :goto_1
    if-eqz v3, :cond_3

    .line 40
    .end local v1    # "dev":Landroid/view/InputDevice;
    .end local v5    # "id":I
    :cond_1
    if-eqz v3, :cond_4

    .line 41
    new-instance v7, Lcom/codeglue/terraria/ShieldController;

    invoke-direct {v7, p1}, Lcom/codeglue/terraria/ShieldController;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/codeglue/terraria/Gamepad;->shield:Lcom/codeglue/terraria/ShieldController;

    .line 44
    :goto_2
    return-void

    .line 35
    .restart local v1    # "dev":Landroid/view/InputDevice;
    .restart local v5    # "id":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 31
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 43
    .end local v1    # "dev":Landroid/view/InputDevice;
    .end local v5    # "id":I
    :cond_4
    new-instance v7, Lcom/codeglue/terraria/MogaController;

    invoke-direct {v7, p1}, Lcom/codeglue/terraria/MogaController;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/codeglue/terraria/Gamepad;->moga:Lcom/codeglue/terraria/MogaController;

    goto :goto_2
.end method


# virtual methods
.method public ResetControllerData()V
    .locals 22

    .prologue
    .line 107
    const-string v1, "Octarine"

    const-string v2, "ResetControllerData"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/codeglue/terraria/Gamepad;->moga:Lcom/codeglue/terraria/MogaController;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/codeglue/terraria/Gamepad;->moga:Lcom/codeglue/terraria/MogaController;

    iget v1, v1, Lcom/codeglue/terraria/MogaController;->Connected:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 110
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/codeglue/terraria/Gamepad;->moga:Lcom/codeglue/terraria/MogaController;

    iget v1, v1, Lcom/codeglue/terraria/MogaController;->ProductVersion:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v1 .. v21}, Lcom/codeglue/terraria/OctarineBridge;->nativeGamePadUpdate(IIIIIIIFIIFIIIIIFFFFI)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/codeglue/terraria/Gamepad;->shield:Lcom/codeglue/terraria/ShieldController;

    if-eqz v1, :cond_0

    .line 116
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/codeglue/terraria/Gamepad;->shield:Lcom/codeglue/terraria/ShieldController;

    iget v1, v1, Lcom/codeglue/terraria/ShieldController;->ProductVersion:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v1 .. v21}, Lcom/codeglue/terraria/OctarineBridge;->nativeGamePadUpdate(IIIIIIIFIIFIIIIIFFFFI)V

    goto :goto_0
.end method

.method public UpdateControllerData()V
    .locals 23

    .prologue
    .line 124
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/codeglue/terraria/Gamepad;->moga:Lcom/codeglue/terraria/MogaController;

    if-eqz v1, :cond_0

    .line 125
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/codeglue/terraria/Gamepad;->moga:Lcom/codeglue/terraria/MogaController;

    invoke-virtual {v1}, Lcom/codeglue/terraria/MogaController;->Update()V

    .line 127
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/codeglue/terraria/Gamepad;->moga:Lcom/codeglue/terraria/MogaController;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/codeglue/terraria/Gamepad;->moga:Lcom/codeglue/terraria/MogaController;

    iget v1, v1, Lcom/codeglue/terraria/MogaController;->Connected:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 129
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/codeglue/terraria/Gamepad;->moga:Lcom/codeglue/terraria/MogaController;

    iget v1, v1, Lcom/codeglue/terraria/MogaController;->ProductVersion:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/codeglue/terraria/Gamepad;->moga:Lcom/codeglue/terraria/MogaController;

    iget v3, v3, Lcom/codeglue/terraria/MogaController;->A:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codeglue/terraria/Gamepad;->moga:Lcom/codeglue/terraria/MogaController;

    iget v4, v4, Lcom/codeglue/terraria/MogaController;->B:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/codeglue/terraria/Gamepad;->moga:Lcom/codeglue/terraria/MogaController;

    iget v5, v5, Lcom/codeglue/terraria/MogaController;->X:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/codeglue/terraria/Gamepad;->moga:Lcom/codeglue/terraria/MogaController;

    iget v6, v6, Lcom/codeglue/terraria/MogaController;->Y:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/codeglue/terraria/Gamepad;->moga:Lcom/codeglue/terraria/MogaController;

    iget v7, v7, Lcom/codeglue/terraria/MogaController;->L1:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/codeglue/terraria/Gamepad;->moga:Lcom/codeglue/terraria/MogaController;

    iget v8, v8, Lcom/codeglue/terraria/MogaController;->L2:I

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/codeglue/terraria/Gamepad;->moga:Lcom/codeglue/terraria/MogaController;

    iget v9, v9, Lcom/codeglue/terraria/MogaController;->L3:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/codeglue/terraria/Gamepad;->moga:Lcom/codeglue/terraria/MogaController;

    iget v10, v10, Lcom/codeglue/terraria/MogaController;->R1:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/codeglue/terraria/Gamepad;->moga:Lcom/codeglue/terraria/MogaController;

    iget v11, v11, Lcom/codeglue/terraria/MogaController;->R2:I

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/codeglue/terraria/Gamepad;->moga:Lcom/codeglue/terraria/MogaController;

    iget v12, v12, Lcom/codeglue/terraria/MogaController;->R3:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/codeglue/terraria/Gamepad;->moga:Lcom/codeglue/terraria/MogaController;

    iget v13, v13, Lcom/codeglue/terraria/MogaController;->DpadUp:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codeglue/terraria/Gamepad;->moga:Lcom/codeglue/terraria/MogaController;

    iget v14, v14, Lcom/codeglue/terraria/MogaController;->DpadDown:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/codeglue/terraria/Gamepad;->moga:Lcom/codeglue/terraria/MogaController;

    iget v15, v15, Lcom/codeglue/terraria/MogaController;->DpadLeft:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codeglue/terraria/Gamepad;->moga:Lcom/codeglue/terraria/MogaController;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/codeglue/terraria/MogaController;->DpadRight:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codeglue/terraria/Gamepad;->moga:Lcom/codeglue/terraria/MogaController;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/codeglue/terraria/MogaController;->AxisX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codeglue/terraria/Gamepad;->moga:Lcom/codeglue/terraria/MogaController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/codeglue/terraria/MogaController;->AxisY:F

    move/from16 v18, v0

    const/high16 v19, -0x40800000    # -1.0f

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codeglue/terraria/Gamepad;->moga:Lcom/codeglue/terraria/MogaController;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/codeglue/terraria/MogaController;->AxisZ:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codeglue/terraria/Gamepad;->moga:Lcom/codeglue/terraria/MogaController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/codeglue/terraria/MogaController;->AxisRZ:F

    move/from16 v20, v0

    const/high16 v22, -0x40800000    # -1.0f

    mul-float v20, v20, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codeglue/terraria/Gamepad;->moga:Lcom/codeglue/terraria/MogaController;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/codeglue/terraria/MogaController;->Start:I

    move/from16 v21, v0

    invoke-static/range {v1 .. v21}, Lcom/codeglue/terraria/OctarineBridge;->nativeGamePadUpdate(IIIIIIIFIIFIIIIIFFFFI)V

    .line 142
    :cond_1
    :goto_0
    return-void

    .line 133
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/codeglue/terraria/Gamepad;->shield:Lcom/codeglue/terraria/ShieldController;

    if-eqz v1, :cond_1

    .line 136
    const/16 v21, 0x0

    .line 138
    .local v21, "startButton":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/codeglue/terraria/Gamepad;->shield:Lcom/codeglue/terraria/ShieldController;

    iget v1, v1, Lcom/codeglue/terraria/ShieldController;->ProductVersion:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/codeglue/terraria/Gamepad;->shield:Lcom/codeglue/terraria/ShieldController;

    iget v3, v3, Lcom/codeglue/terraria/ShieldController;->A:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codeglue/terraria/Gamepad;->shield:Lcom/codeglue/terraria/ShieldController;

    iget v4, v4, Lcom/codeglue/terraria/ShieldController;->B:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/codeglue/terraria/Gamepad;->shield:Lcom/codeglue/terraria/ShieldController;

    iget v5, v5, Lcom/codeglue/terraria/ShieldController;->X:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/codeglue/terraria/Gamepad;->shield:Lcom/codeglue/terraria/ShieldController;

    iget v6, v6, Lcom/codeglue/terraria/ShieldController;->Y:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/codeglue/terraria/Gamepad;->shield:Lcom/codeglue/terraria/ShieldController;

    iget v7, v7, Lcom/codeglue/terraria/ShieldController;->L1:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/codeglue/terraria/Gamepad;->shield:Lcom/codeglue/terraria/ShieldController;

    iget v8, v8, Lcom/codeglue/terraria/ShieldController;->L2:I

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/codeglue/terraria/Gamepad;->shield:Lcom/codeglue/terraria/ShieldController;

    iget v9, v9, Lcom/codeglue/terraria/ShieldController;->L3:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/codeglue/terraria/Gamepad;->shield:Lcom/codeglue/terraria/ShieldController;

    iget v10, v10, Lcom/codeglue/terraria/ShieldController;->R1:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/codeglue/terraria/Gamepad;->shield:Lcom/codeglue/terraria/ShieldController;

    iget v11, v11, Lcom/codeglue/terraria/ShieldController;->R2:I

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/codeglue/terraria/Gamepad;->shield:Lcom/codeglue/terraria/ShieldController;

    iget v12, v12, Lcom/codeglue/terraria/ShieldController;->R3:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/codeglue/terraria/Gamepad;->shield:Lcom/codeglue/terraria/ShieldController;

    iget v13, v13, Lcom/codeglue/terraria/ShieldController;->DpadUp:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codeglue/terraria/Gamepad;->shield:Lcom/codeglue/terraria/ShieldController;

    iget v14, v14, Lcom/codeglue/terraria/ShieldController;->DpadDown:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/codeglue/terraria/Gamepad;->shield:Lcom/codeglue/terraria/ShieldController;

    iget v15, v15, Lcom/codeglue/terraria/ShieldController;->DpadLeft:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codeglue/terraria/Gamepad;->shield:Lcom/codeglue/terraria/ShieldController;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/codeglue/terraria/ShieldController;->DpadRight:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codeglue/terraria/Gamepad;->shield:Lcom/codeglue/terraria/ShieldController;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/codeglue/terraria/ShieldController;->AxisX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codeglue/terraria/Gamepad;->shield:Lcom/codeglue/terraria/ShieldController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/codeglue/terraria/ShieldController;->AxisY:F

    move/from16 v18, v0

    const/high16 v19, -0x40800000    # -1.0f

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codeglue/terraria/Gamepad;->shield:Lcom/codeglue/terraria/ShieldController;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/codeglue/terraria/ShieldController;->AxisZ:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codeglue/terraria/Gamepad;->shield:Lcom/codeglue/terraria/ShieldController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/codeglue/terraria/ShieldController;->AxisRZ:F

    move/from16 v20, v0

    const/high16 v22, -0x40800000    # -1.0f

    mul-float v20, v20, v22

    invoke-static/range {v1 .. v21}, Lcom/codeglue/terraria/OctarineBridge;->nativeGamePadUpdate(IIIIIIIFIIFIIIIIFFFFI)V

    goto/16 :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/codeglue/terraria/Gamepad;->shield:Lcom/codeglue/terraria/ShieldController;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/codeglue/terraria/Gamepad;->shield:Lcom/codeglue/terraria/ShieldController;

    invoke-virtual {v0, p1}, Lcom/codeglue/terraria/ShieldController;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 102
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/codeglue/terraria/Gamepad;->shield:Lcom/codeglue/terraria/ShieldController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/codeglue/terraria/Gamepad;->shield:Lcom/codeglue/terraria/ShieldController;

    invoke-virtual {v0, p1, p2}, Lcom/codeglue/terraria/ShieldController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/codeglue/terraria/Gamepad;->shield:Lcom/codeglue/terraria/ShieldController;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/codeglue/terraria/Gamepad;->shield:Lcom/codeglue/terraria/ShieldController;

    invoke-virtual {v0, p1, p2}, Lcom/codeglue/terraria/ShieldController;->onKeyUp(ILandroid/view/KeyEvent;)V

    .line 92
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/codeglue/terraria/Gamepad;->moga:Lcom/codeglue/terraria/MogaController;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/codeglue/terraria/Gamepad;->moga:Lcom/codeglue/terraria/MogaController;

    invoke-virtual {v0}, Lcom/codeglue/terraria/MogaController;->Pause()V

    .line 59
    iget-object v0, p0, Lcom/codeglue/terraria/Gamepad;->moga:Lcom/codeglue/terraria/MogaController;

    invoke-virtual {v0}, Lcom/codeglue/terraria/MogaController;->ResetInput()V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/codeglue/terraria/Gamepad;->shield:Lcom/codeglue/terraria/ShieldController;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/codeglue/terraria/Gamepad;->shield:Lcom/codeglue/terraria/ShieldController;

    invoke-virtual {v0}, Lcom/codeglue/terraria/ShieldController;->ResetInput()V

    .line 65
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/codeglue/terraria/Gamepad;->moga:Lcom/codeglue/terraria/MogaController;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/codeglue/terraria/Gamepad;->moga:Lcom/codeglue/terraria/MogaController;

    invoke-virtual {v0}, Lcom/codeglue/terraria/MogaController;->Resume()V

    .line 52
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/codeglue/terraria/Gamepad;->moga:Lcom/codeglue/terraria/MogaController;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/codeglue/terraria/Gamepad;->moga:Lcom/codeglue/terraria/MogaController;

    invoke-virtual {v0}, Lcom/codeglue/terraria/MogaController;->Destroy()V

    .line 73
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 78
    return-void
.end method
