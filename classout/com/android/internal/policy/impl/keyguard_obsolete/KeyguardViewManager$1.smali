.class Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager$1;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager$ShowListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;

.field final synthetic val$showListener:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager$ShowListener;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager$ShowListener;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;

    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager$1;->val$showListener:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager$ShowListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->access$100(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1c

    .line 236
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager$1;->val$showListener:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager$ShowListener;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->access$100(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager$ShowListener;->onShown(Landroid/os/IBinder;)V

    .line 240
    :goto_1b
    return-void

    .line 238
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager$1;->val$showListener:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager$ShowListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager$ShowListener;->onShown(Landroid/os/IBinder;)V

    goto :goto_1b
.end method
