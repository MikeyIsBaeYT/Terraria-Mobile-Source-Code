.class public Lcom/codeglue/terraria/MogaController;
.super Ljava/lang/Object;
.source "MogaController.java"


# instance fields
.field public A:I

.field AxisRZ:F

.field AxisX:F

.field AxisY:F

.field AxisZ:F

.field public B:I

.field public Connected:I

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

.field private context:Landroid/content/Context;

.field mController:Lcom/bda/controller/Controller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/codeglue/terraria/MogaController;->mController:Lcom/bda/controller/Controller;

    .line 18
    iput v1, p0, Lcom/codeglue/terraria/MogaController;->A:I

    .line 19
    iput v1, p0, Lcom/codeglue/terraria/MogaController;->B:I

    .line 20
    iput v1, p0, Lcom/codeglue/terraria/MogaController;->X:I

    .line 21
    iput v1, p0, Lcom/codeglue/terraria/MogaController;->Y:I

    .line 23
    iput v1, p0, Lcom/codeglue/terraria/MogaController;->R1:I

    .line 24
    iput v1, p0, Lcom/codeglue/terraria/MogaController;->R2:I

    .line 25
    iput v1, p0, Lcom/codeglue/terraria/MogaController;->R3:I

    .line 27
    iput v1, p0, Lcom/codeglue/terraria/MogaController;->L1:I

    .line 28
    iput v1, p0, Lcom/codeglue/terraria/MogaController;->L2:I

    .line 29
    iput v1, p0, Lcom/codeglue/terraria/MogaController;->L3:I

    .line 31
    iput v1, p0, Lcom/codeglue/terraria/MogaController;->DpadUp:I

    .line 32
    iput v1, p0, Lcom/codeglue/terraria/MogaController;->DpadDown:I

    .line 33
    iput v1, p0, Lcom/codeglue/terraria/MogaController;->DpadLeft:I

    .line 34
    iput v1, p0, Lcom/codeglue/terraria/MogaController;->DpadRight:I

    .line 36
    iput v1, p0, Lcom/codeglue/terraria/MogaController;->Start:I

    .line 37
    iput v1, p0, Lcom/codeglue/terraria/MogaController;->Select:I

    .line 39
    iput v2, p0, Lcom/codeglue/terraria/MogaController;->AxisX:F

    .line 40
    iput v2, p0, Lcom/codeglue/terraria/MogaController;->AxisY:F

    .line 41
    iput v2, p0, Lcom/codeglue/terraria/MogaController;->AxisZ:F

    .line 42
    iput v2, p0, Lcom/codeglue/terraria/MogaController;->AxisRZ:F

    .line 44
    iput v1, p0, Lcom/codeglue/terraria/MogaController;->Connected:I

    .line 45
    iput v1, p0, Lcom/codeglue/terraria/MogaController;->ProductVersion:I

    .line 51
    iput-object p1, p0, Lcom/codeglue/terraria/MogaController;->context:Landroid/content/Context;

    .line 52
    return-void
.end method


# virtual methods
.method public Destroy()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/codeglue/terraria/MogaController;->mController:Lcom/bda/controller/Controller;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/codeglue/terraria/MogaController;->mController:Lcom/bda/controller/Controller;

    invoke-virtual {v0}, Lcom/bda/controller/Controller;->exit()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/codeglue/terraria/MogaController;->mController:Lcom/bda/controller/Controller;

    .line 61
    :cond_0
    return-void
.end method

.method public Pause()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/codeglue/terraria/MogaController;->mController:Lcom/bda/controller/Controller;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/codeglue/terraria/MogaController;->mController:Lcom/bda/controller/Controller;

    invoke-virtual {v0}, Lcom/bda/controller/Controller;->onPause()V

    .line 79
    :cond_0
    return-void
.end method

.method public ResetInput()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/codeglue/terraria/MogaController;->A:I

    .line 66
    iput v0, p0, Lcom/codeglue/terraria/MogaController;->B:I

    .line 67
    iput v0, p0, Lcom/codeglue/terraria/MogaController;->X:I

    .line 68
    iput v0, p0, Lcom/codeglue/terraria/MogaController;->Y:I

    .line 70
    iput v0, p0, Lcom/codeglue/terraria/MogaController;->R1:I

    .line 71
    iput v0, p0, Lcom/codeglue/terraria/MogaController;->R2:I

    .line 72
    iput v0, p0, Lcom/codeglue/terraria/MogaController;->R3:I

    .line 73
    return-void
.end method

.method public Resume()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/codeglue/terraria/MogaController;->mController:Lcom/bda/controller/Controller;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/codeglue/terraria/MogaController;->mController:Lcom/bda/controller/Controller;

    invoke-virtual {v0}, Lcom/bda/controller/Controller;->onResume()V

    .line 92
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/codeglue/terraria/MogaController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bda/controller/Controller;->getInstance(Landroid/content/Context;)Lcom/bda/controller/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/codeglue/terraria/MogaController;->mController:Lcom/bda/controller/Controller;

    .line 90
    iget-object v0, p0, Lcom/codeglue/terraria/MogaController;->mController:Lcom/bda/controller/Controller;

    invoke-virtual {v0}, Lcom/bda/controller/Controller;->init()Z

    goto :goto_0
.end method

.method public Update()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 96
    iget-object v0, p0, Lcom/codeglue/terraria/MogaController;->mController:Lcom/bda/controller/Controller;

    if-nez v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/codeglue/terraria/MogaController;->mController:Lcom/bda/controller/Controller;

    invoke-virtual {v0, v2}, Lcom/bda/controller/Controller;->getState(I)I

    move-result v0

    if-ne v0, v2, :cond_11

    .line 102
    iput v2, p0, Lcom/codeglue/terraria/MogaController;->Connected:I

    .line 103
    iget-object v0, p0, Lcom/codeglue/terraria/MogaController;->mController:Lcom/bda/controller/Controller;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/bda/controller/Controller;->getState(I)I

    move-result v0

    iput v0, p0, Lcom/codeglue/terraria/MogaController;->ProductVersion:I

    .line 106
    iget-object v0, p0, Lcom/codeglue/terraria/MogaController;->mController:Lcom/bda/controller/Controller;

    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Lcom/bda/controller/Controller;->getKeyCode(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 107
    iput v2, p0, Lcom/codeglue/terraria/MogaController;->A:I

    .line 112
    :goto_1
    iget-object v0, p0, Lcom/codeglue/terraria/MogaController;->mController:Lcom/bda/controller/Controller;

    const/16 v1, 0x61

    invoke-virtual {v0, v1}, Lcom/bda/controller/Controller;->getKeyCode(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 113
    iput v2, p0, Lcom/codeglue/terraria/MogaController;->B:I

    .line 118
    :goto_2
    iget-object v0, p0, Lcom/codeglue/terraria/MogaController;->mController:Lcom/bda/controller/Controller;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Lcom/bda/controller/Controller;->getKeyCode(I)I

    move-result v0

    if-nez v0, :cond_3

    .line 119
    iput v2, p0, Lcom/codeglue/terraria/MogaController;->X:I

    .line 124
    :goto_3
    iget-object v0, p0, Lcom/codeglue/terraria/MogaController;->mController:Lcom/bda/controller/Controller;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/bda/controller/Controller;->getKeyCode(I)I

    move-result v0

    if-nez v0, :cond_4

    .line 125
    iput v2, p0, Lcom/codeglue/terraria/MogaController;->Y:I

    .line 130
    :goto_4
    iget-object v0, p0, Lcom/codeglue/terraria/MogaController;->mController:Lcom/bda/controller/Controller;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/bda/controller/Controller;->getKeyCode(I)I

    move-result v0

    if-nez v0, :cond_5

    .line 131
    iput v2, p0, Lcom/codeglue/terraria/MogaController;->L1:I

    .line 136
    :goto_5
    iget-object v0, p0, Lcom/codeglue/terraria/MogaController;->mController:Lcom/bda/controller/Controller;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/bda/controller/Controller;->getKeyCode(I)I

    move-result v0

    if-nez v0, :cond_6

    .line 137
    iput v2, p0, Lcom/codeglue/terraria/MogaController;->R1:I

    .line 142
    :goto_6
    iget-object v0, p0, Lcom/codeglue/terraria/MogaController;->mController:Lcom/bda/controller/Controller;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/bda/controller/Controller;->getKeyCode(I)I

    move-result v0

    if-nez v0, :cond_7

    .line 143
    iput v2, p0, Lcom/codeglue/terraria/MogaController;->L2:I

    .line 148
    :goto_7
    iget-object v0, p0, Lcom/codeglue/terraria/MogaController;->mController:Lcom/bda/controller/Controller;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcom/bda/controller/Controller;->getKeyCode(I)I

    move-result v0

    if-nez v0, :cond_8

    .line 149
    iput v2, p0, Lcom/codeglue/terraria/MogaController;->R2:I

    .line 154
    :goto_8
    iget-object v0, p0, Lcom/codeglue/terraria/MogaController;->mController:Lcom/bda/controller/Controller;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Lcom/bda/controller/Controller;->getKeyCode(I)I

    move-result v0

    if-nez v0, :cond_9

    .line 155
    iput v2, p0, Lcom/codeglue/terraria/MogaController;->R3:I

    .line 160
    :goto_9
    iget-object v0, p0, Lcom/codeglue/terraria/MogaController;->mController:Lcom/bda/controller/Controller;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Lcom/bda/controller/Controller;->getKeyCode(I)I

    move-result v0

    if-nez v0, :cond_a

    .line 161
    iput v2, p0, Lcom/codeglue/terraria/MogaController;->L3:I

    .line 166
    :goto_a
    iget-object v0, p0, Lcom/codeglue/terraria/MogaController;->mController:Lcom/bda/controller/Controller;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Lcom/bda/controller/Controller;->getKeyCode(I)I

    move-result v0

    if-nez v0, :cond_b

    .line 167
    iput v2, p0, Lcom/codeglue/terraria/MogaController;->Select:I

    .line 172
    :goto_b
    iget-object v0, p0, Lcom/codeglue/terraria/MogaController;->mController:Lcom/bda/controller/Controller;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Lcom/bda/controller/Controller;->getKeyCode(I)I

    move-result v0

    if-nez v0, :cond_c

    .line 173
    iput v2, p0, Lcom/codeglue/terraria/MogaController;->Start:I

    .line 178
    :goto_c
    iget-object v0, p0, Lcom/codeglue/terraria/MogaController;->mController:Lcom/bda/controller/Controller;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/bda/controller/Controller;->getKeyCode(I)I

    move-result v0

    if-nez v0, :cond_d

    .line 179
    iput v2, p0, Lcom/codeglue/terraria/MogaController;->DpadLeft:I

    .line 184
    :goto_d
    iget-object v0, p0, Lcom/codeglue/terraria/MogaController;->mController:Lcom/bda/controller/Controller;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/bda/controller/Controller;->getKeyCode(I)I

    move-result v0

    if-nez v0, :cond_e

    .line 185
    iput v2, p0, Lcom/codeglue/terraria/MogaController;->DpadRight:I

    .line 190
    :goto_e
    iget-object v0, p0, Lcom/codeglue/terraria/MogaController;->mController:Lcom/bda/controller/Controller;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/bda/controller/Controller;->getKeyCode(I)I

    move-result v0

    if-nez v0, :cond_f

    .line 191
    iput v2, p0, Lcom/codeglue/terraria/MogaController;->DpadUp:I

    .line 196
    :goto_f
    iget-object v0, p0, Lcom/codeglue/terraria/MogaController;->mController:Lcom/bda/controller/Controller;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/bda/controller/Controller;->getKeyCode(I)I

    move-result v0

    if-nez v0, :cond_10

    .line 197
    iput v2, p0, Lcom/codeglue/terraria/MogaController;->DpadDown:I

    .line 202
    :goto_10
    iget-object v0, p0, Lcom/codeglue/terraria/MogaController;->mController:Lcom/bda/controller/Controller;

    invoke-virtual {v0, v3}, Lcom/bda/controller/Controller;->getAxisValue(I)F

    move-result v0

    iput v0, p0, Lcom/codeglue/terraria/MogaController;->AxisX:F

    .line 203
    iget-object v0, p0, Lcom/codeglue/terraria/MogaController;->mController:Lcom/bda/controller/Controller;

    invoke-virtual {v0, v2}, Lcom/bda/controller/Controller;->getAxisValue(I)F

    move-result v0

    iput v0, p0, Lcom/codeglue/terraria/MogaController;->AxisY:F

    .line 206
    iget-object v0, p0, Lcom/codeglue/terraria/MogaController;->mController:Lcom/bda/controller/Controller;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/bda/controller/Controller;->getAxisValue(I)F

    move-result v0

    iput v0, p0, Lcom/codeglue/terraria/MogaController;->AxisZ:F

    .line 207
    iget-object v0, p0, Lcom/codeglue/terraria/MogaController;->mController:Lcom/bda/controller/Controller;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/bda/controller/Controller;->getAxisValue(I)F

    move-result v0

    iput v0, p0, Lcom/codeglue/terraria/MogaController;->AxisRZ:F

    goto/16 :goto_0

    .line 109
    :cond_1
    iput v3, p0, Lcom/codeglue/terraria/MogaController;->A:I

    goto/16 :goto_1

    .line 115
    :cond_2
    iput v3, p0, Lcom/codeglue/terraria/MogaController;->B:I

    goto/16 :goto_2

    .line 121
    :cond_3
    iput v3, p0, Lcom/codeglue/terraria/MogaController;->X:I

    goto/16 :goto_3

    .line 127
    :cond_4
    iput v3, p0, Lcom/codeglue/terraria/MogaController;->Y:I

    goto/16 :goto_4

    .line 133
    :cond_5
    iput v3, p0, Lcom/codeglue/terraria/MogaController;->L1:I

    goto/16 :goto_5

    .line 139
    :cond_6
    iput v3, p0, Lcom/codeglue/terraria/MogaController;->R1:I

    goto/16 :goto_6

    .line 145
    :cond_7
    iput v3, p0, Lcom/codeglue/terraria/MogaController;->L2:I

    goto/16 :goto_7

    .line 151
    :cond_8
    iput v3, p0, Lcom/codeglue/terraria/MogaController;->R2:I

    goto/16 :goto_8

    .line 157
    :cond_9
    iput v3, p0, Lcom/codeglue/terraria/MogaController;->R3:I

    goto/16 :goto_9

    .line 163
    :cond_a
    iput v3, p0, Lcom/codeglue/terraria/MogaController;->L3:I

    goto/16 :goto_a

    .line 169
    :cond_b
    iput v3, p0, Lcom/codeglue/terraria/MogaController;->Select:I

    goto/16 :goto_b

    .line 175
    :cond_c
    iput v3, p0, Lcom/codeglue/terraria/MogaController;->Start:I

    goto/16 :goto_c

    .line 181
    :cond_d
    iput v3, p0, Lcom/codeglue/terraria/MogaController;->DpadLeft:I

    goto :goto_d

    .line 187
    :cond_e
    iput v3, p0, Lcom/codeglue/terraria/MogaController;->DpadRight:I

    goto :goto_e

    .line 193
    :cond_f
    iput v3, p0, Lcom/codeglue/terraria/MogaController;->DpadUp:I

    goto :goto_f

    .line 199
    :cond_10
    iput v3, p0, Lcom/codeglue/terraria/MogaController;->DpadDown:I

    goto :goto_10

    .line 211
    :cond_11
    iput v3, p0, Lcom/codeglue/terraria/MogaController;->Connected:I

    goto/16 :goto_0
.end method
