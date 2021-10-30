.class Lcom/codeglue/terraria/OctarineActivity$1;
.super Ljava/lang/Object;
.source "OctarineActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codeglue/terraria/OctarineActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codeglue/terraria/OctarineActivity;


# direct methods
.method constructor <init>(Lcom/codeglue/terraria/OctarineActivity;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/codeglue/terraria/OctarineActivity$1;->this$0:Lcom/codeglue/terraria/OctarineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 86
    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/codeglue/terraria/OctarineActivity$1;->this$0:Lcom/codeglue/terraria/OctarineActivity;

    invoke-virtual {v0}, Lcom/codeglue/terraria/OctarineActivity;->SetViewOptions()V

    .line 90
    :cond_0
    return-void
.end method
