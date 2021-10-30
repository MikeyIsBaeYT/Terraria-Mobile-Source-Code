.class public Lcom/codeglue/terraria/VirtualKeyboardJapan;
.super Lcom/codeglue/terraria/VirtualKeyboard;
.source "VirtualKeyboardJapan.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;
.implements Lcom/codeglue/terraria/Receiver;


# static fields
.field public static inputPopup:Landroid/widget/EditText;

.field public static inputPopupOpen:Z

.field public static receiver:Lcom/codeglue/terraria/CustomResultReceiver;


# instance fields
.field ignoreNextChange:Z

.field public keyboardVisible:Z

.field public previousLength:I

.field tmp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->inputPopup:Landroid/widget/EditText;

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->inputPopupOpen:Z

    .line 54
    new-instance v0, Lcom/codeglue/terraria/CustomResultReceiver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/codeglue/terraria/CustomResultReceiver;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->receiver:Lcom/codeglue/terraria/CustomResultReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lcom/codeglue/terraria/VirtualKeyboard;-><init>()V

    .line 48
    iput-boolean v1, p0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->keyboardVisible:Z

    .line 49
    iput v1, p0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->previousLength:I

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->tmp:Ljava/lang/String;

    .line 57
    iput-boolean v1, p0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->ignoreNextChange:Z

    return-void
.end method


# virtual methods
.method public Hide()V
    .locals 4

    .prologue
    .line 105
    sget-object v0, Lcom/codeglue/terraria/OctarineBridge;->imm:Landroid/view/inputmethod/InputMethodManager;

    sget-object v1, Lcom/codeglue/terraria/OctarineBridge;->view:Lcom/codeglue/terraria/OctarineView;

    invoke-virtual {v1}, Lcom/codeglue/terraria/OctarineView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/codeglue/terraria/VirtualKeyboardJapan;->receiver:Lcom/codeglue/terraria/CustomResultReceiver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    .line 106
    return-void
.end method

.method public Initialize(Lcom/codeglue/terraria/OctarineActivity;)V
    .locals 6
    .param p1, "parent"    # Lcom/codeglue/terraria/OctarineActivity;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 62
    invoke-super {p0, p1}, Lcom/codeglue/terraria/VirtualKeyboard;->Initialize(Lcom/codeglue/terraria/OctarineActivity;)V

    .line 65
    sget-object v2, Lcom/codeglue/terraria/VirtualKeyboardJapan;->receiver:Lcom/codeglue/terraria/CustomResultReceiver;

    invoke-virtual {v2, p0}, Lcom/codeglue/terraria/CustomResultReceiver;->SetReceiver(Lcom/codeglue/terraria/Receiver;)V

    .line 67
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/codeglue/terraria/VirtualKeyboardJapan;->inputPopup:Landroid/widget/EditText;

    .line 68
    sget-object v2, Lcom/codeglue/terraria/VirtualKeyboardJapan;->inputPopup:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 69
    sget-object v2, Lcom/codeglue/terraria/VirtualKeyboardJapan;->inputPopup:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 70
    sget-object v2, Lcom/codeglue/terraria/VirtualKeyboardJapan;->inputPopup:Landroid/widget/EditText;

    const v3, 0x80001

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 71
    sget-object v2, Lcom/codeglue/terraria/VirtualKeyboardJapan;->inputPopup:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 73
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 74
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    sget-object v2, Lcom/codeglue/terraria/VirtualKeyboardJapan;->inputPopup:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 75
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "backVisible"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    const-string v2, "advanceLabel"

    const-string v3, "Next"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v2, "advanceVisible"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 78
    const-string v2, "nextVisible"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 79
    const-string v2, "fieldNumber"

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    const-string v2, "fieldCount"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    const-string v2, "allowEmpty"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    sget-object v2, Lcom/codeglue/terraria/VirtualKeyboardJapan;->inputPopup:Landroid/widget/EditText;

    invoke-virtual {p1, v2, v1}, Lcom/codeglue/terraria/OctarineActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    return-void
.end method

.method public OnKeyDown(ILandroid/view/KeyEvent;)V
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 273
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 275
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v1

    int-to-char v0, v1

    .line 276
    .local v0, "c":C
    const/4 v1, 0x0

    invoke-static {v1, v0, p1}, Lcom/codeglue/terraria/OctarineBridge;->nativeKeyEvent(ICI)V

    .line 278
    .end local v0    # "c":C
    :cond_0
    return-void
.end method

.method public OnKeyUp(ILandroid/view/KeyEvent;)V
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 283
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 285
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v1

    int-to-char v0, v1

    .line 286
    .local v0, "c":C
    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/codeglue/terraria/OctarineBridge;->nativeKeyEvent(ICI)V

    .line 288
    .end local v0    # "c":C
    :cond_0
    return-void
.end method

.method public ShowWithString(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->parent:Lcom/codeglue/terraria/OctarineActivity;

    new-instance v1, Lcom/codeglue/terraria/VirtualKeyboardJapan$1;

    invoke-direct {v1, p0, p1}, Lcom/codeglue/terraria/VirtualKeyboardJapan$1;-><init>(Lcom/codeglue/terraria/VirtualKeyboardJapan;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/codeglue/terraria/OctarineActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 101
    return-void
.end method

.method public Visible()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->keyboardVisible:Z

    return v0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 153
    const-string v0, "Octarine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afterTextChanged: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string v0, "Octarine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/codeglue/terraria/VirtualKeyboardJapan;->inputPopup:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->tmp:Ljava/lang/String;

    sget-object v1, Lcom/codeglue/terraria/VirtualKeyboardJapan;->inputPopup:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    const-string v0, "Octarine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/codeglue/terraria/VirtualKeyboardJapan;->inputPopup:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] != ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->tmp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sget-object v0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->inputPopup:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->tmp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 160
    sget-object v0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->inputPopup:Landroid/widget/EditText;

    sget-object v1, Lcom/codeglue/terraria/VirtualKeyboardJapan;->inputPopup:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 163
    :cond_0
    const-string v0, "Octarine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Text now: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/codeglue/terraria/VirtualKeyboardJapan;->inputPopup:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 147
    const-string v0, "Octarine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beforeTextChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KeyboardVisible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->keyboardVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

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

    .line 148
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "sender"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 111
    sparse-switch p2, :sswitch_data_0

    .line 130
    const-string v0, "Octarine"

    const-string v1, "called nativekeyevent from onEditorAction (ACTION_NEXT)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/16 v0, 0xa

    invoke-static {v2, v0, v2}, Lcom/codeglue/terraria/OctarineBridge;->nativeKeyEvent(ICI)V

    .line 133
    sget-object v0, Lcom/codeglue/terraria/OctarineBridge;->view:Lcom/codeglue/terraria/OctarineView;

    invoke-virtual {v0}, Lcom/codeglue/terraria/OctarineView;->requestFocus()Z

    .line 135
    sget-object v0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->inputPopup:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 136
    iput-boolean v2, p0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->keyboardVisible:Z

    .line 141
    :goto_0
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 114
    :sswitch_1
    const-string v0, "Octarine"

    const-string v1, "called nativekeyevent from onEditorAction (ACTION_PREVIOUS)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v0, 0x4

    invoke-static {v2, v2, v0}, Lcom/codeglue/terraria/OctarineBridge;->nativeKeyEvent(ICI)V

    .line 117
    invoke-static {}, Lcom/codeglue/terraria/OctarineBridge;->KeyboardHide()V

    .line 118
    sget-object v0, Lcom/codeglue/terraria/OctarineBridge;->view:Lcom/codeglue/terraria/OctarineView;

    invoke-virtual {v0}, Lcom/codeglue/terraria/OctarineView;->requestFocus()Z

    .line 120
    sget-object v0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->inputPopup:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 121
    iput-boolean v2, p0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->keyboardVisible:Z

    goto :goto_0

    .line 111
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 241
    const-string v0, "Octarine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveResult resultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v0, "Octarine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveResult resultData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    packed-switch p1, :pswitch_data_0

    .line 268
    :goto_0
    return-void

    .line 247
    :pswitch_0
    const-string v0, "Octarine"

    const-string v1, "the state of the soft input window changed from shown to hidden."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    sget-object v0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->inputPopup:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 249
    iput-boolean v3, p0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->keyboardVisible:Z

    goto :goto_0

    .line 252
    :pswitch_1
    const-string v0, "Octarine"

    const-string v1, "the state of the soft input window changed from hidden to shown."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    sget-object v0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->inputPopup:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 254
    iput-boolean v4, p0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->keyboardVisible:Z

    goto :goto_0

    .line 257
    :pswitch_2
    const-string v0, "Octarine"

    const-string v1, "the state of the soft input window was unchanged and remains hidden."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    sget-object v0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->inputPopup:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 259
    iput-boolean v3, p0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->keyboardVisible:Z

    goto :goto_0

    .line 263
    :pswitch_3
    const-string v0, "Octarine"

    const-string v1, "the state of the soft input window was unchanged and remains shown."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    sget-object v0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->inputPopup:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 265
    iput-boolean v4, p0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->keyboardVisible:Z

    goto :goto_0

    .line 244
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 11
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const v10, 0xff41

    const v9, 0xff21

    const/4 v8, 0x0

    .line 169
    const-string v5, "Octarine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onTextChanged: before: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", start: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", KeyboardVisible: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->keyboardVisible:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

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

    .line 171
    iget-boolean v5, p0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->ignoreNextChange:Z

    if-eqz v5, :cond_1

    .line 173
    iput-boolean v8, p0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->ignoreNextChange:Z

    .line 229
    :cond_0
    return-void

    .line 177
    :cond_1
    const/4 v2, 0x0

    .line 178
    .local v2, "lengthOfOverlap":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 180
    iget-object v5, p0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->tmp:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v1, v5, :cond_3

    .line 189
    :cond_2
    const-string v5, "Octarine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "overlap: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v5, p0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->tmp:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 192
    .local v4, "startingLength":I
    const/4 v1, 0x0

    :goto_1
    sub-int v5, v4, v2

    if-ge v1, v5, :cond_4

    .line 194
    const-string v5, "Octarine"

    const-string v6, "backspace!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/16 v5, 0x43

    invoke-static {v8, v8, v5}, Lcom/codeglue/terraria/OctarineBridge;->nativeKeyEvent(ICI)V

    .line 196
    iget-object v5, p0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->tmp:Ljava/lang/String;

    iget-object v6, p0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->tmp:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->tmp:Ljava/lang/String;

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 183
    .end local v4    # "startingLength":I
    :cond_3
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    iget-object v6, p0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->tmp:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_2

    .line 184
    add-int/lit8 v2, v2, 0x1

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    .restart local v4    # "startingLength":I
    :cond_4
    move v1, v2

    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 201
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 202
    .local v3, "newCharacter":C
    move v0, v3

    .line 203
    .local v0, "charint":I
    const-string v5, "Octarine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New character "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    if-gt v10, v0, :cond_5

    const v5, 0xff5a

    if-gt v0, v5, :cond_5

    .line 208
    sub-int/2addr v0, v10

    .line 209
    add-int/lit8 v0, v0, 0x61

    .line 211
    int-to-char v3, v0

    .line 214
    :cond_5
    if-gt v9, v0, :cond_6

    const v5, 0xff3a

    if-gt v0, v5, :cond_6

    .line 216
    sub-int/2addr v0, v9

    .line 217
    add-int/lit8 v0, v0, 0x41

    .line 219
    int-to-char v3, v0

    .line 222
    :cond_6
    invoke-static {v3}, Lcom/codeglue/terraria/OctarineBridge;->nativeIsCharacterValid(C)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 224
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->tmp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->tmp:Ljava/lang/String;

    .line 225
    invoke-static {v8, v3, v8}, Lcom/codeglue/terraria/OctarineBridge;->nativeKeyEvent(ICI)V

    .line 199
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
