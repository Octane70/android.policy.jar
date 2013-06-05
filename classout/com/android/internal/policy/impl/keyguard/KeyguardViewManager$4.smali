.class Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$4;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

.field final synthetic val$lastView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 653
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$4;->val$lastView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 656
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    monitor-enter v1

    .line 657
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$4;->val$lastView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->cleanUp()V

    .line 658
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardViewFrame:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$4;->val$lastView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 659
    monitor-exit v1

    .line 660
    return-void

    .line 659
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method
