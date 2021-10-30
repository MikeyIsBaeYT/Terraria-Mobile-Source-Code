.class public Landroid/support/v7/widget/WindowCallbackWrapper;
.super Ljava/lang/Object;
.source "WindowCallbackWrapper.java"

# interfaces
.implements Landroid/support/v7/internal/app/WindowCallback;


# instance fields
.field private mWrapped:Landroid/support/v7/internal/app/WindowCallback;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/app/WindowCallback;)V
    .locals 2
    .param p1, "wrapped"    # Landroid/support/v7/internal/app/WindowCallback;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-nez p1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Window callback may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/WindowCallbackWrapper;->mWrapped:Landroid/support/v7/internal/app/WindowCallback;

    .line 40
    return-void
.end method


# virtual methods
.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 49
    iget-object v0, p0, Landroid/support/v7/widget/WindowCallbackWrapper;->mWrapped:Landroid/support/v7/internal/app/WindowCallback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/app/WindowCallback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 74
    iget-object v0, p0, Landroid/support/v7/widget/WindowCallbackWrapper;->mWrapped:Landroid/support/v7/internal/app/WindowCallback;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/app/WindowCallback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/support/v7/widget/WindowCallbackWrapper;->mWrapped:Landroid/support/v7/internal/app/WindowCallback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/app/WindowCallback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v7/widget/WindowCallbackWrapper;->mWrapped:Landroid/support/v7/internal/app/WindowCallback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/app/WindowCallback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 59
    iget-object v0, p0, Landroid/support/v7/widget/WindowCallbackWrapper;->mWrapped:Landroid/support/v7/internal/app/WindowCallback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/app/WindowCallback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 60
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menuView"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/v7/widget/WindowCallbackWrapper;->mWrapped:Landroid/support/v7/internal/app/WindowCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v7/internal/app/WindowCallback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public startActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/support/v7/view/ActionMode$Callback;

    .prologue
    .line 69
    iget-object v0, p0, Landroid/support/v7/widget/WindowCallbackWrapper;->mWrapped:Landroid/support/v7/internal/app/WindowCallback;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/app/WindowCallback;->startActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v0

    return-object v0
.end method
