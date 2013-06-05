.class Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;
.super Landroid/widget/LinearLayout;
.source "LockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;,
        Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$WaveViewMethods;,
        Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$SlidingTabMethods;,
        Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$UnlockWidgetCommonMethods;
    }
.end annotation


# static fields
.field private static final ASSIST_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.systemui.action_assist_icon"

.field private static final DBG:Z = false

.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static final ON_RESUME_PING_DELAY:I = 0x1f4

.field private static final STAY_ON_WHILE_GRABBED_TIMEOUT:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "LockScreen"

.field private static final WAIT_FOR_ANIMATION_TIMEOUT:I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

.field private mCameraDisabled:Z

.field private mCreationOrientation:I

.field private mEnableMenuKeyInLockScreen:Z

.field private mEnableRingSilenceFallback:Z

.field private final mHasVibrator:Z

.field mInfoCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitorCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mOnResumePing:Ljava/lang/Runnable;

.field private mSearchDisabled:Z

.field private mSilentMode:Z

.field private mStatusViewManager:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;

.field private mUnlockWidget:Landroid/view/View;

.field private mUnlockWidgetMethods:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$UnlockWidgetCommonMethods;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;)V
    .registers 15
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 448
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 71
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mEnableRingSilenceFallback:Z

    .line 88
    new-instance v0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$1;-><init>(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitorCallback;

    .line 595
    new-instance v0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$3;-><init>(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mOnResumePing:Ljava/lang/Runnable;

    .line 449
    iput-object p3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 450
    iput-object p4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    .line 451
    iput-object p5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    .line 452
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->shouldEnableMenuKey()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mEnableMenuKeyInLockScreen:Z

    .line 453
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mCreationOrientation:I

    .line 461
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 463
    .local v6, inflater:Landroid/view/LayoutInflater;
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mCreationOrientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7d

    .line 464
    const v0, 0x1090080

    invoke-virtual {v6, v0, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 469
    :goto_34
    new-instance v0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;

    .line 472
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->setFocusable(Z)V

    .line 473
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->setFocusableInTouchMode(Z)V

    .line 474
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->setDescendantFocusability(I)V

    .line 476
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Vibrator;

    .line 477
    .local v7, vibrator:Landroid/os/Vibrator;
    if-nez v7, :cond_84

    :goto_57
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mHasVibrator:Z

    .line 478
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 479
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->isSilentMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mSilentMode:Z

    .line 480
    const v0, 0x102037a

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mUnlockWidget:Landroid/view/View;

    .line 481
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mUnlockWidget:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->createUnlockMethods(Landroid/view/View;)Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$UnlockWidgetCommonMethods;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$UnlockWidgetCommonMethods;

    .line 485
    return-void

    .line 466
    .end local v7           #vibrator:Landroid/os/Vibrator;
    :cond_7d
    const v0, 0x1090081

    invoke-virtual {v6, v0, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_34

    .line 477
    .restart local v7       #vibrator:Landroid/os/Vibrator;
    :cond_84
    invoke-virtual {v7}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    goto :goto_57
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mSilentMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mSilentMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$UnlockWidgetCommonMethods;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$UnlockWidgetCommonMethods;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mSearchDisabled:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->updateTargets()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->toggleRingMode()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->isSilentMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->requestUnlockScreen()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mCameraDisabled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mEnableRingSilenceFallback:Z

    return v0
.end method

.method private createUnlockMethods(Landroid/view/View;)Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$UnlockWidgetCommonMethods;
    .registers 12
    .parameter "unlockWidget"

    .prologue
    .line 488
    instance-of v6, p1, Lcom/android/internal/widget/SlidingTab;

    if-eqz v6, :cond_2a

    move-object v3, p1

    .line 489
    check-cast v3, Lcom/android/internal/widget/SlidingTab;

    .line 490
    .local v3, slidingTabView:Lcom/android/internal/widget/SlidingTab;
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lcom/android/internal/widget/SlidingTab;->setHoldAfterTrigger(ZZ)V

    .line 491
    const v6, 0x10404e1

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/SlidingTab;->setLeftHintText(I)V

    .line 492
    const v6, 0x1080342

    const v7, 0x108043e

    const v8, 0x108041f

    const v9, 0x1080432

    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/android/internal/widget/SlidingTab;->setLeftTabResources(IIII)V

    .line 497
    new-instance v2, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$SlidingTabMethods;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$SlidingTabMethods;-><init>(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;Lcom/android/internal/widget/SlidingTab;)V

    .line 498
    .local v2, slidingTabMethods:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$SlidingTabMethods;
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/SlidingTab;->setOnTriggerListener(Lcom/android/internal/widget/SlidingTab$OnTriggerListener;)V

    .line 509
    .end local v2           #slidingTabMethods:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$SlidingTabMethods;
    .end local v3           #slidingTabView:Lcom/android/internal/widget/SlidingTab;
    :goto_29
    return-object v2

    .line 500
    :cond_2a
    instance-of v6, p1, Lcom/android/internal/widget/WaveView;

    if-eqz v6, :cond_3b

    move-object v4, p1

    .line 501
    check-cast v4, Lcom/android/internal/widget/WaveView;

    .line 502
    .local v4, waveView:Lcom/android/internal/widget/WaveView;
    new-instance v5, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$WaveViewMethods;

    invoke-direct {v5, p0, v4}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$WaveViewMethods;-><init>(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;Lcom/android/internal/widget/WaveView;)V

    .line 503
    .local v5, waveViewMethods:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$WaveViewMethods;
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/WaveView;->setOnTriggerListener(Lcom/android/internal/widget/WaveView$OnTriggerListener;)V

    move-object v2, v5

    .line 504
    goto :goto_29

    .line 505
    .end local v4           #waveView:Lcom/android/internal/widget/WaveView;
    .end local v5           #waveViewMethods:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$WaveViewMethods;
    :cond_3b
    instance-of v6, p1, Lcom/android/internal/widget/multiwaveview/GlowPadView;

    if-eqz v6, :cond_4c

    move-object v0, p1

    .line 506
    check-cast v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;

    .line 507
    .local v0, glowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;
    new-instance v1, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;-><init>(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;Lcom/android/internal/widget/multiwaveview/GlowPadView;)V

    .line 508
    .local v1, glowPadViewMethods:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    move-object v2, v1

    .line 509
    goto :goto_29

    .line 511
    .end local v0           #glowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;
    .end local v1           #glowPadViewMethods:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;
    :cond_4c
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized unlock widget: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private isSilentMode()Z
    .registers 3

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private requestUnlockScreen()V
    .registers 4

    .prologue
    .line 403
    new-instance v0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$2;-><init>(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 408
    return-void
.end method

.method private shouldEnableMenuKey()Z
    .registers 7

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 431
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x1110026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 432
    .local v0, configDisabled:Z
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v2

    .line 433
    .local v2, isTestHarness:Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 434
    .local v1, fileOverride:Z
    if-eqz v0, :cond_20

    if-nez v2, :cond_20

    if-eqz v1, :cond_22

    :cond_20
    const/4 v4, 0x1

    :goto_21
    return v4

    :cond_22
    const/4 v4, 0x0

    goto :goto_21
.end method

.method private toggleRingMode()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 412
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mSilentMode:Z

    if-nez v0, :cond_17

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mSilentMode:Z

    .line 413
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mSilentMode:Z

    if-eqz v0, :cond_1b

    .line 414
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mHasVibrator:Z

    if-eqz v3, :cond_19

    :goto_13
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 420
    :goto_16
    return-void

    :cond_17
    move v0, v2

    .line 412
    goto :goto_7

    :cond_19
    move v1, v2

    .line 414
    goto :goto_13

    .line 418
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_16
.end method

.method private updateTargets()V
    .registers 11

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 516
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v1

    .line 518
    .local v1, disabledByAdmin:Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->isSimLocked()Z

    move-result v2

    .line 519
    .local v2, disabledBySimState:Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$UnlockWidgetCommonMethods;

    instance-of v5, v5, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;

    if-eqz v5, :cond_6a

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$UnlockWidgetCommonMethods;

    check-cast v5, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;

    const v8, 0x108034e

    invoke-virtual {v5, v8}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;->isTargetPresent(I)Z

    move-result v0

    .line 523
    .local v0, cameraTargetPresent:Z
    :goto_24
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$UnlockWidgetCommonMethods;

    instance-of v5, v5, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;

    if-eqz v5, :cond_6c

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$UnlockWidgetCommonMethods;

    check-cast v5, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;

    const v8, 0x10802f7

    invoke-virtual {v5, v8}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;->isTargetPresent(I)Z

    move-result v4

    .line 528
    .local v4, searchTargetPresent:Z
    :goto_35
    if-eqz v1, :cond_6e

    .line 529
    const-string v5, "LockScreen"

    const-string v8, "Camera disabled by Device Policy"

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_3e
    :goto_3e
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mContext:Landroid/content/Context;

    const-string v8, "search"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/SearchManager;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mContext:Landroid/content/Context;

    const/4 v9, -0x2

    invoke-virtual {v5, v8, v9}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_78

    move v3, v7

    .line 536
    .local v3, searchActionAvailable:Z
    :goto_52
    if-nez v1, :cond_58

    if-nez v2, :cond_58

    if-nez v0, :cond_7a

    :cond_58
    move v5, v7

    :goto_59
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mCameraDisabled:Z

    .line 537
    if-nez v2, :cond_61

    if-eqz v3, :cond_61

    if-nez v4, :cond_62

    :cond_61
    move v6, v7

    :cond_62
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mSearchDisabled:Z

    .line 538
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$UnlockWidgetCommonMethods;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$UnlockWidgetCommonMethods;->updateResources()V

    .line 539
    return-void

    .end local v0           #cameraTargetPresent:Z
    .end local v3           #searchActionAvailable:Z
    .end local v4           #searchTargetPresent:Z
    :cond_6a
    move v0, v6

    .line 519
    goto :goto_24

    .restart local v0       #cameraTargetPresent:Z
    :cond_6c
    move v4, v6

    .line 523
    goto :goto_35

    .line 530
    .restart local v4       #searchTargetPresent:Z
    :cond_6e
    if-eqz v2, :cond_3e

    .line 531
    const-string v5, "LockScreen"

    const-string v8, "Camera disabled by Sim State"

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    :cond_78
    move v3, v6

    .line 533
    goto :goto_52

    .restart local v3       #searchActionAvailable:Z
    :cond_7a
    move v5, v6

    .line 536
    goto :goto_59
.end method


# virtual methods
.method public cleanUp()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 613
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 614
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$UnlockWidgetCommonMethods;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$UnlockWidgetCommonMethods;->cleanUp()V

    .line 615
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 616
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    .line 617
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    .line 618
    return-void
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 585
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 562
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 568
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->updateConfiguration()V

    .line 569
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 574
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 580
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->updateConfiguration()V

    .line 581
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 547
    const/16 v0, 0x52

    if-ne p1, v0, :cond_d

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mEnableMenuKeyInLockScreen:Z

    if-eqz v0, :cond_d

    .line 548
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 550
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 591
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->onPause()V

    .line 592
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$UnlockWidgetCommonMethods;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$UnlockWidgetCommonMethods;->reset(Z)V

    .line 593
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitorCallback;)V

    .line 607
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->onResume()V

    .line 608
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mOnResumePing:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 609
    return-void
.end method

.method updateConfiguration()V
    .registers 4

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 555
    .local v0, newConfig:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mCreationOrientation:I

    if-eq v1, v2, :cond_13

    .line 556
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 558
    :cond_13
    return-void
.end method
