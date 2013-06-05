.class public abstract Lcom/android/internal/policy/impl/keyguard/PagedView;
.super Landroid/view/ViewGroup;
.source "PagedView.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;,
        Lcom/android/internal/policy/impl/keyguard/PagedView$SavedState;,
        Lcom/android/internal/policy/impl/keyguard/PagedView$ScrollInterpolator;,
        Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;
    }
.end annotation


# static fields
.field protected static final ALPHA_QUANTIZE_LEVEL:F = 1.0E-4f

.field static final AUTOMATIC_PAGE_SPACING:I = -0x1

.field private static final DEBUG:Z = false

.field private static final DISABLE_FLING_TO_DELETE:Z = false

.field private static final DISABLE_TOUCH_INTERACTION:Z = false

.field private static final DISABLE_TOUCH_SIDE_PAGES:Z = true

.field private static final FLING_THRESHOLD_VELOCITY:I = 0x1f4

.field protected static final INVALID_PAGE:I = -0x1

.field protected static final INVALID_POINTER:I = -0x1

.field private static final MIN_FLING_VELOCITY:I = 0xfa

.field private static final MIN_LENGTH_FOR_FLING:I = 0x19

.field private static final MIN_SNAP_VELOCITY:I = 0x5dc

.field protected static final NANOTIME_DIV:F = 1.0E9f

.field private static final OVERSCROLL_ACCELERATE_FACTOR:F = 2.0f

.field private static final OVERSCROLL_DAMP_FACTOR:F = 0.14f

.field protected static final PAGE_SNAP_ANIMATION_DURATION:I = 0x2ee

.field private static final RETURN_TO_ORIGINAL_PAGE_THRESHOLD:F = 0.33f

.field private static final SIGNIFICANT_MOVE_THRESHOLD:F = 0.4f

.field protected static final SLOW_PAGE_SNAP_ANIMATION_DURATION:I = 0x3b6

.field private static final TAG:Ljava/lang/String; = "WidgetPagedView"

.field protected static final TOUCH_STATE_NEXT_PAGE:I = 0x3

.field protected static final TOUCH_STATE_PREV_PAGE:I = 0x2

.field protected static final TOUCH_STATE_REORDERING:I = 0x4

.field protected static final TOUCH_STATE_REST:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1

.field protected static final sScrollIndicatorFadeInDuration:I = 0x96

.field protected static final sScrollIndicatorFadeOutDuration:I = 0x28a

.field protected static final sScrollIndicatorFlashDuration:I = 0x28a


# instance fields
.field private DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I

.field private DRAG_TO_DELETE_FADE_OUT_DURATION:I

.field private FLING_TO_DELETE_FADE_OUT_DURATION:I

.field private FLING_TO_DELETE_FRICTION:F

.field private FLING_TO_DELETE_MAX_FLING_DEGREES:F

.field private NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

.field private REORDERING_DELETE_DROP_TARGET_FADE_DURATION:J

.field private REORDERING_DROP_REPOSITION_DURATION:I

.field protected REORDERING_REORDER_REPOSITION_DURATION:I

.field private REORDERING_SIDE_PAGE_BUFFER_PERCENTAGE:F

.field private REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

.field protected REORDERING_ZOOM_IN_OUT_DURATION:I

.field hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

.field protected mActivePointerId:I

.field protected mAllowOverScroll:Z

.field private mAltTmpRect:Landroid/graphics/Rect;

.field protected mCellCountX:I

.field protected mCellCountY:I

.field protected mChildCountOnLastMeasure:I

.field private mChildOffsets:[I

.field private mChildOffsetsWithLayoutScale:[I

.field private mChildRelativeOffsets:[I

.field protected mContentIsRefreshable:Z

.field protected mCurrentPage:I

.field protected mDeferScrollUpdate:Z

.field private mDeferringForDelete:Z

.field private mDeleteDropTarget:Landroid/view/View;

.field protected mDensity:F

.field protected mDirtyPageContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDownEventOnEdge:Z

.field private mDownMotionX:F

.field private mDownMotionY:F

.field private mDownScrollX:F

.field protected mDragView:Landroid/view/View;

.field private mEdgeSwipeRegionSize:I

.field protected mFadeInAdjacentScreens:Z

.field protected mFirstLayout:Z

.field protected mFlingThresholdVelocity:I

.field protected mFlingToDeleteThresholdVelocity:I

.field protected mForceDrawAllChildrenNextFrame:Z

.field protected mForceScreenScrolled:Z

.field protected mIsDataReady:Z

.field protected mIsPageMoving:Z

.field private mIsReordering:Z

.field protected mLastMotionX:F

.field protected mLastMotionXRemainder:F

.field protected mLastMotionY:F

.field private mLastScreenCenter:I

.field protected mLayoutScale:F

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMaxScrollX:I

.field private mMaximumVelocity:I

.field protected mMinFlingVelocity:I

.field private mMinScale:F

.field protected mMinSnapVelocity:I

.field private mMinimumWidth:I

.field protected mNextPage:I

.field private mOnlyAllowEdgeSwipes:Z

.field protected mOverScrollX:I

.field protected mPageSpacing:I

.field private mPageSwitchListener:Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;

.field private mPagingTouchSlop:I

.field private mPagingTouchSlopScale:I

.field private mParentDownMotionX:F

.field private mParentDownMotionY:F

.field private mPostReorderingPreZoomInRemainingAnimationCount:I

.field private mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

.field private mReorderFocusView:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

.field private mReorderingStarted:Z

.field private mScrollIndicator:Landroid/view/View;

.field private mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

.field private mScrollIndicatorPaddingLeft:I

.field private mScrollIndicatorPaddingRight:I

.field protected mScroller:Landroid/widget/Scroller;

.field private mShouldShowScrollIndicator:Z

.field private mShouldShowScrollIndicatorImmediately:Z

.field private mSidePageHoverIndex:I

.field private mSidePageHoverRunnable:Ljava/lang/Runnable;

.field protected mSmoothingTime:F

.field protected mTempVisiblePagesRange:[I

.field private mTmpInvMatrix:Landroid/graphics/Matrix;

.field private mTmpPoint:[F

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTopAlignPageWhenShrinkingForBouncer:Z

.field protected mTotalMotionX:F

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mTouchX:F

.field protected mUnboundedScrollX:I

.field protected mUsePagingTouchSlop:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewport:Landroid/graphics/Rect;

.field protected mZoomInOutAnim:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 268
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 271
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 272
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v8, 0x3f80

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 275
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mFirstLayout:Z

    .line 111
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    .line 125
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastScreenCenter:I

    .line 138
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    .line 139
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 149
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCellCountX:I

    .line 150
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCellCountY:I

    .line 151
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAllowOverScroll:Z

    .line 153
    new-array v2, v7, [I

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    .line 162
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLayoutScale:F

    .line 166
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mActivePointerId:I

    .line 173
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mContentIsRefreshable:Z

    .line 176
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mFadeInAdjacentScreens:Z

    .line 180
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mUsePagingTouchSlop:Z

    .line 184
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeferScrollUpdate:Z

    .line 186
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsPageMoving:Z

    .line 189
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsDataReady:Z

    .line 196
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mShouldShowScrollIndicator:Z

    .line 197
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    .line 204
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    .line 209
    const/16 v2, 0xc8

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_DROP_REPOSITION_DURATION:I

    .line 210
    const/16 v2, 0x12c

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_REORDER_REPOSITION_DURATION:I

    .line 211
    const/16 v2, 0xfa

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_ZOOM_IN_OUT_DURATION:I

    .line 212
    const/16 v2, 0x12c

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

    .line 213
    const v2, 0x3dcccccd

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_SIDE_PAGE_BUFFER_PERCENTAGE:F

    .line 214
    const-wide/16 v2, 0x96

    iput-wide v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_DELETE_DROP_TARGET_FADE_DURATION:J

    .line 215
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinScale:F

    .line 219
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSidePageHoverIndex:I

    .line 221
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mReorderingStarted:Z

    .line 226
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

    .line 231
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOnlyAllowEdgeSwipes:Z

    .line 232
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownEventOnEdge:Z

    .line 233
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mEdgeSwipeRegionSize:I

    .line 236
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpInvMatrix:Landroid/graphics/Matrix;

    .line 237
    new-array v2, v7, [F

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    .line 238
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    .line 239
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    .line 242
    const/16 v2, 0x15e

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->FLING_TO_DELETE_FADE_OUT_DURATION:I

    .line 243
    const v2, 0x3d0f5c29

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->FLING_TO_DELETE_FRICTION:F

    .line 245
    const/high16 v2, 0x4282

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->FLING_TO_DELETE_MAX_FLING_DEGREES:F

    .line 246
    const/16 v2, -0x578

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mFlingToDeleteThresholdVelocity:I

    .line 248
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeferringForDelete:Z

    .line 249
    const/16 v2, 0xfa

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I

    .line 250
    const/16 v2, 0x15e

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->DRAG_TO_DELETE_FADE_OUT_DURATION:I

    .line 256
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTopAlignPageWhenShrinkingForBouncer:Z

    .line 259
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mReorderFocusView:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    .line 1943
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/PagedView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/PagedView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    .line 276
    sget-object v2, Lcom/android/internal/R$styleable;->PagedView:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 278
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setPageSpacing(I)V

    .line 279
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorPaddingLeft:I

    .line 281
    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorPaddingRight:I

    .line 283
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 285
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 286
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x1050075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mEdgeSwipeRegionSize:I

    .line 287
    const v2, 0x1110002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTopAlignPageWhenShrinkingForBouncer:Z

    .line 290
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setHapticFeedbackEnabled(Z)V

    .line 291
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->init()V

    .line 292
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/PagedView;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownScrollX:F

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/keyguard/PagedView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSidePageHoverIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/PagedView;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/PagedView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onPostReorderingAnimationCompleted()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/PagedView;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/PagedView;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_DELETE_DROP_TARGET_FADE_DURATION:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/PagedView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/keyguard/PagedView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeferringForDelete:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/PagedView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->FLING_TO_DELETE_FADE_OUT_DURATION:I

    return v0
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .registers 3
    .parameter "ev"

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 1665
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1667
    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1668
    return-void
.end method

.method private createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;
    .registers 3
    .parameter "dragView"

    .prologue
    .line 2367
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/PagedView$9;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView$9;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;Landroid/view/View;)V

    return-object v0
.end method

.method private isFlingingToDelete()Landroid/graphics/PointF;
    .registers 9

    .prologue
    .line 2308
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 2309
    .local v0, config:Landroid/view/ViewConfiguration;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2311
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mFlingToDeleteThresholdVelocity:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_62

    .line 2313
    new-instance v3, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2315
    .local v3, vel:Landroid/graphics/PointF;
    new-instance v2, Landroid/graphics/PointF;

    const/4 v4, 0x0

    const/high16 v5, -0x4080

    invoke-direct {v2, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2316
    .local v2, upVec:Landroid/graphics/PointF;
    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v5

    iget v5, v3, Landroid/graphics/PointF;->y:F

    iget v6, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v3}, Landroid/graphics/PointF;->length()F

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/PointF;->length()F

    move-result v6

    mul-float/2addr v5, v6

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 2318
    .local v1, theta:F
    float-to-double v4, v1

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->FLING_TO_DELETE_MAX_FLING_DEGREES:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_62

    .line 2322
    .end local v1           #theta:F
    .end local v2           #upVec:Landroid/graphics/PointF;
    .end local v3           #vel:Landroid/graphics/PointF;
    :goto_61
    return-object v3

    :cond_62
    const/4 v3, 0x0

    goto :goto_61
.end method

.method private isHoveringOverDeleteDropTarget(II)Z
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    .line 2513
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    if-eqz v2, :cond_35

    .line 2514
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2515
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2516
    .local v0, parent:Landroid/view/View;
    if-eqz v0, :cond_19

    .line 2517
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2519
    :cond_19
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2520
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 2521
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    .line 2523
    .end local v0           #parent:Landroid/view/View;
    :cond_35
    return v1
.end method

.method private isTouchPointInCurrentPage(II)Z
    .registers 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    .line 1043
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1044
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_2c

    .line 1045
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1047
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    .line 1049
    :cond_2c
    return v1
.end method

.method private isTouchPointInViewportWithBuffer(II)Z
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1038
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private onDropToDelete()V
    .registers 15

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2529
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    .line 2531
    .local v3, dragView:Landroid/view/View;
    const/4 v7, 0x0

    .line 2532
    .local v7, toScale:F
    const/4 v6, 0x0

    .line 2535
    .local v6, toAlpha:F
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2536
    .local v2, animations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2537
    .local v4, motionAnim:Landroid/animation/AnimatorSet;
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v9, 0x4000

    invoke-direct {v8, v9}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2538
    const/4 v8, 0x2

    new-array v8, v8, [Landroid/animation/Animator;

    const-string v9, "scaleX"

    new-array v10, v12, [F

    aput v13, v10, v11

    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v11

    const-string v9, "scaleY"

    new-array v10, v12, [F

    aput v13, v10, v11

    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-virtual {v4, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2541
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2543
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2544
    .local v0, alphaAnim:Landroid/animation/AnimatorSet;
    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2545
    new-array v8, v12, [Landroid/animation/Animator;

    const-string v9, "alpha"

    new-array v10, v12, [F

    aput v13, v10, v11

    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2547
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2549
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;

    move-result-object v5

    .line 2551
    .local v5, onAnimationEndRunnable:Ljava/lang/Runnable;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2552
    .local v1, anim:Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2553
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->DRAG_TO_DELETE_FADE_OUT_DURATION:I

    int-to-long v8, v8

    invoke-virtual {v1, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2554
    new-instance v8, Lcom/android/internal/policy/impl/keyguard/PagedView$12;

    invoke-direct {v8, p0, v5}, Lcom/android/internal/policy/impl/keyguard/PagedView$12;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2559
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 2561
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setPressed(Z)V

    .line 2562
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mReorderFocusView:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    .line 2563
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeferringForDelete:Z

    .line 2564
    return-void
.end method

.method private onPostReorderingAnimationCompleted()V
    .registers 2

    .prologue
    .line 2154
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    .line 2155
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    if-nez v0, :cond_16

    .line 2157
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    .line 2160
    :cond_16
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 7
    .parameter "ev"

    .prologue
    .line 1678
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1680
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1681
    .local v1, pointerId:I
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mActivePointerId:I

    if-ne v1, v3, :cond_35

    .line 1685
    if-nez v2, :cond_36

    const/4 v0, 0x1

    .line 1686
    .local v0, newPointerIndex:I
    :goto_15
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionX:F

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    .line 1687
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    .line 1688
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionXRemainder:F

    .line 1689
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mActivePointerId:I

    .line 1690
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_35

    .line 1691
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1694
    .end local v0           #newPointerIndex:I
    :cond_35
    return-void

    .line 1685
    :cond_36
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private overScrollInfluenceCurve(F)F
    .registers 4
    .parameter "f"

    .prologue
    const/high16 v1, 0x3f80

    .line 1248
    sub-float/2addr p1, v1

    .line 1249
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private releaseVelocityTracker()V
    .registers 2

    .prologue
    .line 1671
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    .line 1672
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1673
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1675
    :cond_c
    return-void
.end method

.method private resetTouchState()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1625
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->releaseVelocityTracker()V

    .line 1626
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->endReordering()V

    .line 1627
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    .line 1628
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mActivePointerId:I

    .line 1629
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownEventOnEdge:Z

    .line 1630
    return-void
.end method

.method private updateScrollingIndicator()V
    .registers 3

    .prologue
    .line 2027
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_8

    .line 2037
    :cond_7
    :goto_7
    return-void

    .line 2028
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2030
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 2031
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_18

    .line 2032
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateScrollingIndicatorPosition()V

    .line 2034
    :cond_18
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mShouldShowScrollIndicator:Z

    if-eqz v0, :cond_7

    .line 2035
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->showScrollingIndicator(Z)V

    goto :goto_7
.end method

.method private updateScrollingIndicatorPosition()V
    .registers 15

    .prologue
    .line 2040
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v10

    if-nez v10, :cond_7

    .line 2063
    :cond_6
    :goto_6
    return-void

    .line 2041
    :cond_7
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v10, :cond_6

    .line 2042
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v6

    .line 2043
    .local v6, numPages:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v8

    .line 2044
    .local v8, pageWidth:I
    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2045
    .local v4, lastChildIndex:I
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildOffset(I)I

    move-result v10

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v11

    sub-int v5, v10, v11

    .line 2046
    .local v5, maxScrollX:I
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorPaddingLeft:I

    sub-int v10, v8, v10

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorPaddingRight:I

    sub-int v9, v10, v11

    .line 2047
    .local v9, trackWidth:I
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    sub-int v3, v10, v11

    .line 2050
    .local v3, indicatorWidth:I
    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollX()I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v5

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 2051
    .local v7, offset:F
    div-int v2, v9, v6

    .line 2052
    .local v2, indicatorSpace:I
    sub-int v10, v9, v2

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorPaddingLeft:I

    add-int v1, v10, v11

    .line 2053
    .local v1, indicatorPos:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->hasElasticScrollIndicator()Z

    move-result v10

    if-eqz v10, :cond_84

    .line 2054
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    if-eq v10, v2, :cond_7d

    .line 2055
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iput v2, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2056
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->requestLayout()V

    .line 2062
    :cond_7d
    :goto_7d
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    int-to-float v11, v1

    invoke-virtual {v10, v11}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_6

    .line 2059
    :cond_84
    div-int/lit8 v10, v2, 0x2

    div-int/lit8 v11, v3, 0x2

    sub-int v0, v10, v11

    .line 2060
    .local v0, indicatorCenterOffset:I
    add-int/2addr v1, v0

    goto :goto_7d
.end method


# virtual methods
.method protected acceleratedOverScroll(F)V
    .registers 8
    .parameter "amount"

    .prologue
    const/4 v5, 0x0

    .line 1253
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v2

    .line 1257
    .local v2, screenSize:I
    const/high16 v3, 0x4000

    int-to-float v4, v2

    div-float v4, p1, v4

    mul-float v0, v3, v4

    .line 1259
    .local v0, f:F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_11

    .line 1275
    :goto_10
    return-void

    .line 1262
    :cond_11
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_20

    .line 1263
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1266
    :cond_20
    int-to-float v3, v2

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1267
    .local v1, overScrollAmount:I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_38

    .line 1268
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOverScrollX:I

    .line 1269
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1274
    :goto_34
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->invalidate()V

    goto :goto_10

    .line 1271
    :cond_38
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOverScrollX:I

    .line 1272
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaxScrollX:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_34
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 6
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 978
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_15

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 979
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 981
    :cond_15
    const/16 v0, 0x11

    if-ne p2, v0, :cond_29

    .line 982
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    if-lez v0, :cond_28

    .line 983
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 990
    :cond_28
    :goto_28
    return-void

    .line 985
    :cond_29
    const/16 v0, 0x42

    if-ne p2, v0, :cond_28

    .line 986
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_28

    .line 987
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_28
.end method

.method animateDragViewToOriginalPosition()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2067
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    if-eqz v1, :cond_3f

    .line 2068
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2069
    .local v0, anim:Landroid/animation/AnimatorSet;
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_DROP_REPOSITION_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2070
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    const-string v3, "translationX"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    const-string v3, "translationY"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2073
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/PagedView$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/PagedView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2079
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2081
    .end local v0           #anim:Landroid/animation/AnimatorSet;
    :cond_3f
    return-void
.end method

.method boundByReorderablePages(Z[I)V
    .registers 3
    .parameter "isReordering"
    .parameter "range"

    .prologue
    .line 842
    return-void
.end method

.method protected cancelScrollingIndicatorAnimations()V
    .registers 2

    .prologue
    .line 1980
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    .line 1981
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1983
    :cond_9
    return-void
.end method

.method public computeScroll()V
    .registers 1

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->computeScrollHelper()Z

    .line 592
    return-void
.end method

.method protected computeScrollHelper()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 563
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 565
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    if-ne v1, v2, :cond_2d

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    if-ne v1, v2, :cond_2d

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOverScrollX:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    if-eq v1, v2, :cond_3c

    .line 568
    :cond_2d
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->scrollTo(II)V

    .line 570
    :cond_3c
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->invalidate()V

    .line 586
    :goto_3f
    return v0

    .line 572
    :cond_40
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    if-eq v2, v4, :cond_66

    .line 573
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    .line 574
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    .line 575
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->notifyPageSwitched()V

    .line 579
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    if-nez v1, :cond_62

    .line 580
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->pageEndMoving()V

    .line 583
    :cond_62
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onPostReorderingAnimationCompleted()V

    goto :goto_3f

    :cond_66
    move v0, v1

    .line 586
    goto :goto_3f
.end method

.method protected dampedOverScroll(F)V
    .registers 8
    .parameter "amount"

    .prologue
    const/4 v5, 0x0

    .line 1278
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v2

    .line 1280
    .local v2, screenSize:I
    int-to-float v3, v2

    div-float v0, p1, v3

    .line 1282
    .local v0, f:F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_d

    .line 1299
    :goto_c
    return-void

    .line 1283
    :cond_d
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v3, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/PagedView;->overScrollInfluenceCurve(F)F

    move-result v4

    mul-float v0, v3, v4

    .line 1286
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2c

    .line 1287
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1290
    :cond_2c
    const v3, 0x3e0f5c29

    mul-float/2addr v3, v0

    int-to-float v4, v2

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1291
    .local v1, overScrollAmount:I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_48

    .line 1292
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOverScrollX:I

    .line 1293
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1298
    :goto_44
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->invalidate()V

    goto :goto_c

    .line 1295
    :cond_48
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOverScrollX:I

    .line 1296
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaxScrollX:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_44
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .registers 3
    .parameter "ev"

    .prologue
    .line 1176
    const/high16 v0, 0x3f80

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    .line 1177
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)V
    .registers 15
    .parameter "ev"
    .parameter "touchSlopScale"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1185
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1186
    .local v0, pointerIndex:I
    const/4 v10, -0x1

    if-ne v0, v10, :cond_c

    .line 1217
    :cond_b
    :goto_b
    return-void

    .line 1189
    :cond_c
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1190
    .local v2, x:F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 1191
    .local v6, y:F
    float-to-int v10, v2

    float-to-int v11, v6

    invoke-direct {p0, v10, v11}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1195
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOnlyAllowEdgeSwipes:Z

    if-eqz v10, :cond_24

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownEventOnEdge:Z

    if-eqz v10, :cond_b

    .line 1197
    :cond_24
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    sub-float v10, v2, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v3, v10

    .line 1198
    .local v3, xDiff:I
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    sub-float v10, v6, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v7, v10

    .line 1200
    .local v7, yDiff:I
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchSlop:I

    int-to-float v10, v10

    mul-float/2addr v10, p2

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1201
    .local v1, touchSlop:I
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPagingTouchSlopScale:I

    if-le v3, v10, :cond_83

    move v5, v9

    .line 1202
    .local v5, xPaged:Z
    :goto_43
    if-le v3, v1, :cond_85

    move v4, v9

    .line 1203
    .local v4, xMoved:Z
    :goto_46
    if-le v7, v1, :cond_49

    move v8, v9

    .line 1205
    .local v8, yMoved:Z
    :cond_49
    if-nez v4, :cond_4f

    if-nez v5, :cond_4f

    if-eqz v8, :cond_b

    .line 1206
    :cond_4f
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mUsePagingTouchSlop:Z

    if-eqz v10, :cond_87

    if-eqz v5, :cond_b

    .line 1208
    :goto_55
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    .line 1209
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTotalMotionX:F

    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    sub-float/2addr v10, v2

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float/2addr v9, v10

    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTotalMotionX:F

    .line 1210
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    .line 1211
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionXRemainder:F

    .line 1212
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollX()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchX:F

    .line 1213
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    long-to-float v9, v9

    const v10, 0x4e6e6b28

    div-float/2addr v9, v10

    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSmoothingTime:F

    .line 1214
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->pageBeginMoving()V

    goto :goto_b

    .end local v4           #xMoved:Z
    .end local v5           #xPaged:Z
    .end local v8           #yMoved:Z
    :cond_83
    move v5, v8

    .line 1201
    goto :goto_43

    .restart local v5       #xPaged:Z
    :cond_85
    move v4, v8

    .line 1202
    goto :goto_46

    .line 1206
    .restart local v4       #xMoved:Z
    .restart local v8       #yMoved:Z
    :cond_87
    if-eqz v4, :cond_b

    goto :goto_55
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 16
    .parameter "canvas"

    .prologue
    .line 889
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v9

    div-int/lit8 v2, v9, 0x2

    .line 892
    .local v2, halfScreenSize:I
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOverScrollX:I

    add-int v7, v9, v2

    .line 894
    .local v7, screenCenter:I
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastScreenCenter:I

    if-ne v7, v9, :cond_12

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mForceScreenScrolled:Z

    if-eqz v9, :cond_1a

    .line 897
    :cond_12
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 898
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/PagedView;->screenScrolled(I)V

    .line 899
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastScreenCenter:I

    .line 903
    :cond_1a
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v5

    .line 904
    .local v5, pageCount:I
    if-lez v5, :cond_93

    .line 905
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getVisiblePages([I)V

    .line 906
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    const/4 v10, 0x0

    aget v4, v9, v10

    .line 907
    .local v4, leftScreen:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    const/4 v10, 0x1

    aget v6, v9, v10

    .line 908
    .local v6, rightScreen:I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_93

    const/4 v9, -0x1

    if-eq v6, v9, :cond_93

    .line 909
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getDrawingTime()J

    move-result-wide v0

    .line 911
    .local v0, drawingTime:J
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 912
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollX()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollY()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollX()I

    move-result v11

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollY()I

    move-result v12

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getBottom()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 916
    add-int/lit8 v3, v5, -0x1

    .local v3, i:I
    :goto_65
    if-ltz v3, :cond_84

    .line 917
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    .line 918
    .local v8, v:Landroid/view/View;
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    if-ne v8, v9, :cond_72

    .line 916
    :cond_6f
    :goto_6f
    add-int/lit8 v3, v3, -0x1

    goto :goto_65

    .line 919
    :cond_72
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mForceDrawAllChildrenNextFrame:Z

    if-nez v9, :cond_80

    if-gt v4, v3, :cond_6f

    if-gt v3, v6, :cond_6f

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard/PagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_6f

    .line 921
    :cond_80
    invoke-virtual {p0, p1, v8, v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_6f

    .line 925
    .end local v8           #v:Landroid/view/View;
    :cond_84
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    if-eqz v9, :cond_8d

    .line 926
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, p1, v9, v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 929
    :cond_8d
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mForceDrawAllChildrenNextFrame:Z

    .line 930
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 933
    .end local v0           #drawingTime:J
    .end local v3           #i:I
    .end local v4           #leftScreen:I
    .end local v6           #rightScreen:I
    :cond_93
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 6
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v0, 0x1

    .line 962
    const/16 v1, 0x11

    if-ne p2, v1, :cond_15

    .line 963
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_2f

    .line 964
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    .line 973
    :goto_14
    return v0

    .line 967
    :cond_15
    const/16 v1, 0x42

    if-ne p2, v1, :cond_2f

    .line 968
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2f

    .line 969
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    goto :goto_14

    .line 973
    :cond_2f
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_14
.end method

.method distanceInfluenceForSnapDuration(F)F
    .registers 6
    .parameter "f"

    .prologue
    .line 1777
    const/high16 v0, 0x3f00

    sub-float/2addr p1, v0

    .line 1778
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 1779
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method endReordering()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2221
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mReorderingStarted:Z

    if-nez v1, :cond_6

    .line 2254
    :cond_5
    :goto_5
    return-void

    .line 2222
    :cond_6
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mReorderingStarted:Z

    .line 2226
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/PagedView$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/PagedView$6;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;)V

    .line 2232
    .local v0, onCompleteRunnable:Ljava/lang/Runnable;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeferringForDelete:Z

    if-nez v1, :cond_5

    .line 2233
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/PagedView$7;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView$7;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    .line 2239
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    .line 2242
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    if-eqz v1, :cond_32

    .line 2244
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(II)V

    .line 2247
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setPageHoveringOverDeleteDropTarget(IZ)V

    .line 2250
    :cond_32
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->animateDragViewToOriginalPosition()V

    goto :goto_5
.end method

.method protected flashScrollingIndicator(Z)V
    .registers 5
    .parameter "animated"

    .prologue
    .line 1951
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1952
    if-nez p1, :cond_13

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->showScrollingIndicator(Z)V

    .line 1953
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x28a

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1954
    return-void

    .line 1952
    :cond_13
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .registers 6
    .parameter "focused"

    .prologue
    .line 1001
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1002
    .local v0, current:Landroid/view/View;
    move-object v2, p1

    .line 1004
    .local v2, v:Landroid/view/View;
    :goto_7
    if-ne v2, v0, :cond_d

    .line 1005
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 1015
    :cond_c
    return-void

    .line 1008
    :cond_d
    if-eq v2, p0, :cond_c

    .line 1011
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1012
    .local v1, parent:Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_c

    .line 1013
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #v:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2       #v:Landroid/view/View;
    goto :goto_7
.end method

.method protected getBoundedScrollProgress(ILandroid/view/View;I)F
    .registers 6
    .parameter "screenCenter"
    .parameter "v"
    .parameter "page"

    .prologue
    .line 1224
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    .line 1226
    .local v0, halfScreenSize:I
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollX:I

    add-int/2addr v1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1227
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1229
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v1

    return v1
.end method

.method protected getChildIndexForRelativeOffset(I)I
    .registers 7
    .parameter "relativeOffset"

    .prologue
    .line 1706
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v0

    .line 1709
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_1d

    .line 1710
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    .line 1711
    .local v2, left:I
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v4

    add-int v3, v2, v4

    .line 1712
    .local v3, right:I
    if-gt v2, p1, :cond_1a

    if-gt p1, v3, :cond_1a

    .line 1716
    .end local v1           #i:I
    .end local v2           #left:I
    .end local v3           #right:I
    :goto_19
    return v1

    .line 1709
    .restart local v1       #i:I
    .restart local v2       #left:I
    .restart local v3       #right:I
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1716
    .end local v2           #left:I
    .end local v3           #right:I
    :cond_1d
    const/4 v1, -0x1

    goto :goto_19
.end method

.method protected getChildOffset(I)I
    .registers 7
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 793
    if-ltz p1, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le p1, v3, :cond_c

    .line 811
    :cond_b
    :goto_b
    return v2

    .line 795
    :cond_c
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLayoutScale:F

    const/high16 v4, 0x3f80

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_22

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildOffsets:[I

    .line 798
    .local v0, childOffsets:[I
    :goto_18
    if-eqz v0, :cond_25

    aget v3, v0, p1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_25

    .line 799
    aget v2, v0, p1

    goto :goto_b

    .line 795
    .end local v0           #childOffsets:[I
    :cond_22
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildOffsetsWithLayoutScale:[I

    goto :goto_18

    .line 801
    .restart local v0       #childOffsets:[I
    :cond_25
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_b

    .line 804
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    .line 805
    .local v2, offset:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_30
    if-ge v1, p1, :cond_41

    .line 806
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSpacing:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 805
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 808
    :cond_41
    if-eqz v0, :cond_b

    .line 809
    aput v2, v0, p1

    goto :goto_b
.end method

.method protected getChildWidth(I)I
    .registers 5
    .parameter "index"

    .prologue
    .line 1722
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1723
    .local v0, measuredWidth:I
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinimumWidth:I

    .line 1724
    .local v1, minWidth:I
    if-le v1, v0, :cond_d

    .end local v1           #minWidth:I
    :goto_c
    return v1

    .restart local v1       #minWidth:I
    :cond_d
    move v1, v0

    goto :goto_c
.end method

.method public getCurrentPage()I
    .registers 2

    .prologue
    .line 414
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    return v0
.end method

.method protected getMaxScrollProgress()F
    .registers 2

    .prologue
    .line 1220
    const/high16 v0, 0x3f80

    return v0
.end method

.method getNextPage()I
    .registers 3

    .prologue
    .line 418
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    :goto_7
    return v0

    :cond_8
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    goto :goto_7
.end method

.method getPageAt(I)Landroid/view/View;
    .registers 3
    .parameter "index"

    .prologue
    .line 426
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageCount()I
    .registers 2

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageForView(Landroid/view/View;)I
    .registers 7
    .parameter "v"

    .prologue
    .line 1892
    const/4 v2, -0x1

    .line 1893
    .local v2, result:I
    if-eqz p1, :cond_18

    .line 1894
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 1895
    .local v3, vp:Landroid/view/ViewParent;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v0

    .line 1896
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v0, :cond_18

    .line 1897
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_15

    .line 1902
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #vp:Landroid/view/ViewParent;
    :goto_14
    return v1

    .line 1896
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v3       #vp:Landroid/view/ViewParent;
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #vp:Landroid/view/ViewParent;
    :cond_18
    move v1, v2

    .line 1902
    goto :goto_14
.end method

.method getPageNearestToCenterOfScreen()I
    .registers 13

    .prologue
    .line 1740
    const v7, 0x7fffffff

    .line 1741
    .local v7, minDistanceFromScreenCenter:I
    const/4 v8, -0x1

    .line 1742
    .local v8, minDistanceFromScreenCenterIndex:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollX()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int v9, v10, v11

    .line 1743
    .local v9, screenCenter:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v1

    .line 1744
    .local v1, childCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1a
    if-ge v5, v1, :cond_3e

    .line 1745
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    .line 1746
    .local v6, layout:Landroid/view/View;
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v2

    .line 1747
    .local v2, childWidth:I
    div-int/lit8 v4, v2, 0x2

    .line 1748
    .local v4, halfChildWidth:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v10

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildOffset(I)I

    move-result v11

    add-int/2addr v10, v11

    add-int v0, v10, v4

    .line 1749
    .local v0, childCenter:I
    sub-int v10, v0, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1750
    .local v3, distanceFromScreenCenter:I
    if-ge v3, v7, :cond_3b

    .line 1751
    move v7, v3

    .line 1752
    move v8, v5

    .line 1744
    :cond_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 1755
    .end local v0           #childCenter:I
    .end local v2           #childWidth:I
    .end local v3           #distanceFromScreenCenter:I
    .end local v4           #halfChildWidth:I
    .end local v6           #layout:Landroid/view/View;
    :cond_3e
    return v8
.end method

.method getPageNearestToPoint(F)I
    .registers 6
    .parameter "x"

    .prologue
    .line 1728
    const/4 v1, 0x0

    .line 1729
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_20

    .line 1730
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1b

    .line 1736
    .end local v1           #index:I
    :goto_1a
    return v1

    .line 1733
    .restart local v1       #index:I
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    .line 1729
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1736
    :cond_20
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1a
.end method

.method protected getRelativeChildOffset(I)I
    .registers 7
    .parameter "index"

    .prologue
    .line 816
    if-ltz p1, :cond_a

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_c

    :cond_a
    const/4 v0, 0x0

    .line 827
    :cond_b
    :goto_b
    return v0

    .line 818
    :cond_c
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildRelativeOffsets:[I

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildRelativeOffsets:[I

    aget v2, v2, p1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1c

    .line 819
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildRelativeOffsets:[I

    aget v0, v2, p1

    goto :goto_b

    .line 821
    :cond_1c
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPaddingRight()I

    move-result v3

    add-int v1, v2, v3

    .line 822
    .local v1, padding:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildWidth(I)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 824
    .local v0, offset:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildRelativeOffsets:[I

    if-eqz v2, :cond_b

    .line 825
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildRelativeOffsets:[I

    aput v0, v2, p1

    goto :goto_b
.end method

.method protected getScaledMeasuredWidth(Landroid/view/View;)I
    .registers 7
    .parameter "child"

    .prologue
    .line 834
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 835
    .local v1, measuredWidth:I
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinimumWidth:I

    .line 836
    .local v2, minWidth:I
    if-le v2, v1, :cond_12

    move v0, v2

    .line 837
    .local v0, maxWidth:I
    :goto_9
    int-to-float v3, v0

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLayoutScale:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    return v3

    .end local v0           #maxWidth:I
    :cond_12
    move v0, v1

    .line 836
    goto :goto_9
.end method

.method protected getScrollProgress(ILandroid/view/View;I)F
    .registers 11
    .parameter "screenCenter"
    .parameter "v"
    .parameter "page"

    .prologue
    .line 1233
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v4

    div-int/lit8 v1, v4, 0x2

    .line 1235
    .local v1, halfScreenSize:I
    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSpacing:I

    add-int v3, v4, v5

    .line 1236
    .local v3, totalDistance:I
    invoke-virtual {p0, p3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildOffset(I)I

    move-result v4

    invoke-virtual {p0, p3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v1

    sub-int v0, p1, v4

    .line 1239
    .local v0, delta:I
    int-to-float v4, v0

    int-to-float v5, v3

    const/high16 v6, 0x3f80

    mul-float/2addr v5, v6

    div-float v2, v4, v5

    .line 1240
    .local v2, scrollProgress:F
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getMaxScrollProgress()F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1241
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getMaxScrollProgress()F

    move-result v4

    neg-float v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1242
    return v2
.end method

.method protected getScrollingIndicator()Landroid/view/View;
    .registers 2

    .prologue
    .line 1936
    const/4 v0, 0x0

    return-object v0
.end method

.method getViewportHeight()I
    .registers 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method getViewportOffsetX()I
    .registers 3

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getViewportOffsetY()I
    .registers 3

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getViewportWidth()I
    .registers 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method protected getVisiblePages([I)V
    .registers 4
    .parameter "range"

    .prologue
    const/4 v0, 0x0

    .line 846
    aput v0, p1, v0

    .line 847
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aput v1, p1, v0

    .line 881
    return-void
.end method

.method protected hasElasticScrollIndicator()Z
    .registers 2

    .prologue
    .line 2023
    const/4 v0, 0x1

    return v0
.end method

.method protected hideScrollingIndicator(Z)V
    .registers 7
    .parameter "immediately"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1986
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v0

    if-gt v0, v2, :cond_9

    .line 2016
    :cond_8
    :goto_8
    return-void

    .line 1987
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1989
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 1990
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 1992
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateScrollingIndicatorPosition()V

    .line 1993
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->cancelScrollingIndicatorAnimations()V

    .line 1994
    if-eqz p1, :cond_2a

    .line 1995
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1996
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_8

    .line 1998
    :cond_2a
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 1999
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x28a

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2000
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/PagedView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/PagedView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2013
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_8
.end method

.method protected hitsNextPage(FF)Z
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1031
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSpacing:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method protected hitsPreviousPage(FF)Z
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1024
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSpacing:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method protected indexToPage(I)I
    .registers 2
    .parameter "index"

    .prologue
    .line 430
    return p1
.end method

.method protected init()V
    .registers 5

    .prologue
    .line 298
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    .line 299
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 300
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/PagedView$ScrollInterpolator;

    invoke-direct {v3}, Lcom/android/internal/policy/impl/keyguard/PagedView$ScrollInterpolator;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 301
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    .line 303
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 304
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchSlop:I

    .line 305
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPagingTouchSlop:I

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPagingTouchSlopScale:I

    .line 306
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaximumVelocity:I

    .line 307
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDensity:F

    .line 310
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mFlingToDeleteThresholdVelocity:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mFlingToDeleteThresholdVelocity:I

    .line 313
    const/high16 v1, 0x43fa

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mFlingThresholdVelocity:I

    .line 314
    const/high16 v1, 0x437a

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinFlingVelocity:I

    .line 315
    const v1, 0x44bb8000

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinSnapVelocity:I

    .line 316
    invoke-virtual {p0, p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 317
    return-void
.end method

.method protected invalidateCachedOffsets()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 774
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v0

    .line 775
    .local v0, count:I
    if-nez v0, :cond_f

    .line 776
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildOffsets:[I

    .line 777
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildRelativeOffsets:[I

    .line 778
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildOffsetsWithLayoutScale:[I

    .line 790
    :cond_e
    return-void

    .line 782
    :cond_f
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildOffsets:[I

    .line 783
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildRelativeOffsets:[I

    .line 784
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildOffsetsWithLayoutScale:[I

    .line 785
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1c
    if-ge v1, v0, :cond_e

    .line 786
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildOffsets:[I

    aput v3, v2, v1

    .line 787
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildRelativeOffsets:[I

    aput v3, v2, v1

    .line 788
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildOffsetsWithLayoutScale:[I

    aput v3, v2, v1

    .line 785
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c
.end method

.method protected isDataReady()Z
    .registers 2

    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsDataReady:Z

    return v0
.end method

.method protected isPageMoving()Z
    .registers 2

    .prologue
    .line 500
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsPageMoving:Z

    return v0
.end method

.method isReordering(Z)Z
    .registers 5
    .parameter "testTouchState"

    .prologue
    .line 2212
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsReordering:Z

    .line 2213
    .local v0, state:Z
    if-eqz p1, :cond_b

    .line 2214
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_c

    const/4 v1, 0x1

    :goto_a
    and-int/2addr v0, v1

    .line 2216
    :cond_b
    return v0

    .line 2214
    :cond_c
    const/4 v1, 0x0

    goto :goto_a
.end method

.method protected isScrollingIndicatorEnabled()Z
    .registers 2

    .prologue
    .line 1940
    const/4 v0, 0x0

    return v0
.end method

.method mapPointFromParentToView(Landroid/view/View;FF)[F
    .registers 7
    .parameter "v"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p2, v2

    aput v2, v0, v1

    .line 334
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p3, v2

    aput v2, v0, v1

    .line 335
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 336
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpInvMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 337
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    return-object v0
.end method

.method mapPointFromViewToParent(Landroid/view/View;FF)[F
    .registers 9
    .parameter "v"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 325
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    aput p2, v0, v3

    .line 326
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    aput p3, v0, v4

    .line 327
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 328
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    aget v1, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v3

    .line 329
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    aget v1, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 330
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    return-object v0
.end method

.method protected maxOverScroll()F
    .registers 4

    .prologue
    .line 1308
    const/high16 v0, 0x3f80

    .line 1309
    .local v0, f:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v1, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->overScrollInfluenceCurve(F)F

    move-result v2

    mul-float v0, v1, v2

    .line 1310
    const v1, 0x3e0f5c29

    mul-float/2addr v1, v0

    return v1
.end method

.method protected notifyPageSwitched()V
    .registers 4

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSwitchListener:Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;

    if-eqz v0, :cond_11

    .line 481
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSwitchListener:Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;->onPageSwitched(Landroid/view/View;I)V

    .line 483
    :cond_11
    return-void
.end method

.method protected notifyPageSwitching(I)V
    .registers 4
    .parameter "whichPage"

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSwitchListener:Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;

    if-eqz v0, :cond_d

    .line 475
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSwitchListener:Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;->onPageSwitching(Landroid/view/View;I)V

    .line 477
    :cond_d
    return-void
.end method

.method public abstract onAddView(Landroid/view/View;I)V
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 763
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 764
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->invalidate()V

    .line 765
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->invalidateCachedOffsets()V

    .line 766
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 770
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 771
    return-void
.end method

.method protected onEndReordering()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2164
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mReorderFocusView:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    if-eqz v2, :cond_26

    .line 2165
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mReorderFocusView:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setIsReordering(Z)V

    .line 2166
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mReorderFocusView:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getChildCount()I

    move-result v1

    .line 2167
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_18
    if-ge v0, v1, :cond_26

    .line 2168
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mReorderFocusView:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2167
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 2171
    .end local v0           #i:I
    .end local v1           #index:I
    :cond_26
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mReorderFocusView:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    .line 2173
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 2174
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mContext:Landroid/content/Context;

    const v3, 0x10404f2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2177
    :cond_41
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsReordering:Z

    .line 2180
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getVisiblePages([I)V

    .line 2181
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v5, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->boundByReorderablePages(Z[I)V

    .line 2182
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4e
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v2

    if-ge v0, v2, :cond_73

    .line 2183
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v2, v4

    if-lt v0, v2, :cond_60

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v2, v5

    if-le v0, v2, :cond_70

    .line 2184
    :cond_60
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2185
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2182
    :cond_70
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    .line 2188
    :cond_73
    return-void
.end method

.method public onFlingToDelete(Landroid/graphics/PointF;)V
    .registers 14
    .parameter "vel"

    .prologue
    .line 2459
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 2466
    .local v4, startTime:J
    new-instance v9, Lcom/android/internal/policy/impl/keyguard/PagedView$10;

    invoke-direct {v9, p0, v4, v5}, Lcom/android/internal/policy/impl/keyguard/PagedView$10;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;J)V

    .line 2487
    .local v9, tInterpolator:Landroid/animation/TimeInterpolator;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 2488
    .local v3, from:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    .line 2489
    .local v1, dragView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v3, Landroid/graphics/Rect;->left:I

    .line 2490
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    iput v2, v3, Landroid/graphics/Rect;->top:I

    .line 2491
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->FLING_TO_DELETE_FRICTION:F

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;-><init>(Landroid/view/View;Landroid/graphics/PointF;Landroid/graphics/Rect;JF)V

    .line 2494
    .local v0, updateCb:Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;

    move-result-object v8

    .line 2497
    .local v8, onAnimationEndRunnable:Ljava/lang/Runnable;
    new-instance v7, Landroid/animation/ValueAnimator;

    invoke-direct {v7}, Landroid/animation/ValueAnimator;-><init>()V

    .line 2498
    .local v7, mDropAnim:Landroid/animation/ValueAnimator;
    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2499
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->FLING_TO_DELETE_FADE_OUT_DURATION:I

    int-to-long v10, v2

    invoke-virtual {v7, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2500
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_54

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2501
    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2502
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/PagedView$11;

    invoke-direct {v2, p0, v8}, Lcom/android/internal/policy/impl/keyguard/PagedView$11;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2507
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 2508
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeferringForDelete:Z

    .line 2509
    return-void

    .line 2500
    nop

    :array_54
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x0

    .line 1636
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_12

    .line 1637
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_4a

    .line 1660
    :cond_12
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_16
    return v2

    .line 1642
    :pswitch_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_39

    .line 1643
    const/4 v1, 0x0

    .line 1644
    .local v1, vscroll:F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 1649
    .local v0, hscroll:F
    :goto_24
    cmpl-float v2, v0, v3

    if-nez v2, :cond_2c

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_12

    .line 1650
    :cond_2c
    cmpl-float v2, v0, v3

    if-gtz v2, :cond_34

    cmpl-float v2, v1, v3

    if-lez v2, :cond_45

    .line 1651
    :cond_34
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->scrollRight()V

    .line 1655
    :goto_37
    const/4 v2, 0x1

    goto :goto_16

    .line 1646
    .end local v0           #hscroll:F
    .end local v1           #vscroll:F
    :cond_39
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    neg-float v1, v2

    .line 1647
    .restart local v1       #vscroll:F
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .restart local v0       #hscroll:F
    goto :goto_24

    .line 1653
    :cond_45
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->scrollLeft()V

    goto :goto_37

    .line 1637
    nop

    :pswitch_data_4a
    .packed-switch 0x8
        :pswitch_17
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 2614
    const/4 v0, 0x1

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .parameter "event"

    .prologue
    .line 2581
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2582
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2583
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_20

    .line 2584
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 2585
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 2586
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 2588
    :cond_20
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .parameter "info"

    .prologue
    const/4 v0, 0x1

    .line 2569
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2570
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v1

    if-le v1, v0, :cond_2a

    :goto_a
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2571
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1e

    .line 2572
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2574
    :cond_1e
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v0

    if-lez v0, :cond_29

    .line 2575
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2577
    :cond_29
    return-void

    .line 2570
    :cond_2a
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "ev"

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1063
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1066
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v10

    if-gtz v10, :cond_11

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 1172
    :cond_10
    :goto_10
    return v8

    .line 1073
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1074
    .local v0, action:I
    const/4 v10, 0x2

    if-ne v0, v10, :cond_1c

    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    if-eq v10, v8, :cond_10

    .line 1079
    :cond_1c
    and-int/lit16 v10, v0, 0xff

    packed-switch v10, :pswitch_data_da

    .line 1172
    :cond_21
    :goto_21
    :pswitch_21
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    if-nez v10, :cond_10

    move v8, v9

    goto :goto_10

    .line 1085
    :pswitch_27
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mActivePointerId:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_30

    .line 1086
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_21

    .line 1097
    :cond_30
    :pswitch_30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 1098
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 1100
    .local v7, y:F
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionX:F

    .line 1101
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionY:F

    .line 1102
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollX()I

    move-result v10

    int-to-float v10, v10

    iput v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownScrollX:F

    .line 1103
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    .line 1104
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    .line 1105
    invoke-virtual {p0, p0, v5, v7}, Lcom/android/internal/policy/impl/keyguard/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v3

    .line 1106
    .local v3, p:[F
    aget v10, v3, v9

    iput v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionX:F

    .line 1107
    aget v10, v3, v8

    iput v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionY:F

    .line 1108
    iput v12, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionXRemainder:F

    .line 1109
    iput v12, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTotalMotionX:F

    .line 1110
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mActivePointerId:I

    .line 1113
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v10

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mEdgeSwipeRegionSize:I

    add-int v2, v10, v11

    .line 1114
    .local v2, leftEdgeBoundary:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v11

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mEdgeSwipeRegionSize:I

    sub-int v4, v10, v11

    .line 1115
    .local v4, rightEdgeBoundary:I
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionX:F

    int-to-float v11, v2

    cmpg-float v10, v10, v11

    if-lez v10, :cond_80

    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionX:F

    int-to-float v11, v4

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_82

    .line 1116
    :cond_80
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownEventOnEdge:Z

    .line 1124
    :cond_82
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->getFinalX()I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->getCurrX()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 1125
    .local v6, xDist:I
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->isFinished()Z

    move-result v10

    if-nez v10, :cond_9f

    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchSlop:I

    if-ge v6, v10, :cond_ab

    :cond_9f
    move v1, v8

    .line 1126
    .local v1, finishedScrolling:Z
    :goto_a0
    if-eqz v1, :cond_ad

    .line 1127
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    .line 1128
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->abortAnimation()V

    goto/16 :goto_21

    .end local v1           #finishedScrolling:Z
    :cond_ab
    move v1, v9

    .line 1125
    goto :goto_a0

    .line 1130
    .restart local v1       #finishedScrolling:Z
    :cond_ad
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionX:F

    float-to-int v10, v10

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionY:F

    float-to-int v11, v11

    invoke-direct {p0, v10, v11}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result v10

    if-eqz v10, :cond_bd

    .line 1131
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    goto/16 :goto_21

    .line 1133
    :cond_bd
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    goto/16 :goto_21

    .line 1155
    .end local v1           #finishedScrolling:Z
    .end local v2           #leftEdgeBoundary:I
    .end local v3           #p:[F
    .end local v4           #rightEdgeBoundary:I
    .end local v5           #x:F
    .end local v6           #xDist:I
    .end local v7           #y:F
    :pswitch_c1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->resetTouchState()V

    .line 1157
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    float-to-int v10, v10

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    float-to-int v11, v11

    invoke-direct {p0, v10, v11}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isTouchPointInCurrentPage(II)Z

    move-result v10

    if-nez v10, :cond_21

    goto/16 :goto_10

    .line 1163
    :pswitch_d2
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1164
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_21

    .line 1079
    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_30
        :pswitch_c1
        :pswitch_27
        :pswitch_c1
        :pswitch_21
        :pswitch_21
        :pswitch_d2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 17
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 720
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsDataReady:Z

    if-eqz v9, :cond_a

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v9

    if-nez v9, :cond_b

    .line 754
    :cond_a
    :goto_a
    return-void

    .line 725
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v1

    .line 727
    .local v1, childCount:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v7

    .line 728
    .local v7, offsetX:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetY()I

    move-result v8

    .line 731
    .local v8, offsetY:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 733
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v9

    add-int v3, v7, v9

    .line 734
    .local v3, childLeft:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_24
    if-ge v6, v1, :cond_51

    .line 735
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 736
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPaddingTop()I

    move-result v9

    add-int v4, v8, v9

    .line 737
    .local v4, childTop:I
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_4e

    .line 738
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v5

    .line 739
    .local v5, childWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 742
    .local v2, childHeight:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v3

    add-int v10, v4, v2

    invoke-virtual {v0, v3, v4, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 744
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSpacing:I

    add-int/2addr v9, v5

    add-int/2addr v3, v9

    .line 734
    .end local v2           #childHeight:I
    .end local v5           #childWidth:I
    :cond_4e
    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    .line 748
    .end local v0           #child:Landroid/view/View;
    .end local v4           #childTop:I
    :cond_51
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mFirstLayout:Z

    if-eqz v9, :cond_a

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    if-ltz v9, :cond_a

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_a

    .line 749
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setHorizontalScrollBarEnabled(Z)V

    .line 750
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateCurrentPageScroll()V

    .line 751
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setHorizontalScrollBarEnabled(Z)V

    .line 752
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mFirstLayout:Z

    goto :goto_a
.end method

.method protected onMeasure(II)V
    .registers 33
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 600
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsDataReady:Z

    move/from16 v27, v0

    if-eqz v27, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v27

    if-nez v27, :cond_12

    .line 601
    :cond_e
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 711
    :goto_11
    return-void

    .line 607
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    .line 608
    .local v18, parent:Landroid/view/View;
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v25

    .line 609
    .local v25, widthMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v26

    .line 610
    .local v26, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 611
    .local v11, heightMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 614
    .local v12, heightSize:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 615
    .local v10, dm:Landroid/util/DisplayMetrics;
    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v27, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v28, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 616
    .local v16, maxSize:I
    const/high16 v27, 0x3fc0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v20, v0

    .line 617
    .local v20, parentWidthSize:I
    move/from16 v19, v16

    .line 618
    .local v19, parentHeightSize:I
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinScale:F

    move/from16 v28, v0

    div-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v22, v0

    .line 619
    .local v22, scaledWidthSize:I
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinScale:F

    move/from16 v28, v0

    div-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v21, v0

    .line 620
    .local v21, scaledHeightSize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 622
    if-eqz v25, :cond_89

    if-nez v11, :cond_8d

    .line 623
    :cond_89
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto :goto_11

    .line 628
    :cond_8d
    if-lez v26, :cond_91

    if-gtz v12, :cond_96

    .line 629
    :cond_91
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto/16 :goto_11

    .line 638
    :cond_96
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPaddingTop()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPaddingBottom()I

    move-result v28

    add-int v24, v27, v28

    .line 639
    .local v24, verticalPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPaddingLeft()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPaddingRight()I

    move-result v28

    add-int v13, v27, v28

    .line 648
    .local v13, horizontalPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v5

    .line 649
    .local v5, childCount:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_af
    if-ge v14, v5, :cond_f3

    .line 651
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 652
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 655
    .local v15, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v27, v0

    const/16 v28, -0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_ed

    .line 656
    const/high16 v9, -0x8000

    .line 662
    .local v9, childWidthMode:I
    :goto_c9
    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v27, v0

    const/16 v28, -0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_f0

    .line 663
    const/high16 v7, -0x8000

    .line 668
    .local v7, childHeightMode:I
    :goto_d7
    sub-int v27, v26, v13

    move/from16 v0, v27

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 670
    .local v8, childWidthMeasureSpec:I
    sub-int v27, v12, v24

    move/from16 v0, v27

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 673
    .local v6, childHeightMeasureSpec:I
    invoke-virtual {v4, v8, v6}, Landroid/view/View;->measure(II)V

    .line 649
    add-int/lit8 v14, v14, 0x1

    goto :goto_af

    .line 658
    .end local v6           #childHeightMeasureSpec:I
    .end local v7           #childHeightMode:I
    .end local v8           #childWidthMeasureSpec:I
    .end local v9           #childWidthMode:I
    :cond_ed
    const/high16 v9, 0x4000

    .restart local v9       #childWidthMode:I
    goto :goto_c9

    .line 665
    :cond_f0
    const/high16 v7, 0x4000

    .restart local v7       #childHeightMode:I
    goto :goto_d7

    .line 675
    .end local v4           #child:Landroid/view/View;
    .end local v7           #childHeightMode:I
    .end local v9           #childWidthMode:I
    .end local v15           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_f3
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setMeasuredDimension(II)V

    .line 680
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->invalidateCachedOffsets()V

    .line 682
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildCountOnLastMeasure:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_124

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeferringForDelete:Z

    move/from16 v27, v0

    if-nez v27, :cond_124

    .line 683
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setCurrentPage(I)V

    .line 685
    :cond_124
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildCountOnLastMeasure:I

    .line 687
    if-lez v5, :cond_169

    .line 692
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSpacing:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_169

    .line 697
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v17

    .line 698
    .local v17, offset:I
    sub-int v27, v26, v17

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v17

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 700
    .local v23, spacing:I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setPageSpacing(I)V

    .line 704
    .end local v17           #offset:I
    .end local v23           #spacing:I
    :cond_169
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateScrollingIndicatorPosition()V

    .line 706
    if-lez v5, :cond_18c

    .line 707
    add-int/lit8 v27, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildOffset(I)I

    move-result v27

    add-int/lit8 v28, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaxScrollX:I

    goto/16 :goto_11

    .line 709
    :cond_18c
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaxScrollX:I

    goto/16 :goto_11
.end method

.method protected onPageBeginMoving()V
    .registers 1

    .prologue
    .line 505
    return-void
.end method

.method protected onPageEndMoving()V
    .registers 1

    .prologue
    .line 509
    return-void
.end method

.method public abstract onRemoveView(Landroid/view/View;Z)V
.end method

.method public abstract onRemoveViewAnimationCompleted()V
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 7
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 948
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_12

    .line 949
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    .line 953
    .local v0, focusablePage:I
    :goto_7
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 954
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_15

    .line 955
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 957
    :goto_11
    return v2

    .line 951
    .end local v0           #focusablePage:I
    .end local v1           #v:Landroid/view/View;
    :cond_12
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    .restart local v0       #focusablePage:I
    goto :goto_7

    .line 957
    .restart local v1       #v:Landroid/view/View;
    :cond_15
    const/4 v2, 0x0

    goto :goto_11
.end method

.method protected onStartReordering()V
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 2120
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 2121
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mReorderFocusView:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    .line 2122
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mReorderFocusView:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setIsReordering(Z)V

    .line 2123
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mReorderFocusView:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getChildCount()I

    move-result v1

    .line 2124
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1e
    if-ge v0, v1, :cond_2c

    .line 2125
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mReorderFocusView:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2124
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 2129
    .end local v0           #i:I
    .end local v1           #index:I
    :cond_2c
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 2130
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mContext:Landroid/content/Context;

    const v3, 0x10404f1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2135
    :cond_44
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    .line 2136
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsReordering:Z

    .line 2139
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getVisiblePages([I)V

    .line 2140
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->boundByReorderablePages(Z[I)V

    .line 2141
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_53
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v2

    if-ge v0, v2, :cond_71

    .line 2142
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-lt v0, v2, :cond_66

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v2, v4

    if-le v0, v2, :cond_6e

    .line 2143
    :cond_66
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2141
    :cond_6e
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    .line 2149
    :cond_71
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->invalidate()V

    .line 2150
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 36
    .parameter "ev"

    .prologue
    .line 1320
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v31

    if-gtz v31, :cond_b

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v31

    .line 1616
    :goto_a
    return v31

    .line 1322
    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1324
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1326
    .local v4, action:I
    and-int/lit16 v0, v4, 0xff

    move/from16 v31, v0

    packed-switch v31, :pswitch_data_654

    .line 1616
    :cond_19
    :goto_19
    :pswitch_19
    const/16 v31, 0x1

    goto :goto_a

    .line 1332
    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->isFinished()Z

    move-result v31

    if-nez v31, :cond_31

    .line 1333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1337
    :cond_31
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionX:F

    .line 1338
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionY:F

    .line 1339
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollX()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownScrollX:F

    .line 1340
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v18

    .line 1341
    .local v18, p:[F
    const/16 v31, 0x0

    aget v31, v18, v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionX:F

    .line 1342
    const/16 v31, 0x1

    aget v31, v18, v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionY:F

    .line 1343
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionXRemainder:F

    .line 1344
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTotalMotionX:F

    .line 1345
    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mActivePointerId:I

    .line 1348
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mEdgeSwipeRegionSize:I

    move/from16 v32, v0

    add-int v16, v31, v32

    .line 1349
    .local v16, leftEdgeBoundary:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getMeasuredWidth()I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v32

    sub-int v31, v31, v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mEdgeSwipeRegionSize:I

    move/from16 v32, v0

    sub-int v27, v31, v32

    .line 1350
    .local v27, rightEdgeBoundary:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionX:F

    move/from16 v31, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v32, v0

    cmpg-float v31, v31, v32

    if-lez v31, :cond_e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionX:F

    move/from16 v31, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v32, v0

    cmpl-float v31, v31, v32

    if-ltz v31, :cond_f0

    .line 1351
    :cond_e8
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownEventOnEdge:Z

    .line 1354
    :cond_f0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_19

    .line 1355
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->pageBeginMoving()V

    goto/16 :goto_19

    .line 1360
    .end local v16           #leftEdgeBoundary:I
    .end local v18           #p:[F
    .end local v27           #rightEdgeBoundary:I
    :pswitch_103
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1ea

    .line 1362
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mActivePointerId:I

    move/from16 v31, v0

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v23

    .line 1364
    .local v23, pointerIndex:I
    const/16 v31, -0x1

    move/from16 v0, v23

    move/from16 v1, v31

    if-ne v0, v1, :cond_15d

    .line 1365
    const/16 v23, 0x0

    .line 1366
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mActivePointerId:I

    .line 1367
    const-string v31, "WidgetPagedView"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Invalid pointerId="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mActivePointerId:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " in onTouchEvent"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 1371
    :cond_15d
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v30

    .line 1372
    .local v30, x:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionXRemainder:F

    move/from16 v32, v0

    add-float v31, v31, v32

    sub-float v7, v31, v30

    .line 1374
    .local v7, deltaX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTotalMotionX:F

    move/from16 v31, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v32

    add-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTotalMotionX:F

    .line 1379
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v31

    const/high16 v32, 0x3f80

    cmpl-float v31, v31, v32

    if-ltz v31, :cond_1e5

    .line 1380
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchX:F

    move/from16 v31, v0

    add-float v31, v31, v7

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchX:F

    .line 1381
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v31

    move-wide/from16 v0, v31

    long-to-float v0, v0

    move/from16 v31, v0

    const v32, 0x4e6e6b28

    div-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSmoothingTime:F

    .line 1382
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeferScrollUpdate:Z

    move/from16 v31, v0

    if-nez v31, :cond_1e1

    .line 1383
    float-to-int v0, v7

    move/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->scrollBy(II)V

    .line 1388
    :goto_1c9
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    .line 1389
    float-to-int v0, v7

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v31, v7, v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionXRemainder:F

    goto/16 :goto_19

    .line 1386
    :cond_1e1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->invalidate()V

    goto :goto_1c9

    .line 1391
    :cond_1e5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->awakenScrollBars()Z

    goto/16 :goto_19

    .line 1393
    .end local v7           #deltaX:F
    .end local v23           #pointerIndex:I
    .end local v30           #x:F
    :cond_1ea
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    move/from16 v31, v0

    const/16 v32, 0x4

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_3ca

    .line 1395
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    .line 1396
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    .line 1400
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v24

    .line 1401
    .local v24, pt:[F
    const/16 v31, 0x0

    aget v31, v24, v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionX:F

    .line 1402
    const/16 v31, 0x1

    aget v31, v24, v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionY:F

    .line 1403
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 1406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v8

    .line 1407
    .local v8, dragViewIndex:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_SIDE_PAGE_BUFFER_PERCENTAGE:F

    move/from16 v31, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v6, v0

    .line 1409
    .local v6, bufferSize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v31

    const/16 v32, 0x0

    aget v31, v31, v32

    int-to-float v0, v6

    move/from16 v32, v0

    add-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v15, v0

    .line 1411
    .local v15, leftBufferEdge:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v31

    const/16 v32, 0x0

    aget v31, v31, v32

    int-to-float v0, v6

    move/from16 v32, v0

    sub-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v26, v0

    .line 1415
    .local v26, rightBufferEdge:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionX:F

    move/from16 v31, v0

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionY:F

    move/from16 v32, v0

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isHoveringOverDeleteDropTarget(II)Z

    move-result v13

    .line 1417
    .local v13, isHoveringOverDelete:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Landroid/view/View;->setPressed(Z)V

    .line 1418
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v13}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setPageHoveringOverDeleteDropTarget(IZ)V

    .line 1427
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionX:F

    move/from16 v22, v0

    .line 1428
    .local v22, parentX:F
    const/16 v19, -0x1

    .line 1429
    .local v19, pageIndexToSnapTo:I
    int-to-float v0, v15

    move/from16 v31, v0

    cmpg-float v31, v22, v31

    if-gez v31, :cond_39c

    if-lez v8, :cond_39c

    .line 1430
    add-int/lit8 v19, v8, -0x1

    .line 1435
    :cond_2f8
    :goto_2f8
    move/from16 v20, v19

    .line 1436
    .local v20, pageUnderPointIndex:I
    const/16 v31, -0x1

    move/from16 v0, v20

    move/from16 v1, v31

    if-le v0, v1, :cond_3b3

    if-nez v13, :cond_3b3

    .line 1437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    aput v33, v31, v32

    .line 1438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v33

    add-int/lit8 v33, v33, -0x1

    aput v33, v31, v32

    .line 1439
    const/16 v31, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->boundByReorderablePages(Z[I)V

    .line 1440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget v31, v31, v32

    move/from16 v0, v31

    move/from16 v1, v20

    if-gt v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v31, v0

    const/16 v32, 0x1

    aget v31, v31, v32

    move/from16 v0, v20

    move/from16 v1, v31

    if-gt v0, v1, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSidePageHoverIndex:I

    move/from16 v31, v0

    move/from16 v0, v20

    move/from16 v1, v31

    if-eq v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->isFinished()Z

    move-result v31

    if-eqz v31, :cond_19

    .line 1443
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSidePageHoverIndex:I

    .line 1444
    new-instance v31, Lcom/android/internal/policy/impl/keyguard/PagedView$1;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v8}, Lcom/android/internal/policy/impl/keyguard/PagedView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;II)V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    .line 1494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_19

    .line 1431
    .end local v20           #pageUnderPointIndex:I
    :cond_39c
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v31, v0

    cmpl-float v31, v22, v31

    if-lez v31, :cond_2f8

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v31

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v31

    if-ge v8, v0, :cond_2f8

    .line 1432
    add-int/lit8 v19, v8, 0x1

    goto/16 :goto_2f8

    .line 1497
    .restart local v20       #pageUnderPointIndex:I
    :cond_3b3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1498
    const/16 v31, -0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSidePageHoverIndex:I

    goto/16 :goto_19

    .line 1501
    .end local v6           #bufferSize:I
    .end local v8           #dragViewIndex:I
    .end local v13           #isHoveringOverDelete:Z
    .end local v15           #leftBufferEdge:I
    .end local v19           #pageIndexToSnapTo:I
    .end local v20           #pageUnderPointIndex:I
    .end local v22           #parentX:F
    .end local v24           #pt:[F
    .end local v26           #rightBufferEdge:I
    :cond_3ca
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto/16 :goto_19

    .line 1506
    :pswitch_3cf
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_53d

    .line 1507
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mActivePointerId:I

    .line 1508
    .local v5, activePointerId:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v23

    .line 1510
    .restart local v23       #pointerIndex:I
    const/16 v31, -0x1

    move/from16 v0, v23

    move/from16 v1, v31

    if-eq v0, v1, :cond_19

    .line 1511
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v30

    .line 1512
    .restart local v30       #x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v28, v0

    .line 1513
    .local v28, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v31, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaximumVelocity:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1514
    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v29, v0

    .line 1515
    .local v29, velocityX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionX:F

    move/from16 v31, v0

    sub-float v31, v30, v31

    move/from16 v0, v31

    float-to-int v7, v0

    .line 1516
    .local v7, deltaX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v21

    .line 1517
    .local v21, pageWidth:I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v32, v0

    const v33, 0x3ecccccd

    mul-float v32, v32, v33

    cmpl-float v31, v31, v32

    if-lez v31, :cond_4f8

    const/4 v14, 0x1

    .line 1520
    .local v14, isSignificantMove:Z
    :goto_457
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTotalMotionX:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionXRemainder:F

    move/from16 v33, v0

    add-float v32, v32, v33

    sub-float v32, v32, v30

    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->abs(F)F

    move-result v32

    add-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTotalMotionX:F

    .line 1522
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTotalMotionX:F

    move/from16 v31, v0

    const/high16 v32, 0x41c8

    cmpl-float v31, v31, v32

    if-lez v31, :cond_4fb

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mFlingThresholdVelocity:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_4fb

    const/4 v12, 0x1

    .line 1528
    .local v12, isFling:Z
    :goto_496
    const/16 v25, 0x0

    .line 1529
    .local v25, returnToOriginalPage:Z
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v32, v0

    const v33, 0x3ea8f5c3

    mul-float v32, v32, v33

    cmpl-float v31, v31, v32

    if-lez v31, :cond_4c7

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->signum(F)F

    move-result v31

    int-to-float v0, v7

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->signum(F)F

    move-result v32

    cmpl-float v31, v31, v32

    if-eqz v31, :cond_4c7

    if-eqz v12, :cond_4c7

    .line 1531
    const/16 v25, 0x1

    .line 1538
    :cond_4c7
    if-eqz v14, :cond_4cd

    if-lez v7, :cond_4cd

    if-eqz v12, :cond_4d1

    :cond_4cd
    if-eqz v12, :cond_506

    if-lez v29, :cond_506

    :cond_4d1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    move/from16 v31, v0

    if-lez v31, :cond_506

    .line 1540
    if-eqz v25, :cond_4fd

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    .line 1541
    .local v9, finalPage:I
    :goto_4df
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPageWithVelocity(II)V

    .line 1599
    .end local v5           #activePointerId:I
    .end local v7           #deltaX:I
    .end local v9           #finalPage:I
    .end local v12           #isFling:Z
    .end local v14           #isSignificantMove:Z
    .end local v21           #pageWidth:I
    .end local v23           #pointerIndex:I
    .end local v25           #returnToOriginalPage:Z
    .end local v28           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v29           #velocityX:I
    .end local v30           #x:F
    :cond_4e6
    :goto_4e6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1601
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->resetTouchState()V

    goto/16 :goto_19

    .line 1517
    .restart local v5       #activePointerId:I
    .restart local v7       #deltaX:I
    .restart local v21       #pageWidth:I
    .restart local v23       #pointerIndex:I
    .restart local v28       #velocityTracker:Landroid/view/VelocityTracker;
    .restart local v29       #velocityX:I
    .restart local v30       #x:F
    :cond_4f8
    const/4 v14, 0x0

    goto/16 :goto_457

    .line 1522
    .restart local v14       #isSignificantMove:Z
    :cond_4fb
    const/4 v12, 0x0

    goto :goto_496

    .line 1540
    .restart local v12       #isFling:Z
    .restart local v25       #returnToOriginalPage:Z
    :cond_4fd
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    move/from16 v31, v0

    add-int/lit8 v9, v31, -0x1

    goto :goto_4df

    .line 1542
    :cond_506
    if-eqz v14, :cond_50c

    if-gez v7, :cond_50c

    if-eqz v12, :cond_510

    :cond_50c
    if-eqz v12, :cond_539

    if-gez v29, :cond_539

    :cond_510
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    move/from16 v31, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v32

    add-int/lit8 v32, v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_539

    .line 1545
    if-eqz v25, :cond_530

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    .line 1546
    .restart local v9       #finalPage:I
    :goto_528
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPageWithVelocity(II)V

    goto :goto_4e6

    .line 1545
    .end local v9           #finalPage:I
    :cond_530
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    move/from16 v31, v0

    add-int/lit8 v9, v31, 0x1

    goto :goto_528

    .line 1548
    :cond_539
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToDestination()V

    goto :goto_4e6

    .line 1550
    .end local v5           #activePointerId:I
    .end local v7           #deltaX:I
    .end local v12           #isFling:Z
    .end local v14           #isSignificantMove:Z
    .end local v21           #pageWidth:I
    .end local v23           #pointerIndex:I
    .end local v25           #returnToOriginalPage:Z
    .end local v28           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v29           #velocityX:I
    .end local v30           #x:F
    :cond_53d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_573

    .line 1554
    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, -0x1

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 1555
    .local v17, nextPage:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    move/from16 v31, v0

    move/from16 v0, v17

    move/from16 v1, v31

    if-eq v0, v1, :cond_56e

    .line 1556
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    goto/16 :goto_4e6

    .line 1558
    :cond_56e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToDestination()V

    goto/16 :goto_4e6

    .line 1560
    .end local v17           #nextPage:I
    :cond_573
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    move/from16 v31, v0

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_5ad

    .line 1564
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v31

    add-int/lit8 v31, v31, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 1565
    .restart local v17       #nextPage:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    move/from16 v31, v0

    move/from16 v0, v17

    move/from16 v1, v31

    if-eq v0, v1, :cond_5a8

    .line 1566
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    goto/16 :goto_4e6

    .line 1568
    :cond_5a8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToDestination()V

    goto/16 :goto_4e6

    .line 1570
    .end local v17           #nextPage:I
    :cond_5ad
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    move/from16 v31, v0

    const/16 v32, 0x4

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_634

    .line 1572
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    .line 1573
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    .line 1577
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v24

    .line 1578
    .restart local v24       #pt:[F
    const/16 v31, 0x0

    aget v31, v24, v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionX:F

    .line 1579
    const/16 v31, 0x1

    aget v31, v24, v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionY:F

    .line 1580
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 1581
    const/4 v11, 0x0

    .line 1584
    .local v11, handledFling:Z
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isFlingingToDelete()Landroid/graphics/PointF;

    move-result-object v10

    .line 1585
    .local v10, flingToDeleteVector:Landroid/graphics/PointF;
    if-eqz v10, :cond_60b

    .line 1586
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onFlingToDelete(Landroid/graphics/PointF;)V

    .line 1587
    const/4 v11, 0x1

    .line 1590
    :cond_60b
    if-nez v11, :cond_4e6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionX:F

    move/from16 v31, v0

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionY:F

    move/from16 v32, v0

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isHoveringOverDeleteDropTarget(II)Z

    move-result v31

    if-eqz v31, :cond_4e6

    .line 1592
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onDropToDelete()V

    goto/16 :goto_4e6

    .line 1595
    .end local v10           #flingToDeleteVector:Landroid/graphics/PointF;
    .end local v11           #handledFling:Z
    .end local v24           #pt:[F
    :cond_634
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onUnhandledTap(Landroid/view/MotionEvent;)V

    goto/16 :goto_4e6

    .line 1605
    :pswitch_639
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_64a

    .line 1606
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToDestination()V

    .line 1608
    :cond_64a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->resetTouchState()V

    goto/16 :goto_19

    .line 1612
    :pswitch_64f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_19

    .line 1326
    :pswitch_data_654
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_3cf
        :pswitch_103
        :pswitch_639
        :pswitch_19
        :pswitch_19
        :pswitch_64f
    .end packed-switch
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "ev"

    .prologue
    .line 1632
    return-void
.end method

.method protected overScroll(F)V
    .registers 2
    .parameter "amount"

    .prologue
    .line 1302
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->dampedOverScroll(F)V

    .line 1303
    return-void
.end method

.method protected pageBeginMoving()V
    .registers 2

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsPageMoving:Z

    if-nez v0, :cond_a

    .line 487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsPageMoving:Z

    .line 488
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onPageBeginMoving()V

    .line 490
    :cond_a
    return-void
.end method

.method protected pageEndMoving()V
    .registers 2

    .prologue
    .line 493
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsPageMoving:Z

    if-eqz v0, :cond_a

    .line 494
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsPageMoving:Z

    .line 495
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onPageEndMoving()V

    .line 497
    :cond_a
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 6
    .parameter "action"
    .parameter "arguments"

    .prologue
    const/4 v0, 0x1

    .line 2592
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2609
    :goto_7
    return v0

    .line 2595
    :cond_8
    sparse-switch p1, :sswitch_data_28

    .line 2609
    :cond_b
    const/4 v0, 0x0

    goto :goto_7

    .line 2597
    :sswitch_d
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_b

    .line 2598
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->scrollRight()V

    goto :goto_7

    .line 2603
    :sswitch_1d
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_b

    .line 2604
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->scrollLeft()V

    goto :goto_7

    .line 2595
    nop

    :sswitch_data_28
    .sparse-switch
        0x1000 -> :sswitch_d
        0x2000 -> :sswitch_1d
    .end sparse-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1698
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1699
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->indexToPage(I)I

    move-result v0

    .line 1700
    .local v0, page:I
    if-ltz v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_1c

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 1701
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    .line 1703
    :cond_1c
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 6
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 937
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->indexToPage(I)I

    move-result v0

    .line 938
    .local v0, page:I
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    if-ne v0, v1, :cond_14

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_19

    .line 939
    :cond_14
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    .line 940
    const/4 v1, 0x1

    .line 942
    :goto_18
    return v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_18
.end method

.method protected screenScrolled(I)V
    .registers 2
    .parameter "screenCenter"

    .prologue
    .line 757
    return-void
.end method

.method public scrollBy(II)V
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 527
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mUnboundedScrollX:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->scrollTo(II)V

    .line 528
    return-void
.end method

.method public scrollLeft()V
    .registers 2

    .prologue
    .line 1876
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1877
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    if-lez v0, :cond_13

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    .line 1881
    :cond_13
    :goto_13
    return-void

    .line 1879
    :cond_14
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    if-lez v0, :cond_13

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    goto :goto_13
.end method

.method public scrollRight()V
    .registers 3

    .prologue
    .line 1884
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1885
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_19

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    .line 1889
    :cond_19
    :goto_19
    return-void

    .line 1887
    :cond_1a
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_19

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    goto :goto_19
.end method

.method public scrollTo(II)V
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 532
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mUnboundedScrollX:I

    .line 534
    if-gez p1, :cond_39

    .line 535
    invoke-super {p0, v3, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 536
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAllowOverScroll:Z

    if-eqz v1, :cond_11

    .line 537
    int-to-float v1, p1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->overScroll(F)V

    .line 549
    :cond_11
    :goto_11
    int-to-float v1, p1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchX:F

    .line 550
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    long-to-float v1, v1

    const v2, 0x4e6e6b28

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSmoothingTime:F

    .line 553
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isReordering(Z)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 554
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionX:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionY:F

    invoke-virtual {p0, p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v0

    .line 555
    .local v0, p:[F
    aget v1, v0, v3

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    .line 556
    aget v1, v0, v4

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    .line 557
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 559
    .end local v0           #p:[F
    :cond_38
    return-void

    .line 539
    :cond_39
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaxScrollX:I

    if-le p1, v1, :cond_4f

    .line 540
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaxScrollX:I

    invoke-super {p0, v1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 541
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAllowOverScroll:Z

    if-eqz v1, :cond_11

    .line 542
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaxScrollX:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->overScroll(F)V

    goto :goto_11

    .line 545
    :cond_4f
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOverScrollX:I

    .line 546
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_11
.end method

.method setCurrentPage(I)V
    .registers 4
    .parameter "currentPage"

    .prologue
    .line 451
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->notifyPageSwitching(I)V

    .line 452
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_10

    .line 453
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 457
    :cond_10
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_17

    .line 467
    :goto_16
    return-void

    .line 461
    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 462
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    .line 463
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateCurrentPageScroll()V

    .line 464
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateScrollingIndicator()V

    .line 465
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->notifyPageSwitched()V

    .line 466
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->invalidate()V

    goto :goto_16
.end method

.method protected setDataIsReady()V
    .registers 2

    .prologue
    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsDataReady:Z

    .line 402
    return-void
.end method

.method setDeleteDropTarget(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    .line 321
    return-void
.end method

.method public setMinScale(F)V
    .registers 2
    .parameter "f"

    .prologue
    .line 353
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinScale:F

    .line 354
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->requestLayout()V

    .line 355
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 5
    .parameter "l"

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 519
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v0

    .line 520
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_13

    .line 521
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 520
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 523
    :cond_13
    return-void
.end method

.method public setOnlyAllowEdgeSwipes(Z)V
    .registers 2
    .parameter "enable"

    .prologue
    .line 470
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOnlyAllowEdgeSwipes:Z

    .line 471
    return-void
.end method

.method protected setPageHoveringOverDeleteDropTarget(IZ)V
    .registers 3
    .parameter "viewIndex"
    .parameter "isHovering"

    .prologue
    .line 2526
    return-void
.end method

.method public setPageSpacing(I)V
    .registers 2
    .parameter "pageSpacing"

    .prologue
    .line 714
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSpacing:I

    .line 715
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->invalidateCachedOffsets()V

    .line 716
    return-void
.end method

.method public setPageSwitchListener(Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;)V
    .registers 5
    .parameter "pageSwitchListener"

    .prologue
    .line 390
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSwitchListener:Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;

    .line 391
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSwitchListener:Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;

    if-eqz v0, :cond_13

    .line 392
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSwitchListener:Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;->onPageSwitched(Landroid/view/View;I)V

    .line 394
    :cond_13
    return-void
.end method

.method public setScaleX(F)V
    .registers 6
    .parameter "scaleX"

    .prologue
    const/4 v3, 0x1

    .line 359
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 360
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isReordering(Z)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 361
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionX:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionY:F

    invoke-virtual {p0, p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v0

    .line 362
    .local v0, p:[F
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    .line 363
    aget v1, v0, v3

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    .line 364
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2a

    .line 365
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPagingTouchSlop:I

    int-to-float v1, v1

    div-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPagingTouchSlopScale:I

    .line 367
    :cond_2a
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 369
    .end local v0           #p:[F
    :cond_2d
    return-void
.end method

.method protected shouldDrawChild(Landroid/view/View;)Z
    .registers 4
    .parameter "child"

    .prologue
    .line 884
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected shouldSetTopAlignedPivotForWidget(I)Z
    .registers 3
    .parameter "childIndex"

    .prologue
    .line 595
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTopAlignPageWhenShrinkingForBouncer:Z

    return v0
.end method

.method protected showScrollingIndicator(Z)V
    .registers 7
    .parameter "immediately"

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1957
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mShouldShowScrollIndicator:Z

    .line 1958
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    .line 1959
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v0

    if-gt v0, v2, :cond_f

    .line 1977
    :cond_e
    :goto_e
    return-void

    .line 1960
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1962
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mShouldShowScrollIndicator:Z

    .line 1963
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 1964
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 1966
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateScrollingIndicatorPosition()V

    .line 1967
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1968
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->cancelScrollingIndicatorAnimations()V

    .line 1969
    if-eqz p1, :cond_31

    .line 1970
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_e

    .line 1972
    :cond_31
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v2, [F

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 1973
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1974
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_e
.end method

.method protected snapToDestination()V
    .registers 3

    .prologue
    .line 1759
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    const/16 v1, 0x2ee

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(II)V

    .line 1760
    return-void
.end method

.method protected snapToPage(I)V
    .registers 3
    .parameter "whichPage"

    .prologue
    .line 1820
    const/16 v0, 0x2ee

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(II)V

    .line 1821
    return-void
.end method

.method protected snapToPage(II)V
    .registers 4
    .parameter "whichPage"
    .parameter "duration"

    .prologue
    .line 1827
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(IIZ)V

    .line 1828
    return-void
.end method

.method protected snapToPage(III)V
    .registers 5
    .parameter "whichPage"
    .parameter "delta"
    .parameter "duration"

    .prologue
    .line 1842
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(IIIZ)V

    .line 1843
    return-void
.end method

.method protected snapToPage(IIIZ)V
    .registers 12
    .parameter "whichPage"
    .parameter "delta"
    .parameter "duration"
    .parameter "immediate"

    .prologue
    const/4 v2, 0x0

    .line 1845
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    .line 1846
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->notifyPageSwitching(I)V

    .line 1847
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getFocusedChild()Landroid/view/View;

    move-result-object v6

    .line 1848
    .local v6, focusedChild:Landroid/view/View;
    if-eqz v6, :cond_1b

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    if-eq p1, v0, :cond_1b

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v6, v0, :cond_1b

    .line 1850
    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    .line 1853
    :cond_1b
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->pageBeginMoving()V

    .line 1854
    invoke-virtual {p0, p3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->awakenScrollBars(I)Z

    .line 1855
    if-eqz p4, :cond_4a

    .line 1856
    const/4 p3, 0x0

    .line 1861
    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1862
    :cond_31
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mUnboundedScrollX:I

    move v3, p2

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1864
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->notifyPageSwitched()V

    .line 1867
    if-eqz p4, :cond_43

    .line 1868
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->computeScroll()V

    .line 1871
    :cond_43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 1872
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->invalidate()V

    .line 1873
    return-void

    .line 1857
    :cond_4a
    if-nez p3, :cond_24

    .line 1858
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    goto :goto_24
.end method

.method protected snapToPage(IIZ)V
    .registers 9
    .parameter "whichPage"
    .parameter "duration"
    .parameter "immediate"

    .prologue
    .line 1830
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1835
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildOffset(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v4

    sub-int v1, v3, v4

    .line 1836
    .local v1, newX:I
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mUnboundedScrollX:I

    .line 1837
    .local v2, sX:I
    sub-int v0, v1, v2

    .line 1838
    .local v0, delta:I
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(IIIZ)V

    .line 1839
    return-void
.end method

.method protected snapToPageImmediately(I)V
    .registers 4
    .parameter "whichPage"

    .prologue
    .line 1823
    const/16 v0, 0x2ee

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(IIZ)V

    .line 1824
    return-void
.end method

.method protected snapToPageWithVelocity(II)V
    .registers 12
    .parameter "whichPage"
    .parameter "velocity"

    .prologue
    const/high16 v8, 0x3f80

    .line 1783
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1784
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v6

    div-int/lit8 v4, v6, 0x2

    .line 1789
    .local v4, halfScreenSize:I
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildOffset(I)I

    move-result v6

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v7

    sub-int v5, v6, v7

    .line 1790
    .local v5, newX:I
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mUnboundedScrollX:I

    sub-int v0, v5, v6

    .line 1791
    .local v0, delta:I
    const/4 v3, 0x0

    .line 1793
    .local v3, duration:I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinFlingVelocity:I

    if-ge v6, v7, :cond_34

    .line 1796
    const/16 v6, 0x2ee

    invoke-virtual {p0, p1, v6}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(II)V

    .line 1817
    :goto_33
    return-void

    .line 1804
    :cond_34
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    mul-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1805
    .local v2, distanceRatio:F
    int-to-float v6, v4

    int-to-float v7, v4

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float v1, v6, v7

    .line 1808
    .local v1, distance:F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 1809
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinSnapVelocity:I

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1814
    const/high16 v6, 0x447a

    int-to-float v7, p2

    div-float v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v3, v6, 0x4

    .line 1816
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(III)V

    goto :goto_33
.end method

.method public startReordering()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2191
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    .line 2192
    .local v0, dragViewIndex:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aput v2, v3, v2

    .line 2193
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aput v4, v3, v1

    .line 2194
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->boundByReorderablePages(Z[I)V

    .line 2195
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mReorderingStarted:Z

    .line 2198
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v3, v2

    if-gt v3, v0, :cond_37

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v3, v1

    if-gt v0, v3, :cond_37

    .line 2200
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->zoomOut()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 2202
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    .line 2204
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onStartReordering()V

    .line 2208
    :cond_36
    :goto_36
    return v1

    :cond_37
    move v1, v2

    goto :goto_36
.end method

.method protected updateCurrentPageScroll()V
    .registers 6

    .prologue
    .line 439
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildOffset(I)I

    move-result v1

    .line 440
    .local v1, offset:I
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    .line 441
    .local v2, relOffset:I
    sub-int v0, v1, v2

    .line 442
    .local v0, newX:I
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->scrollTo(II)V

    .line 443
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v0}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 444
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 445
    return-void
.end method

.method updateDragViewTranslationDuringDrag()V
    .registers 5

    .prologue
    .line 341
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    if-nez v2, :cond_5

    .line 350
    :goto_4
    return-void

    .line 344
    :cond_5
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionX:F

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownScrollX:F

    sub-float v0, v2, v3

    .line 345
    .local v0, x:F
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionY:F

    sub-float v1, v2, v3

    .line 346
    .local v1, y:F
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 347
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_4
.end method

.method protected zoomIn(Ljava/lang/Runnable;)Z
    .registers 9
    .parameter "onCompleteRunnable"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v6, 0x3f80

    .line 2258
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2259
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2261
    :cond_15
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScaleX()F

    move-result v2

    cmpg-float v2, v2, v6

    if-ltz v2, :cond_25

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScaleY()F

    move-result v2

    cmpg-float v2, v2, v6

    if-gez v2, :cond_65

    .line 2262
    :cond_25
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    .line 2263
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_ZOOM_IN_OUT_DURATION:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2264
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const-string v4, "scaleX"

    new-array v5, v1, [F

    aput v6, v5, v0

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "scaleY"

    new-array v5, v1, [F

    aput v6, v5, v0

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2267
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/PagedView$8;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView$8;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2294
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    move v0, v1

    .line 2301
    :cond_64
    :goto_64
    return v0

    .line 2297
    :cond_65
    if-eqz p1, :cond_64

    .line 2298
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_64
.end method

.method protected zoomOut()Z
    .registers 8

    .prologue
    const/high16 v3, 0x3f80

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2085
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2086
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2089
    :cond_15
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScaleX()F

    move-result v2

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_68

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScaleY()F

    move-result v2

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_68

    .line 2090
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    .line 2091
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_ZOOM_IN_OUT_DURATION:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2092
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const-string v4, "scaleX"

    new-array v5, v0, [F

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinScale:F

    aput v6, v5, v1

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "scaleY"

    new-array v5, v0, [F

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinScale:F

    aput v6, v5, v1

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2095
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/PagedView$5;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/PagedView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2112
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 2115
    :goto_67
    return v0

    :cond_68
    move v0, v1

    goto :goto_67
.end method
