.class public Lcom/android/internal/policy/impl/keyguard/FaceUnlock;
.super Ljava/lang/Object;
.source "FaceUnlock.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FULLockscreen"


# instance fields
.field private final BACKUP_LOCK_TIMEOUT:I

.field private final MSG_CANCEL:I

.field private final MSG_POKE_WAKELOCK:I

.field private final MSG_REPORT_FAILED_ATTEMPT:I

.field private final MSG_SERVICE_CONNECTED:I

.field private final MSG_SERVICE_DISCONNECTED:I

.field private final MSG_UNLOCK:I

.field private mBoundToService:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

.field private mFaceUnlockView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private volatile mIsRunning:Z

.field mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mService:Lcom/android/internal/policy/IFaceLockInterface;

.field private mServiceRunning:Z

.field private final mServiceRunningLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mServiceRunning:Z

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    .line 53
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mBoundToService:Z

    .line 57
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->MSG_SERVICE_CONNECTED:I

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->MSG_SERVICE_DISCONNECTED:I

    .line 59
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->MSG_UNLOCK:I

    .line 60
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->MSG_CANCEL:I

    .line 61
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->MSG_REPORT_FAILED_ATTEMPT:I

    .line 62
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->MSG_POKE_WAKELOCK:I

    .line 67
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mIsRunning:Z

    .line 71
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->BACKUP_LOCK_TIMEOUT:I

    .line 356
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/FaceUnlock$1;-><init>(Lcom/android/internal/policy/impl/keyguard/FaceUnlock;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mConnection:Landroid/content/ServiceConnection;

    .line 426
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/FaceUnlock$2;-><init>(Lcom/android/internal/policy/impl/keyguard/FaceUnlock;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    .line 80
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mContext:Landroid/content/Context;

    .line 81
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mHandler:Landroid/os/Handler;

    .line 83
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/FaceUnlock;Lcom/android/internal/policy/IFaceLockInterface;)Lcom/android/internal/policy/IFaceLockInterface;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/FaceUnlock;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private startUi(Landroid/os/IBinder;IIII)V
    .registers 15
    .parameter "windowToken"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 380
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v8

    .line 381
    :try_start_3
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mServiceRunning:Z

    if-nez v0, :cond_45

    .line 382
    const-string v0, "FULLockscreen"

    const-string v1, "Starting Face Unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_42

    .line 384
    :try_start_e
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/policy/IFaceLockInterface;->startUi(Landroid/os/IBinder;IIIIZ)V
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_42
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1e} :catch_23

    .line 390
    const/4 v0, 0x1

    :try_start_1f
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mServiceRunning:Z

    .line 394
    :goto_21
    monitor-exit v8

    .line 395
    :goto_22
    return-void

    .line 386
    :catch_23
    move-exception v7

    .line 387
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "FULLockscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught exception starting Face Unlock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    monitor-exit v8

    goto :goto_22

    .line 394
    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_42
    move-exception v0

    monitor-exit v8
    :try_end_44
    .catchall {:try_start_1f .. :try_end_44} :catchall_42

    throw v0

    .line 392
    :cond_45
    :try_start_45
    const-string v0, "FULLockscreen"

    const-string v1, "startUi() attempted while running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_42

    goto :goto_21
.end method

.method private stopUi()V
    .registers 6

    .prologue
    .line 405
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v2

    .line 406
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mServiceRunning:Z

    if-eqz v1, :cond_16

    .line 407
    const-string v1, "FULLockscreen"

    const-string v3, "Stopping Face Unlock"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_36

    .line 409
    :try_start_e
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    invoke-interface {v1}, Lcom/android/internal/policy/IFaceLockInterface;->stopUi()V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_36
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_18

    .line 413
    :goto_13
    const/4 v1, 0x0

    :try_start_14
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mServiceRunning:Z

    .line 420
    :cond_16
    monitor-exit v2

    .line 421
    return-void

    .line 410
    :catch_18
    move-exception v0

    .line 411
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FULLockscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught exception stopping Face Unlock: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 420
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_36
    move-exception v1

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_14 .. :try_end_38} :catchall_36

    throw v1
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    if-eqz v0, :cond_11

    .line 189
    :try_start_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/IFaceLockInterface;->unregisterCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_12

    .line 193
    :goto_b
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->stopUi()V

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    .line 196
    :cond_11
    return-void

    .line 190
    :catch_12
    move-exception v0

    goto :goto_b
.end method

.method public getQuality()I
    .registers 2

    .prologue
    .line 202
    const v0, 0x8000

    return v0
.end method

.method handleCancel()V
    .registers 4

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 325
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Biometric:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->showBackupSecurity(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 326
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->stop()Z

    .line 327
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x1388

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 328
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 4
    .parameter "msg"

    .prologue
    .line 211
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2c

    .line 231
    const-string v0, "FULLockscreen"

    const-string v1, "Unhandled message"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v0, 0x0

    .line 234
    :goto_d
    return v0

    .line 213
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->handleServiceConnected()V

    .line 234
    :goto_11
    const/4 v0, 0x1

    goto :goto_d

    .line 216
    :pswitch_13
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->handleServiceDisconnected()V

    goto :goto_11

    .line 219
    :pswitch_17
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->handleUnlock(I)V

    goto :goto_11

    .line 222
    :pswitch_1d
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->handleCancel()V

    goto :goto_11

    .line 225
    :pswitch_21
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->handleReportFailedAttempt()V

    goto :goto_11

    .line 228
    :pswitch_25
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->handlePokeWakelock(I)V

    goto :goto_11

    .line 211
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_e
        :pswitch_13
        :pswitch_17
        :pswitch_1d
        :pswitch_21
        :pswitch_25
    .end packed-switch
.end method

.method handlePokeWakelock(I)V
    .registers 6
    .parameter "millis"

    .prologue
    .line 347
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 348
    .local v0, powerManager:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 349
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    int-to-long v2, p1

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 351
    :cond_16
    return-void
.end method

.method handleReportFailedAttempt()V
    .registers 3

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 339
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportFailedUnlockAttempt()V

    .line 340
    return-void
.end method

.method handleServiceConnected()V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 242
    const-string v0, "FULLockscreen"

    const-string v2, "handleServiceConnected()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mBoundToService:Z

    if-nez v0, :cond_14

    .line 250
    const-string v0, "FULLockscreen"

    const-string v2, "Dropping startUi() in handleServiceConnected() because no longer bound"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_13
    :goto_13
    return-void

    .line 255
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v0, v2}, Lcom/android/internal/policy/IFaceLockInterface;->registerCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1b} :catch_4c

    .line 264
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 265
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 266
    .local v1, windowToken:Landroid/os/IBinder;
    if-eqz v1, :cond_71

    .line 270
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 273
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 274
    .local v7, position:[I
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 275
    aget v2, v7, v4

    const/4 v0, 0x1

    aget v3, v7, v0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->startUi(Landroid/os/IBinder;IIII)V

    goto :goto_13

    .line 256
    .end local v1           #windowToken:Landroid/os/IBinder;
    .end local v7           #position:[I
    :catch_4c
    move-exception v6

    .line 257
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "FULLockscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught exception connecting to Face Unlock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    .line 259
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mBoundToService:Z

    .line 260
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mIsRunning:Z

    goto :goto_13

    .line 278
    .end local v6           #e:Landroid/os/RemoteException;
    .restart local v1       #windowToken:Landroid/os/IBinder;
    :cond_71
    const-string v0, "FULLockscreen"

    const-string v2, "windowToken is null in handleServiceConnected()"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method handleServiceDisconnected()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 288
    const-string v0, "FULLockscreen"

    const-string v1, "handleServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 292
    const/4 v0, 0x0

    :try_start_c
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mServiceRunning:Z

    .line 294
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_17

    .line 295
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mBoundToService:Z

    .line 296
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mIsRunning:Z

    .line 297
    return-void

    .line 294
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method handleUnlock(I)V
    .registers 6
    .parameter "authenticatedUserId"

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->stop()Z

    .line 305
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    .line 306
    .local v0, currentUserId:I
    if-ne p1, v0, :cond_17

    .line 308
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportSuccessfulUnlockAttempt()V

    .line 309
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 314
    :goto_16
    return-void

    .line 311
    :cond_17
    const-string v1, "FULLockscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring unlock for authenticated user ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") because the current user is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method public initializeView(Landroid/view/View;)V
    .registers 4
    .parameter "biometricUnlockView"

    .prologue
    .line 95
    const-string v0, "FULLockscreen"

    const-string v1, "initializeView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    .line 97
    return-void
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mIsRunning:Z

    return v0
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .registers 2
    .parameter "keyguardScreenCallback"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 87
    return-void
.end method

.method public start()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 121
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_14

    .line 122
    const-string v0, "FULLockscreen"

    const-string v1, "start() called off of the UI thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_14
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mIsRunning:Z

    if-eqz v0, :cond_1f

    .line 126
    const-string v0, "FULLockscreen"

    const-string v1, "start() called when already running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_1f
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mBoundToService:Z

    if-nez v0, :cond_5e

    .line 130
    const-string v0, "FULLockscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binding to Face Unlock service for user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/policy/IFaceLockInterface;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mConnection:Landroid/content/ServiceConnection;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z

    .line 136
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mBoundToService:Z

    .line 141
    :goto_5b
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mIsRunning:Z

    .line 142
    return v4

    .line 138
    :cond_5e
    const-string v0, "FULLockscreen"

    const-string v1, "Attempt to bind to Face Unlock when already bound"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b
.end method

.method public stop()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 150
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_14

    .line 151
    const-string v1, "FULLockscreen"

    const-string v2, "stop() called from non-UI thread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_14
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 157
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mIsRunning:Z

    .line 159
    .local v0, mWasRunning:Z
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->stopUi()V

    .line 161
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mBoundToService:Z

    if-eqz v1, :cond_3d

    .line 162
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    if-eqz v1, :cond_2d

    .line 164
    :try_start_26
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v1, v2}, Lcom/android/internal/policy/IFaceLockInterface;->unregisterCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2d} :catch_40

    .line 169
    :cond_2d
    :goto_2d
    const-string v1, "FULLockscreen"

    const-string v2, "Unbinding from Face Unlock service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 171
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mBoundToService:Z

    .line 178
    :cond_3d
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mIsRunning:Z

    .line 179
    return v0

    .line 165
    :catch_40
    move-exception v1

    goto :goto_2d
.end method

.method public stopAndShowBackup()V
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 112
    return-void
.end method
