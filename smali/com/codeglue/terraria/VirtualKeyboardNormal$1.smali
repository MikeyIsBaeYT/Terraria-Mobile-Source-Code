.class Lcom/codeglue/terraria/VirtualKeyboardNormal$1;
.super Ljava/lang/Object;
.source "VirtualKeyboardNormal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codeglue/terraria/VirtualKeyboardNormal;->ShowWithString(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codeglue/terraria/VirtualKeyboardNormal;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/codeglue/terraria/VirtualKeyboardNormal;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/codeglue/terraria/VirtualKeyboardNormal$1;->this$0:Lcom/codeglue/terraria/VirtualKeyboardNormal;

    iput-object p2, p0, Lcom/codeglue/terraria/VirtualKeyboardNormal$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 105
    const-string v0, "Octarine"

    const-string v1, "[KEY] inputPopup.bringToFront();"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-object v0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->inputPopup:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->bringToFront()V

    .line 108
    const-string v0, "Octarine"

    const-string v1, "[KEY] inputPopup.setText(text);"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-object v0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->inputPopup:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/codeglue/terraria/VirtualKeyboardNormal$1;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const-string v0, "Octarine"

    const-string v1, "[KEY] inputPopup.setSelection(inputPopup.getText().length());"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-object v0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->inputPopup:Landroid/widget/EditText;

    sget-object v1, Lcom/codeglue/terraria/VirtualKeyboardNormal;->inputPopup:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 113
    sget-object v0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->inputPopup:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 115
    const-string v0, "Octarine"

    const-string v1, "[KEY] inputPopup.setLayoutParams(mEditTextLayoutParams);"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sget-object v0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->inputPopup:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/codeglue/terraria/VirtualKeyboardNormal$1;->this$0:Lcom/codeglue/terraria/VirtualKeyboardNormal;

    iget-object v1, v1, Lcom/codeglue/terraria/VirtualKeyboardNormal;->mEditTextLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    sget-object v0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->inputPopup:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 120
    sget-object v0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->inputPopup:Landroid/widget/EditText;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setAlpha(F)V

    .line 122
    :cond_0
    const-string v0, "Octarine"

    const-string v1, "[KEY] inputPopup.requestFocus();"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    sget-object v0, Lcom/codeglue/terraria/VirtualKeyboardNormal;->inputPopup:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 125
    const-string v0, "Octarine"

    const-string v1, "[KEY] OctarineBridge.imm.showSoftInput(inputPopup, InputMethodManager.SHOW_IMPLICIT, receiver);"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    sget-object v0, Lcom/codeglue/terraria/OctarineBridge;->imm:Landroid/view/inputmethod/InputMethodManager;

    sget-object v1, Lcom/codeglue/terraria/VirtualKeyboardNormal;->inputPopup:Landroid/widget/EditText;

    const/4 v2, 0x2

    sget-object v3, Lcom/codeglue/terraria/VirtualKeyboardNormal;->receiver:Lcom/codeglue/terraria/CustomResultReceiver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 127
    return-void
.end method
