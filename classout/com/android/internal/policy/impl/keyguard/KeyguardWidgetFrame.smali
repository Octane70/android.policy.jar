.class public Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
.super Landroid/widget/FrameLayout;
.source "KeyguardWidgetFrame.java"


# static fields
.field static final ENABLE_HOVER_OVER_DELETE_DROP_TARGET_OVERLAY:Z = true

.field static final HOVER_OVER_DELETE_DROP_TARGET_OVERLAY_COLOR:I = -0x66010000

.field static final OUTLINE_ALPHA_MULTIPLIER:F = 0.6f

.field private static final TAG:Ljava/lang/String; = "KeyguardWidgetFrame"

.field private static final sAddBlendMode:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field private mBackgroundAlpha:F

.field private mBackgroundAlphaMultiplier:F

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundLightDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundLightRect:Landroid/graphics/Rect;

.field private mBackgroundRect:Landroid/graphics/Rect;

.field private mBgAlphaController:Ljava/lang/Object;

.field private mContentAlpha:F

.field private mForegroundAlpha:I

.field private mForegroundGradient:Landroid/graphics/LinearGradient;

.field private final mForegroundRect:Landroid/graphics/Rect;

.field private mFrameFade:Landroid/animation/Animator;

.field private mFrameHeight:I

.field private mFrameStrokeAdjustment:I

.field private mGradientColor:I

.field private mGradientPaint:Landroid/graphics/Paint;

.field private mIsHoveringOverDeleteDropTarget:Z

.field private mIsReordering:Z

.field private mIsSmall:Z

.field mLeftToRight:Z

.field private mLeftToRightGradient:Landroid/graphics/LinearGradient;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLongPressHelper:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

.field private mMaxChallengeTop:I

.field private mOverScrollAmount:F

.field private mPerformAppWidgetSizeUpdateOnBootComplete:Z

.field private mRightToLeftGradient:Landroid/graphics/LinearGradient;

.field private mSmallFrameHeight:I

.field private mSmallWidgetHeight:I

.field private mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mWidgetLockedSmall:Z

.field private mWorkerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 46
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->sAddBlendMode:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 103
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    .line 111
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mGradientPaint:Landroid/graphics/Paint;

    .line 62
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLeftToRight:Z

    .line 64
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mOverScrollAmount:F

    .line 65
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    .line 66
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundAlpha:I

    .line 69
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    .line 74
    const/high16 v3, 0x3f80

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlphaMultiplier:F

    .line 76
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundRect:Landroid/graphics/Rect;

    .line 79
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundLightRect:Landroid/graphics/Rect;

    .line 85
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mWidgetLockedSmall:Z

    .line 86
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mMaxChallengeTop:I

    .line 150
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 567
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsReordering:Z

    .line 113
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 118
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    .line 119
    .local v0, density:F
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x4100

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 120
    .local v1, padding:I
    div-int/lit8 v3, v1, 0x2

    div-int/lit8 v4, v1, 0x2

    invoke-virtual {p0, v3, v1, v4, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setPadding(IIII)V

    .line 122
    const/high16 v3, 0x4000

    mul-float/2addr v3, v0

    float-to-int v3, v3

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    .line 126
    const v3, 0x1050077

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    .line 128
    const v3, 0x10804ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 130
    const v3, 0x108053e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundLightDrawable:Landroid/graphics/drawable/Drawable;

    .line 131
    const v3, 0x106004b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mGradientColor:I

    .line 132
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mGradientPaint:Landroid/graphics/Paint;

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->sAddBlendMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 133
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mPerformAppWidgetSizeUpdateOnBootComplete:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mPerformAppWidgetSizeUpdateOnBootComplete:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->performAppWidgetSizeCallbacksIfNecessary()V

    return-void
.end method

.method private drawGradientOverlay(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "c"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mGradientPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 238
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mGradientPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 239
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 240
    return-void
.end method

.method private drawHoveringOverDeleteOverlay(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter "c"

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsHoveringOverDeleteDropTarget:Z

    if-eqz v0, :cond_9

    .line 244
    const/high16 v0, -0x6601

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 246
    :cond_9
    return-void
.end method

.method private performAppWidgetSizeCallbacksIfNecessary()V
    .registers 10

    .prologue
    const/4 v6, 0x1

    .line 511
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v7

    .line 512
    .local v7, content:Landroid/view/View;
    instance-of v1, v7, Landroid/appwidget/AppWidgetHostView;

    if-nez v1, :cond_a

    .line 528
    :goto_9
    return-void

    .line 514
    :cond_a
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v1

    if-nez v1, :cond_19

    .line 515
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mPerformAppWidgetSizeUpdateOnBootComplete:Z

    goto :goto_9

    :cond_19
    move-object v0, v7

    .line 522
    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .line 523
    .local v0, awhv:Landroid/appwidget/AppWidgetHostView;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v8, v1, Landroid/util/DisplayMetrics;->density:F

    .line 525
    .local v8, density:F
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    float-to-int v2, v1

    .line 526
    .local v2, width:I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    float-to-int v3, v1

    .line 527
    .local v3, height:I
    const/4 v1, 0x0

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIIIZ)V

    goto :goto_9
.end method

.method private setWidgetHeight(I)V
    .registers 6
    .parameter "height"

    .prologue
    .line 368
    const/4 v1, 0x0

    .line 369
    .local v1, needLayout:Z
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v2

    .line 370
    .local v2, widget:Landroid/view/View;
    if-eqz v2, :cond_14

    .line 371
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 372
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, p1, :cond_14

    .line 373
    const/4 v1, 0x1

    .line 374
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 377
    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_14
    if-eqz v1, :cond_19

    .line 378
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->requestLayout()V

    .line 380
    :cond_19
    return-void
.end method

.method private updateGradient()V
    .registers 16

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 477
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLeftToRight:Z

    if-eqz v0, :cond_2f

    move v1, v2

    .line 478
    .local v1, x0:F
    :goto_7
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLeftToRight:Z

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    .line 479
    .local v3, x1:F
    :goto_12
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mGradientColor:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v4, v2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLeftToRightGradient:Landroid/graphics/LinearGradient;

    .line 481
    new-instance v7, Landroid/graphics/LinearGradient;

    iget v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mGradientColor:I

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v8, v3

    move v9, v2

    move v10, v1

    move v11, v2

    move v13, v6

    invoke-direct/range {v7 .. v14}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mRightToLeftGradient:Landroid/graphics/LinearGradient;

    .line 483
    return-void

    .line 477
    .end local v1           #x0:F
    .end local v3           #x1:F
    :cond_2f
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v1, v0

    goto :goto_7

    .restart local v1       #x0:F
    :cond_37
    move v3, v2

    .line 478
    goto :goto_12
.end method


# virtual methods
.method public adjustFrame(I)V
    .registers 4
    .parameter "challengeTop"

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getPaddingBottom()I

    move-result v1

    add-int v0, p1, v1

    .line 401
    .local v0, frameHeight:I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setFrameHeight(I)V

    .line 402
    return-void
.end method

.method public cancelLongPress()V
    .registers 2

    .prologue
    .line 231
    invoke-super {p0}, Landroid/widget/FrameLayout;->cancelLongPress()V

    .line 232
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;->cancelLongPress()V

    .line 233
    return-void
.end method

.method public disableHardwareLayers()V
    .registers 3

    .prologue
    .line 310
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setLayerType(ILandroid/graphics/Paint;)V

    .line 311
    return-void
.end method

.method public disableHardwareLayersForContent()V
    .registers 4

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v0

    .line 300
    .local v0, widget:Landroid/view/View;
    if-eqz v0, :cond_b

    .line 301
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 303
    :cond_b
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 270
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 272
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->drawBg(Landroid/graphics/Canvas;)V

    .line 273
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 274
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->drawGradientOverlay(Landroid/graphics/Canvas;)V

    .line 276
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->drawHoveringOverDeleteOverlay(Landroid/graphics/Canvas;)V

    .line 277
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 279
    return-void
.end method

.method protected drawBg(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter "canvas"

    .prologue
    const/high16 v4, 0x437f

    .line 249
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlpha:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3b

    .line 250
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 252
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlpha:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlphaMultiplier:F

    mul-float/2addr v2, v3

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 253
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 254
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 257
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsReordering:Z

    if-nez v2, :cond_3b

    .line 259
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundLightDrawable:Landroid/graphics/drawable/Drawable;

    .line 260
    .local v1, bgLight:Landroid/graphics/drawable/Drawable;
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlpha:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlphaMultiplier:F

    mul-float/2addr v2, v3

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 261
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundLightRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 262
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 265
    .end local v0           #bg:Landroid/graphics/drawable/Drawable;
    .end local v1           #bgLight:Landroid/graphics/drawable/Drawable;
    :cond_3b
    return-void
.end method

.method public enableHardwareLayers()V
    .registers 3

    .prologue
    .line 306
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setLayerType(ILandroid/graphics/Paint;)V

    .line 307
    return-void
.end method

.method public enableHardwareLayersForContent()V
    .registers 4

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v0

    .line 288
    .local v0, widget:Landroid/view/View;
    if-eqz v0, :cond_b

    .line 289
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 291
    :cond_b
    return-void
.end method

.method public fadeFrame(Ljava/lang/Object;ZFI)V
    .registers 10
    .parameter "caller"
    .parameter "takeControl"
    .parameter "alpha"
    .parameter "duration"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 458
    if-eqz p2, :cond_6

    .line 459
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBgAlphaController:Ljava/lang/Object;

    .line 462
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBgAlphaController:Ljava/lang/Object;

    if-eq v1, p1, :cond_f

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBgAlphaController:Ljava/lang/Object;

    if-eqz v1, :cond_f

    .line 474
    :goto_e
    return-void

    .line 466
    :cond_f
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    if-eqz v1, :cond_1b

    .line 467
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 468
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    .line 470
    :cond_1b
    const-string v1, "backgroundAlpha"

    new-array v2, v4, [F

    aput p3, v2, v3

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 471
    .local v0, bgAlpha:Landroid/animation/PropertyValuesHolder;
    new-array v1, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v3

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    .line 472
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    int-to-long v2, p4

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 473
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_e
.end method

.method public getBackgroundAlpha()F
    .registers 2

    .prologue
    .line 329
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlpha:F

    return v0
.end method

.method public getBackgroundAlphaMultiplier()F
    .registers 2

    .prologue
    .line 340
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlphaMultiplier:F

    return v0
.end method

.method public getContent()Landroid/view/View;
    .registers 2

    .prologue
    .line 314
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContentAlpha()F
    .registers 2

    .prologue
    .line 351
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mContentAlpha:F

    return v0
.end method

.method public getContentAppWidgetId()I
    .registers 3

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v0

    .line 319
    .local v0, content:Landroid/view/View;
    instance-of v1, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v1, :cond_f

    .line 320
    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .end local v0           #content:Landroid/view/View;
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v1

    .line 324
    :goto_e
    return v1

    .line 321
    .restart local v0       #content:Landroid/view/View;
    :cond_f
    instance-of v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;

    if-eqz v1, :cond_1a

    .line 322
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;

    .end local v0           #content:Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->getAppWidgetId()I

    move-result v1

    goto :goto_e

    .line 324
    .restart local v0       #content:Landroid/view/View;
    :cond_1a
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getSmallFrameHeight()I
    .registers 2

    .prologue
    .line 414
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallFrameHeight:I

    return v0
.end method

.method public getWorkerHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public hideFrame(Ljava/lang/Object;)V
    .registers 5
    .parameter "caller"

    .prologue
    .line 449
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x23f

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->fadeFrame(Ljava/lang/Object;ZFI)V

    .line 450
    return-void
.end method

.method public isSmall()Z
    .registers 2

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    return v0
.end method

.method public onActive(Z)V
    .registers 2
    .parameter "isActive"

    .prologue
    .line 547
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 146
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 148
    return-void
.end method

.method public onBouncerShowing(Z)V
    .registers 2
    .parameter "showing"

    .prologue
    .line 556
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 138
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 139
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->cancelLongPress()V

    .line 140
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 142
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "ev"

    .prologue
    const/4 v3, 0x0

    .line 172
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v0

    .line 174
    .local v0, appWidgetId:I
    if-nez v0, :cond_f

    .line 175
    const-string v1, "KeyguardWidgetFrame"

    const-string v2, "appWidgetId is invalid"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_e
    return v3

    .line 179
    :cond_f
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isContextualWidget(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 180
    const-string v1, "KeyguardWidgetFrame"

    const-string v2, "appWidgetId is in Contextual widget"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 185
    :cond_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_3a

    :pswitch_26
    goto :goto_e

    .line 187
    :pswitch_27
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;->postCheckForLongPress(Landroid/view/MotionEvent;)V

    goto :goto_e

    .line 190
    :pswitch_2d
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;->onMove(Landroid/view/MotionEvent;)V

    goto :goto_e

    .line 195
    :pswitch_33
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_e

    .line 185
    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_27
        :pswitch_33
        :pswitch_2d
        :pswitch_33
        :pswitch_26
        :pswitch_33
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .registers 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 506
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 507
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->performAppWidgetSizeCallbacksIfNecessary()V

    .line 508
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 12
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v6, 0x0

    .line 487
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 489
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    if-nez v0, :cond_a

    .line 490
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    .line 495
    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 498
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 500
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundLightRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundLightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 501
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->updateGradient()V

    .line 502
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->invalidate()V

    .line 503
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 220
    :goto_7
    :pswitch_7
    const/4 v0, 0x1

    return v0

    .line 209
    :pswitch_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;->onMove(Landroid/view/MotionEvent;)V

    goto :goto_7

    .line 214
    :pswitch_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_7

    .line 207
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_f
        :pswitch_9
        :pswitch_f
        :pswitch_7
        :pswitch_f
    .end packed-switch
.end method

.method public onUserInteraction(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 551
    const/4 v0, 0x0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2
    .parameter "disallowIntercept"

    .prologue
    .line 225
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 226
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->cancelLongPress()V

    .line 227
    return-void
.end method

.method public resetSize()V
    .registers 2

    .prologue
    .line 429
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    .line 430
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mWidgetLockedSmall:Z

    if-nez v0, :cond_b

    .line 431
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setWidgetHeight(I)V

    .line 433
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setFrameHeight(I)V

    .line 434
    return-void
.end method

.method public setBackgroundAlpha(F)V
    .registers 3
    .parameter "alpha"

    .prologue
    .line 344
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlpha:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_d

    .line 345
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlpha:F

    .line 346
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->invalidate()V

    .line 348
    :cond_d
    return-void
.end method

.method public setBackgroundAlphaMultiplier(F)V
    .registers 3
    .parameter "multiplier"

    .prologue
    .line 333
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlphaMultiplier:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_d

    .line 334
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlphaMultiplier:F

    .line 335
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->invalidate()V

    .line 337
    :cond_d
    return-void
.end method

.method public setContentAlpha(F)V
    .registers 3
    .parameter "alpha"

    .prologue
    .line 355
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mContentAlpha:F

    .line 356
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v0

    .line 357
    .local v0, content:Landroid/view/View;
    if-eqz v0, :cond_b

    .line 358
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 360
    :cond_b
    return-void
.end method

.method public setFrameHeight(I)V
    .registers 9
    .parameter "height"

    .prologue
    const/4 v6, 0x0

    .line 437
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    .line 438
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 439
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 443
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundLightRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundLightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 444
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->updateGradient()V

    .line 445
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->invalidate()V

    .line 446
    return-void
.end method

.method setIsHoveringOverDeleteDropTarget(Z)V
    .registers 3
    .parameter "isHovering"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsHoveringOverDeleteDropTarget:Z

    if-eq v0, p1, :cond_9

    .line 164
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsHoveringOverDeleteDropTarget:Z

    .line 165
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->invalidate()V

    .line 168
    :cond_9
    return-void
.end method

.method public setIsReordering(Z)V
    .registers 2
    .parameter "isReordering"

    .prologue
    .line 570
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsReordering:Z

    .line 571
    return-void
.end method

.method public setMaxChallengeTop(I)V
    .registers 4
    .parameter "top"

    .prologue
    .line 383
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mMaxChallengeTop:I

    if-eq v1, p1, :cond_27

    const/4 v0, 0x1

    .line 384
    .local v0, dirty:Z
    :goto_5
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mMaxChallengeTop:I

    .line 385
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getPaddingTop()I

    move-result v1

    sub-int v1, p1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    .line 386
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallFrameHeight:I

    .line 387
    if-eqz v0, :cond_29

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    if-eqz v1, :cond_29

    .line 388
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setWidgetHeight(I)V

    .line 389
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallFrameHeight:I

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setFrameHeight(I)V

    .line 393
    :cond_26
    :goto_26
    return-void

    .line 383
    .end local v0           #dirty:Z
    :cond_27
    const/4 v0, 0x0

    goto :goto_5

    .line 390
    .restart local v0       #dirty:Z
    :cond_29
    if-eqz v0, :cond_26

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mWidgetLockedSmall:Z

    if-eqz v1, :cond_26

    .line 391
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setWidgetHeight(I)V

    goto :goto_26
.end method

.method setOverScrollAmount(FZ)V
    .registers 6
    .parameter "r"
    .parameter "left"

    .prologue
    .line 531
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mOverScrollAmount:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_30

    .line 532
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mOverScrollAmount:F

    .line 533
    if-eqz p2, :cond_31

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLeftToRightGradient:Landroid/graphics/LinearGradient;

    :goto_e
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundGradient:Landroid/graphics/LinearGradient;

    .line 534
    const/high16 v1, 0x3f00

    mul-float/2addr v1, p1

    const/high16 v2, 0x437f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundAlpha:I

    .line 538
    const v1, 0x3f19999a

    const v2, 0x3ecccccc

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    const/high16 v2, 0x3f80

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 540
    .local v0, bgAlpha:F
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setBackgroundAlpha(F)V

    .line 541
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->invalidate()V

    .line 543
    .end local v0           #bgAlpha:F
    :cond_30
    return-void

    .line 533
    :cond_31
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mRightToLeftGradient:Landroid/graphics/LinearGradient;

    goto :goto_e
.end method

.method public setWidgetLockedSmall(Z)V
    .registers 3
    .parameter "locked"

    .prologue
    .line 422
    if-eqz p1, :cond_7

    .line 423
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setWidgetHeight(I)V

    .line 425
    :cond_7
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mWidgetLockedSmall:Z

    .line 426
    return-void
.end method

.method public setWorkerHandler(Landroid/os/Handler;)V
    .registers 2
    .parameter "workerHandler"

    .prologue
    .line 559
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mWorkerHandler:Landroid/os/Handler;

    .line 560
    return-void
.end method

.method public showFrame(Ljava/lang/Object;)V
    .registers 5
    .parameter "caller"

    .prologue
    .line 453
    const/4 v0, 0x1

    const v1, 0x3f19999a

    const/16 v2, 0x64

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->fadeFrame(Ljava/lang/Object;ZFI)V

    .line 455
    return-void
.end method

.method public shrinkWidget()V
    .registers 2

    .prologue
    .line 418
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->shrinkWidget(Z)V

    .line 419
    return-void
.end method

.method public shrinkWidget(Z)V
    .registers 3
    .parameter "alsoShrinkFrame"

    .prologue
    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    .line 406
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setWidgetHeight(I)V

    .line 408
    if-eqz p1, :cond_f

    .line 409
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallFrameHeight:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setFrameHeight(I)V

    .line 411
    :cond_f
    return-void
.end method
