.class public Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;
.super Landroid/widget/FrameLayout;
.source "CircleUnlockView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$SineEaseInOut;,
        Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$QuintEaseInOut;,
        Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$QuintEaseOut;,
        Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$CubicEaseInOut;
    }
.end annotation


# static fields
.field private static sCircleUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;


# instance fields
.field private final ARR0W_FADE_IN_OFFSET:I

.field private final ARR0W_FADE_OUT_OFFSET:I

.field private final ARROW_FADE_IN_DURATION:I

.field private final ARROW_FADE_OUT_DURATION:I

.field private final CIRCLE_CENTER_DOWN_DURATION:I

.field private final CIRCLE_CENTER_UP_DURATION:I

.field private final CIRCLE_LOOP_DURATION:I

.field private final CIRCLE_MAX_ALPHA:I

.field private final CIRCLE_OUT_DURATION:I

.field private final FIRST_MOVE_DURATION:I

.field private final INIT_ANGLE_CIRCLE_1:I

.field private final INIT_ANGLE_CIRCLE_2:I

.field private final INIT_ANGLE_CIRCLE_3:I

.field private final LOOP_HANDLER_WHAT:I

.field private final SHORT_TAP_FIRST_DURATION:I

.field private final SHORT_TAP_FIRST_STARTOFF:I

.field private final SHORT_TAP_SECOND_DURATION:I

.field private final SHORT_TAP_SECOND_STARTOFF:I

.field protected TAG:Ljava/lang/String;

.field protected final UNLOCK_DRAG_THRESHOLD:D

.field protected final UNLOCK_RELEASE_THRESHOLD:D

.field private affordancePoint:Landroid/graphics/Point;

.field private affordanceRunnable:Ljava/lang/Runnable;

.field private arrow:Landroid/widget/ImageView;

.field private arrowContainer:Landroid/widget/LinearLayout;

.field private arrowFadeIn:Landroid/view/animation/AlphaAnimation;

.field private arrowFadeOut:Landroid/view/animation/AlphaAnimation;

.field private arrowFadeSet:Landroid/view/animation/AnimationSet;

.field private circleAlphaIn1:Landroid/animation/ObjectAnimator;

.field private circleAlphaIn2:Landroid/animation/ObjectAnimator;

.field private circleAlphaIn3:Landroid/animation/ObjectAnimator;

.field private circleAlphaOut1:Landroid/animation/ObjectAnimator;

.field private circleAlphaOut2:Landroid/animation/ObjectAnimator;

.field private circleAlphaOut3:Landroid/animation/ObjectAnimator;

.field private circleSet1:Landroid/animation/AnimatorSet;

.field private circleSet2:Landroid/animation/AnimatorSet;

.field private circleSet3:Landroid/animation/AnimatorSet;

.field private circleUpSet:Landroid/animation/AnimatorSet;

.field private circle_1:Landroid/widget/ImageView;

.field private circle_2:Landroid/widget/ImageView;

.field private circle_3:Landroid/widget/ImageView;

.field private firstMoveSet:Landroid/animation/AnimatorSet;

.field private isAffordanceLoop:Z

.field private isAnimationOn:Z

.field private isIgnoreTouch:Z

.field private isPlayAffordance:Z

.field protected lpFrame:Landroid/widget/FrameLayout$LayoutParams;

.field private mCircleCenter:Landroid/widget/ImageView;

.field private mCircleCenterAlphaAnimDown:Landroid/view/animation/AlphaAnimation;

.field private mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;

.field private mCircleInPress:Landroid/widget/ImageView;

.field protected mCircleMain:Landroid/widget/FrameLayout;

.field protected mCircleRoot:Landroid/widget/RelativeLayout;

.field private final mContext:Landroid/content/Context;

.field private mDistanceRatio:D

.field private mDownFirst:Z

.field private mHandlerForRepeat:Landroid/os/Handler;

.field protected mX:F

.field protected mY:F

.field private originalCircleX:F

.field private originalCircleY:F

.field private radian:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    const/16 v7, 0x258

    const/16 v6, 0x12c

    const/16 v5, 0x10b

    const/16 v4, 0x320

    const/4 v3, 0x0

    .line 175
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 50
    const-string v1, "CircleLockScreen"

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->TAG:Ljava/lang/String;

    .line 54
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->CIRCLE_MAX_ALPHA:I

    .line 56
    const-wide v1, 0x3fe99999a0000000L

    iput-wide v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->UNLOCK_RELEASE_THRESHOLD:D

    .line 58
    const-wide v1, 0x3ff4ccccc0000000L

    iput-wide v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->UNLOCK_DRAG_THRESHOLD:D

    .line 68
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->ARROW_FADE_IN_DURATION:I

    .line 70
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->ARROW_FADE_OUT_DURATION:I

    .line 72
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->ARR0W_FADE_IN_OFFSET:I

    .line 74
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->ARR0W_FADE_OUT_OFFSET:I

    .line 76
    const/16 v1, 0x52

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->INIT_ANGLE_CIRCLE_1:I

    .line 78
    const/16 v1, 0x139

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->INIT_ANGLE_CIRCLE_2:I

    .line 80
    const/16 v1, 0x41

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->INIT_ANGLE_CIRCLE_3:I

    .line 82
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->CIRCLE_CENTER_DOWN_DURATION:I

    .line 84
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->CIRCLE_CENTER_UP_DURATION:I

    .line 86
    const/16 v1, 0xc8

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->SHORT_TAP_FIRST_DURATION:I

    .line 88
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->SHORT_TAP_FIRST_STARTOFF:I

    .line 90
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->SHORT_TAP_SECOND_DURATION:I

    .line 92
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->SHORT_TAP_SECOND_STARTOFF:I

    .line 94
    const/16 v1, 0x514

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->CIRCLE_LOOP_DURATION:I

    .line 96
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->CIRCLE_OUT_DURATION:I

    .line 98
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->FIRST_MOVE_DURATION:I

    .line 100
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->LOOP_HANDLER_WHAT:I

    .line 160
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mDownFirst:Z

    .line 162
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->isIgnoreTouch:Z

    .line 164
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->isAnimationOn:Z

    .line 166
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->affordancePoint:Landroid/graphics/Point;

    .line 170
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->isPlayAffordance:Z

    .line 176
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mContext:Landroid/content/Context;

    .line 177
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 178
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x109005f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 180
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->setLayout()V

    .line 181
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->setHandler()V

    .line 182
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->setAnimation()V

    .line 183
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->isAffordanceLoop:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->isAffordanceLoop:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->isAnimationOn:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->playUnlockAffordance()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->isAnimationOn:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->isPlayAffordance:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->affordanceRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleInPress:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->arrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->arrowContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;)Landroid/view/animation/AlphaAnimation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;)Landroid/animation/AnimatorSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleUpSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->startCircleAnimation()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;)Landroid/view/animation/AnimationSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method private clearAllViews()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 711
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->clearCircleAnimation()V

    .line 712
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->arrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 713
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleInPress:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 714
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 715
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 716
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 717
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 718
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 719
    return-void
.end method

.method private createArrowAnimation()V
    .registers 8

    .prologue
    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    const-wide/16 v3, 0x320

    .line 287
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->arrowFadeIn:Landroid/view/animation/AlphaAnimation;

    .line 288
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->arrowFadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 289
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->arrowFadeIn:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 291
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->arrowFadeOut:Landroid/view/animation/AlphaAnimation;

    .line 292
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->arrowFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 293
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->arrowFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 295
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    .line 296
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->arrowFadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 297
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->arrowFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 299
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 314
    return-void
.end method

.method private createCircleAnimation()V
    .registers 14

    .prologue
    const-wide/16 v11, 0x12c

    const-wide/16 v9, 0xc8

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 238
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_14c

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleAlphaIn1:Landroid/animation/ObjectAnimator;

    .line 239
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleAlphaIn1:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 240
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleAlphaIn1:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 241
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_154

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleAlphaOut1:Landroid/animation/ObjectAnimator;

    .line 242
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleAlphaOut1:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 243
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleAlphaOut1:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 245
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleSet1:Landroid/animation/AnimatorSet;

    .line 246
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleSet1:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleAlphaIn1:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleAlphaOut1:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 248
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_15c

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleAlphaIn2:Landroid/animation/ObjectAnimator;

    .line 249
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleAlphaIn2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 250
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleAlphaIn2:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 251
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_164

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleAlphaOut2:Landroid/animation/ObjectAnimator;

    .line 252
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleAlphaOut2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 253
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleAlphaOut2:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 255
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleSet2:Landroid/animation/AnimatorSet;

    .line 256
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleSet2:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleAlphaIn2:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleAlphaOut2:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 257
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleSet2:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v9, v10}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 259
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_16c

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleAlphaIn3:Landroid/animation/ObjectAnimator;

    .line 260
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleAlphaIn3:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 261
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleAlphaIn3:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 262
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_174

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleAlphaOut3:Landroid/animation/ObjectAnimator;

    .line 263
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleAlphaOut3:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 264
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleAlphaOut3:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 266
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleSet3:Landroid/animation/AnimatorSet;

    .line 267
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleSet3:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleAlphaIn3:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleAlphaOut3:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 268
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleSet3:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 270
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleUpSet:Landroid/animation/AnimatorSet;

    .line 271
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleUpSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    const-string v3, "alpha"

    new-array v4, v8, [F

    const/4 v5, 0x0

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x190

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    const-string v3, "alpha"

    new-array v4, v8, [F

    const/4 v5, 0x0

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    const-string v3, "alpha"

    new-array v4, v8, [F

    const/4 v5, 0x0

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 277
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleUpSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$QuintEaseOut;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$QuintEaseOut;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 278
    return-void

    .line 238
    :array_14c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 241
    :array_154
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 248
    :array_15c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 251
    :array_164
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 259
    :array_16c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 262
    :array_174
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private createCircleCenterAnimation()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x10b

    const/4 v3, 0x1

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 228
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleCenterAlphaAnimDown:Landroid/view/animation/AlphaAnimation;

    .line 229
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleCenterAlphaAnimDown:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 230
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleCenterAlphaAnimDown:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 232
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;

    .line 233
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 234
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 235
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;
    .registers 2
    .parameter "context"

    .prologue
    .line 281
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->sCircleUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;

    if-nez v0, :cond_b

    .line 282
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->sCircleUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;

    .line 283
    :cond_b
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->sCircleUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;

    return-object v0
.end method

.method private getUnlockscreenLockImageIdAt(D)I
    .registers 7
    .parameter "value"

    .prologue
    .line 552
    const/16 v2, 0x1c

    new-array v1, v2, [I

    fill-array-data v1, :array_26

    .line 569
    .local v1, unlockscreen_lock_drawables:[I
    const-wide v2, 0x3fb999999999999aL

    cmpg-double v2, p1, v2

    if-gez v2, :cond_14

    .line 570
    const/4 v0, 0x0

    .line 576
    .local v0, index:I
    :goto_11
    aget v2, v1, v0

    return v2

    .line 571
    .end local v0           #index:I
    :cond_14
    const-wide/high16 v2, 0x3ff0

    cmpl-double v2, p1, v2

    if-ltz v2, :cond_1e

    .line 572
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .restart local v0       #index:I
    goto :goto_11

    .line 574
    .end local v0           #index:I
    :cond_1e
    array-length v2, v1

    int-to-double v2, v2

    mul-double/2addr v2, p1

    double-to-int v2, v2

    add-int/lit8 v0, v2, -0x1

    .restart local v0       #index:I
    goto :goto_11

    .line 552
    nop

    :array_26
    .array-data 0x4
        0xa4t 0x4t 0x8t 0x1t
        0xa5t 0x4t 0x8t 0x1t
        0xa6t 0x4t 0x8t 0x1t
        0xa7t 0x4t 0x8t 0x1t
        0xa8t 0x4t 0x8t 0x1t
        0xa9t 0x4t 0x8t 0x1t
        0xaat 0x4t 0x8t 0x1t
        0xabt 0x4t 0x8t 0x1t
        0xact 0x4t 0x8t 0x1t
        0xadt 0x4t 0x8t 0x1t
        0xaet 0x4t 0x8t 0x1t
        0xaft 0x4t 0x8t 0x1t
        0xb0t 0x4t 0x8t 0x1t
        0xb1t 0x4t 0x8t 0x1t
        0xb2t 0x4t 0x8t 0x1t
        0xb3t 0x4t 0x8t 0x1t
        0xb4t 0x4t 0x8t 0x1t
        0xb5t 0x4t 0x8t 0x1t
        0xb6t 0x4t 0x8t 0x1t
        0xb7t 0x4t 0x8t 0x1t
        0xb8t 0x4t 0x8t 0x1t
        0xb9t 0x4t 0x8t 0x1t
        0xbat 0x4t 0x8t 0x1t
        0xbbt 0x4t 0x8t 0x1t
        0xbct 0x4t 0x8t 0x1t
        0xbdt 0x4t 0x8t 0x1t
        0xbet 0x4t 0x8t 0x1t
        0xbft 0x4t 0x8t 0x1t
    .end array-data
.end method

.method private playUnlockAffordance()V
    .registers 11

    .prologue
    const/16 v9, 0xff

    .line 748
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->TAG:Ljava/lang/String;

    const-string v8, "-------------------------------- affordance"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->isAffordanceLoop:Z

    .line 752
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->clearAllViews()V

    .line 753
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->stopUnlockAffordance()V

    .line 755
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleInPress:Landroid/widget/ImageView;

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 756
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 759
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 760
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 761
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleCenterAlphaAnimDown:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 764
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->affordancePoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mX:F

    .line 765
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->affordancePoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mY:F

    .line 767
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mX:F

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->originalCircleX:F

    .line 768
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mY:F

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->originalCircleY:F

    .line 773
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->affordancePoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v3, v7

    .line 774
    .local v3, touchedEventX:F
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->affordancePoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v4, v7

    .line 776
    .local v4, touchedEventY:F
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "----------------------"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->originalCircleX:F

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v5, v7

    .line 779
    .local v5, xOffset:I
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->originalCircleY:F

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v6, v7

    .line 782
    .local v6, yOffset:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->setCenterImage(Landroid/view/View;)V

    .line 785
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 786
    .local v1, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int v2, v7, v5

    .line 787
    .local v2, rightMargin:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int v0, v7, v6

    .line 788
    .local v0, bottomMargin:I
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 789
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 790
    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 791
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 792
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 794
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->arrowContainer:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 795
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->startCircleAnimation()V

    .line 796
    return-void
.end method

.method private setAnimation()V
    .registers 1

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->createCircleCenterAnimation()V

    .line 223
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->createCircleAnimation()V

    .line 224
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->createArrowAnimation()V

    .line 225
    return-void
.end method

.method private setHandler()V
    .registers 2

    .prologue
    .line 198
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mHandlerForRepeat:Landroid/os/Handler;

    .line 219
    return-void
.end method

.method private setInnerCircle(Landroid/view/View;D)V
    .registers 7
    .parameter "v"
    .parameter "value"

    .prologue
    .line 317
    const-wide v1, 0x406fe00000000000L

    mul-double/2addr v1, p2

    double-to-int v0, v1

    .line 318
    .local v0, alpha:I
    const/16 v1, 0xff

    if-le v0, v1, :cond_17

    const/4 v0, 0x0

    .line 319
    :goto_c
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleInPress:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 320
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 321
    return-void

    .line 318
    :cond_17
    rsub-int v0, v0, 0xff

    goto :goto_c
.end method

.method private startCircleAnimation()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 580
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 581
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 582
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 583
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 584
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 585
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 587
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleSet1:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 588
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleSet2:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 589
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleSet3:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 591
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mHandlerForRepeat:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x514

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 592
    return-void
.end method

.method private stopUnlockAffordance()V
    .registers 2

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->affordanceRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 800
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->affordanceRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 801
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->affordanceRunnable:Ljava/lang/Runnable;

    .line 803
    :cond_c
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 2

    .prologue
    .line 687
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->clearAllViews()V

    .line 688
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->isPlayAffordance:Z

    .line 689
    return-void
.end method

.method public clearCircleAnimation()V
    .registers 3

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleAlphaIn1:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 596
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleAlphaOut1:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 597
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleAlphaIn2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 598
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleAlphaOut2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 599
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleAlphaIn3:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 600
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleAlphaOut3:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 602
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleSet1:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 603
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleSet2:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 604
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleSet3:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 605
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleUpSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 607
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3b

    .line 608
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 609
    :cond_3b
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mHandlerForRepeat:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 610
    return-void
.end method

.method public getUnlockDelay()J
    .registers 3

    .prologue
    .line 707
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 723
    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 41
    .parameter "view"
    .parameter "event"

    .prologue
    .line 339
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->isIgnoreTouch:Z

    move/from16 v30, v0

    if-eqz v30, :cond_1f

    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1c

    .line 341
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->isIgnoreTouch:Z

    .line 343
    :cond_1c
    const/16 v30, 0x0

    .line 529
    :goto_1e
    return v30

    .line 346
    :cond_1f
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->isAnimationOn:Z

    .line 351
    const/16 v30, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v26

    .line 352
    .local v26, touchedEventX:F
    const/16 v30, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    .line 355
    .local v27, touchedEventY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    if-nez v30, :cond_51

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, "Occured Divided by zero Exception caused by mCircleMain-Null"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/16 v30, 0x0

    goto :goto_1e

    .line 358
    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v30

    if-nez v30, :cond_6b

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, "Occured Divided by zero Exception caused by mCircleMain.getHeight() == 0"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/16 v30, 0x0

    goto :goto_1e

    .line 362
    :cond_6b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v30

    if-nez v30, :cond_85

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, "Occured Divided by zero Exception caused by mCircleMain.getWidth() == 0"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/16 v30, 0x0

    goto :goto_1e

    .line 368
    :cond_85
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v30

    packed-switch v30, :pswitch_data_556

    .line 529
    :cond_8c
    :goto_8c
    :pswitch_8c
    const/16 v30, 0x1

    goto :goto_1e

    .line 372
    :pswitch_8f
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->clearAllViews()V

    .line 373
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->stopUnlockAffordance()V

    .line 374
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->isAffordanceLoop:Z

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleInPress:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    const/16 v31, 0xff

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->arrow:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    const/16 v31, 0xff

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 379
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mDownFirst:Z

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleCenterAlphaAnimDown:Landroid/view/animation/AlphaAnimation;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 387
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mX:F

    .line 388
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mY:F

    .line 390
    if-eqz p1, :cond_1bc

    .line 391
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->originalCircleX:F

    move/from16 v30, v0

    sub-float v30, v30, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v30, v30, v31

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v28, v0

    .line 393
    .local v28, xOffset:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->originalCircleY:F

    move/from16 v30, v0

    sub-float v30, v30, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v30, v30, v31

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v29, v0

    .line 401
    .local v29, yOffset:I
    :goto_146
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->setCenterImage(Landroid/view/View;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout$LayoutParams;

    .line 406
    .local v16, lp:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v31

    sub-int v30, v30, v31

    sub-int v20, v30, v28

    .line 408
    .local v20, rightMargin:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v31

    sub-int v30, v30, v31

    sub-int v8, v30, v29

    .line 410
    .local v8, bottomMargin:I
    move/from16 v0, v28

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 411
    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 412
    move/from16 v0, v29

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 413
    move-object/from16 v0, v16

    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->arrowContainer:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 417
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->startCircleAnimation()V

    goto/16 :goto_8c

    .line 396
    .end local v8           #bottomMargin:I
    .end local v16           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v20           #rightMargin:I
    .end local v28           #xOffset:I
    .end local v29           #yOffset:I
    :cond_1bc
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->originalCircleX:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v28, v0

    .line 397
    .restart local v28       #xOffset:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->originalCircleY:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v29, v0

    .restart local v29       #yOffset:I
    goto/16 :goto_146

    .line 422
    .end local v28           #xOffset:I
    .end local v29           #yOffset:I
    :pswitch_1fa
    const/4 v10, 0x0

    .line 423
    .local v10, diffX:I
    const/4 v11, 0x0

    .line 424
    .local v11, diffY:I
    if-eqz p1, :cond_2c9

    .line 427
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    div-int/lit8 v17, v30, 0x2

    .line 428
    .local v17, mCircleCenterX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v30

    div-int/lit8 v18, v30, 0x2

    .line 429
    .local v18, mCircleCenterY:I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v30, v26, v30

    move/from16 v0, v30

    float-to-int v10, v0

    .line 430
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v30, v27, v30

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v31

    mul-int v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v31

    div-int v11, v30, v31

    .line 441
    .end local v17           #mCircleCenterX:I
    .end local v18           #mCircleCenterY:I
    :goto_238
    int-to-double v0, v10

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x4000

    invoke-static/range {v30 .. v33}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v30

    int-to-double v0, v11

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x4000

    invoke-static/range {v32 .. v35}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v32

    add-double v14, v30, v32

    .line 442
    .local v14, distance_square:D
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    .line 443
    .local v12, distance:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_2fb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v19

    .line 445
    .local v19, min:I
    :goto_274
    div-int/lit8 v30, v19, 0x2

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v24, v0

    .line 446
    .local v24, threshold:D
    div-double v30, v12, v24

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mDistanceRatio:D

    .line 452
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->setCenterImage(Landroid/view/View;D)V

    .line 453
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->setInnerCircle(Landroid/view/View;D)V

    .line 455
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v30, v0

    const-wide v32, 0x3fc999999999999aL

    cmpg-double v30, v30, v32

    if-gez v30, :cond_307

    .line 456
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mDownFirst:Z

    .line 501
    :cond_2b8
    :goto_2b8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v30, v0

    const-wide v32, 0x3ff4ccccc0000000L

    cmpl-double v30, v30, v32

    if-ltz v30, :cond_8c

    goto/16 :goto_8c

    .line 436
    .end local v12           #distance:D
    .end local v14           #distance_square:D
    .end local v19           #min:I
    .end local v24           #threshold:D
    :cond_2c9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mX:F

    move/from16 v30, v0

    sub-float v30, v26, v30

    move/from16 v0, v30

    float-to-int v10, v0

    .line 437
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mY:F

    move/from16 v30, v0

    sub-float v30, v27, v30

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v31

    mul-int v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v31

    div-int v11, v30, v31

    goto/16 :goto_238

    .line 443
    .restart local v12       #distance:D
    .restart local v14       #distance_square:D
    :cond_2fb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v19

    goto/16 :goto_274

    .line 458
    .restart local v19       #min:I
    .restart local v24       #threshold:D
    :cond_307
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v30, v0

    const-wide v32, 0x3fc999999999999aL

    cmpl-double v30, v30, v32

    if-lez v30, :cond_4c4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v30, v0

    const-wide v32, 0x3ff4ccccc0000000L

    cmpg-double v30, v30, v32

    if-gez v30, :cond_4c4

    .line 459
    int-to-double v4, v10

    .line 460
    .local v4, absX:D
    mul-int/lit8 v30, v11, -0x1

    move/from16 v0, v30

    int-to-double v6, v0

    .line 461
    .local v6, absY:D
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->radian:D

    .line 462
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->radian:D

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    neg-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x400921fb54442d18L

    div-double v30, v30, v32

    const-wide v32, 0x4066800000000000L

    mul-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    const/high16 v31, 0x42b4

    add-float v9, v30, v31

    .line 463
    .local v9, degree:F
    const/high16 v30, 0x42a4

    sub-float v21, v9, v30

    .line 464
    .local v21, targetDegree1:F
    const v30, 0x439c8000

    sub-float v22, v9, v30

    .line 465
    .local v22, targetDegree2:F
    const/high16 v30, 0x4282

    sub-float v23, v9, v30

    .line 467
    .local v23, targetDegree3:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mDownFirst:Z

    move/from16 v30, v0

    if-eqz v30, :cond_487

    .line 468
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mDownFirst:Z

    .line 470
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->clearCircleAnimation()V

    .line 472
    const/16 v30, 0x0

    cmpg-float v30, v21, v30

    if-gez v30, :cond_381

    .line 473
    const/high16 v30, 0x43b4

    add-float v21, v21, v30

    .line 474
    :cond_381
    const/16 v30, 0x0

    cmpg-float v30, v22, v30

    if-gez v30, :cond_38b

    .line 475
    const/high16 v30, 0x43b4

    add-float v22, v22, v30

    .line 476
    :cond_38b
    const/16 v30, 0x0

    cmpg-float v30, v23, v30

    if-gez v30, :cond_395

    .line 477
    const/high16 v30, 0x43b4

    add-float v23, v23, v30

    .line 479
    :cond_395
    new-instance v30, Landroid/animation/AnimatorSet;

    invoke-direct/range {v30 .. v30}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v30, v0

    const/16 v31, 0x6

    move/from16 v0, v31

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    const-string v34, "alpha"

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const v37, 0x3e99999a

    aput v37, v35, v36

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    const-string v34, "rotation"

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput v21, v35, v36

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    const-string v34, "alpha"

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const/high16 v37, 0x3f00

    aput v37, v35, v36

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    const-string v34, "rotation"

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput v22, v35, v36

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    const-string v34, "alpha"

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const v37, 0x3f333333

    aput v37, v35, v36

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    const-string v34, "rotation"

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput v23, v35, v36

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-virtual/range {v30 .. v31}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v30, v0

    const-wide/16 v31, 0x258

    invoke-virtual/range {v30 .. v32}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v30, v0

    new-instance v31, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$CubicEaseInOut;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$CubicEaseInOut;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;)V

    invoke-virtual/range {v30 .. v31}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/animation/AnimatorSet;->start()V

    .line 491
    :cond_487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2b8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v30

    if-nez v30, :cond_2b8

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    goto/16 :goto_2b8

    .line 497
    .end local v4           #absX:D
    .end local v6           #absY:D
    .end local v9           #degree:F
    .end local v21           #targetDegree1:F
    .end local v22           #targetDegree2:F
    .end local v23           #targetDegree3:F
    :cond_4c4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v30, v0

    const-wide v32, 0x3ff4ccccc0000000L

    cmpl-double v30, v30, v32

    if-ltz v30, :cond_2b8

    .line 498
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mDownFirst:Z

    goto/16 :goto_2b8

    .line 506
    .end local v10           #diffX:I
    .end local v11           #diffY:I
    .end local v12           #distance:D
    .end local v14           #distance_square:D
    .end local v19           #min:I
    .end local v24           #threshold:D
    :pswitch_4dd
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->isIgnoreTouch:Z

    .line 512
    :pswitch_4e5
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->isAnimationOn:Z

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleInPress:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->arrow:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->arrowContainer:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 519
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->clearCircleAnimation()V

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleUpSet:Landroid/animation/AnimatorSet;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/animation/AnimatorSet;->start()V

    .line 523
    const-wide v30, 0x3fe99999a0000000L

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v32, v0

    cmpg-double v30, v30, v32

    if-gtz v30, :cond_545

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v30, v0

    const-wide v32, 0x3ff4ccccc0000000L

    cmpg-double v30, v30, v32

    if-ltz v30, :cond_8c

    .line 525
    :cond_545
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v30, v0

    const-wide v32, 0x3fe99999a0000000L

    cmpg-double v30, v30, v32

    if-gez v30, :cond_8c

    goto/16 :goto_8c

    .line 368
    :pswitch_data_556
    .packed-switch 0x0
        :pswitch_8f
        :pswitch_4e5
        :pswitch_1fa
        :pswitch_4e5
        :pswitch_8c
        :pswitch_8c
        :pswitch_4dd
    .end packed-switch
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 3
    .parameter "view"
    .parameter "event"

    .prologue
    .line 676
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 326
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->originalCircleX:F

    .line 327
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->originalCircleY:F

    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->TAG:Ljava/lang/String;

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->clearAllViews()V

    .line 695
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->isPlayAffordance:Z

    .line 696
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->stopUnlockAffordance()V

    .line 697
    return-void
.end method

.method public screenTurnedOn()V
    .registers 3

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->TAG:Ljava/lang/String;

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->isPlayAffordance:Z

    .line 703
    return-void
.end method

.method public setCenterImage(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 536
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->setCenterImage(Landroid/view/View;D)V

    .line 537
    return-void
.end method

.method protected setCenterImage(Landroid/view/View;D)V
    .registers 7
    .parameter "v"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 540
    if-nez p1, :cond_d

    .line 542
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->getUnlockscreenLockImageIdAt(D)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 549
    :goto_c
    return-void

    .line 545
    :cond_d
    invoke-virtual {p1, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 546
    invoke-virtual {p1, v1}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 547
    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 548
    .local v0, bm:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_c
.end method

.method public setLayout()V
    .registers 2

    .prologue
    .line 186
    const v0, 0x1020303

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    .line 187
    const v0, 0x1020304

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    .line 188
    const v0, 0x1020305

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleInPress:Landroid/widget/ImageView;

    .line 189
    const v0, 0x1020306

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    .line 190
    const v0, 0x1020307

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    .line 191
    const v0, 0x1020308

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    .line 192
    const v0, 0x1020309

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    .line 193
    const v0, 0x102030b

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->arrow:Landroid/widget/ImageView;

    .line 194
    const v0, 0x102030a

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->arrowContainer:Landroid/widget/LinearLayout;

    .line 195
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 681
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->isPlayAffordance:Z

    .line 682
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .registers 8
    .parameter "startDelay"
    .parameter "rect"

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showUnlockAffordance : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", startDelay : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->isPlayAffordance:Z

    if-eqz v0, :cond_77

    .line 731
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->stopUnlockAffordance()V

    .line 732
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->affordancePoint:Landroid/graphics/Point;

    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 733
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->affordancePoint:Landroid/graphics/Point;

    iget v1, p3, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 735
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->affordanceRunnable:Ljava/lang/Runnable;

    .line 743
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->affordanceRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 745
    :cond_77
    return-void
.end method
