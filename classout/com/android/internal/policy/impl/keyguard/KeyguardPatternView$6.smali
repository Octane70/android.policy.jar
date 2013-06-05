.class Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$6;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V
    .registers 2
    .parameter

    .prologue
    .line 493
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .registers 4
    .parameter "phoneState"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRootLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 498
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyCircleText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$1600(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSpareKeyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 499
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2e

    .line 500
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyCircleText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 509
    :cond_2d
    :goto_2d
    return-void

    .line 502
    :cond_2e
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$1600(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSpareKeyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2d

    .line 504
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyCircleText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2d
.end method
