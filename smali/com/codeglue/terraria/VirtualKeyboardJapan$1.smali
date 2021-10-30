.class Lcom/codeglue/terraria/VirtualKeyboardJapan$1;
.super Ljava/lang/Object;
.source "VirtualKeyboardJapan.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codeglue/terraria/VirtualKeyboardJapan;->ShowWithString(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codeglue/terraria/VirtualKeyboardJapan;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/codeglue/terraria/VirtualKeyboardJapan;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/codeglue/terraria/VirtualKeyboardJapan$1;->this$0:Lcom/codeglue/terraria/VirtualKeyboardJapan;

    iput-object p2, p0, Lcom/codeglue/terraria/VirtualKeyboardJapan$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 94
    sget-object v0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->inputPopup:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/codeglue/terraria/VirtualKeyboardJapan$1;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 95
    sget-object v0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->inputPopup:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 96
    sget-object v0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->inputPopup:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 97
    sget-object v0, Lcom/codeglue/terraria/VirtualKeyboardJapan;->inputPopup:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 98
    sget-object v0, Lcom/codeglue/terraria/OctarineBridge;->imm:Landroid/view/inputmethod/InputMethodManager;

    sget-object v1, Lcom/codeglue/terraria/VirtualKeyboardJapan;->inputPopup:Landroid/widget/EditText;

    const/4 v2, 0x0

    sget-object v3, Lcom/codeglue/terraria/VirtualKeyboardJapan;->receiver:Lcom/codeglue/terraria/CustomResultReceiver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 99
    return-void
.end method
