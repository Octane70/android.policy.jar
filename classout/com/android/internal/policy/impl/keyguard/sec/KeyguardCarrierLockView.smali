.class public Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardCarrierLockView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;


# static fields
.field static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "KeyguardCarrierLockView"

.field private static final TIMEOUT:I = 0x1


# instance fields
.field private final CARRIER_LOCK_DISABLED:Ljava/lang/String;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private final mContext:Landroid/content/Context;

.field private mEcaView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPM:Landroid/os/PowerManager;

.field private mPhoneNumber:Ljava/lang/String;

.field private mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakelockSequence:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    const-string v1, "0000"

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mPhoneNumber:Ljava/lang/String;

    .line 83
    const-string v1, "com.sec.android.CarrierLock.DISABLED"

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->CARRIER_LOCK_DISABLED:Ljava/lang/String;

    .line 85
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 222
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mHandler:Landroid/os/Handler;

    .line 103
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mContext:Landroid/content/Context;

    .line 104
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mPM:Landroid/os/PowerManager;

    .line 105
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mPM:Landroid/os/PowerManager;

    const v2, 0x1000001a

    const-string v3, "keyguard"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 107
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.CarrierLock.DISABLED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->handleTimeout(I)V

    return-void
.end method

.method private handleTimeout(I)V
    .registers 4
    .parameter "seq"

    .prologue
    .line 234
    monitor-enter p0

    .line 235
    :try_start_1
    const-string v0, "KeyguardCarrierLockView"

    const-string v1, "handleTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mWakelockSequence:I

    if-ne p1, v0, :cond_11

    .line 237
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 239
    :cond_11
    monitor-exit p0

    .line 240
    return-void

    .line 239
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method


# virtual methods
.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .registers 5
    .parameter "duration"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 208
    return-void
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .registers 10

    .prologue
    const/16 v8, 0x8

    .line 130
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 132
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    .line 133
    const v5, 0x10202ff

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mEcaView:Landroid/view/View;

    .line 134
    const v5, 0x10202fc

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 135
    .local v0, bouncerFrameView:Landroid/view/View;
    if-eqz v0, :cond_24

    .line 136
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 139
    :cond_24
    const v5, 0x10202fe

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 140
    .local v1, callButton:Landroid/view/View;
    const v5, 0x10202fd

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 141
    .local v2, callText:Landroid/view/View;
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 142
    .local v4, telephony:Landroid/telephony/TelephonyManager;
    const/4 v3, 0x1

    .line 143
    .local v3, enableCallButton:Z
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_45

    .line 144
    const/4 v3, 0x0

    .line 145
    :cond_45
    const-string v5, "KeyguardCarrierLockView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "callButton ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v5, "KeyguardCarrierLockView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enableCallButton ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    if-eqz v3, :cond_82

    .line 148
    if-eqz v1, :cond_81

    .line 149
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView$2;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    :cond_81
    :goto_81
    return-void

    .line 161
    :cond_82
    if-eqz v1, :cond_87

    .line 162
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 163
    :cond_87
    if-eqz v2, :cond_81

    .line 164
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_81
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 189
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 191
    :cond_11
    return-void
.end method

.method public onResume(I)V
    .registers 2
    .parameter "reason"

    .prologue
    .line 184
    return-void
.end method

.method public pokeWakelock(I)V
    .registers 7
    .parameter "holdMs"

    .prologue
    .line 212
    monitor-enter p0

    .line 213
    :try_start_1
    const-string v1, "KeyguardCarrierLockView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pokeWakelock("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 215
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 216
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mWakelockSequence:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mWakelockSequence:I

    .line 217
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mWakelockSequence:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 218
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 219
    monitor-exit p0

    .line 220
    return-void

    .line 219
    .end local v0           #msg:Landroid/os/Message;
    :catchall_42
    move-exception v1

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 170
    return-void
.end method

.method public resetState()V
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 126
    :cond_11
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 116
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 2
    .parameter "utils"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 120
    return-void
.end method

.method public showBouncer(I)V
    .registers 5
    .parameter "duration"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 202
    return-void
.end method

.method public showUsabilityHint()V
    .registers 1

    .prologue
    .line 174
    return-void
.end method
