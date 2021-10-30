.class public Lcom/codeglue/terraria/VirtualKeyboard;
.super Ljava/lang/Object;
.source "VirtualKeyboard.java"


# static fields
.field public static keyHandled:Z


# instance fields
.field protected parent:Lcom/codeglue/terraria/OctarineActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/codeglue/terraria/VirtualKeyboard;->keyHandled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Hide()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public Initialize(Lcom/codeglue/terraria/OctarineActivity;)V
    .locals 0
    .param p1, "parent"    # Lcom/codeglue/terraria/OctarineActivity;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/codeglue/terraria/VirtualKeyboard;->parent:Lcom/codeglue/terraria/OctarineActivity;

    .line 50
    return-void
.end method

.method public OnKeyDown(ILandroid/view/KeyEvent;)V
    .locals 0
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 65
    return-void
.end method

.method public OnKeyUp(ILandroid/view/KeyEvent;)V
    .locals 0
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 67
    return-void
.end method

.method public Show()V
    .locals 1

    .prologue
    .line 60
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/codeglue/terraria/VirtualKeyboard;->ShowWithString(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public ShowWithString(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 57
    return-void
.end method

.method public Visible()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method
