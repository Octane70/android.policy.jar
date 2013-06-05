.class Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$2;
.super Ljava/lang/Object;
.source "LockPatternKeyguardView.java"

# interfaces
.implements Lcom/android/internal/widget/LockScreenWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)V
    .registers 2
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isVisible(Landroid/view/View;)Z
    .registers 3
    .parameter "self"

    .prologue
    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public requestHide(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 241
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->access$400(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 245
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->resetBackground()V

    .line 246
    return-void
.end method

.method public requestShow(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 224
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->access$400(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 231
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    const v1, 0x102036c

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_20

    .line 233
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->setBackgroundColor(I)V

    .line 237
    :goto_1f
    return-void

    .line 235
    :cond_20
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->resetBackground()V

    goto :goto_1f
.end method

.method public userActivity(Landroid/view/View;)V
    .registers 4
    .parameter "self"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    const/16 v1, 0x2710

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 220
    return-void
.end method
