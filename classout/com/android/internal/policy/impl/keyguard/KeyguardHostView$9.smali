.class Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$9;
.super Landroid/widget/RemoteViews$OnClickHandler;
.source "KeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .registers 2
    .parameter

    .prologue
    .line 1122
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-direct {p0}, Landroid/widget/RemoteViews$OnClickHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .registers 7
    .parameter "view"
    .parameter "pendingIntent"
    .parameter "fillInIntent"

    .prologue
    const/4 v0, 0x1

    .line 1127
    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v1

    if-nez v1, :cond_25

    invoke-static {p2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isKoreaPatentIssue(Landroid/app/PendingIntent;)Z

    move-result v1

    if-nez v1, :cond_25

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isGERFeature()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {p2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isShortcutDAWithPendingIntent(Landroid/app/PendingIntent;)Z

    move-result v1

    if-nez v1, :cond_25

    :cond_19
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isAUSFeature()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-static {p2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isShortcutDAWithPendingIntent(Landroid/app/PendingIntent;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 1131
    :cond_25
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$9$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$9$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$9;Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;)V

    .line 1153
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->isChallengeShowing()Z

    move-result v1

    if-nez v1, :cond_4d

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v1

    if-nez v1, :cond_4d

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isGERFeature()Z

    move-result v1

    if-nez v1, :cond_4d

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isAUSFeature()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1155
    :cond_4d
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->showBouncer(Z)V

    .line 1161
    :goto_56
    return v0

    .line 1157
    :cond_57
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_56

    .line 1161
    :cond_62
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v0

    goto :goto_56
.end method
