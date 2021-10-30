.class public Lcom/codeglue/terraria/VirtualKeyboardNormal;
.super Lcom/codeglue/terraria/VirtualKeyboard;
.source "VirtualKeyboardNormal.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;
.implements Lcom/codeglue/terraria/Receiver;


# static fields
.field public static ignoreNextChange:Z

.field public static inputPopup:Landroid/widget/EditText;

.field public static inputPopupOpen:Z

.field public static receiver:Lcom/codeglue/terraria/CustomResultReceiver;


# instance fields
.field public keyboardVisible:Z

.field mEditTextLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field public previousLength:I

.field tmp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->inputPopup:Landroid/widget/EditText;

    .line 59
    sput-boolean v1, Lcom/codeglue/terraria/VirtualKeyboardNormal;->inputPopupOpen:Z

    .line 61
    sput-boolean v1, Lcom/codeglue/terraria/VirtualKeyboardNormal;->ignoreNextChange:Z

    .line 67
    new-instance v0, Lcom/codeglue/terraria/CustomResultReceiver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/codeglue/terraria/CustomResultReceiver;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->receiver:Lcom/codeglue/terraria/CustomResultReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Lcom/codeglue/terraria/VirtualKeyboard;-><init>()V

    .line 62
    iput-boolean v0, p0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->keyboardVisible:Z

    .line 63
    iput v0, p0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->previousLength:I

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->tmp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Hide()V
    .locals 4

    .prologue
    .line 133
    const-string v0, "Octarine"

    const-string v1, "[KEY][VIRTUALKEYBOARD][Hide]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object v0, Lcom/codeglue/terraria/OctarineBridge;->imm:Landroid/view/inputmethod/InputMethodManager;

    sget-object v1, Lcom/codeglue/terraria/OctarineBridge;->view:Lcom/codeglue/terraria/OctarineView;

    invoke-virtual {v1}, Lcom/codeglue/terraria/OctarineView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/codeglue/terraria/VirtualKeyboardNormal;->receiver:Lcom/codeglue/terraria/CustomResultReceiver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    .line 135
    return-void
.end method

.method public Initialize(Lcom/codeglue/terraria/OctarineActivity;)V
    .locals 6
    .param p1, "activity"    # Lcom/codeglue/terraria/OctarineActivity;

    .prologue
    const/16 v5, 0x8

    const/4 v2, -0x2

    .line 72
    invoke-super {p0, p1}, Lcom/codeglue/terraria/VirtualKeyboard;->Initialize(Lcom/codeglue/terraria/OctarineActivity;)V

    .line 74
    sget-object v0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->receiver:Lcom/codeglue/terraria/CustomResultReceiver;

    invoke-virtual {v0, p0}, Lcom/codeglue/terraria/CustomResultReceiver;->SetReceiver(Lcom/codeglue/terraria/Receiver;)V

    .line 76
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->parent:Lcom/codeglue/terraria/OctarineActivity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->inputPopup:Landroid/widget/EditText;

    .line 77
    sget-object v0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->inputPopup:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 78
    sget-object v0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->inputPopup:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 79
    sget-object v0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->inputPopup:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 80
    sget-object v0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->inputPopup:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 81
    sget-object v0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->inputPopup:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 82
    sget-object v0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->inputPopup:Landroid/widget/EditText;

    const v1, 0x10000006

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 84
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->mEditTextLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 85
    iget-object v0, p0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->mEditTextLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 86
    iget-object v0, p0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->mEditTextLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0xa

    const/16 v2, -0x1f4

    const/16 v3, 0xc8

    const/16 v4, -0xc8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 88
    sget-object v0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->inputPopup:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 89
    sget-object v0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->inputPopup:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->mEditTextLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    sget-object v0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->inputPopup:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->parent:Lcom/codeglue/terraria/OctarineActivity;

    sget-object v1, Lcom/codeglue/terraria/VirtualKeyboardNormal;->inputPopup:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->mEditTextLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Lcom/codeglue/terraria/OctarineActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    return-void
.end method

.method public OnKeyDown(ILandroid/view/KeyEvent;)V
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 310
    sget-boolean v1, Lcom/codeglue/terraria/VirtualKeyboardNormal;->keyHandled:Z

    if-eqz v1, :cond_0

    .line 321
    :goto_0
    return-void

    .line 315
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v1

    int-to-char v0, v1

    .line 316
    .local v0, "c":C
    const-string v1, "Octarine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[KEY][VIRTUALKEYBOARD][KeyDown] key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v1, 0x0

    invoke-static {v1, v0, p1}, Lcom/codeglue/terraria/OctarineBridge;->nativeKeyEvent(ICI)V

    .line 320
    const/4 v1, 0x1

    sput-boolean v1, Lcom/codeglue/terraria/VirtualKeyboardNormal;->keyHandled:Z

    goto :goto_0
.end method

.method public OnKeyUp(ILandroid/view/KeyEvent;)V
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    .line 326
    sget-boolean v1, Lcom/codeglue/terraria/VirtualKeyboardNormal;->keyHandled:Z

    if-eqz v1, :cond_0

    .line 336
    :goto_0
    return-void

    .line 331
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v1

    int-to-char v0, v1

    .line 332
    .local v0, "c":C
    const-string v1, "Octarine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[KEY][VIRTUALKEYBOARD][KeyUp] key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-static {v4, v0, p1}, Lcom/codeglue/terraria/OctarineBridge;->nativeKeyEvent(ICI)V

    .line 335
    sput-boolean v4, Lcom/codeglue/terraria/VirtualKeyboardNormal;->keyHandled:Z

    goto :goto_0
.end method

.method public ShowWithString(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 97
    const-string v0, "Octarine"

    const-string v1, "[KEY][VIRTUALKEYBOARD][Show] "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v0, "Octarine"

    const-string v1, "[KEY][VIRTUALKEYBOARD][Show] 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->parent:Lcom/codeglue/terraria/OctarineActivity;

    new-instance v1, Lcom/codeglue/terraria/VirtualKeyboardNormal$1;

    invoke-direct {v1, p0, p1}, Lcom/codeglue/terraria/VirtualKeyboardNormal$1;-><init>(Lcom/codeglue/terraria/VirtualKeyboardNormal;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/codeglue/terraria/OctarineActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 129
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 252
    const-string v0, "Octarine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after text changed VirtualKeyboardNormal.java ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 261
    const-string v0, "Octarine"

    const-string v1, "on key up terraria.java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-string v0, "Octarine"

    const-string v1, "before text changed VirtualKeyboardNormal.java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "sender"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 140
    sget-boolean v0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->keyHandled:Z

    if-nez v0, :cond_1

    .line 142
    if-eqz p3, :cond_0

    .line 143
    const-string v0, "Octarine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[KEY] onEditorAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    sput-boolean v4, Lcom/codeglue/terraria/VirtualKeyboardNormal;->keyHandled:Z

    .line 147
    sparse-switch p2, :sswitch_data_0

    .line 173
    const-string v0, "Octarine"

    const-string v1, "[KEY]return!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iput-boolean v3, p0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->keyboardVisible:Z

    .line 175
    const-string v0, "Octarine"

    const-string v1, "[KEY]called nativekeyevent from onEditorAction (ACTION_NEXT)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-static {v3, v5, v3}, Lcom/codeglue/terraria/OctarineBridge;->nativeKeyEvent(ICI)V

    .line 177
    sget-object v0, Lcom/codeglue/terraria/OctarineBridge;->view:Lcom/codeglue/terraria/OctarineView;

    invoke-virtual {v0}, Lcom/codeglue/terraria/OctarineView;->requestFocus()Z

    .line 178
    sget-object v0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->inputPopup:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :cond_1
    :goto_0
    return v4

    .line 150
    :sswitch_0
    const-string v0, "Octarine"

    const-string v1, "[KEY]back!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v0, "Octarine"

    const-string v1, "[KEY]called nativekeyevent from onEditorAction (ACTION_PREVIOUS)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v0, 0x4

    invoke-static {v3, v3, v0}, Lcom/codeglue/terraria/OctarineBridge;->nativeKeyEvent(ICI)V

    .line 157
    invoke-static {}, Lcom/codeglue/terraria/OctarineBridge;->KeyboardHide()V

    .line 158
    iput-boolean v3, p0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->keyboardVisible:Z

    .line 159
    sget-object v0, Lcom/codeglue/terraria/OctarineBridge;->view:Lcom/codeglue/terraria/OctarineView;

    invoke-virtual {v0}, Lcom/codeglue/terraria/OctarineView;->requestFocus()Z

    goto :goto_0

    .line 163
    :sswitch_1
    const-string v0, "Octarine"

    const-string v1, "[KEY]User pressed ADVANCE on the keyboard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1

    .line 166
    invoke-static {v3, v5, v3}, Lcom/codeglue/terraria/OctarineBridge;->nativeKeyEvent(ICI)V

    .line 167
    sget-object v0, Lcom/codeglue/terraria/OctarineBridge;->view:Lcom/codeglue/terraria/OctarineView;

    invoke-virtual {v0}, Lcom/codeglue/terraria/OctarineView;->requestFocus()Z

    goto :goto_0

    .line 147
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 8
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0xb

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 268
    const-string v0, "Octarine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[KEY]onReceiveResult resultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-string v0, "Octarine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[KEY]onReceiveResult resultData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    packed-switch p1, :pswitch_data_0

    .line 304
    :goto_0
    return-void

    .line 274
    :pswitch_0
    const-string v0, "Octarine"

    const-string v1, "[KEY]the state of the soft input window changed from shown to hidden."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    sget-object v0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->inputPopup:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 276
    iput-boolean v3, p0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->keyboardVisible:Z

    goto :goto_0

    .line 279
    :pswitch_1
    const-string v0, "Octarine"

    const-string v1, "[KEY]the state of the soft input window changed from hidden to shown."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    sget-object v0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->inputPopup:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 281
    iput-boolean v4, p0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->keyboardVisible:Z

    .line 282
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_0

    .line 283
    sget-object v0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->inputPopup:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setAlpha(F)V

    goto :goto_0

    .line 285
    :cond_0
    sget-object v0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->inputPopup:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 288
    :pswitch_2
    const-string v0, "Octarine"

    const-string v1, "[KEY]the state of the soft input window was unchanged and remains hidden."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    sget-object v0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->inputPopup:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 290
    iput-boolean v3, p0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->keyboardVisible:Z

    goto :goto_0

    .line 294
    :pswitch_3
    const-string v0, "Octarine"

    const-string v1, "[KEY]the state of the soft input window was unchanged and remains shown."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    sget-object v0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->inputPopup:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 296
    iput-boolean v4, p0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->keyboardVisible:Z

    .line 297
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_1

    .line 298
    sget-object v0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->inputPopup:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setAlpha(F)V

    goto :goto_0

    .line 300
    :cond_1
    sget-object v0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->inputPopup:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 10
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 189
    const-string v5, "Octarine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[KEY]onTextChanged: start "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - before "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - count "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - KeyboardVisible: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->keyboardVisible:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget-boolean v5, Lcom/codeglue/terraria/VirtualKeyboardNormal;->ignoreNextChange:Z

    if-eqz v5, :cond_1

    .line 193
    sput-boolean v8, Lcom/codeglue/terraria/VirtualKeyboardNormal;->ignoreNextChange:Z

    .line 246
    :cond_0
    return-void

    .line 197
    :cond_1
    if-le p3, p4, :cond_2

    .line 199
    sub-int v3, p3, p4

    .line 200
    .local v3, "numBackspaces":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 202
    const-string v5, "Octarine"

    const-string v6, "[KEY]backspace!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string v5, "Octarine"

    const-string v6, "[KEY]called nativekeyevent from onTextChanged (before > count)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/16 v5, 0x43

    invoke-static {v8, v8, v5}, Lcom/codeglue/terraria/OctarineBridge;->nativeKeyEvent(ICI)V

    .line 206
    sput-boolean v9, Lcom/codeglue/terraria/VirtualKeyboardNormal;->keyHandled:Z

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    .end local v1    # "i":I
    .end local v3    # "numBackspaces":I
    :cond_2
    if-ge p3, p4, :cond_0

    .line 211
    const/4 v4, 0x0

    .line 212
    .local v4, "startIndex":I
    const/4 v0, 0x0

    .line 213
    .local v0, "endIndex":I
    if-nez p3, :cond_4

    .line 216
    move v4, p2

    .line 217
    add-int v0, p2, p4

    .line 231
    :goto_1
    move v1, v4

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v0, :cond_0

    .line 233
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 235
    .local v2, "newCharacter":C
    const-string v5, "Octarine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[KEY]New character "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-static {v2}, Lcom/codeglue/terraria/OctarineBridge;->nativeIsCharacterValid(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 239
    const-string v5, "Octarine"

    const-string v6, "[KEY]called nativekeyevent from onTextChanged (before < count)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-static {v8, v2, v8}, Lcom/codeglue/terraria/OctarineBridge;->nativeKeyEvent(ICI)V

    .line 241
    sput-boolean v9, Lcom/codeglue/terraria/VirtualKeyboardNormal;->keyHandled:Z

    .line 231
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 219
    .end local v1    # "i":I
    .end local v2    # "newCharacter":C
    :cond_4
    if-nez p2, :cond_5

    .line 222
    move v4, p3

    .line 223
    move v0, p4

    goto :goto_1

    .line 228
    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .line 229
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_1
.end method
