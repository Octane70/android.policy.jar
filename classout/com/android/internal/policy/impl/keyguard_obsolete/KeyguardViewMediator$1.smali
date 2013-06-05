.class Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator$1;
.super Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitorCallback;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;)V
    .registers 2
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClockVisibilityChanged()V
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->access$500(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;)V

    .line 292
    return-void
.end method

.method public onDeviceProvisioned()V
    .registers 4

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->access$700(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->access$600(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 297
    return-void
.end method

.method onPhoneStateChanged(I)V
    .registers 4
    .parameter "phoneState"

    .prologue
    .line 273
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;

    monitor-enter v1

    .line 274
    if-nez p1, :cond_1a

    :try_start_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mScreenOn:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mExternallyEnabled:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 284
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;)V

    .line 286
    :cond_1a
    monitor-exit v1

    .line 287
    return-void

    .line 286
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .registers 4
    .parameter "simState"

    .prologue
    .line 303
    sget-object v0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator$4;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_76

    .line 354
    :goto_b
    return-void

    .line 308
    :pswitch_c
    monitor-enter p0

    .line 309
    :try_start_d
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_26

    .line 310
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 314
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;)V

    .line 319
    :cond_26
    :goto_26
    monitor-exit p0

    goto :goto_b

    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_d .. :try_end_2a} :catchall_28

    throw v0

    .line 316
    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;)V
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_28

    goto :goto_26

    .line 323
    :pswitch_31
    monitor-enter p0

    .line 324
    :try_start_32
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_44

    .line 327
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;)V

    .line 331
    :goto_3f
    monitor-exit p0

    goto :goto_b

    :catchall_41
    move-exception v0

    monitor-exit p0
    :try_end_43
    .catchall {:try_start_32 .. :try_end_43} :catchall_41

    throw v0

    .line 329
    :cond_44
    :try_start_44
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;)V
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_41

    goto :goto_3f

    .line 334
    :pswitch_4a
    monitor-enter p0

    .line 335
    :try_start_4b
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 338
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;)V

    .line 344
    :goto_58
    monitor-exit p0

    goto :goto_b

    :catchall_5a
    move-exception v0

    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_4b .. :try_end_5c} :catchall_5a

    throw v0

    .line 342
    :cond_5d
    :try_start_5d
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;)V
    :try_end_62
    .catchall {:try_start_5d .. :try_end_62} :catchall_5a

    goto :goto_58

    .line 347
    :pswitch_63
    monitor-enter p0

    .line 348
    :try_start_64
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 349
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;)V

    .line 351
    :cond_71
    monitor-exit p0

    goto :goto_b

    :catchall_73
    move-exception v0

    monitor-exit p0
    :try_end_75
    .catchall {:try_start_64 .. :try_end_75} :catchall_73

    throw v0

    .line 303
    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_c
        :pswitch_c
        :pswitch_31
        :pswitch_31
        :pswitch_4a
        :pswitch_63
    .end packed-switch
.end method

.method public onUserRemoved(I)V
    .registers 3
    .parameter "userId"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->access$000(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->removeUser(I)V

    .line 269
    return-void
.end method

.method public onUserSwitched(I)V
    .registers 4
    .parameter "userId"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->access$000(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setCurrentUser(I)V

    .line 261
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;

    monitor-enter v1

    .line 262
    :try_start_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;)V

    .line 263
    monitor-exit v1

    .line 264
    return-void

    .line 263
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw v0
.end method
