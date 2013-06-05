.class public Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;
.super Lcom/android/internal/policy/impl/keyguard/PagedView;
.source "KeyguardWidgetPager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$ZInterpolator;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;
    }
.end annotation


# static fields
.field private static CAMERA_DISTANCE:F = 0.0f

.field public static final CHILDREN_OUTLINE_FADE_IN_DURATION:I = 0x64

.field public static final CHILDREN_OUTLINE_FADE_OUT_DURATION:I = 0x23f

.field private static final CUSTOM_WIDGET_USER_ACTIVITY_TIMEOUT:J = 0x2710L

.field private static final CUSTOM_WIDGET_USER_ACTIVITY_TIMEOUT_WITH_SMART_STAY:J = 0x1388L

.field protected static OVERSCROLL_MAX_ROTATION:F = 0.0f

.field private static final PERFORM_OVERSCROLL_ROTATION:Z = true

.field private static final TAG:Ljava/lang/String; = "KeyguardWidgetPager"


# instance fields
.field private BOUNCER_SCALE_FACTOR:F

.field private mAddWidgetView:Landroid/view/View;

.field private final mBackgroundWorkerHandler:Landroid/os/Handler;

.field private final mBackgroundWorkerThread:Landroid/os/HandlerThread;

.field private mBouncerZoomInOutDuration:I

.field private mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

.field private mCenterSmallWidgetsVertically:Z

.field protected mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

.field private mHasMeasure:Z

.field private mIsEasyUxOn:Z

.field private mIsSmartStayOn:Z

.field private mLastHeightMeasureSpec:I

.field private mLastWidthMeasureSpec:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPage:I

.field protected mScreenCenter:I

.field protected mShowingInitialHints:Z

.field protected mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

.field private mWidgetToResetAfterFadeOut:I

.field mZInterpolator:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$ZInterpolator;

.field showHintsAfterLayout:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const v0, 0x461c4000

    sput v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->CAMERA_DISTANCE:F

    .line 57
    const/high16 v0, 0x41f0

    sput v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->OVERSCROLL_MAX_ROTATION:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$ZInterpolator;

    const/high16 v3, 0x3f00

    invoke-direct {v0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$ZInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mZInterpolator:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$ZInterpolator;

    .line 68
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mHasMeasure:Z

    .line 69
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->showHintsAfterLayout:Z

    .line 75
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mPage:I

    .line 79
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mShowingInitialHints:Z

    .line 87
    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBouncerZoomInOutDuration:I

    .line 88
    const v0, 0x3f2b851f

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->BOUNCER_SCALE_FACTOR:F

    .line 104
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_28

    .line 105
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setImportantForAccessibility(I)V

    .line 108
    :cond_28
    invoke-virtual {p0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setPageSwitchListener(Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;)V

    .line 110
    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "KeyguardWidgetPager Worker"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBackgroundWorkerThread:Landroid/os/HandlerThread;

    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBackgroundWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 112
    new-instance v0, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBackgroundWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBackgroundWorkerHandler:Landroid/os/Handler;

    .line 115
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "easy_mode_switch"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_68

    move v0, v1

    :goto_55
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mIsEasyUxOn:Z

    .line 119
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "intelligent_sleep_mode"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_6a

    :goto_65
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mIsSmartStayOn:Z

    .line 121
    return-void

    :cond_68
    move v0, v2

    .line 115
    goto :goto_55

    :cond_6a
    move v2, v1

    .line 119
    goto :goto_65
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mWidgetToResetAfterFadeOut:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mWidgetToResetAfterFadeOut:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->updateWidgetFramesImportantForAccessibility()V

    return-void
.end method

.method private captureUserInteraction(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "ev"

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    .line 248
    .local v0, currentWidgetPage:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->onUserInteraction(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private enforceKeyguardWidgetFrame(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 440
    instance-of v0, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    if-nez v0, :cond_c

    .line 441
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "KeyguardWidgetPager children must be KeyguardWidgetFrames"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_c
    return-void
.end method

.method private updatePageAlphaValues(I)V
    .registers 2
    .parameter "screenCenter"

    .prologue
    .line 522
    return-void
.end method

.method private updateWidgetFrameImportantForAccessibility(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;)V
    .registers 4
    .parameter "frame"

    .prologue
    .line 206
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContentAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_e

    .line 207
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setImportantForAccessibility(I)V

    .line 211
    :goto_d
    return-void

    .line 209
    :cond_e
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setImportantForAccessibility(I)V

    goto :goto_d
.end method

.method private updateWidgetFramesImportantForAccessibility()V
    .registers 4

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getPageCount()I

    move-result v2

    .line 199
    .local v2, pageCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v2, :cond_11

    .line 200
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    .line 201
    .local v0, frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->updateWidgetFrameImportantForAccessibility(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;)V

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 203
    .end local v0           #frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_11
    return-void
.end method

.method private userActivity()V
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    if-eqz v0, :cond_e

    .line 215
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;->onUserActivityTimeoutChanged()V

    .line 216
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;->userActivity()V

    .line 218
    :cond_e
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;I)V
    .registers 3
    .parameter "child"
    .parameter "index"

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->enforceKeyguardWidgetFrame(Landroid/view/View;)V

    .line 406
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->addView(Landroid/view/View;I)V

    .line 407
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .registers 4
    .parameter "child"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 415
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->enforceKeyguardWidgetFrame(Landroid/view/View;)V

    .line 416
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->addView(Landroid/view/View;II)V

    .line 417
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 435
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->enforceKeyguardWidgetFrame(Landroid/view/View;)V

    .line 436
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 437
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .parameter "child"
    .parameter "params"

    .prologue
    .line 425
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->enforceKeyguardWidgetFrame(Landroid/view/View;)V

    .line 426
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    return-void
.end method

.method public addWidget(Landroid/view/View;)V
    .registers 3
    .parameter "widget"

    .prologue
    .line 283
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 284
    return-void
.end method

.method public addWidget(Landroid/view/View;I)V
    .registers 15
    .parameter "widget"
    .parameter "pageIndex"

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v11, 0x0

    .line 348
    instance-of v7, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    if-nez v7, :cond_71

    .line 349
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;-><init>(Landroid/content/Context;)V

    .line 350
    .local v3, frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 352
    .local v5, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v7, 0x30

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 356
    invoke-virtual {p1, v11, v11, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 357
    invoke-virtual {v3, p1, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    instance-of v7, p1, Landroid/appwidget/AppWidgetHostView;

    if-eqz v7, :cond_33

    move-object v0, p1

    .line 361
    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .line 362
    .local v0, awhv:Landroid/appwidget/AppWidgetHostView;
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    .line 363
    .local v4, info:Landroid/appwidget/AppWidgetProviderInfo;
    iget v7, v4, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_65

    .line 364
    invoke-virtual {v3, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setWidgetLockedSmall(Z)V

    .line 377
    .end local v0           #awhv:Landroid/appwidget/AppWidgetHostView;
    .end local v4           #info:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v5           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_33
    :goto_33
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 379
    .local v6, pageLp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 380
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBackgroundWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setWorkerHandler(Landroid/os/Handler;)V

    .line 382
    if-ne p2, v8, :cond_75

    .line 383
    invoke-virtual {p0, v3, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    :goto_45
    if-ne p1, v3, :cond_79

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v1

    .line 390
    .local v1, content:Landroid/view/View;
    :goto_4b
    if-eqz v1, :cond_61

    .line 391
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mContext:Landroid/content/Context;

    const v8, 0x10404ec

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 394
    .local v2, contentDescription:Ljava/lang/String;
    invoke-virtual {v3, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 396
    .end local v2           #contentDescription:Ljava/lang/String;
    :cond_61
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->updateWidgetFrameImportantForAccessibility(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;)V

    .line 397
    return-void

    .line 367
    .end local v1           #content:Landroid/view/View;
    .end local v6           #pageLp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v0       #awhv:Landroid/appwidget/AppWidgetHostView;
    .restart local v4       #info:Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v5       #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_65
    invoke-virtual {v3, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setWidgetLockedSmall(Z)V

    .line 368
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCenterSmallWidgetsVertically:Z

    if-eqz v7, :cond_33

    .line 369
    const/16 v7, 0x11

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_33

    .end local v0           #awhv:Landroid/appwidget/AppWidgetHostView;
    .end local v3           #frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    .end local v4           #info:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v5           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_71
    move-object v3, p1

    .line 374
    check-cast v3, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    .restart local v3       #frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    goto :goto_33

    .line 385
    .restart local v6       #pageLp:Landroid/view/ViewGroup$LayoutParams;
    :cond_75
    invoke-virtual {p0, v3, p2, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_45

    :cond_79
    move-object v1, p1

    .line 389
    goto :goto_4b
.end method

.method animateOutlinesAndSidePages(Z)V
    .registers 3
    .parameter "show"

    .prologue
    .line 704
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->animateOutlinesAndSidePages(ZI)V

    .line 705
    return-void
.end method

.method animateOutlinesAndSidePages(ZI)V
    .registers 16
    .parameter "show"
    .parameter "duration"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 716
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    if-eqz v9, :cond_e

    .line 717
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->cancel()V

    .line 718
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    .line 720
    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v4

    .line 722
    .local v4, count:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 724
    .local v2, anims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v9, -0x1

    if-ne p2, v9, :cond_1e

    .line 725
    if-eqz p1, :cond_54

    const/16 p2, 0x64

    .line 729
    :cond_1e
    :goto_1e
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getNextPage()I

    move-result v5

    .line 730
    .local v5, curPage:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_23
    if-ge v8, v4, :cond_62

    .line 732
    if-eqz p1, :cond_57

    .line 733
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mScreenCenter:I

    invoke-virtual {p0, v9, v8, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getAlphaForPage(IIZ)F

    move-result v6

    .line 739
    .local v6, finalContentAlpha:F
    :goto_2d
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v3

    .line 741
    .local v3, child:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    const-string v9, "contentAlpha"

    new-array v10, v11, [F

    aput v6, v10, v12

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 742
    .local v1, alpha:Landroid/animation/PropertyValuesHolder;
    new-array v9, v11, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v9, v12

    invoke-static {v3, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 743
    .local v0, a:Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    if-eqz p1, :cond_60

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mScreenCenter:I

    invoke-virtual {p0, v9, v8, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getOutlineAlphaForPage(IIZ)F

    move-result v7

    .line 746
    .local v7, finalOutlineAlpha:F
    :goto_4e
    invoke-virtual {v3, p0, p1, v7, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->fadeFrame(Ljava/lang/Object;ZFI)V

    .line 730
    add-int/lit8 v8, v8, 0x1

    goto :goto_23

    .line 725
    .end local v0           #a:Landroid/animation/ObjectAnimator;
    .end local v1           #alpha:Landroid/animation/PropertyValuesHolder;
    .end local v3           #child:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    .end local v5           #curPage:I
    .end local v6           #finalContentAlpha:F
    .end local v7           #finalOutlineAlpha:F
    .end local v8           #i:I
    :cond_54
    const/16 p2, 0x23f

    goto :goto_1e

    .line 734
    .restart local v5       #curPage:I
    .restart local v8       #i:I
    :cond_57
    if-nez p1, :cond_5e

    if-ne v8, v5, :cond_5e

    .line 735
    const/high16 v6, 0x3f80

    .restart local v6       #finalContentAlpha:F
    goto :goto_2d

    .line 737
    .end local v6           #finalContentAlpha:F
    :cond_5e
    const/4 v6, 0x0

    .restart local v6       #finalContentAlpha:F
    goto :goto_2d

    .line 745
    .restart local v0       #a:Landroid/animation/ObjectAnimator;
    .restart local v1       #alpha:Landroid/animation/PropertyValuesHolder;
    .restart local v3       #child:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_60
    const/4 v7, 0x0

    goto :goto_4e

    .line 749
    .end local v0           #a:Landroid/animation/ObjectAnimator;
    .end local v1           #alpha:Landroid/animation/PropertyValuesHolder;
    .end local v3           #child:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    .end local v6           #finalContentAlpha:F
    :cond_62
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    .line 750
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v9, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 752
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    int-to-long v10, p2

    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 753
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    new-instance v10, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$3;

    invoke-direct {v10, p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;Z)V

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 776
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    .line 777
    return-void
.end method

.method backgroundAlphaInterpolator(F)F
    .registers 3
    .parameter "r"

    .prologue
    .line 518
    const/high16 v0, 0x3f80

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method boundByReorderablePages(Z[I)V
    .registers 7
    .parameter "isReordering"
    .parameter "range"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 604
    if-eqz p1, :cond_3e

    .line 606
    :goto_4
    aget v0, p2, v3

    aget v1, p2, v2

    if-lt v0, v1, :cond_21

    aget v0, p2, v3

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isContextualPage(I)Z

    move-result v0

    if-nez v0, :cond_1a

    aget v0, p2, v3

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isWidgetPage(I)Z

    move-result v0

    if-nez v0, :cond_21

    .line 607
    :cond_1a
    aget v0, p2, v3

    add-int/lit8 v0, v0, -0x1

    aput v0, p2, v3

    goto :goto_4

    .line 608
    :cond_21
    :goto_21
    aget v0, p2, v2

    aget v1, p2, v3

    if-gt v0, v1, :cond_3e

    aget v0, p2, v2

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isContextualPage(I)Z

    move-result v0

    if-nez v0, :cond_37

    aget v0, p2, v2

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isWidgetPage(I)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 609
    :cond_37
    aget v0, p2, v2

    add-int/lit8 v0, v0, 0x1

    aput v0, p2, v2

    goto :goto_21

    .line 611
    :cond_3e
    return-void
.end method

.method protected disablePageContentLayers()V
    .registers 4

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v0

    .line 488
    .local v0, children:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 489
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->disableHardwareLayersForContent()V

    .line 488
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 491
    :cond_11
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "ev"

    .prologue
    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    .line 224
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->userActivity()V

    .line 227
    :cond_a
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected enablePageContentLayers()V
    .registers 4

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v0

    .line 481
    .local v0, children:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 482
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->enableHardwareLayersForContent()V

    .line 481
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 484
    :cond_11
    return-void
.end method

.method public getAlphaForPage(IIZ)F
    .registers 6
    .parameter "screenCenter"
    .parameter "index"
    .parameter "showSidePages"

    .prologue
    const/high16 v0, 0x3f80

    .line 525
    if-eqz p3, :cond_5

    .line 528
    :cond_4
    :goto_4
    return v0

    :cond_5
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    if-eq p2, v1, :cond_4

    const/4 v0, 0x0

    goto :goto_4
.end method

.method public getOutlineAlphaForPage(IIZ)F
    .registers 6
    .parameter "screenCenter"
    .parameter "index"
    .parameter "showSidePages"

    .prologue
    .line 533
    if-eqz p3, :cond_b

    .line 534
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getAlphaForPage(IIZ)F

    move-result v0

    const v1, 0x3f19999a

    mul-float/2addr v0, v1

    .line 537
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getUserActivityTimeout()J
    .registers 6

    .prologue
    .line 256
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mPage:I

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 257
    .local v0, page:Landroid/view/View;
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_24

    move-object v1, v0

    .line 258
    check-cast v1, Landroid/view/ViewGroup;

    .line 259
    .local v1, vg:Landroid/view/ViewGroup;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 260
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;

    if-nez v3, :cond_24

    instance-of v3, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    if-nez v3, :cond_24

    .line 263
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mIsSmartStayOn:Z

    if-eqz v3, :cond_21

    const-wide/16 v3, 0x1388

    .line 267
    .end local v1           #vg:Landroid/view/ViewGroup;
    .end local v2           #view:Landroid/view/View;
    :goto_20
    return-wide v3

    .line 263
    .restart local v1       #vg:Landroid/view/ViewGroup;
    .restart local v2       #view:Landroid/view/View;
    :cond_21
    const-wide/16 v3, 0x2710

    goto :goto_20

    .line 267
    .end local v1           #vg:Landroid/view/ViewGroup;
    .end local v2           #view:Landroid/view/View;
    :cond_24
    const-wide/16 v3, -0x1

    goto :goto_20
.end method

.method public getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    .registers 3
    .parameter "index"

    .prologue
    .line 448
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    return-object v0
.end method

.method public getWidgetPageIndex(Landroid/view/View;)I
    .registers 3
    .parameter "view"

    .prologue
    .line 816
    instance-of v0, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    if-eqz v0, :cond_9

    .line 817
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 820
    :goto_8
    return v0

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_8
.end method

.method public getWidgetToResetOnPageFadeOut()I
    .registers 2

    .prologue
    .line 712
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mWidgetToResetAfterFadeOut:I

    return v0
.end method

.method hideOutlinesAndSidePages()V
    .registers 2

    .prologue
    .line 635
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->animateOutlinesAndSidePages(Z)V

    .line 636
    return-void
.end method

.method public isAddPage(I)Z
    .registers 5
    .parameter "pageIndex"

    .prologue
    .line 917
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 918
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x10202f7

    if-ne v1, v2, :cond_11

    const/4 v1, 0x1

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public isCameraPage(I)Z
    .registers 4
    .parameter "pageIndex"

    .prologue
    .line 922
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 923
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_10

    instance-of v1, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    if-nez v1, :cond_e

    instance-of v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/ShortCutWidgetFrame;

    if-eqz v1, :cond_10

    :cond_e
    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public isContextualPage(I)Z
    .registers 6
    .parameter "pageIndex"

    .prologue
    const/4 v2, 0x0

    .line 932
    if-ltz p1, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v3

    if-lt p1, v3, :cond_a

    .line 944
    :cond_9
    :goto_9
    return v2

    .line 935
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 936
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_9

    instance-of v3, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    if-eqz v3, :cond_9

    .line 938
    instance-of v3, v1, Lcom/android/internal/policy/impl/keyguard/sec/ShortCutWidgetFrame;

    if-nez v3, :cond_9

    move-object v0, v1

    .line 941
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    .line 942
    .local v0, kwf:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isContextualWidget(I)Z

    move-result v2

    goto :goto_9
.end method

.method protected isOverScrollChild(IF)Z
    .registers 9
    .parameter "index"
    .parameter "scrollProgress"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 542
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOverScrollX:I

    if-ltz v3, :cond_d

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOverScrollX:I

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaxScrollX:I

    if-le v3, v4, :cond_23

    :cond_d
    move v0, v1

    .line 543
    .local v0, isInOverscroll:Z
    :goto_e
    if-eqz v0, :cond_25

    if-nez p1, :cond_16

    cmpg-float v3, p2, v5

    if-ltz v3, :cond_22

    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_25

    cmpl-float v3, p2, v5

    if-lez v3, :cond_25

    :cond_22
    :goto_22
    return v1

    .end local v0           #isInOverscroll:Z
    :cond_23
    move v0, v2

    .line 542
    goto :goto_e

    .restart local v0       #isInOverscroll:Z
    :cond_25
    move v1, v2

    .line 543
    goto :goto_22
.end method

.method public isWidgetPage(I)Z
    .registers 6
    .parameter "pageIndex"

    .prologue
    const/4 v2, 0x0

    .line 584
    if-ltz p1, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v3

    if-lt p1, v3, :cond_a

    .line 596
    :cond_9
    :goto_9
    return v2

    .line 587
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 588
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_9

    instance-of v3, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    if-eqz v3, :cond_9

    .line 590
    instance-of v3, v1, Lcom/android/internal/policy/impl/keyguard/sec/ShortCutWidgetFrame;

    if-nez v3, :cond_9

    move-object v0, v1

    .line 593
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    .line 594
    .local v0, kwf:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v3

    if-eqz v3, :cond_9

    const/4 v2, 0x1

    goto :goto_9
.end method

.method public onAddView(Landroid/view/View;I)V
    .registers 7
    .parameter "v"
    .parameter "index"

    .prologue
    .line 319
    move-object v2, p1

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v0

    .line 320
    .local v0, appWidgetId:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    array-length v2, v2

    new-array v1, v2, [I

    .line 321
    .local v1, pagesRange:[I
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getVisiblePages([I)V

    .line 322
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->boundByReorderablePages(Z[I)V

    .line 324
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    if-eqz v2, :cond_1c

    .line 325
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;->onAddView(Landroid/view/View;)V

    .line 329
    :cond_1c
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    if-eqz v2, :cond_25

    .line 330
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->onAddView(Landroid/view/View;)V

    .line 334
    :cond_25
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBackgroundWorkerHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$2;

    invoke-direct {v3, p0, v0, p2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;II[I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 340
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    .prologue
    .line 663
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onAttachedToWindow()V

    .line 664
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mHasMeasure:Z

    .line 665
    return-void
.end method

.method public onBouncerStateChanged(Z)V
    .registers 2
    .parameter "bouncerActive"

    .prologue
    .line 833
    if-eqz p1, :cond_6

    .line 834
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->zoomOutToBouncer()V

    .line 838
    :goto_5
    return-void

    .line 836
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->zoomInFromBouncer()V

    goto :goto_5
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 125
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onDetachedFromWindow()V

    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBackgroundWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 129
    return-void
.end method

.method protected onEndReordering()V
    .registers 1

    .prologue
    .line 626
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onEndReordering()V

    .line 627
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->hideOutlinesAndSidePages()V

    .line 628
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "ev"

    .prologue
    const/4 v0, 0x0

    .line 241
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mIsEasyUxOn:Z

    if-eqz v1, :cond_6

    .line 243
    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->captureUserInteraction(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_12
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 6
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 782
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->isChallengeShowing()Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->isChallengeOverlapping()Z

    move-result v3

    if-eqz v3, :cond_2a

    move v0, v2

    .line 785
    .local v0, isChallengeOverlapping:Z
    :goto_13
    if-nez v0, :cond_2c

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 786
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mContext:Landroid/content/Context;

    const v3, 0x1040898

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 795
    :cond_29
    :goto_29
    return v1

    .end local v0           #isChallengeOverlapping:Z
    :cond_2a
    move v0, v1

    .line 782
    goto :goto_13

    .line 792
    .restart local v0       #isChallengeOverlapping:Z
    :cond_2c
    if-nez v0, :cond_29

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->startReordering()Z

    move-result v3

    if-eqz v3, :cond_29

    move v1, v2

    .line 793
    goto :goto_29
.end method

.method protected onMeasure(II)V
    .registers 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 668
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mLastWidthMeasureSpec:I

    .line 669
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mLastHeightMeasureSpec:I

    .line 671
    const/4 v4, -0x1

    .line 672
    .local v4, maxChallengeTop:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 673
    .local v5, parent:Landroid/view/View;
    const/4 v0, 0x0

    .line 677
    .local v0, challengeShowing:Z
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    instance-of v8, v8, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v8, :cond_4b

    .line 678
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .line 679
    .local v6, scl:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getMaxChallengeTop()I

    move-result v7

    .line 683
    .local v7, top:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getPaddingTop()I

    move-result v8

    sub-int v4, v7, v8

    .line 685
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    sub-int/2addr v4, v8

    .line 686
    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isChallengeShowing()Z

    move-result v0

    .line 688
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v1

    .line 689
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_32
    if-ge v3, v1, :cond_4b

    .line 690
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v2

    .line 691
    .local v2, frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setMaxChallengeTop(I)V

    .line 694
    if-eqz v0, :cond_48

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    if-ne v3, v8, :cond_48

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mHasMeasure:Z

    if-nez v8, :cond_48

    .line 695
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->shrinkWidget()V

    .line 689
    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 699
    .end local v1           #count:I
    .end local v2           #frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    .end local v3           #i:I
    .end local v6           #scl:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    .end local v7           #top:I
    :cond_4b
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onMeasure(II)V

    .line 700
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mHasMeasure:Z

    .line 701
    return-void
.end method

.method protected onPageBeginMoving()V
    .registers 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    if-eqz v0, :cond_9

    .line 458
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->onPageBeginMoving()V

    .line 460
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isReordering(Z)Z

    move-result v0

    if-nez v0, :cond_13

    .line 461
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->showOutlinesAndSidePages()V

    .line 463
    :cond_13
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->userActivity()V

    .line 464
    return-void
.end method

.method protected onPageEndMoving()V
    .registers 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    if-eqz v0, :cond_9

    .line 469
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->onPageEndMoving()V

    .line 474
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isReordering(Z)Z

    move-result v0

    if-nez v0, :cond_13

    .line 475
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->hideOutlinesAndSidePages()V

    .line 477
    :cond_13
    return-void
.end method

.method public onPageSwitched(Landroid/view/View;I)V
    .registers 12
    .parameter "newPage"
    .parameter "newPageIndex"

    .prologue
    const/4 v8, 0x0

    .line 148
    const/4 v4, 0x0

    .line 149
    .local v4, showingStatusWidget:Z
    instance-of v6, p1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_12

    move-object v5, p1

    .line 150
    check-cast v5, Landroid/view/ViewGroup;

    .line 151
    .local v5, vg:Landroid/view/ViewGroup;
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;

    if-eqz v6, :cond_12

    .line 152
    const/4 v4, 0x1

    .line 157
    .end local v5           #vg:Landroid/view/ViewGroup;
    :cond_12
    if-eqz v4, :cond_6a

    .line 158
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getSystemUiVisibility()I

    move-result v6

    const/high16 v7, 0x80

    or-int/2addr v6, v7

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setSystemUiVisibility(I)V

    .line 164
    :goto_1e
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mPage:I

    if-eq v6, p2, :cond_60

    .line 165
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mPage:I

    .line 166
    .local v2, oldPageIndex:I
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mPage:I

    .line 167
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->userActivity()V

    .line 168
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v3

    .line 169
    .local v3, oldWidgetPage:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    if-eqz v3, :cond_32

    .line 170
    invoke-virtual {v3, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->onActive(Z)V

    .line 172
    :cond_32
    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v1

    .line 173
    .local v1, newWidgetPage:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    if-eqz v1, :cond_3f

    .line 174
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->onActive(Z)V

    .line 175
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->requestAccessibilityFocus()Z

    .line 177
    :cond_3f
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_60

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_60

    .line 178
    const/16 v6, 0x1000

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 180
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 181
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 182
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mParent:Landroid/view/ViewParent;

    invoke-interface {v6, p0, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 185
    .end local v0           #event:Landroid/view/accessibility/AccessibilityEvent;
    .end local v1           #newWidgetPage:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    .end local v2           #oldPageIndex:I
    .end local v3           #oldWidgetPage:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_60
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    if-eqz v6, :cond_69

    .line 186
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v6, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->onPageSwitched(Landroid/view/View;I)V

    .line 188
    :cond_69
    return-void

    .line 160
    :cond_6a
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getSystemUiVisibility()I

    move-result v6

    const v7, -0x800001

    and-int/2addr v6, v7

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setSystemUiVisibility(I)V

    goto :goto_1e
.end method

.method public onPageSwitching(Landroid/view/View;I)V
    .registers 4
    .parameter "newPage"
    .parameter "newPageIndex"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    if-eqz v0, :cond_9

    .line 142
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->onPageSwitching(Landroid/view/View;I)V

    .line 144
    :cond_9
    return-void
.end method

.method public onRemoveView(Landroid/view/View;Z)V
    .registers 6
    .parameter "v"
    .parameter "deletePermanently"

    .prologue
    .line 287
    move-object v1, p1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v0

    .line 288
    .local v0, appWidgetId:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    if-eqz v1, :cond_10

    .line 289
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;->onRemoveView(Landroid/view/View;Z)V

    .line 293
    :cond_10
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    if-eqz v1, :cond_1e

    .line 294
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->onRemoveView(Landroid/view/View;)V

    .line 295
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;->onRemoveView(Landroid/view/View;Z)V

    .line 299
    :cond_1e
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    if-eqz v1, :cond_27

    .line 300
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->onRemoveView(Landroid/view/View;)V

    .line 303
    :cond_27
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBackgroundWorkerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$1;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 309
    return-void
.end method

.method public onRemoveViewAnimationCompleted()V
    .registers 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    if-eqz v0, :cond_9

    .line 314
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;->onRemoveViewAnimationCompleted()V

    .line 316
    :cond_9
    return-void
.end method

.method protected onStartReordering()V
    .registers 1

    .prologue
    .line 619
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onStartReordering()V

    .line 620
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->enablePageContentLayers()V

    .line 621
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->reorderStarting()V

    .line 622
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "ev"

    .prologue
    const/4 v0, 0x0

    .line 233
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mIsEasyUxOn:Z

    if-eqz v1, :cond_6

    .line 235
    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->captureUserInteraction(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_12
    const/4 v0, 0x1

    goto :goto_5
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "ev"

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->showPagingFeedback()V

    .line 453
    return-void
.end method

.method protected overScroll(F)V
    .registers 2
    .parameter "amount"

    .prologue
    .line 514
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->acceleratedOverScroll(F)V

    .line 515
    return-void
.end method

.method public removeWidget(Landroid/view/View;)V
    .registers 7
    .parameter "view"

    .prologue
    .line 799
    instance-of v2, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    if-eqz v2, :cond_8

    .line 800
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->removeView(Landroid/view/View;)V

    .line 813
    :goto_7
    return-void

    .line 804
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageIndex(Landroid/view/View;)I

    move-result v1

    .line 805
    .local v1, pos:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1c

    .line 806
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    .line 807
    .local v0, frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->removeView(Landroid/view/View;)V

    .line 808
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->removeView(Landroid/view/View;)V

    goto :goto_7

    .line 810
    .end local v0           #frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_1c
    const-string v2, "KeyguardWidgetPager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeWidget() can\'t find:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method protected reorderStarting()V
    .registers 1

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->showOutlinesAndSidePages()V

    .line 615
    return-void
.end method

.method protected screenScrolled(I)V
    .registers 12
    .parameter "screenCenter"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 549
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mScreenCenter:I

    .line 550
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->updatePageAlphaValues(I)V

    .line 551
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_74

    .line 552
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v5

    .line 553
    .local v5, v:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    if-ne v5, v6, :cond_19

    .line 551
    :cond_16
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 554
    :cond_19
    if-eqz v5, :cond_16

    .line 555
    invoke-virtual {p0, p1, v5, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getScrollProgress(ILandroid/view/View;I)F

    move-result v4

    .line 557
    .local v4, scrollProgress:F
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDensity:F

    sget v8, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->CAMERA_DISTANCE:F

    mul-float/2addr v6, v8

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setCameraDistance(F)V

    .line 559
    invoke-virtual {p0, v1, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isOverScrollChild(IF)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 560
    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v2, v6

    .line 561
    .local v2, pivotX:F
    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v3, v6

    .line 562
    .local v3, pivotY:F
    invoke-virtual {v5, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setPivotX(F)V

    .line 563
    invoke-virtual {v5, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setPivotY(F)V

    .line 564
    sget v6, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->OVERSCROLL_MAX_ROTATION:F

    neg-float v6, v6

    mul-float/2addr v6, v4

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setRotationY(F)V

    .line 565
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v6, v4, v9

    if-gez v6, :cond_61

    const/4 v6, 0x1

    :goto_51
    invoke-virtual {v5, v8, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setOverScrollAmount(FZ)V

    .line 571
    .end local v2           #pivotX:F
    .end local v3           #pivotY:F
    :goto_54
    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getAlpha()F

    move-result v0

    .line 574
    .local v0, alpha:F
    cmpl-float v6, v0, v9

    if-nez v6, :cond_6a

    .line 575
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setVisibility(I)V

    goto :goto_16

    .end local v0           #alpha:F
    .restart local v2       #pivotX:F
    .restart local v3       #pivotY:F
    :cond_61
    move v6, v7

    .line 565
    goto :goto_51

    .line 567
    .end local v2           #pivotX:F
    .end local v3           #pivotY:F
    :cond_63
    invoke-virtual {v5, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setRotationY(F)V

    .line 568
    invoke-virtual {v5, v9, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setOverScrollAmount(FZ)V

    goto :goto_54

    .line 576
    .restart local v0       #alpha:F
    :cond_6a
    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_16

    .line 577
    invoke-virtual {v5, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setVisibility(I)V

    goto :goto_16

    .line 581
    .end local v0           #alpha:F
    .end local v4           #scrollProgress:F
    .end local v5           #v:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_74
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .registers 3
    .parameter "eventType"

    .prologue
    .line 192
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_a

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isPageMoving()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 193
    :cond_a
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->sendAccessibilityEvent(I)V

    .line 195
    :cond_d
    return-void
.end method

.method setAddWidgetEnabled(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 899
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mAddWidgetView:Landroid/view/View;

    if-eqz v1, :cond_1e

    if-eqz p1, :cond_1e

    .line 900
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mAddWidgetView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addView(Landroid/view/View;I)V

    .line 903
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mLastWidthMeasureSpec:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mLastHeightMeasureSpec:I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->measure(II)V

    .line 905
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setCurrentPage(I)V

    .line 906
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mAddWidgetView:Landroid/view/View;

    .line 914
    :cond_1d
    :goto_1d
    return-void

    .line 907
    :cond_1e
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mAddWidgetView:Landroid/view/View;

    if-nez v1, :cond_1d

    if-nez p1, :cond_1d

    .line 908
    const v1, 0x10202f7

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 909
    .local v0, addWidget:Landroid/view/View;
    if-eqz v0, :cond_1d

    .line 910
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mAddWidgetView:Landroid/view/View;

    .line 911
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->removeView(Landroid/view/View;)V

    goto :goto_1d
.end method

.method setBouncerAnimationDuration(I)V
    .registers 2
    .parameter "duration"

    .prologue
    .line 841
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBouncerZoomInOutDuration:I

    .line 842
    return-void
.end method

.method public setCallbacks(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;)V
    .registers 2
    .parameter "callbacks"

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    .line 272
    return-void
.end method

.method setCurrentPage(I)V
    .registers 2
    .parameter "currentPage"

    .prologue
    .line 657
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setCurrentPage(I)V

    .line 658
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->updateWidgetFramesImportantForAccessibility()V

    .line 659
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 137
    return-void
.end method

.method protected setPageHoveringOverDeleteDropTarget(IZ)V
    .registers 4
    .parameter "viewIndex"
    .parameter "isHovering"

    .prologue
    .line 826
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    .line 827
    .local v0, child:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setIsHoveringOverDeleteDropTarget(Z)V

    .line 828
    return-void
.end method

.method public setViewStateManager(Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;)V
    .registers 2
    .parameter "viewStateManager"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    .line 133
    return-void
.end method

.method public setWidgetToResetOnPageFadeOut(I)V
    .registers 2
    .parameter "widget"

    .prologue
    .line 708
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mWidgetToResetAfterFadeOut:I

    .line 709
    return-void
.end method

.method protected shouldSetTopAlignedPivotForWidget(I)Z
    .registers 3
    .parameter "childIndex"

    .prologue
    .line 928
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->shouldSetTopAlignedPivotForWidget(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public showInitialPageHints()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 639
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mShowingInitialHints:Z

    .line 640
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v1

    .line 641
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    if-ge v2, v1, :cond_25

    .line 642
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    .line 643
    .local v0, child:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    if-eq v2, v3, :cond_1c

    .line 645
    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setBackgroundAlpha(F)V

    .line 647
    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setContentAlpha(F)V

    .line 641
    :goto_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 649
    :cond_1c
    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setBackgroundAlpha(F)V

    .line 650
    const/high16 v3, 0x3f80

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setContentAlpha(F)V

    goto :goto_19

    .line 653
    .end local v0           #child:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_25
    return-void
.end method

.method showOutlinesAndSidePages()V
    .registers 2

    .prologue
    .line 631
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->animateOutlinesAndSidePages(Z)V

    .line 632
    return-void
.end method

.method public showPagingFeedback()V
    .registers 1

    .prologue
    .line 253
    return-void
.end method

.method zoomInFromBouncer()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f80

    .line 846
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 847
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 849
    :cond_15
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 850
    .local v0, currentPage:Landroid/view/View;
    if-nez v0, :cond_20

    .line 865
    .end local v0           #currentPage:Landroid/view/View;
    :cond_1f
    :goto_1f
    return-void

    .line 853
    .restart local v0       #currentPage:Landroid/view/View;
    :cond_20
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v1

    cmpg-float v1, v1, v5

    if-ltz v1, :cond_30

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v1

    cmpg-float v1, v1, v5

    if-gez v1, :cond_70

    .line 854
    :cond_30
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    .line 855
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    const-string v3, "scaleX"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "scaleY"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 858
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBouncerZoomInOutDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 859
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3fc0

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 860
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 862
    :cond_70
    instance-of v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    if-eqz v1, :cond_1f

    .line 863
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    .end local v0           #currentPage:Landroid/view/View;
    invoke-virtual {v0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->onBouncerShowing(Z)V

    goto :goto_1f
.end method

.method zoomOutToBouncer()V
    .registers 10

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 869
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 870
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 872
    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getCurrentPage()I

    move-result v0

    .line 873
    .local v0, curPage:I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 874
    .local v1, currentPage:Landroid/view/View;
    if-nez v1, :cond_21

    .line 896
    .end local v1           #currentPage:Landroid/view/View;
    :cond_20
    :goto_20
    return-void

    .line 877
    .restart local v1       #currentPage:Landroid/view/View;
    :cond_21
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->shouldSetTopAlignedPivotForWidget(I)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 878
    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotY(F)V

    .line 881
    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 882
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 884
    :cond_37
    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v2

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_8b

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v2

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_8b

    .line 885
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    .line 886
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const-string v4, "scaleX"

    new-array v5, v7, [F

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->BOUNCER_SCALE_FACTOR:F

    aput v6, v5, v8

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    const-string v4, "scaleY"

    new-array v5, v7, [F

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->BOUNCER_SCALE_FACTOR:F

    aput v6, v5, v8

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 889
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBouncerZoomInOutDuration:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 890
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x3fc0

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 891
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 893
    :cond_8b
    instance-of v2, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    if-eqz v2, :cond_20

    .line 894
    check-cast v1, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    .end local v1           #currentPage:Landroid/view/View;
    invoke-virtual {v1, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->onBouncerShowing(Z)V

    goto :goto_20
.end method
