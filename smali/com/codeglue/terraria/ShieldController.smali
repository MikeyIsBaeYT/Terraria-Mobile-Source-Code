.class public Lcom/codeglue/terraria/ShieldController;
.super Ljava/lang/Object;
.source "ShieldController.java"


# instance fields
.field public A:I

.field AxisRZ:F

.field AxisX:F

.field AxisY:F

.field AxisZ:F

.field public B:I

.field public DpadDown:I

.field public DpadLeft:I

.field public DpadRight:I

.field public DpadUp:I

.field public L1:I

.field public L2:I

.field public L3:I

.field public ProductVersion:I

.field public R1:I

.field public R2:I

.field public R3:I

.field public Select:I

.field public Start:I

.field public X:I

.field public Y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->A:I

    .line 15
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->B:I

    .line 16
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->X:I

    .line 17
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->Y:I

    .line 19
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->R1:I

    .line 20
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->R2:I

    .line 21
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->R3:I

    .line 23
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->L1:I

    .line 24
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->L2:I

    .line 25
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->L3:I

    .line 27
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->DpadUp:I

    .line 28
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->DpadDown:I

    .line 29
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->DpadLeft:I

    .line 30
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->DpadRight:I

    .line 32
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->Start:I

    .line 33
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->Select:I

    .line 35
    iput v1, p0, Lcom/codeglue/terraria/ShieldController;->AxisX:F

    .line 36
    iput v1, p0, Lcom/codeglue/terraria/ShieldController;->AxisY:F

    .line 37
    iput v1, p0, Lcom/codeglue/terraria/ShieldController;->AxisZ:F

    .line 38
    iput v1, p0, Lcom/codeglue/terraria/ShieldController;->AxisRZ:F

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->ProductVersion:I

    .line 45
    return-void
.end method


# virtual methods
.method public ResetInput()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->A:I

    .line 50
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->B:I

    .line 51
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->X:I

    .line 52
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->Y:I

    .line 54
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->R1:I

    .line 55
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->R2:I

    .line 56
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->R3:I

    .line 58
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->L1:I

    .line 59
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->L2:I

    .line 60
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->L3:I

    .line 62
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->DpadUp:I

    .line 63
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->DpadDown:I

    .line 64
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->DpadLeft:I

    .line 65
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->DpadRight:I

    .line 67
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->Start:I

    .line 68
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->Select:I

    .line 70
    iput v1, p0, Lcom/codeglue/terraria/ShieldController;->AxisX:F

    .line 71
    iput v1, p0, Lcom/codeglue/terraria/ShieldController;->AxisY:F

    .line 72
    iput v1, p0, Lcom/codeglue/terraria/ShieldController;->AxisZ:F

    .line 73
    iput v1, p0, Lcom/codeglue/terraria/ShieldController;->AxisRZ:F

    .line 74
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 146
    sparse-switch p1, :sswitch_data_0

    .line 202
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 149
    :sswitch_0
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->A:I

    goto :goto_1

    .line 152
    :sswitch_1
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->B:I

    goto :goto_1

    .line 155
    :sswitch_2
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->X:I

    goto :goto_1

    .line 158
    :sswitch_3
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->Y:I

    goto :goto_1

    .line 162
    :sswitch_4
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->DpadUp:I

    goto :goto_0

    .line 165
    :sswitch_5
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->DpadDown:I

    goto :goto_0

    .line 168
    :sswitch_6
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->DpadRight:I

    goto :goto_0

    .line 171
    :sswitch_7
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->DpadLeft:I

    goto :goto_0

    .line 175
    :sswitch_8
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->Start:I

    goto :goto_0

    .line 179
    :sswitch_9
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->Select:I

    goto :goto_0

    .line 183
    :sswitch_a
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->R1:I

    goto :goto_0

    .line 186
    :sswitch_b
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->R2:I

    goto :goto_0

    .line 189
    :sswitch_c
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->R3:I

    goto :goto_0

    .line 193
    :sswitch_d
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->L1:I

    goto :goto_0

    .line 196
    :sswitch_e
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->L2:I

    goto :goto_0

    .line 199
    :sswitch_f
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->L3:I

    goto :goto_0

    .line 146
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_4
        0x14 -> :sswitch_5
        0x15 -> :sswitch_7
        0x16 -> :sswitch_6
        0x60 -> :sswitch_0
        0x61 -> :sswitch_1
        0x63 -> :sswitch_2
        0x64 -> :sswitch_3
        0x66 -> :sswitch_d
        0x67 -> :sswitch_a
        0x68 -> :sswitch_e
        0x69 -> :sswitch_b
        0x6a -> :sswitch_f
        0x6b -> :sswitch_c
        0x6c -> :sswitch_8
        0x6d -> :sswitch_9
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)V
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 82
    sparse-switch p1, :sswitch_data_0

    .line 138
    :goto_0
    return-void

    .line 85
    :sswitch_0
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->A:I

    goto :goto_0

    .line 88
    :sswitch_1
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->B:I

    goto :goto_0

    .line 91
    :sswitch_2
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->X:I

    goto :goto_0

    .line 94
    :sswitch_3
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->Y:I

    goto :goto_0

    .line 98
    :sswitch_4
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->DpadUp:I

    goto :goto_0

    .line 101
    :sswitch_5
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->DpadDown:I

    goto :goto_0

    .line 104
    :sswitch_6
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->DpadRight:I

    goto :goto_0

    .line 107
    :sswitch_7
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->DpadLeft:I

    goto :goto_0

    .line 111
    :sswitch_8
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->Start:I

    goto :goto_0

    .line 115
    :sswitch_9
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->Select:I

    goto :goto_0

    .line 119
    :sswitch_a
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->R1:I

    goto :goto_0

    .line 122
    :sswitch_b
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->R2:I

    goto :goto_0

    .line 125
    :sswitch_c
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->R3:I

    goto :goto_0

    .line 129
    :sswitch_d
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->L1:I

    goto :goto_0

    .line 132
    :sswitch_e
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->L2:I

    goto :goto_0

    .line 135
    :sswitch_f
    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->L3:I

    goto :goto_0

    .line 82
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_4
        0x14 -> :sswitch_5
        0x15 -> :sswitch_7
        0x16 -> :sswitch_6
        0x60 -> :sswitch_0
        0x61 -> :sswitch_1
        0x63 -> :sswitch_2
        0x64 -> :sswitch_3
        0x66 -> :sswitch_d
        0x67 -> :sswitch_a
        0x68 -> :sswitch_e
        0x69 -> :sswitch_b
        0x6a -> :sswitch_f
        0x6b -> :sswitch_c
        0x6c -> :sswitch_8
        0x6d -> :sswitch_9
    .end sparse-switch
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v6, 0x10

    const/16 v5, 0xf

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 208
    const-string v0, "Octarine"

    const-string v1, "[Shield]onMotionEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iput v2, p0, Lcom/codeglue/terraria/ShieldController;->R2:I

    .line 213
    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    .line 214
    iput v3, p0, Lcom/codeglue/terraria/ShieldController;->R2:I

    .line 216
    :cond_0
    iput v2, p0, Lcom/codeglue/terraria/ShieldController;->L2:I

    .line 217
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    .line 218
    iput v3, p0, Lcom/codeglue/terraria/ShieldController;->L2:I

    .line 221
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->AxisX:F

    .line 222
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->AxisY:F

    .line 225
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->AxisZ:F

    .line 226
    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    iput v0, p0, Lcom/codeglue/terraria/ShieldController;->AxisRZ:F

    .line 229
    iput v2, p0, Lcom/codeglue/terraria/ShieldController;->DpadUp:I

    .line 230
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    .line 231
    iput v3, p0, Lcom/codeglue/terraria/ShieldController;->DpadUp:I

    .line 233
    :cond_2
    iput v2, p0, Lcom/codeglue/terraria/ShieldController;->DpadDown:I

    .line 234
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    .line 235
    iput v3, p0, Lcom/codeglue/terraria/ShieldController;->DpadDown:I

    .line 237
    :cond_3
    iput v2, p0, Lcom/codeglue/terraria/ShieldController;->DpadLeft:I

    .line 238
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    .line 239
    iput v3, p0, Lcom/codeglue/terraria/ShieldController;->DpadLeft:I

    .line 241
    :cond_4
    iput v2, p0, Lcom/codeglue/terraria/ShieldController;->DpadRight:I

    .line 242
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_5

    .line 243
    iput v3, p0, Lcom/codeglue/terraria/ShieldController;->DpadRight:I

    .line 246
    :cond_5
    return-void
.end method
