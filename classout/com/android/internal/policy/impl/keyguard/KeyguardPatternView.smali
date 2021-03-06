.class public Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;
.super Landroid/widget/LinearLayout;
.source "KeyguardPatternView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$7;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MIN_PATTERN_BEFORE_POKE_WAKELOCK:I = 0x2

.field private static final PATTERN_CLEAR_TIMEOUT_MS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "SecurityPatternView"

.field private static final UNLOCK_PATTERN_WAKE_INTERVAL_FIRST_DOTS_MS:I = 0x7d0

.field private static final UNLOCK_PATTERN_WAKE_INTERVAL_MS:I = 0x1b58


# instance fields
.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mCancelPatternRunnable:Ljava/lang/Runnable;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mEcaView:Landroid/view/View;

.field private mEmergencyButton:Landroid/widget/Button;

.field private mEmergencyCircleText:Landroid/widget/TextView;

.field private mEmergencyCircleView:Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

.field private mEnableFallback:Z

.field private mFailedPatternAttemptsSinceLastTimeout:I

.field private mForgotPatternButton:Landroid/widget/Button;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mLastPokeTime:J

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mRootLayout:Landroid/widget/FrameLayout;

.field private mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

.field private mSpareKeyButton:Landroid/widget/Button;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTotalFailedPatternAttempts:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mFailedPatternAttemptsSinceLastTimeout:I

    .line 75
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 98
    const-wide/16 v0, -0x1b58

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLastPokeTime:J

    .line 103
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    .line 493
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$6;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEnableFallback:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEnableFallback:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->displayDefaultSecurityMessage()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/widget/FrameLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRootLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyCircleText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSpareKeyButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyCircleView:Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    return p1
.end method

.method static synthetic access$608(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mFailedPatternAttemptsSinceLastTimeout:I

    return p1
.end method

.method static synthetic access$708(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mFailedPatternAttemptsSinceLastTimeout:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mFailedPatternAttemptsSinceLastTimeout:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    return-object v0
.end method

.method private displayDefaultSecurityMessage()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 321
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 322
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x10404aa

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 326
    :goto_15
    return-void

    .line 324
    :cond_16
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x1040866

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_15
.end method

.method private handleAttemptLockout(J)V
    .registers 11
    .parameter "elapsedRealtimeDeadline"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 460
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 461
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 462
    .local v6, elapsedRealtime:J
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEnableFallback:Z

    if-eqz v0, :cond_18

    .line 463
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;->ForgotLockPattern:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V

    .line 466
    :cond_18
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$5;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;JJ)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$5;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 491
    return-void
.end method

.method private maybeEnableFallback(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 406
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Landroid/accounts/AccountManager;Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$1;)V

    .line 407
    .local v0, accountAnalyzer:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;->start()V

    .line 408
    return-void
.end method

.method private updateFooter(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V
    .registers 7
    .parameter "mode"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 206
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    if-nez v1, :cond_8

    .line 265
    :cond_7
    :goto_7
    return-void

    .line 207
    :cond_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSpareKeyButton:Landroid/widget/Button;

    if-eqz v1, :cond_7

    .line 210
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRootLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_42

    .line 211
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    .line 212
    .local v0, phoneState:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyCircleText:Landroid/widget/TextView;

    if-eqz v1, :cond_42

    const/4 v1, 0x2

    if-ne v0, v1, :cond_42

    .line 213
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;->ForgotLockPattern:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;

    if-eq p1, v1, :cond_42

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;->SpareKey:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;

    if-eq p1, v1, :cond_42

    .line 214
    const-string v1, "SecurityPatternView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFooter return, mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 220
    .end local v0           #phoneState:I
    :cond_42
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$7;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardPatternView$FooterMode:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_e4

    goto :goto_7

    .line 223
    :pswitch_4e
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 224
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSpareKeyButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 226
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRootLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyCircleText:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyButton:Landroid/widget/Button;

    if-eqz v1, :cond_7

    .line 227
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyCircleText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_7

    .line 233
    :pswitch_6f
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 234
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->savedBackupPinExists()Z

    move-result v1

    if-eqz v1, :cond_99

    .line 235
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSpareKeyButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 240
    :goto_81
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRootLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyCircleText:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyButton:Landroid/widget/Button;

    if-eqz v1, :cond_7

    .line 241
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyCircleText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_7

    .line 237
    :cond_99
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSpareKeyButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_81

    .line 247
    :pswitch_9f
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 248
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSpareKeyButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 250
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRootLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyCircleText:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyButton:Landroid/widget/Button;

    if-eqz v1, :cond_7

    .line 251
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyCircleText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 252
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_7

    .line 257
    :pswitch_c1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 258
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSpareKeyButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 260
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRootLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyCircleText:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyButton:Landroid/widget/Button;

    if-eqz v1, :cond_7

    .line 261
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyCircleText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_7

    .line 220
    nop

    :pswitch_data_e4
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_6f
        :pswitch_9f
        :pswitch_c1
    .end packed-switch
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 335
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 336
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 337
    return-void
.end method

.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .registers 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .registers 5
    .parameter "duration"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 547
    return-void
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 514
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 138
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 139
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v1, :cond_10b

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    :goto_11
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 142
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "input_method"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 144
    const v1, 0x102034e

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LockPatternView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 145
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternView;->setSaveEnabled(Z)V

    .line 146
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternView;->setFocusable(Z)V

    .line 147
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$1;)V

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 150
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v1

    if-nez v1, :cond_10f

    move v1, v2

    :goto_4c
    invoke-virtual {v4, v1}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 153
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 155
    const v1, 0x102030d

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    .line 156
    const v1, 0x102030e

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSpareKeyButton:Landroid/widget/Button;

    .line 159
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    if-eqz v1, :cond_86

    .line 160
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    const v3, 0x104085f

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 161
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    :cond_86
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSpareKeyButton:Landroid/widget/Button;

    if-eqz v1, :cond_9c

    .line 169
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSpareKeyButton:Landroid/widget/Button;

    const v3, 0x1040860

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 170
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSpareKeyButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    :cond_9c
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->setFocusableInTouchMode(Z)V

    .line 179
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->maybeEnableFallback(Landroid/content/Context;)V

    .line 180
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    .line 181
    const v1, 0x10202ff

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    .line 182
    const v1, 0x10202fc

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 183
    .local v0, bouncerFrameView:Landroid/view/View;
    if-eqz v0, :cond_c3

    .line 184
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 188
    :cond_c3
    const v1, 0x1020280

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRootLayout:Landroid/widget/FrameLayout;

    .line 189
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRootLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_10a

    .line 190
    const v1, 0x102027f

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyCircleText:Landroid/widget/TextView;

    .line 191
    const v1, 0x102030c

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyButton:Landroid/widget/Button;

    .line 192
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyCircleText:Landroid/widget/TextView;

    if-eqz v1, :cond_10a

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyButton:Landroid/widget/Button;

    if-eqz v1, :cond_10a

    .line 193
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyCircleView:Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

    .line 194
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRootLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyCircleView:Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

    invoke-virtual {v1, v2, v6, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 195
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyCircleText:Landroid/widget/TextView;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$4;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 203
    :cond_10a
    return-void

    .line 139
    .end local v0           #bouncerFrameView:Landroid/view/View;
    :cond_10b
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    goto/16 :goto_11

    :cond_10f
    move v1, v3

    .line 150
    goto/16 :goto_4c
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_c

    .line 520
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 521
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 523
    :cond_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 524
    return-void
.end method

.method public onResume(I)V
    .registers 4
    .parameter "reason"

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->reset()V

    .line 529
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 530
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "ev"

    .prologue
    const/4 v3, 0x0

    .line 269
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 272
    .local v2, result:Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLastPokeTime:J

    sub-long v0, v4, v6

    .line 273
    .local v0, elapsed:J
    if-eqz v2, :cond_1b

    const-wide/16 v4, 0x1af4

    cmp-long v4, v0, v4

    if-lez v4, :cond_1b

    .line 274
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLastPokeTime:J

    .line 276
    :cond_1b
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 277
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 278
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 279
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v4, p1}, Lcom/android/internal/widget/LockPatternView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_3e

    if-eqz v2, :cond_4f

    :cond_3e
    const/4 v2, 0x1

    .line 280
    :goto_3f
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 281
    return v2

    :cond_4f
    move v2, v3

    .line 279
    goto :goto_3f
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5
    .parameter "hasWindowFocus"

    .prologue
    .line 341
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 342
    const-string v1, "SecurityPatternView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Window is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_25

    const-string v0, "focused"

    :goto_14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    if-eqz p1, :cond_24

    .line 345
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->reset()V

    .line 347
    :cond_24
    return-void

    .line 342
    :cond_25
    const-string v0, "unfocused"

    goto :goto_14
.end method

.method public reset()V
    .registers 7

    .prologue
    const/4 v5, 0x5

    .line 285
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v2, :cond_f

    .line 286
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 289
    :cond_f
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 290
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 291
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 294
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 295
    .local v0, deadline:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_48

    .line 296
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V

    .line 303
    :goto_2e
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    .line 306
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->isVerifyUnlockOnly()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 307
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;->VerifyUnlocked:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V

    .line 318
    :goto_47
    return-void

    .line 298
    :cond_48
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->displayDefaultSecurityMessage()V

    goto :goto_2e

    .line 308
    :cond_4c
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEnableFallback:Z

    if-eqz v2, :cond_5a

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    if-lt v2, v5, :cond_5a

    .line 310
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;->ForgotLockPattern:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V

    goto :goto_47

    .line 311
    :cond_5a
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->savedBackupPinExists()Z

    move-result v2

    if-eqz v2, :cond_6c

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    if-lt v2, v5, :cond_6c

    .line 313
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;->SpareKey:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V

    goto :goto_47

    .line 315
    :cond_6c
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;->Normal:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V

    goto :goto_47
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 130
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 2
    .parameter "utils"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 134
    return-void
.end method

.method public showBouncer(I)V
    .registers 5
    .parameter "duration"

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 541
    return-void
.end method

.method public showUsabilityHint()V
    .registers 1

    .prologue
    .line 330
    return-void
.end method
