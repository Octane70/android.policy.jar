.class Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$1;
.super Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitorCallback;
.source "LockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDevicePolicyManagerStateChanged()V
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;

    #calls: Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->updateTargets()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->access$200(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)V

    .line 102
    return-void
.end method

.method public onRingerModeChanged(I)V
    .registers 4
    .parameter "state"

    .prologue
    .line 92
    const/4 v1, 0x2

    if-eq v1, p1, :cond_1b

    const/4 v0, 0x1

    .line 93
    .local v0, silent:Z
    :goto_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mSilentMode:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->access$000(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Z

    move-result v1

    if-eq v0, v1, :cond_1a

    .line 94
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;

    #setter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mSilentMode:Z
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->access$002(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;Z)Z

    .line 95
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$UnlockWidgetCommonMethods;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->access$100(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$UnlockWidgetCommonMethods;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$UnlockWidgetCommonMethods;->updateResources()V

    .line 97
    :cond_1a
    return-void

    .line 92
    .end local v0           #silent:Z
    :cond_1b
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .registers 3
    .parameter "simState"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;

    #calls: Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->updateTargets()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->access$200(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)V

    .line 107
    return-void
.end method
