.class public Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardSimPinView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$CheckSimPin;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "KeyguardSimPinView"

.field private static final TIMEOUT:I = 0x1


# instance fields
.field private isWrongPIN:Z

.field private mHandler:Landroid/os/Handler;

.field private mMultisimIcon:Landroid/widget/ImageView;

.field private mPM:Landroid/os/PowerManager;

.field private mRemainingCount:I

.field private mRemainingCountTextView:Landroid/widget/TextView;

.field private volatile mSimCheckInProgress:Z

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakelockSequence:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 73
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->isWrongPIN:Z

    .line 74
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mRemainingCount:I

    .line 324
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mHandler:Landroid/os/Handler;

    .line 91
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mPM:Landroid/os/PowerManager;

    .line 92
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mPM:Landroid/os/PowerManager;

    const v1, 0x1000001a

    const-string v2, "keyguard"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 94
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 95
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mRemainingCount:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->getSimPinRetry()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->isWrongPIN:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimCheckInProgress:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->handleTimeout(I)V

    return-void
.end method

.method private getSimPinRetry()I
    .registers 5

    .prologue
    .line 345
    const/4 v0, 0x0

    .line 347
    .local v0, result:I
    :try_start_1
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 348
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getSimPinRetry()I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_33

    move-result v0

    .line 355
    :goto_b
    const-string v1, "KeyguardSimPinView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimPinRetry(): # of remaining count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return v0

    .line 350
    :cond_24
    :try_start_24
    const-string v1, "phoneext"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyExt;->getSimPinRetry()I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_31} :catch_33

    move-result v0

    goto :goto_b

    .line 353
    :catch_33
    move-exception v1

    goto :goto_b
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .registers 4

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_38

    .line 242
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 243
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    const v2, 0x104086d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 246
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 247
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_38

    .line 248
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 252
    :cond_38
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private handleTimeout(I)V
    .registers 3
    .parameter "seq"

    .prologue
    .line 336
    monitor-enter p0

    .line 338
    :try_start_1
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mWakelockSequence:I

    if-ne p1, v0, :cond_a

    .line 339
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 341
    :cond_a
    monitor-exit p0

    .line 342
    return-void

    .line 341
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .registers 2

    .prologue
    .line 112
    const v0, 0x102031a

    return v0
.end method

.method protected onFinishInflate()V
    .registers 5

    .prologue
    .line 117
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    .line 119
    const v2, 0x1020385

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mRemainingCountTextView:Landroid/widget/TextView;

    .line 121
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 122
    const v2, 0x1020384

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mMultisimIcon:Landroid/widget/ImageView;

    .line 124
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getCurrentPinLockSlot()I

    move-result v2

    if-nez v2, :cond_7a

    .line 125
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mMultisimIcon:Landroid/widget/ImageView;

    const v3, 0x108036d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    :cond_2d
    :goto_2d
    const v2, 0x1020326

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 132
    .local v0, ok:Landroid/view/View;
    if-eqz v0, :cond_3e

    .line 133
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    :cond_3e
    const v2, 0x102031b

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 146
    .local v1, pinDelete:Landroid/view/View;
    if-eqz v1, :cond_5b

    .line 147
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 148
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 166
    :cond_5b
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->getSimPinRetry()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mRemainingCount:I

    .line 168
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 169
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 172
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    .line 174
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->updateRetryCount()V

    .line 175
    return-void

    .line 126
    .end local v0           #ok:Landroid/view/View;
    .end local v1           #pinDelete:Landroid/view/View;
    :cond_7a
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getCurrentPinLockSlot()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2d

    .line 127
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mMultisimIcon:Landroid/widget/ImageView;

    const v3, 0x108036e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2d
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    .line 185
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 188
    :cond_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 189
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 191
    :cond_1d
    return-void
.end method

.method public pokeWakelock(I)V
    .registers 7
    .parameter "holdMs"

    .prologue
    .line 314
    monitor-enter p0

    .line 316
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 317
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 318
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mWakelockSequence:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mWakelockSequence:I

    .line 319
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mWakelockSequence:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 320
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 321
    monitor-exit p0

    .line 322
    return-void

    .line 321
    .end local v0           #msg:Landroid/os/Message;
    :catchall_24
    move-exception v1

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public resetState()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 98
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->isWrongPIN:Z

    if-eqz v0, :cond_27

    .line 99
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x104086e

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->isWrongPIN:Z

    .line 104
    :goto_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 108
    :cond_26
    return-void

    .line 102
    :cond_27
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x1040867

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_10
.end method

.method public showUsabilityHint()V
    .registers 1

    .prologue
    .line 179
    return-void
.end method

.method public updateRetryCount()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 360
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mRemainingCount:I

    if-ne v0, v3, :cond_21

    .line 361
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mRemainingCountTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040794

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mRemainingCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    :goto_20
    return-void

    .line 364
    :cond_21
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mRemainingCountTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040795

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mRemainingCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_20
.end method

.method protected verifyPasswordAndUnlock()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 257
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, entry:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_29

    .line 261
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v2, 0x104086f

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 262
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 310
    :cond_28
    :goto_28
    return-void

    .line 267
    :cond_29
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 268
    const v1, 0xea60

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->pokeWakelock(I)V

    .line 270
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimCheckInProgress:Z

    if-nez v1, :cond_28

    .line 271
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimCheckInProgress:Z

    .line 272
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;->start()V

    goto :goto_28
.end method
