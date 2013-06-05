.class Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SlidingChallengeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->hideBouncer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)V
    .registers 2
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$8;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$8;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$000(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 550
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$8;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    const/4 v1, 0x1

    #setter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mFinishBouncing:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$102(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;Z)Z

    .line 551
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$8;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mFinishBouncing:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$102(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;Z)Z

    .line 546
    return-void
.end method
