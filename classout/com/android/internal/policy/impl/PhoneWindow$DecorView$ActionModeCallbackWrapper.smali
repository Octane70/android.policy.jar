.class Lcom/android/internal/policy/impl/PhoneWindow$DecorView$ActionModeCallbackWrapper;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallbackWrapper"
.end annotation


# instance fields
.field private mWrapped:Landroid/view/ActionMode$Callback;

.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Landroid/view/ActionMode$Callback;)V
    .registers 3
    .parameter
    .parameter "wrapped"

    .prologue
    .line 3120
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$ActionModeCallbackWrapper;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3121
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$ActionModeCallbackWrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    .line 3122
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 3133
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$ActionModeCallbackWrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 3125
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$ActionModeCallbackWrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 3137
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$ActionModeCallbackWrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 3138
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$ActionModeCallbackWrapper;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1400(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 3139
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$ActionModeCallbackWrapper;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$ActionModeCallbackWrapper;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mShowActionModePopup:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$4000(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3140
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$ActionModeCallbackWrapper;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1400(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3144
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$ActionModeCallbackWrapper;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1300(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 3145
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$ActionModeCallbackWrapper;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1300(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->removeAllViews()V

    .line 3147
    :cond_32
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$ActionModeCallbackWrapper;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$ActionModeCallbackWrapper;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_57

    .line 3149
    :try_start_46
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$ActionModeCallbackWrapper;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$ActionModeCallbackWrapper;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$300(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V
    :try_end_57
    .catch Ljava/lang/AbstractMethodError; {:try_start_46 .. :try_end_57} :catch_72

    .line 3154
    :cond_57
    :goto_57
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$ActionModeCallbackWrapper;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$302(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 3155
    return-void

    .line 3141
    :cond_5e
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$ActionModeCallbackWrapper;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1300(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 3142
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$ActionModeCallbackWrapper;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1300(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_21

    .line 3150
    :catch_72
    move-exception v0

    goto :goto_57
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 3129
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$ActionModeCallbackWrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
