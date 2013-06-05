.class Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .registers 2
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClockVisibilityChanged()V
    .registers 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 434
    return-void
.end method

.method public onDeviceProvisioned()V
    .registers 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 439
    return-void
.end method

.method onPhoneStateChanged(I)V
    .registers 5
    .parameter "phoneState"

    .prologue
    const/4 v2, 0x1

    .line 405
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPhoneState:I
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$402(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;I)I

    .line 406
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    monitor-enter v1

    .line 407
    if-nez p1, :cond_3a

    .line 408
    :try_start_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mScreenOn:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 411
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$702(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z

    .line 417
    const-string v0, "KeyguardViewMediator"

    const-string v2, "screen is off and call ended, let\'s make sure the keyguard is showing"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 421
    :cond_2d
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mIsInCall:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$902(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z

    .line 422
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->launchClearCover()V

    .line 428
    :cond_38
    :goto_38
    monitor-exit v1

    .line 429
    return-void

    .line 423
    :cond_3a
    if-eq v2, p1, :cond_3f

    const/4 v0, 0x2

    if-ne v0, p1, :cond_38

    .line 426
    :cond_3f
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mIsInCall:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$902(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z

    goto :goto_38

    .line 428
    :catchall_46
    move-exception v0

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_b .. :try_end_48} :catchall_46

    throw v0
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .registers 5
    .parameter "simState"

    .prologue
    .line 443
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_c6

    .line 503
    :cond_23
    :goto_23
    return-void

    .line 450
    :pswitch_24
    monitor-enter p0

    .line 451
    :try_start_25
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_45

    .line 452
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 453
    const-string v0, "KeyguardViewMediator"

    const-string v1, "ICC_ABSENT isn\'t showing, we need to show the keyguard since the device isn\'t provisioned yet."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 461
    :cond_45
    :goto_45
    monitor-exit p0

    goto :goto_23

    :catchall_47
    move-exception v0

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_25 .. :try_end_49} :catchall_47

    throw v0

    .line 458
    :cond_4a
    :try_start_4a
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    :try_end_50
    .catchall {:try_start_4a .. :try_end_50} :catchall_47

    goto :goto_45

    .line 464
    :pswitch_51
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isDualModeDevice()I

    move-result v0

    if-eqz v0, :cond_63

    .line 465
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->SimRefreshCheck(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 470
    :cond_63
    :pswitch_63
    monitor-enter p0

    .line 471
    :try_start_64
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_7d

    .line 472
    const-string v0, "KeyguardViewMediator"

    const-string v1, "INTENT_VALUE_ICC_LOCKED and keygaurd isn\'t showing; need to show keyguard so user can enter sim pin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 480
    :goto_78
    monitor-exit p0

    goto :goto_23

    :catchall_7a
    move-exception v0

    monitor-exit p0
    :try_end_7c
    .catchall {:try_start_64 .. :try_end_7c} :catchall_7a

    throw v0

    .line 476
    :cond_7d
    :try_start_7d
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 478
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    :try_end_88
    .catchall {:try_start_7d .. :try_end_88} :catchall_7a

    goto :goto_78

    .line 483
    :pswitch_89
    monitor-enter p0

    .line 484
    :try_start_8a
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_a3

    .line 485
    const-string v0, "KeyguardViewMediator"

    const-string v1, "PERM_DISABLED and keygaurd isn\'t showing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 493
    :goto_9e
    monitor-exit p0

    goto :goto_23

    :catchall_a0
    move-exception v0

    monitor-exit p0
    :try_end_a2
    .catchall {:try_start_8a .. :try_end_a2} :catchall_a0

    throw v0

    .line 489
    :cond_a3
    :try_start_a3
    const-string v0, "KeyguardViewMediator"

    const-string v1, "PERM_DISABLED, resetStateLocked toshow permanently disabled message in lockscreen."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    :try_end_b0
    .catchall {:try_start_a3 .. :try_end_b0} :catchall_a0

    goto :goto_9e

    .line 496
    :pswitch_b1
    monitor-enter p0

    .line 497
    :try_start_b2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 498
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 500
    :cond_c0
    monitor-exit p0

    goto/16 :goto_23

    :catchall_c3
    move-exception v0

    monitor-exit p0
    :try_end_c5
    .catchall {:try_start_b2 .. :try_end_c5} :catchall_c3

    throw v0

    .line 445
    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_24
        :pswitch_24
        :pswitch_51
        :pswitch_63
        :pswitch_63
        :pswitch_89
        :pswitch_b1
    .end packed-switch
.end method

.method public onUserRemoved(I)V
    .registers 3
    .parameter "userId"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->removeUser(I)V

    .line 400
    return-void
.end method

.method public onUserSwitched(I)V
    .registers 5
    .parameter "userId"

    .prologue
    .line 389
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    monitor-enter v1

    .line 390
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v2, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 391
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 393
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 394
    monitor-exit v1

    .line 395
    return-void

    .line 394
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v0
.end method
