.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$10;
.super Ljava/lang/Object;
.source "KeyguardUnlockView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$HelpTextCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)V
    .registers 2
    .parameter

    .prologue
    .line 738
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$10;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showShortcutHelpText(Z)V
    .registers 5
    .parameter "shortcutPressed"

    .prologue
    .line 742
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$10;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$10;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->access$1100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Landroid/view/View;

    move-result-object v2

    if-eqz p1, :cond_2f

    const/4 v0, 0x0

    :goto_b
    invoke-virtual {v1, v2, v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->doTransition(Landroid/view/View;F)V

    .line 743
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$10;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$10;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsHelpTextEnabled:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 744
    if-eqz p1, :cond_32

    .line 745
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$10;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$10$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$10$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$10;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 766
    :cond_2e
    :goto_2e
    return-void

    .line 742
    :cond_2f
    const/high16 v0, 0x3f80

    goto :goto_b

    .line 755
    :cond_32
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$10;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$10$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$10$2;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$10;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_2e
.end method
