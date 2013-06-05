.class public Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardUnlockView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$HelpTextCallback;,
        Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;
    }
.end annotation


# static fields
.field private static final ACTION_CLEAR_COVER_OPEN:Ljava/lang/String; = "com.samsung.cover.OPEN"

.field private static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x2710

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final MAX_AWAKE_TIME:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "SecuritySelectorView"


# instance fields
.field private final FADE_IN_OUT_ANIMATION_DURATION:I

.field private isIgnoreTouch:Z

.field private mAnim:Landroid/animation/ObjectAnimator;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mBouncerFrameView:Landroid/widget/LinearLayout;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mClearCoverOpened:Z

.field private mDefaultHelpText:Ljava/lang/String;

.field private mDistance:D

.field private mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

.field private mFadeView:Landroid/view/View;

.field private mFirstBorder:I

.field private mHelpTextCallback:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

.field private mHelpTextView:Landroid/widget/TextView;

.field private mIsAirViewEnabled:Z

.field private mIsBouncing:Z

.field private mIsFirst:Z

.field private mIsHelpTextEnabled:Z

.field private mIsTouchExplorationEnabled:Z

.field private mIsVoiceUnlockFailed:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mResumedTimeMillis:J

.field private mSecondBorder:I

.field private mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

.field private mShortcutView:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

.field private mStartX:F

.field private mStartY:F

.field private mUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

.field private mUsingWakeUpCommand:Z

.field private mVoiceEngineThread:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

.field private mVoiceHelpTextView:Landroid/widget/TextView;

.field private mWakeUpCallback:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 207
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mDistance:D

    .line 96
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsFirst:Z

    .line 98
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->isIgnoreTouch:Z

    .line 107
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    .line 108
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    .line 116
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsTouchExplorationEnabled:Z

    .line 118
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsAirViewEnabled:Z

    .line 120
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsHelpTextEnabled:Z

    .line 122
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsVoiceUnlockFailed:Z

    .line 124
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    .line 126
    const/16 v1, 0x12c

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->FADE_IN_OUT_ANIMATION_DURATION:I

    .line 134
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mWakeUpCallback:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;

    .line 177
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mClearCoverOpened:Z

    .line 179
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 657
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mResumedTimeMillis:J

    .line 738
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$10;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$10;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHelpTextCallback:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    .line 208
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 210
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mAudioManager:Landroid/media/AudioManager;

    .line 212
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->setFocusable(Z)V

    .line 213
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->setFocusableInTouchMode(Z)V

    .line 214
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->requestFocus()Z

    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mFirstBorder:I

    .line 218
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mSecondBorder:I

    .line 221
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsTouchExplorationEnabled:Z

    if-nez v1, :cond_9c

    .line 222
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "touch_exploration_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 225
    .local v0, exploreByTouchMode:I
    if-ne v0, v5, :cond_ac

    .line 226
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsTouchExplorationEnabled:Z

    .line 227
    const-string v1, "SecuritySelectorView"

    const-string v2, "explore by touch mode on"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .end local v0           #exploreByTouchMode:I
    :cond_9c
    :goto_9c
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 234
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 236
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->checkWakeUpCommandCondition()V

    .line 237
    return-void

    .line 229
    .restart local v0       #exploreByTouchMode:I
    :cond_ac
    const-string v1, "SecuritySelectorView"

    const-string v2, "explore by touch mode off"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsHelpTextEnabled:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsVoiceUnlockFailed:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsVoiceUnlockFailed:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->refreshDefaultHelpText()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mDefaultHelpText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mDefaultHelpText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Landroid/view/animation/AlphaAnimation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mVoiceHelpTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mClearCoverOpened:Z

    return p1
.end method

.method private checkWakeUpCommandCondition()V
    .registers 14

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 241
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "wake_up_lock_screen"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v9, :cond_7d

    move v5, v9

    .line 243
    .local v5, isMultipleWakeUpOn:Z
    :goto_11
    if-eqz v5, :cond_27

    .line 245
    :try_start_13
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.vlingo.midas"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 247
    .local v3, info:Landroid/content/pm/ApplicationInfo;
    iget-boolean v10, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v10, :cond_7f

    .line 248
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_27} :catch_83

    .line 258
    .end local v3           #info:Landroid/content/pm/ApplicationInfo;
    :cond_27
    :goto_27
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    if-eqz v10, :cond_3e

    .line 261
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "easy_mode_switch"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v9, :cond_8e

    move v4, v8

    .line 263
    .local v4, isEasyUxOn:Z
    :goto_3a
    if-eqz v4, :cond_3e

    .line 264
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    .line 268
    .end local v4           #isEasyUxOn:Z
    :cond_3e
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    if-eqz v10, :cond_5a

    .line 269
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "enabled_accessibility_services"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, accesibilityService:Ljava/lang/String;
    if-eqz v0, :cond_5a

    .line 272
    const-string v10, "(?i).*talkback.*"

    invoke-virtual {v0, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    .line 273
    .local v6, talkbackEnabled:Z
    if-eqz v6, :cond_5a

    .line 274
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    .line 279
    .end local v0           #accesibilityService:Ljava/lang/String;
    .end local v6           #talkbackEnabled:Z
    :cond_5a
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    if-eqz v10, :cond_7c

    .line 280
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "driving_mode_on"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 282
    .local v1, drivingMode:I
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "driving_mode_unlock_screen_contents"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 285
    .local v7, unlockDrivingMode:I
    if-ne v1, v9, :cond_7c

    if-ne v7, v9, :cond_7c

    .line 286
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    .line 289
    .end local v1           #drivingMode:I
    .end local v7           #unlockDrivingMode:I
    :cond_7c
    return-void

    .end local v5           #isMultipleWakeUpOn:Z
    :cond_7d
    move v5, v8

    .line 241
    goto :goto_11

    .line 250
    .restart local v3       #info:Landroid/content/pm/ApplicationInfo;
    .restart local v5       #isMultipleWakeUpOn:Z
    :cond_7f
    const/4 v10, 0x0

    :try_start_80
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z
    :try_end_82
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_80 .. :try_end_82} :catch_83

    goto :goto_27

    .line 252
    .end local v3           #info:Landroid/content/pm/ApplicationInfo;
    :catch_83
    move-exception v2

    .line 253
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    .line 254
    const-string v10, "SecuritySelectorView"

    const-string v11, "package not found"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_8e
    move v4, v9

    .line 261
    goto :goto_3a
.end method

.method private isActiveStreamExist()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 683
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isFMActive()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 684
    const-string v1, "SecuritySelectorView"

    const-string v2, "FM is active"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :goto_10
    return v0

    .line 686
    :cond_11
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 687
    const-string v1, "SecuritySelectorView"

    const-string v2, "Music is active"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 689
    :cond_21
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 690
    const-string v1, "SecuritySelectorView"

    const-string v2, "Recording is active"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 693
    :cond_31
    const-string v0, "SecuritySelectorView"

    const-string v1, "No active stream"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private pokeWakelockWithTimeCheck()V
    .registers 12

    .prologue
    const-wide/16 v9, 0x7530

    const-wide/16 v7, 0x4e20

    .line 664
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 665
    .local v2, now:J
    iget-wide v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mResumedTimeMillis:J

    sub-long v0, v2, v4

    .line 666
    .local v0, diff:J
    const-string v4, "SecuritySelectorView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pokeWakelockWithTimeCheck time diffence = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    cmp-long v4, v0, v7

    if-gtz v4, :cond_37

    .line 669
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v5, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 670
    const-string v4, "SecuritySelectorView"

    const-string v5, "pokeWakelockWithTimeCheck mCallback.pokeWakelock(AWAKE_INTERVAL_DEFAULT_MS)"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :goto_36
    return-void

    .line 672
    :cond_37
    cmp-long v4, v0, v7

    if-lez v4, :cond_69

    cmp-long v4, v0, v9

    if-gez v4, :cond_69

    .line 673
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    long-to-int v5, v0

    rsub-int v5, v5, 0x7530

    int-to-long v5, v5

    invoke-interface {v4, v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 674
    const-string v4, "SecuritySelectorView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pokeWakelockWithTimeCheck mCallback.pokeWakelock("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v9, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 678
    :cond_69
    const-string v4, "SecuritySelectorView"

    const-string v5, "pokeWakelockWithTimeCheck do nothing"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method

.method private refreshDefaultHelpText()V
    .registers 3

    .prologue
    const v1, 0x104078e

    .line 496
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    if-eqz v0, :cond_14

    .line 497
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mDefaultHelpText:Ljava/lang/String;

    .line 508
    :goto_13
    return-void

    .line 500
    :cond_14
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsTouchExplorationEnabled:Z

    if-nez v0, :cond_25

    .line 501
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_13

    .line 504
    :cond_25
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104078f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_13
.end method

.method private setAirView(Z)V
    .registers 5
    .parameter "isEnabled"

    .prologue
    .line 698
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isGestureWithFingerHoverOn()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 699
    const-string v0, "SecuritySelectorView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAirView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_air_view_on_by_lock"

    if-eqz p1, :cond_3c

    const/4 v0, 0x1

    :goto_2f
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 704
    const-string v1, "/sys/class/sec/tsp/cmd"

    if-eqz p1, :cond_3e

    const-string v0, "hover_enable,1"

    :goto_38
    invoke-direct {p0, v1, v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 706
    :cond_3b
    return-void

    .line 700
    :cond_3c
    const/4 v0, 0x0

    goto :goto_2f

    .line 704
    :cond_3e
    const-string v0, "hover_enable,0"

    goto :goto_38
.end method

.method private sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .parameter "sysfs"
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 709
    const/4 v2, 0x0

    .line 713
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_c} :catch_19
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_1e

    .line 719
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_c
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 720
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_16} :catch_2b

    .line 731
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :goto_18
    return v4

    .line 714
    :catch_19
    move-exception v0

    .line 715
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_18

    .line 721
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1e
    move-exception v0

    .line 722
    .local v0, e:Ljava/io/IOException;
    :goto_1f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 724
    :try_start_22
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_18

    .line 725
    :catch_26
    move-exception v1

    .line 726
    .local v1, err:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 721
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #err:Ljava/lang/Exception;
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_2b
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_1f
.end method


# virtual methods
.method doTransition(Landroid/view/View;F)V
    .registers 6
    .parameter "view"
    .parameter "to"

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_9

    .line 553
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 555
    :cond_9
    const-string v0, "alpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mAnim:Landroid/animation/ObjectAnimator;

    .line 556
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 557
    return-void
.end method

.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .registers 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .registers 6
    .parameter "duration"

    .prologue
    const/4 v3, 0x0

    .line 640
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsBouncing:Z

    .line 641
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 643
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    if-eqz v0, :cond_15

    .line 644
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->setVisibility(I)V

    .line 646
    :cond_15
    return-void
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 576
    const/4 v0, 0x0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 481
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 483
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    if-eqz v0, :cond_10

    .line 484
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 489
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    if-eqz v0, :cond_19

    .line 490
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->cleanUp()V

    .line 492
    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mWakeUpCallback:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;

    .line 493
    return-void
.end method

.method protected onFinishInflate()V
    .registers 11

    .prologue
    const/16 v9, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 386
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    .line 388
    const v4, 0x1020393

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    .line 389
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x104078e

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mDefaultHelpText:Ljava/lang/String;

    .line 390
    const v4, 0x1020394

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mVoiceHelpTextView:Landroid/widget/TextView;

    .line 392
    const v4, 0x1020281

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    .line 393
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    if-eqz v4, :cond_4e

    .line 394
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-virtual {v4, v7}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 395
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHelpTextCallback:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    invoke-virtual {v4, v7}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->setHelpTextCallback(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$HelpTextCallback;)V

    .line 398
    :cond_4e
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->refreshDefaultHelpText()V

    .line 400
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mDefaultHelpText:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "easy_mode_switch"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_145

    move v2, v6

    .line 407
    .local v2, isEasyUxOn:Z
    :goto_67
    if-eqz v2, :cond_70

    .line 409
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    const/high16 v7, 0x41b8

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 412
    :cond_70
    if-nez v2, :cond_82

    .line 413
    new-instance v4, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mWakeUpCallback:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;

    invoke-direct {v4, v7, v8}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    .line 414
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->start()V

    .line 417
    :cond_82
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "unlock_text"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_148

    move v4, v5

    :goto_91
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsHelpTextEnabled:Z

    .line 419
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsHelpTextEnabled:Z

    if-eqz v4, :cond_14b

    .line 420
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 421
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    new-instance v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$5;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 426
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    new-instance v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$6;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$6;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 432
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mVoiceHelpTextView:Landroid/widget/TextView;

    new-instance v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$7;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$7;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 437
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mVoiceHelpTextView:Landroid/widget/TextView;

    new-instance v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$8;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$8;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 446
    :goto_c4
    new-instance v4, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    .line 447
    const v4, 0x1020392

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mBouncerFrameView:Landroid/widget/LinearLayout;

    .line 448
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mBouncerFrameView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 451
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v4

    if-eqz v4, :cond_f5

    .line 452
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v4

    if-eqz v4, :cond_f5

    .line 453
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 459
    :cond_f5
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "finger_air_view"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_152

    :goto_103
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsAirViewEnabled:Z

    .line 461
    const-string v4, "SecuritySelectorView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsAirViewEnabled ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsAirViewEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    if-eqz v4, :cond_144

    .line 465
    :try_start_123
    const-string v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 467
    .local v3, wm:Landroid/view/IWindowManager;
    invoke-interface {v3}, Landroid/view/IWindowManager;->isCoverOpen()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mClearCoverOpened:Z
    :try_end_133
    .catch Landroid/os/RemoteException; {:try_start_123 .. :try_end_133} :catch_154

    .line 473
    .end local v3           #wm:Landroid/view/IWindowManager;
    :goto_133
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 474
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "com.samsung.cover.OPEN"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 475
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 477
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_144
    return-void

    .end local v2           #isEasyUxOn:Z
    :cond_145
    move v2, v5

    .line 404
    goto/16 :goto_67

    .restart local v2       #isEasyUxOn:Z
    :cond_148
    move v4, v6

    .line 417
    goto/16 :goto_91

    .line 443
    :cond_14b
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_c4

    :cond_152
    move v5, v6

    .line 459
    goto :goto_103

    .line 468
    :catch_154
    move-exception v0

    .line 469
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "SecuritySelectorView"

    const-string v5, "IWindowManager RemoteException"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_133
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 650
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsFirst:Z

    if-nez v0, :cond_6

    .line 651
    const/4 v0, 0x1

    .line 654
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->handleHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_5
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 581
    return-void
.end method

.method public onResume(I)V
    .registers 5
    .parameter "reason"

    .prologue
    const/4 v2, 0x1

    .line 585
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsVoiceUnlockFailed:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mClearCoverOpened:Z

    if-eqz v0, :cond_12

    .line 586
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->onResume()V

    .line 588
    :cond_12
    if-ne p1, v2, :cond_1c

    .line 589
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mResumedTimeMillis:J

    .line 590
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsFirst:Z

    .line 592
    :cond_1c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .parameter "event"

    .prologue
    const-wide/high16 v10, 0x4000

    const-wide/16 v7, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 294
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 295
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 381
    :goto_19
    return v4

    .line 300
    :cond_1a
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsFirst:Z

    if-nez v6, :cond_20

    move v4, v5

    .line 301
    goto :goto_19

    .line 304
    :cond_20
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->isIgnoreTouch:Z

    if-eqz v6, :cond_33

    .line 305
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v5, :cond_2c

    .line 306
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->isIgnoreTouch:Z

    .line 308
    :cond_2c
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v4, v9, p1}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_19

    .line 311
    :cond_33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 312
    .local v2, touchedEventX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 314
    .local v3, touchedEventY:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_118

    .line 381
    :cond_42
    :goto_42
    :pswitch_42
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v4, v9, p1}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_19

    .line 316
    :pswitch_49
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mStartX:F

    .line 317
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mStartY:F

    .line 318
    iput-wide v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mDistance:D

    .line 319
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->doTransition(Landroid/view/View;F)V

    .line 322
    :pswitch_55
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    if-eqz v5, :cond_5c

    .line 323
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->pokeWakelockWithTimeCheck()V

    .line 327
    :cond_5c
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mStartX:F

    sub-float v5, v2, v5

    float-to-int v0, v5

    .line 328
    .local v0, diffX:I
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mStartY:F

    sub-float v5, v3, v5

    float-to-int v1, v5

    .line 330
    .local v1, diffY:I
    int-to-double v5, v0

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    int-to-double v7, v1

    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mDistance:D

    .line 331
    sget-boolean v5, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->DEBUG:Z

    if-eqz v5, :cond_95

    .line 332
    const-string v5, "SecuritySelectorView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_MOVE mDistance: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mDistance:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_95
    iget-wide v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mDistance:D

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mSecondBorder:I

    int-to-double v7, v7

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_42

    .line 335
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsFirst:Z

    .line 336
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v4, v9, p1}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 337
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    if-eqz v4, :cond_42

    .line 338
    new-instance v4, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$3;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->getUnlockDelay()J

    move-result-wide v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_42

    .line 351
    .end local v0           #diffX:I
    .end local v1           #diffY:I
    :pswitch_b8
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->isIgnoreTouch:Z

    .line 353
    :pswitch_ba
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    const/high16 v5, 0x3f80

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->doTransition(Landroid/view/View;F)V

    .line 354
    iput-wide v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mDistance:D

    goto/16 :goto_42

    .line 357
    :pswitch_c5
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    const/high16 v6, 0x3f80

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->doTransition(Landroid/view/View;F)V

    .line 358
    sget-boolean v5, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->DEBUG:Z

    if-eqz v5, :cond_ea

    .line 359
    const-string v5, "SecuritySelectorView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_UP mDistance: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mDistance:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_ea
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mFirstBorder:I

    int-to-double v5, v5

    iget-wide v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mDistance:D

    cmpg-double v5, v5, v7

    if-gez v5, :cond_42

    iget-wide v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mDistance:D

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mSecondBorder:I

    int-to-double v7, v7

    cmpg-double v5, v5, v7

    if-gez v5, :cond_42

    .line 362
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsFirst:Z

    .line 363
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v4, v9, p1}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 364
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    if-eqz v4, :cond_42

    .line 365
    new-instance v4, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$4;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->getUnlockDelay()J

    move-result-wide v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_42

    .line 314
    nop

    :pswitch_data_118
    .packed-switch 0x0
        :pswitch_49
        :pswitch_c5
        :pswitch_55
        :pswitch_ba
        :pswitch_42
        :pswitch_42
        :pswitch_b8
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .registers 8
    .parameter "hasWindowFocus"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 596
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 597
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->DEBUG:Z

    if-eqz v1, :cond_25

    const-string v4, "SecuritySelectorView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Window is "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_51

    const-string v1, "focused"

    :goto_1a
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_25
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "finger_air_view_on_by_lock"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_54

    move v0, v2

    .line 603
    .local v0, isAirViewOnByLock:Z
    :goto_34
    if-eqz p1, :cond_56

    .line 604
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    if-eqz v1, :cond_47

    .line 605
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsVoiceUnlockFailed:Z

    if-nez v1, :cond_47

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mClearCoverOpened:Z

    if-eqz v1, :cond_47

    .line 606
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->onResume()V

    .line 609
    :cond_47
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsAirViewEnabled:Z

    if-nez v1, :cond_50

    if-nez v0, :cond_50

    .line 610
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->setAirView(Z)V

    .line 621
    :cond_50
    :goto_50
    return-void

    .line 597
    .end local v0           #isAirViewOnByLock:Z
    :cond_51
    const-string v1, "unfocused"

    goto :goto_1a

    :cond_54
    move v0, v3

    .line 599
    goto :goto_34

    .line 613
    .restart local v0       #isAirViewOnByLock:Z
    :cond_56
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    if-eqz v1, :cond_5f

    .line 614
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->onPause()V

    .line 617
    :cond_5f
    if-eqz v0, :cond_50

    .line 618
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->setAirView(Z)V

    goto :goto_50
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 572
    return-void
.end method

.method public setCarrierArea(Landroid/view/View;)V
    .registers 2
    .parameter "carrierArea"

    .prologue
    .line 511
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    .line 512
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 560
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 561
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    if-eqz v0, :cond_b

    .line 562
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 564
    :cond_b
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 2
    .parameter "utils"

    .prologue
    .line 567
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 568
    return-void
.end method

.method public showBouncer(I)V
    .registers 5
    .parameter "duration"

    .prologue
    .line 630
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsBouncing:Z

    .line 631
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 633
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    if-eqz v0, :cond_17

    .line 634
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->setVisibility(I)V

    .line 636
    :cond_17
    return-void
.end method

.method public showUsabilityHint()V
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 517
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 518
    .local v3, outRect:Landroid/graphics/Rect;
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 519
    const-string v5, "SecuritySelectorView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "outRect: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    const-wide/16 v6, 0xfa

    invoke-interface {v5, v6, v7, v3}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    .line 522
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "easy_mode_switch"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_57

    .line 525
    .local v1, isEasyUxOn:Z
    :goto_37
    if-eqz v1, :cond_56

    .line 527
    const v4, 0x1020395

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 528
    .local v2, mBounserView:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    const v5, 0x10a002b

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 530
    .local v0, AniFadeOut:Landroid/view/animation/Animation;
    new-instance v4, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$9;

    invoke-direct {v4, p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$9;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 546
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 549
    .end local v0           #AniFadeOut:Landroid/view/animation/Animation;
    .end local v2           #mBounserView:Landroid/widget/ImageView;
    :cond_56
    return-void

    .end local v1           #isEasyUxOn:Z
    :cond_57
    move v1, v4

    .line 522
    goto :goto_37
.end method
