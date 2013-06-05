.class public Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
.super Ljava/lang/Object;
.source "MultiPhoneWindowEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;,
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;,
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;,
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$DoubleTapPinupListener;,
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;,
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TitlebarButtonListener;,
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;
    }
.end annotation


# static fields
.field private static REVISE_WINDOW_BOUNDARY_X:I = 0x0

.field private static REVISE_WINDOW_BOUNDARY_Y:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MultiPhoneWindowEvent"

.field private static mIsFillWindow:Z

.field private static sActionBarViewSetMultiWindowReserved:Ljava/lang/reflect/Method;

.field private static sIsQueriedActionBarViewSetMultiWindowReserved:Z

.field private static statusBarHeight:I


# instance fields
.field private ENABLED_ACTION_BAR_DOUBLE_TAPPING:Z

.field private ENABLED_MINIMIZED_BUTTON:Z

.field private final HOVERING_WIDTH:I

.field private final SHOWING_PADDING_WIDTH:I

.field private final TOOLKIT_SHOWING_PADDING:I

.field private fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

.field private hasGuideLayout:Z

.field private longDownX:I

.field private longDownY:I

.field private mActivity:Landroid/app/Activity;

.field private mActivityStyles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mApplicationStyles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mArrange:I

.field private mBorderFrame:Landroid/widget/FrameLayout;

.field private mBorderLayout:Landroid/widget/LinearLayout;

.field private mBottomBorderPadding:I

.field private mContentRoot:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

.field private mDividor1:Landroid/view/View;

.field private mDividor2:Landroid/view/View;

.field private mExitButton:Landroid/widget/ImageButton;

.field private mGestureView:Landroid/gesture/GestureOverlayView;

.field private mIsPhone:Z

.field private mIsResizeOnly:Z

.field private mLastWindowMode:I

.field private mLeftBorderPadding:I

.field private mMaxSize:Landroid/graphics/Point;

.field private mMaximizeButton:Landroid/widget/ImageButton;

.field private mMinHeight:F

.field private mMinWidth:F

.field private mMinimizeButton:Landroid/widget/ImageButton;

.field private mMultiWindowButton:Landroid/widget/ImageButton;

.field private mOwner:Landroid/view/Window;

.field private final mPaddingWidth:I

.field private mPinupButton:Landroid/widget/ImageButton;

.field private mRightBorderPadding:I

.field private mTitleText:Landroid/widget/TextView;

.field private mToolkitManagerService:Landroid/toolkit/IToolkitService;

.field private mTopBorderPadding:I

.field private mTouchBroadcastReceiver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;

.field private mUserWindowFlags:I

.field private mVideoCapabilityAlert:Landroid/app/AlertDialog$Builder;

.field private mVideoCapabilityReceiver:Landroid/content/BroadcastReceiver;

.field private mWfdReceiver:Landroid/content/BroadcastReceiver;

.field private mWindowBackground:Landroid/graphics/drawable/Drawable;

.field private mWindowContentFrame:Landroid/widget/LinearLayout;

.field private mWindowTitleBar:Landroid/view/View;

.field private supportFlick:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 84
    sput v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->statusBarHeight:I

    .line 133
    sput-boolean v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFillWindow:Z

    .line 148
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->sActionBarViewSetMultiWindowReserved:Ljava/lang/reflect/Method;

    .line 149
    sput-boolean v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->sIsQueriedActionBarViewSetMultiWindowReserved:Z

    .line 151
    const/16 v0, 0x12c

    sput v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->REVISE_WINDOW_BOUNDARY_X:I

    .line 152
    const/16 v0, 0xc8

    sput v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->REVISE_WINDOW_BOUNDARY_Y:I

    return-void
.end method

.method private constructor <init>(Landroid/view/Window;)V
    .registers 24
    .parameter "owner"

    .prologue
    .line 388
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsResizeOnly:Z

    .line 94
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowBackground:Landroid/graphics/drawable/Drawable;

    .line 96
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    .line 101
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    .line 112
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    .line 114
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinWidth:F

    .line 115
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinHeight:F

    .line 117
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mArrange:I

    .line 118
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLeftBorderPadding:I

    .line 119
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTopBorderPadding:I

    .line 120
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mRightBorderPadding:I

    .line 121
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBottomBorderPadding:I

    .line 123
    const/high16 v20, 0x100

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastWindowMode:I

    .line 125
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    .line 126
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsPhone:Z

    .line 128
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_MINIMIZED_BUTTON:Z

    .line 129
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_ACTION_BAR_DOUBLE_TAPPING:Z

    .line 131
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->supportFlick:Z

    .line 135
    const/16 v20, 0x1e

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPaddingWidth:I

    .line 136
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->SHOWING_PADDING_WIDTH:I

    .line 137
    const/16 v20, 0x14

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->HOVERING_WIDTH:I

    .line 138
    const/16 v20, 0xa

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->TOOLKIT_SHOWING_PADDING:I

    .line 140
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I

    .line 141
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I

    .line 143
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z

    .line 145
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWfdReceiver:Landroid/content/BroadcastReceiver;

    .line 146
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVideoCapabilityReceiver:Landroid/content/BroadcastReceiver;

    .line 154
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVideoCapabilityAlert:Landroid/app/AlertDialog$Builder;

    .line 2049
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .line 389
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    .line 392
    sget-boolean v20, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFillWindow:Z

    if-eqz v20, :cond_163

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v20, v0

    if-nez v20, :cond_163

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/content/ContextWrapper;

    move/from16 v20, v0

    if-nez v20, :cond_122

    .line 563
    :cond_121
    :goto_121
    return-void

    .line 397
    :cond_122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    check-cast v20, Landroid/content/ContextWrapper;

    invoke-virtual/range {v20 .. v20}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    if-eqz v20, :cond_121

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v20, v0

    if-eqz v20, :cond_121

    .line 402
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    .line 403
    .local v3, a:Landroid/app/Activity;
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/Window;->getMultiPhoneWindowEvent()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .line 404
    .local v18, stubEvent:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
    if-eqz v18, :cond_163

    .line 405
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDisplayStub(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    .line 412
    .end local v3           #a:Landroid/app/Activity;
    .end local v18           #stubEvent:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
    :cond_163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    check-cast v20, Landroid/app/Activity;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    .line 413
    const-string v20, "com.sec.android.multiwindow.STYLE"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->parseApplicationInfoMetaData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mApplicationStyles:Ljava/util/ArrayList;

    .line 414
    const-string v20, "com.sec.android.multiwindow.activity.STYLE"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->parseActivityInfoMetaData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivityStyles:Ljava/util/ArrayList;

    .line 415
    const-string v20, "resizeOnly"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasActivityStyle(Ljava/lang/String;)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsResizeOnly:Z

    .line 417
    :try_start_1a1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1070053

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 418
    .local v7, fixedRatioAppList:[Ljava/lang/String;
    move-object v4, v7

    .local v4, arr$:[Ljava/lang/String;
    array-length v14, v4

    .local v14, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_1b5
    if-ge v11, v14, :cond_1d6

    aget-object v6, v4, v11

    .line 419
    .local v6, fixedRatioApp:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_362

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mApplicationStyles:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const-string v21, "fixedRatio"

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1d6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1a1 .. :try_end_1d6} :catch_3cb

    .line 428
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v6           #fixedRatioApp:Ljava/lang/String;
    .end local v7           #fixedRatioAppList:[Ljava/lang/String;
    .end local v11           #i$:I
    .end local v14           #len$:I
    :cond_1d6
    :goto_1d6
    const/4 v10, 0x0

    .line 430
    .local v10, hideFlashBarTray:Z
    :try_start_1d7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1070055

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 431
    .local v9, hideFlashBarAppList:[Ljava/lang/String;
    move-object v4, v9

    .restart local v4       #arr$:[Ljava/lang/String;
    array-length v14, v4

    .restart local v14       #len$:I
    const/4 v11, 0x0

    .restart local v11       #i$:I
    :goto_1eb
    if-ge v11, v14, :cond_202

    aget-object v8, v4, v11

    .line 432
    .local v8, hideApp:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1fe
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1d7 .. :try_end_1fe} :catch_3c8

    move-result v20

    if-eqz v20, :cond_366

    .line 433
    const/4 v10, 0x1

    .line 441
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v8           #hideApp:Ljava/lang/String;
    .end local v9           #hideFlashBarAppList:[Ljava/lang/String;
    .end local v11           #i$:I
    .end local v14           #len$:I
    :cond_202
    :goto_202
    new-instance v20, Landroid/graphics/Point;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_36a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    .line 445
    .local v17, shortSize:I
    :goto_240
    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0xa0

    move/from16 v20, v0

    sget v21, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    div-int v20, v20, v21

    const/16 v21, 0x258

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_378

    const/16 v20, 0x1

    :goto_254
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsPhone:Z

    .line 447
    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v20

    sput v20, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->statusBarHeight:I

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    .line 450
    .local v15, lp:Landroid/view/WindowManager$LayoutParams;
    iget v0, v15, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    .line 451
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v15, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 452
    iget v0, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v20, v0

    const/high16 v21, 0x800

    or-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 453
    if-eqz v10, :cond_294

    .line 454
    iget v0, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v20, v0

    const/high16 v21, 0x400

    or-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 456
    :cond_294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v20

    new-instance v21, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;

    invoke-direct/range {v21 .. v22}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 475
    .local v12, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getWindowMode()I

    move-result v19

    .line 476
    .local v19, windowMode:I
    invoke-static/range {v19 .. v19}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v16

    .line 477
    .local v16, mode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/res/Configuration;->arrange:I

    move/from16 v20, v0

    move/from16 v0, v20

    and-int/lit16 v0, v0, -0x401

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mArrange:I

    .line 479
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->updateSplitRect(I)V

    .line 480
    sparse-switch v16, :sswitch_data_3ce

    .line 498
    :cond_2f3
    :goto_2f3
    new-instance v20, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$2;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWfdReceiver:Landroid/content/BroadcastReceiver;

    .line 520
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isToolkitMode(I)Z

    move-result v20

    if-eqz v20, :cond_31c

    .line 521
    const-string v20, "toolkitmanager"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 522
    .local v5, b:Landroid/os/IBinder;
    invoke-static {v5}, Landroid/toolkit/IToolkitService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/toolkit/IToolkitService;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mToolkitManagerService:Landroid/toolkit/IToolkitService;

    .line 526
    .end local v5           #b:Landroid/os/IBinder;
    :cond_31c
    new-instance v20, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$3;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVideoCapabilityReceiver:Landroid/content/BroadcastReceiver;

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "keyguard"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/KeyguardManager;

    .line 560
    .local v13, km:Landroid/app/KeyguardManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isWfdConnected(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_357

    if-eqz v13, :cond_121

    invoke-virtual {v13}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v20

    if-eqz v20, :cond_121

    invoke-virtual {v13}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v20

    if-eqz v20, :cond_121

    .line 561
    :cond_357
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setActionBarMenuVisibility(Z)V

    goto/16 :goto_121

    .line 418
    .end local v10           #hideFlashBarTray:Z
    .end local v12           #intent:Landroid/content/Intent;
    .end local v13           #km:Landroid/app/KeyguardManager;
    .end local v15           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v16           #mode:I
    .end local v17           #shortSize:I
    .end local v19           #windowMode:I
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v6       #fixedRatioApp:Ljava/lang/String;
    .restart local v7       #fixedRatioAppList:[Ljava/lang/String;
    .restart local v11       #i$:I
    .restart local v14       #len$:I
    :cond_362
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1b5

    .line 431
    .end local v6           #fixedRatioApp:Ljava/lang/String;
    .end local v7           #fixedRatioAppList:[Ljava/lang/String;
    .restart local v8       #hideApp:Ljava/lang/String;
    .restart local v9       #hideFlashBarAppList:[Ljava/lang/String;
    .restart local v10       #hideFlashBarTray:Z
    :cond_366
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1eb

    .line 444
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v8           #hideApp:Ljava/lang/String;
    .end local v9           #hideFlashBarAppList:[Ljava/lang/String;
    .end local v11           #i$:I
    .end local v14           #len$:I
    :cond_36a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    goto/16 :goto_240

    .line 445
    .restart local v17       #shortSize:I
    :cond_378
    const/16 v20, 0x0

    goto/16 :goto_254

    .line 482
    .restart local v12       #intent:Landroid/content/Intent;
    .restart local v15       #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v16       #mode:I
    .restart local v19       #windowMode:I
    :sswitch_37c
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->windowIsTranslucent(I)Z

    move-result v20

    if-nez v20, :cond_397

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->freestyleModeLayout(Landroid/content/Context;I)V

    .line 485
    :cond_397
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setWindowParams(I)V

    goto/16 :goto_2f3

    .line 488
    :sswitch_3a0
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->windowIsTranslucent(I)Z

    move-result v20

    if-nez v20, :cond_3b7

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fullScreenModeLayout(Landroid/content/Context;)V

    .line 491
    :cond_3b7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsPhone:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2f3

    .line 492
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setWindowParams(I)V

    goto/16 :goto_2f3

    .line 437
    .end local v12           #intent:Landroid/content/Intent;
    .end local v15           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v16           #mode:I
    .end local v17           #shortSize:I
    .end local v19           #windowMode:I
    :catch_3c8
    move-exception v20

    goto/16 :goto_202

    .line 424
    .end local v10           #hideFlashBarTray:Z
    :catch_3cb
    move-exception v20

    goto/16 :goto_1d6

    .line 480
    :sswitch_data_3ce
    .sparse-switch
        0x1000000 -> :sswitch_3a0
        0x2000000 -> :sswitch_37c
    .end sparse-switch
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 81
    sget v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->statusBarHeight:I

    return v0
.end method

.method static synthetic access$002(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 81
    sput p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->statusBarHeight:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;II)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->createGhostView(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->forceHideInputMethod()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/graphics/Point;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->reviseWindowPosition(Landroid/graphics/Rect;Landroid/graphics/Point;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_ACTION_BAR_DOUBLE_TAPPING:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->supportFlick:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/widget/FrameLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/gesture/GestureOverlayView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsResizeOnly:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContentRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setActionBarMenuVisibility(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/AlertDialog$Builder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVideoCapabilityAlert:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVideoCapabilityAlert:Landroid/app/AlertDialog$Builder;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/Window;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    return-object v0
.end method

.method private calculatePaddingRect(I)Landroid/graphics/Rect;
    .registers 16
    .parameter "windowMode"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 1079
    iget-object v11, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v10

    .line 1081
    .local v10, winInfo:Landroid/os/Bundle;
    invoke-direct {p0, p1, v10}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->getCurrentRect(ILandroid/os/Bundle;)Landroid/graphics/Rect;

    move-result-object v2

    .line 1082
    .local v2, currentRect:Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v12, v12, v12, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1084
    .local v6, paddingRect:Landroid/graphics/Rect;
    const/4 v5, 0x0

    .line 1085
    .local v5, left:I
    const/4 v9, 0x0

    .line 1086
    .local v9, top:I
    const/4 v7, 0x0

    .line 1087
    .local v7, right:I
    const/4 v0, 0x0

    .line 1088
    .local v0, bottom:I
    iget-object v11, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 1090
    .local v8, titleBarHeight:I
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v3, v11

    .line 1091
    .local v3, currentWidth:F
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v1, v11

    .line 1092
    .local v1, currentHeight:F
    iget v11, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinWidth:F

    iget v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinHeight:F

    div-float v4, v11, v12

    .line 1094
    .local v4, fixedRatio:F
    div-float v11, v3, v4

    sub-float v11, v1, v11

    cmpl-float v11, v11, v13

    if-lez v11, :cond_3f

    .line 1096
    div-float v11, v3, v4

    sub-float v11, v1, v11

    float-to-int v11, v11

    div-int/lit8 v0, v11, 0x2

    move v9, v0

    .line 1097
    invoke-virtual {v6, v5, v9, v7, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1103
    :cond_3e
    :goto_3e
    return-object v6

    .line 1098
    :cond_3f
    mul-float v11, v1, v4

    sub-float v11, v3, v11

    cmpl-float v11, v11, v13

    if-lez v11, :cond_3e

    .line 1100
    mul-float v11, v1, v4

    sub-float v11, v3, v11

    float-to-int v11, v11

    div-int/lit8 v7, v11, 0x2

    move v5, v7

    .line 1101
    invoke-virtual {v6, v5, v9, v7, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3e
.end method

.method private createGhostView(II)Z
    .registers 16
    .parameter "startX"
    .parameter "startY"

    .prologue
    const/4 v12, 0x1

    const/4 v7, -0x1

    .line 1851
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    if-eqz v0, :cond_12

    .line 1853
    const-string v0, "MultiPhoneWindowEvent"

    const-string v1, "fd is not null. dismiss old guide relayout window"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->dismissGuideRelayoutWindow()V

    .line 1857
    :cond_12
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowMode()I

    move-result v10

    .line 1858
    .local v10, windowMode:I
    invoke-static {v10}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v0

    const/high16 v1, 0x200

    and-int/2addr v0, v1

    if-nez v0, :cond_23

    .line 1859
    const/4 v0, 0x0

    .line 1886
    :goto_22
    return v0

    .line 1862
    :cond_23
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    .line 1863
    .local v11, windowParm:Landroid/view/WindowManager$LayoutParams;
    new-instance v2, Landroid/graphics/Rect;

    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, v11, Landroid/view/WindowManager$LayoutParams;->y:I

    sget v3, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->statusBarHeight:I

    sub-int/2addr v1, v3

    iget v3, v11, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v3, v5

    iget v5, v11, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v6, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v5, v6

    sget v6, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->statusBarHeight:I

    sub-int/2addr v5, v6

    invoke-direct {v2, v0, v1, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1866
    .local v2, windowRect:Landroid/graphics/Rect;
    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v7, :cond_96

    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, v7, :cond_96

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_96

    .line 1869
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v9, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1870
    .local v9, width:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v8, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1871
    .local v8, height:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 1872
    iget v0, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v9

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 1873
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 1874
    iget v0, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v8

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 1876
    .end local v8           #height:I
    .end local v9           #width:I
    :cond_96
    new-instance v4, Landroid/graphics/Point;

    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-direct {v4, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 1879
    .local v4, delta:Landroid/graphics/Point;
    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    const/16 v5, 0x8

    const/16 v6, 0x1e

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;-><init>(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;IILcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .line 1881
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    sget v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->statusBarHeight:I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->setStatusBarHeight(I)V

    .line 1882
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z

    .line 1884
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLeftBorderPadding:I

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTopBorderPadding:I

    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mRightBorderPadding:I

    iget v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBottomBorderPadding:I

    invoke-virtual {v0, v1, v3, v5, v6}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->setBackgroundPadding(IIII)V

    move v0, v12

    .line 1886
    goto/16 :goto_22
.end method

.method private forceHideInputMethod()Z
    .registers 3

    .prologue
    .line 243
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 244
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_b

    .line 245
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    move-result v1

    .line 247
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private freestyleModeLayout(Landroid/content/Context;I)V
    .registers 18
    .parameter "context"
    .parameter "decoVisibility"

    .prologue
    .line 740
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 742
    .local v2, inflater:Landroid/view/LayoutInflater;
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getWindowMode()I

    move-result v11

    .line 744
    .local v11, windowMode:I
    invoke-direct {p0, v11}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isNoTitleBar(I)Z

    move-result v12

    if-eqz v12, :cond_42

    invoke-direct {p0, v11}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isToolkitMode(I)Z

    move-result v12

    if-nez v12, :cond_42

    .line 745
    const v12, 0x10900a8

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    iput-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    .line 746
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    const v13, 0x10203b3

    invoke-virtual {v12, v13}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    iput-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    .line 747
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 748
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 749
    invoke-direct {p0, v11}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->wrapContentView(I)V

    .line 750
    invoke-virtual {p0, v11}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorVisibility(I)V

    .line 854
    :goto_41
    return-void

    .line 754
    :cond_42
    const v12, 0x10900a8

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    iput-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    .line 755
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    const v13, 0x10203b3

    invoke-virtual {v12, v13}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    iput-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    .line 757
    new-instance v3, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$DoubleTapPinupListener;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$DoubleTapPinupListener;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    .line 758
    .local v3, listener:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$DoubleTapPinupListener;
    new-instance v7, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;

    invoke-direct {v7, p0, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$DoubleTapPinupListener;)V

    .line 759
    .local v7, pwl:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;
    new-instance v9, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TitlebarButtonListener;

    const/4 v12, 0x0

    invoke-direct {v9, p0, v12}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TitlebarButtonListener;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;)V

    .line 762
    .local v9, tbl:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TitlebarButtonListener;
    :try_start_6b
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x80

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget-object v4, v12, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 764
    .local v4, metaData:Landroid/os/Bundle;
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v10

    .line 765
    .local v10, winInfo:Landroid/os/Bundle;
    if-eqz v10, :cond_1da

    .line 766
    const-string v12, "android.intent.extra.WINDOW_MINIMUM_SIZE"

    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 767
    .local v5, minSize:Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    iput v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinWidth:F

    .line 768
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    iput v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinHeight:F

    .line 783
    .end local v5           #minSize:Landroid/graphics/Rect;
    :cond_9d
    :goto_9d
    iget v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinWidth:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_ab

    iget v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinHeight:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_cd

    .line 784
    :cond_ab
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10500a4

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    int-to-float v12, v12

    iput v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinWidth:F

    .line 785
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10500a5

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    int-to-float v12, v12

    iput v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinHeight:F
    :try_end_cd
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6b .. :try_end_cd} :catch_20e

    .line 790
    .end local v4           #metaData:Landroid/os/Bundle;
    .end local v10           #winInfo:Landroid/os/Bundle;
    :cond_cd
    :goto_cd
    const v12, 0x10900aa

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    iput-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    .line 791
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v12, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 792
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v12, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 793
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v12, v7}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 795
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v13, 0x10203bc

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    iput-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor1:Landroid/view/View;

    .line 796
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor1:Landroid/view/View;

    invoke-virtual {v12, v7}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 797
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v13, 0x10203bd

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    iput-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor2:Landroid/view/View;

    .line 798
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor2:Landroid/view/View;

    invoke-virtual {v12, v7}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 800
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v13, 0x10203c2

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTitleText:Landroid/widget/TextView;

    .line 801
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTitleText:Landroid/widget/TextView;

    iget-object v13, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    iget-object v14, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 802
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTitleText:Landroid/widget/TextView;

    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 804
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v13, 0x10203bb

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    iput-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    .line 805
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    invoke-virtual {v12, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 806
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    invoke-virtual {v12, v7}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 808
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v13, 0x10203bf

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    iput-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowButton:Landroid/widget/ImageButton;

    .line 809
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowButton:Landroid/widget/ImageButton;

    invoke-virtual {v12, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 810
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowButton:Landroid/widget/ImageButton;

    invoke-virtual {v12, v9}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 811
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowButton:Landroid/widget/ImageButton;

    invoke-virtual {v12, v7}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 813
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v13, 0x10203be

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    iput-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeButton:Landroid/widget/ImageButton;

    .line 814
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v12, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 815
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v12, v7}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 817
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v13, 0x10203c0

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    iput-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaximizeButton:Landroid/widget/ImageButton;

    .line 818
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaximizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v12, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 819
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaximizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v12, v7}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 821
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v13, 0x10203c1

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    iput-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mExitButton:Landroid/widget/ImageButton;

    .line 822
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mExitButton:Landroid/widget/ImageButton;

    invoke-virtual {v12, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 823
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mExitButton:Landroid/widget/ImageButton;

    invoke-virtual {v12, v7}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 826
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    iget-object v13, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 828
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 829
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 831
    invoke-direct {p0, v11}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->wrapContentView(I)V

    .line 832
    invoke-virtual {p0, v11}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorVisibility(I)V

    .line 836
    :try_start_1bf
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 837
    .local v0, activityClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v12, "mPinupClickListener"

    invoke-virtual {v0, v12}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 838
    .local v1, field:Ljava/lang/reflect/Field;
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    new-instance v13, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$4;

    invoke-direct {v13, p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$4;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    invoke-virtual {v1, v12, v13}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1bf .. :try_end_1d5} :catch_1d7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1bf .. :try_end_1d5} :catch_214
    .catch Ljava/lang/IllegalAccessException; {:try_start_1bf .. :try_end_1d5} :catch_211

    goto/16 :goto_41

    .line 851
    .end local v0           #activityClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #field:Ljava/lang/reflect/Field;
    :catch_1d7
    move-exception v12

    goto/16 :goto_41

    .line 769
    .restart local v4       #metaData:Landroid/os/Bundle;
    .restart local v10       #winInfo:Landroid/os/Bundle;
    :cond_1da
    if-eqz v4, :cond_9d

    .line 770
    :try_start_1dc
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v8

    .line 771
    .local v8, r:Landroid/content/res/Resources;
    if-eqz v8, :cond_9d

    .line 772
    const-string v12, "com.sec.android.multiwindow.MINIMUM_SIZE_W"

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 773
    .local v6, minSizeId:I
    if-eqz v6, :cond_1fd

    .line 774
    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    iput v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinWidth:F

    .line 776
    :cond_1fd
    const-string v12, "com.sec.android.multiwindow.MINIMUM_SIZE_H"

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 777
    if-eqz v6, :cond_9d

    .line 778
    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    iput v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinHeight:F
    :try_end_20c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1dc .. :try_end_20c} :catch_20e

    goto/16 :goto_9d

    .line 787
    .end local v4           #metaData:Landroid/os/Bundle;
    .end local v6           #minSizeId:I
    .end local v8           #r:Landroid/content/res/Resources;
    .end local v10           #winInfo:Landroid/os/Bundle;
    :catch_20e
    move-exception v12

    goto/16 :goto_cd

    .line 853
    :catch_211
    move-exception v12

    goto/16 :goto_41

    .line 852
    :catch_214
    move-exception v12

    goto/16 :goto_41
.end method

.method private fullScreenModeLayout(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isResizable(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1132
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->freestyleModeLayout(Landroid/content/Context;I)V

    .line 1134
    :cond_11
    return-void
.end method

.method private getCurrentRect(ILandroid/os/Bundle;)Landroid/graphics/Rect;
    .registers 7
    .parameter "windowMode"
    .parameter "winInfo"

    .prologue
    .line 1609
    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v2

    const/high16 v3, 0x20

    and-int/2addr v2, v3

    if-eqz v2, :cond_17

    .line 1610
    new-instance v1, Landroid/graphics/Rect;

    const-string v2, "android.intent.extra.WINDOW_MINIMIZED_SIZE"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1621
    :goto_16
    return-object v1

    .line 1615
    :cond_17
    const-string v2, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1617
    .local v0, lastSize:Landroid/graphics/Rect;
    if-eqz v0, :cond_23

    move-object v1, v0

    .line 1618
    goto :goto_16

    .line 1621
    :cond_23
    const-string v2, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    move-object v1, v2

    goto :goto_16
.end method

.method public static installDecor(Landroid/view/Window;)Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
    .registers 2
    .parameter "owner"

    .prologue
    .line 296
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 297
    invoke-static {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->needsMultiWindowDecor(Landroid/view/Window;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 298
    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;-><init>(Landroid/view/Window;)V

    .line 301
    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static isCompatModeEnabled(Landroid/view/Window;)Z
    .registers 7
    .parameter "w"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 284
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v5

    instance-of v5, v5, Landroid/app/Activity;

    if-eqz v5, :cond_25

    .line 285
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 287
    .local v0, a:Landroid/app/Activity;
    const-string v5, "activity"

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 289
    .local v1, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ActivityManager;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v2

    .line 290
    .local v2, compatMode:I
    if-ne v2, v3, :cond_23

    .line 292
    .end local v0           #a:Landroid/app/Activity;
    .end local v1           #am:Landroid/app/ActivityManager;
    .end local v2           #compatMode:I
    :goto_22
    return v3

    .restart local v0       #a:Landroid/app/Activity;
    .restart local v1       #am:Landroid/app/ActivityManager;
    .restart local v2       #compatMode:I
    :cond_23
    move v3, v4

    .line 290
    goto :goto_22

    .end local v0           #a:Landroid/app/Activity;
    .end local v1           #am:Landroid/app/ActivityManager;
    .end local v2           #compatMode:I
    :cond_25
    move v3, v4

    .line 292
    goto :goto_22
.end method

.method private static isFillWindow(Landroid/view/Window;)Z
    .registers 10
    .parameter "owner"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 205
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 207
    .local v1, context:Landroid/content/Context;
    const/4 v3, 0x0

    .line 208
    .local v3, width:I
    const/4 v2, 0x0

    .line 210
    .local v2, height:I
    sput-boolean v5, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFillWindow:Z

    .line 212
    instance-of v6, v1, Landroid/app/Activity;

    if-nez v6, :cond_19

    instance-of v6, v1, Landroid/content/ContextWrapper;

    if-eqz v6, :cond_19

    .line 213
    check-cast v1, Landroid/content/ContextWrapper;

    .end local v1           #context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 215
    .restart local v1       #context:Landroid/content/Context;
    :cond_19
    if-eqz v1, :cond_2b

    instance-of v6, v1, Landroid/app/Activity;

    if-eqz v6, :cond_2b

    move-object v0, v1

    .line 216
    check-cast v0, Landroid/app/Activity;

    .line 217
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowMode()I

    move-result v4

    .line 218
    .local v4, windowMode:I
    const/high16 v6, 0x40

    and-int/2addr v6, v4

    if-nez v6, :cond_2c

    .line 239
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #context:Landroid/content/Context;
    .end local v4           #windowMode:I
    :cond_2b
    :goto_2b
    return v5

    .restart local v0       #activity:Landroid/app/Activity;
    .restart local v1       #context:Landroid/content/Context;
    .restart local v4       #windowMode:I
    :cond_2c
    move-object v5, v1

    .line 221
    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v3, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 222
    check-cast v1, Landroid/app/Activity;

    .end local v1           #context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 227
    if-lez v3, :cond_5e

    if-lez v2, :cond_5e

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v3, v5, :cond_5e

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v5, :cond_5e

    .line 230
    sput-boolean v7, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFillWindow:Z

    .line 239
    :cond_5b
    :goto_5b
    sget-boolean v5, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFillWindow:Z

    goto :goto_2b

    .line 231
    :cond_5e
    if-lez v3, :cond_79

    if-lez v2, :cond_79

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    if-ne v3, v5, :cond_79

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    if-ne v2, v5, :cond_79

    .line 234
    sput-boolean v7, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFillWindow:Z

    goto :goto_5b

    .line 235
    :cond_79
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v5, v8, :cond_5b

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v5, v8, :cond_5b

    .line 237
    sput-boolean v7, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFillWindow:Z

    goto :goto_5b
.end method

.method private static isForceTitleBar(Landroid/view/Window;)Z
    .registers 5
    .parameter "owner"

    .prologue
    .line 271
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 272
    .local v1, context:Landroid/content/Context;
    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_16

    move-object v0, v1

    .line 273
    check-cast v0, Landroid/app/Activity;

    .line 274
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowMode()I

    move-result v2

    .line 275
    .local v2, windowMode:I
    const/high16 v3, 0x4

    and-int/2addr v3, v2

    if-eqz v3, :cond_16

    .line 276
    const/4 v3, 0x1

    .line 280
    .end local v0           #activity:Landroid/app/Activity;
    .end local v2           #windowMode:I
    :goto_15
    return v3

    :cond_16
    const/4 v3, 0x0

    goto :goto_15
.end method

.method static isMinimized(I)Z
    .registers 2
    .parameter "windowMode"

    .prologue
    .line 322
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMinimized(I)Z

    move-result v0

    return v0
.end method

.method static isMultiWindow(I)Z
    .registers 2
    .parameter "windowMode"

    .prologue
    .line 310
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMultiWindow(I)Z

    move-result v0

    return v0
.end method

.method private isNoTitleBar(I)Z
    .registers 3
    .parameter "windowMode"

    .prologue
    .line 263
    const/high16 v0, 0x8

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method static isNormalWindow(I)Z
    .registers 2
    .parameter "windowMode"

    .prologue
    .line 306
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isNormalWindow(I)Z

    move-result v0

    return v0
.end method

.method static isPinup(I)Z
    .registers 2
    .parameter "windowMode"

    .prologue
    .line 318
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isPinup(I)Z

    move-result v0

    return v0
.end method

.method static isResizable(I)Z
    .registers 2
    .parameter "windowMode"

    .prologue
    .line 314
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isResizable(I)Z

    move-result v0

    return v0
.end method

.method private isToolkitMode(I)Z
    .registers 3
    .parameter "windowMode"

    .prologue
    .line 267
    sget v0, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_OPTION_COMMON_TOOLKIT:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static needsMultiWindowDecor(Landroid/view/Window;)Z
    .registers 4
    .parameter "owner"

    .prologue
    const/4 v2, 0x0

    .line 170
    invoke-virtual {p0}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    .line 171
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-static {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->supportedMultiWindow(Landroid/view/Window;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-static {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isFillWindow(Landroid/view/Window;)Z

    move-result v1

    if-eqz v1, :cond_3e

    :cond_11
    invoke-virtual {p0}, Landroid/view/Window;->isNoWindowDecor()Z

    move-result v1

    if-nez v1, :cond_3e

    move-object v1, p0

    check-cast v1, Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->isFloating()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-static {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isForceTitleBar(Landroid/view/Window;)Z

    move-result v1

    if-eqz v1, :cond_3e

    :cond_26
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-nez v1, :cond_3e

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-nez v1, :cond_3e

    invoke-static {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isCompatModeEnabled(Landroid/view/Window;)Z

    move-result v1

    if-nez v1, :cond_3e

    const/4 v1, 0x1

    :goto_3d
    return v1

    :cond_3e
    move v1, v2

    goto :goto_3d
.end method

.method private needsMultiWindowPadding()Z
    .registers 3

    .prologue
    .line 181
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_17

    .line 182
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowMode()I

    move-result v0

    .line 183
    .local v0, windowMode:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMultiWindow(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 184
    const-string v1, "fixedRatio"

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasApplicationStyle(Ljava/lang/String;)Z

    move-result v1

    .line 188
    .end local v0           #windowMode:I
    :goto_16
    return v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method private parseActivityInfoMetaData(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .parameter "metaData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 587
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 588
    .local v1, empty:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    if-nez v3, :cond_a

    .line 604
    .end local v1           #empty:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    :goto_9
    return-object v1

    .line 593
    .restart local v1       #empty:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    :try_start_a
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 595
    .local v0, activityMetaData:Landroid/os/Bundle;
    if-eqz v0, :cond_9

    .line 596
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 597
    .local v2, style:Ljava/lang/String;
    if-eqz v2, :cond_9

    .line 598
    new-instance v3, Ljava/util/ArrayList;

    const-string v4, "\\|"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_35
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_35} :catch_37

    move-object v1, v3

    goto :goto_9

    .line 601
    .end local v0           #activityMetaData:Landroid/os/Bundle;
    .end local v2           #style:Ljava/lang/String;
    :catch_37
    move-exception v3

    goto :goto_9
.end method

.method private parseApplicationInfoMetaData(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .parameter "metaData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 566
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 567
    .local v1, empty:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    if-nez v3, :cond_a

    .line 583
    .end local v1           #empty:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    :goto_9
    return-object v1

    .line 572
    .restart local v1       #empty:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    :try_start_a
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 574
    .local v0, appInfoMetaData:Landroid/os/Bundle;
    if-eqz v0, :cond_9

    .line 575
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 576
    .local v2, style:Ljava/lang/String;
    if-eqz v2, :cond_9

    .line 577
    new-instance v3, Ljava/util/ArrayList;

    const-string v4, "\\|"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_35
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_35} :catch_37

    move-object v1, v3

    goto :goto_9

    .line 580
    .end local v0           #appInfoMetaData:Landroid/os/Bundle;
    .end local v2           #style:Ljava/lang/String;
    :catch_37
    move-exception v3

    goto :goto_9
.end method

.method private reviseWindowPosition(Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .registers 7
    .parameter "windowRect"
    .parameter "maxSize"

    .prologue
    .line 1107
    sget v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->REVISE_WINDOW_BOUNDARY_X:I

    .line 1108
    .local v0, boundaryX:I
    sget v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->REVISE_WINDOW_BOUNDARY_Y:I

    .line 1110
    .local v1, boundaryY:I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v0

    if-le v2, v3, :cond_23

    .line 1111
    iget v2, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v0

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1117
    :cond_13
    :goto_13
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v1

    if-le v2, v3, :cond_33

    .line 1118
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1123
    :cond_22
    :goto_22
    return-void

    .line 1113
    :cond_23
    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-ge v2, v0, :cond_13

    .line 1114
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int v2, v0, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_13

    .line 1120
    :cond_33
    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-gez v2, :cond_22

    .line 1121
    iget v2, p1, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_22
.end method

.method private setActionBarMenuVisibility(Z)V
    .registers 9
    .parameter "visible"

    .prologue
    const v3, 0x1020409

    .line 609
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isPhone(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 646
    :cond_b
    :goto_b
    return-void

    .line 613
    :cond_c
    const/4 v0, 0x0

    .line 614
    .local v0, actionBarView:Lcom/android/internal/widget/ActionBarView;
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    if-eqz v2, :cond_52

    .line 615
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #actionBarView:Lcom/android/internal/widget/ActionBarView;
    check-cast v0, Lcom/android/internal/widget/ActionBarView;

    .line 620
    .restart local v0       #actionBarView:Lcom/android/internal/widget/ActionBarView;
    :goto_1f
    if-eqz v0, :cond_b

    .line 624
    sget-boolean v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->sIsQueriedActionBarViewSetMultiWindowReserved:Z

    if-nez v2, :cond_39

    .line 626
    :try_start_25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setMultiWindowReserved"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->sActionBarViewSetMultiWindowReserved:Ljava/lang/reflect/Method;
    :try_end_39
    .catch Ljava/lang/NoSuchMethodException; {:try_start_25 .. :try_end_39} :catch_5f

    .line 632
    :cond_39
    :goto_39
    sget-object v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->sActionBarViewSetMultiWindowReserved:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_b

    .line 634
    :try_start_3d
    sget-object v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->sActionBarViewSetMultiWindowReserved:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3d .. :try_end_4c} :catch_4d
    .catch Ljava/lang/IllegalAccessException; {:try_start_3d .. :try_end_4c} :catch_64
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3d .. :try_end_4c} :catch_69

    goto :goto_b

    .line 635
    :catch_4d
    move-exception v1

    .line 637
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_b

    .line 617
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :cond_52
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #actionBarView:Lcom/android/internal/widget/ActionBarView;
    check-cast v0, Lcom/android/internal/widget/ActionBarView;

    .restart local v0       #actionBarView:Lcom/android/internal/widget/ActionBarView;
    goto :goto_1f

    .line 627
    :catch_5f
    move-exception v1

    .line 629
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_39

    .line 638
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_64
    move-exception v1

    .line 640
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_b

    .line 641
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_69
    move-exception v1

    .line 643
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_b
.end method

.method private static setAddonViewFlags(Landroid/view/View;I)V
    .registers 6
    .parameter "view"
    .parameter "flags"

    .prologue
    .line 1598
    invoke-virtual {p0, p1}, Landroid/view/View;->setAddonViewFlags(I)V

    .line 1599
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1b

    move-object v1, p0

    .line 1600
    check-cast v1, Landroid/view/ViewGroup;

    .line 1601
    .local v1, group:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1602
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, v0, :cond_1b

    .line 1603
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setAddonViewFlags(Landroid/view/View;I)V

    .line 1602
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1606
    .end local v0           #count:I
    .end local v1           #group:Landroid/view/ViewGroup;
    .end local v2           #i:I
    :cond_1b
    return-void
.end method

.method private static supportedMultiWindow(Landroid/view/Window;)Z
    .registers 5
    .parameter "owner"

    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 193
    .local v1, context:Landroid/content/Context;
    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_16

    move-object v0, v1

    .line 194
    check-cast v0, Landroid/app/Activity;

    .line 195
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowMode()I

    move-result v2

    .line 196
    .local v2, windowMode:I
    const/high16 v3, 0x40

    and-int/2addr v3, v2

    if-eqz v3, :cond_16

    .line 197
    const/4 v3, 0x1

    .line 201
    .end local v0           #activity:Landroid/app/Activity;
    .end local v2           #windowMode:I
    :goto_15
    return v3

    :cond_16
    const/4 v3, 0x0

    goto :goto_15
.end method

.method private updateSplitRect(I)V
    .registers 6
    .parameter "windowMode"

    .prologue
    .line 1625
    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v2

    and-int/lit8 v1, v2, 0xf

    .line 1626
    .local v1, zone:I
    if-eqz v1, :cond_19

    .line 1627
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1628
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v3, v0, Landroid/content/res/Configuration;->centerBarRect:Landroid/graphics/Rect;

    invoke-static {v2, v3}, Landroid/sec/multiwindow/impl/MultiWindowManager;->setSplitRect(ILandroid/graphics/Rect;)V

    .line 1630
    .end local v0           #config:Landroid/content/res/Configuration;
    :cond_19
    return-void
.end method

.method private windowIsTranslucent(I)Z
    .registers 6
    .parameter "windowMode"

    .prologue
    const/4 v2, 0x0

    .line 251
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isForceTitleBar(Landroid/view/Window;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v1, v2

    .line 259
    :cond_a
    :goto_a
    return v1

    .line 254
    :cond_b
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    .line 255
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 256
    .local v1, result:Z
    if-eqz v1, :cond_a

    .line 257
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setActionBarMenuVisibility(Z)V

    goto :goto_a
.end method

.method private wrapContentView(I)V
    .registers 8
    .parameter "windowMode"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 700
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 702
    .local v0, decor:Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_88

    .line 703
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContentRoot:Landroid/view/ViewGroup;

    .line 704
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 706
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowBackground:Landroid/graphics/drawable/Drawable;

    .line 707
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    .line 708
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 709
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 710
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 712
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isNoTitleBar(I)Z

    move-result v1

    if-nez v1, :cond_88

    .line 713
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 714
    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    .line 715
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/gesture/GestureOverlayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 716
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    new-instance v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;)V

    invoke-virtual {v1, v2}, Landroid/gesture/GestureOverlayView;->addOnGestureListener(Landroid/gesture/GestureOverlayView$OnGestureListener;)V

    .line 717
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v1, v4}, Landroid/gesture/GestureOverlayView;->setGestureVisible(Z)V

    .line 718
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v1, v5}, Landroid/gesture/GestureOverlayView;->setByPassingMode(Z)V

    .line 719
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/gesture/GestureOverlayView;->addView(Landroid/view/View;)V

    .line 721
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 726
    :cond_88
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_a8

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.youtube.app.honeycomb.phone.WatchActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a8

    .line 727
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 728
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->makeOptionalFitsSystemWindows()V

    .line 731
    :cond_a8
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 732
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 733
    return-void
.end method


# virtual methods
.method public getSwitchToPreviousSizeWindow(Landroid/content/Context;)Landroid/widget/PopupWindow;
    .registers 8
    .parameter "ctx"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 1971
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_12

    .line 1972
    const/4 v2, 0x0

    .line 1980
    :goto_11
    return-object v2

    .line 1975
    :cond_12
    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Landroid/content/Context;)V

    .line 1976
    .local v1, mButton:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;->setHoverPopupType(I)V

    .line 1977
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1978
    .local v0, frameLayout:Landroid/widget/FrameLayout;
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1980
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v0, v4, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    goto :goto_11
.end method

.method public hasActivityStyle(Ljava/lang/String;)Z
    .registers 3
    .parameter "style"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivityStyles:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivityStyles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hasApplicationStyle(Ljava/lang/String;)Z
    .registers 3
    .parameter "style"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mApplicationStyles:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mApplicationStyles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isWfdConnected(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 691
    const/4 v0, 0x0

    .line 692
    .local v0, wfdManager:Lcom/samsung/wfd/WfdManager;
    const-string v1, "wfd"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #wfdManager:Lcom/samsung/wfd/WfdManager;
    check-cast v0, Lcom/samsung/wfd/WfdManager;

    .line 693
    .restart local v0       #wfdManager:Lcom/samsung/wfd/WfdManager;
    if-nez v0, :cond_d

    .line 694
    const/4 v1, 0x0

    .line 696
    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->WFDGetStatus()Z

    move-result v1

    goto :goto_c
.end method

.method minimize(IZ)V
    .registers 6
    .parameter "windowMode"
    .parameter "minimize"

    .prologue
    const/high16 v2, 0x200

    const/high16 v1, 0x100

    const v0, 0xffffff

    .line 361
    if-eqz p2, :cond_20

    .line 362
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastWindowMode:I

    .line 363
    and-int/2addr p1, v0

    .line 364
    or-int/2addr p1, v2

    .line 374
    :goto_d
    if-eqz p2, :cond_2d

    .line 375
    const/high16 v0, 0x20

    or-int/2addr p1, v0

    .line 376
    const v0, -0x800001

    and-int/2addr p1, v0

    .line 382
    :goto_16
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->setWindowMode(IZ)V

    .line 383
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setWindowParams(I)V

    .line 384
    return-void

    .line 366
    :cond_20
    and-int/2addr p1, v0

    .line 367
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastWindowMode:I

    invoke-static {v0}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v0

    if-ne v0, v1, :cond_2b

    .line 368
    or-int/2addr p1, v1

    goto :goto_d

    .line 370
    :cond_2b
    or-int/2addr p1, v2

    goto :goto_d

    .line 379
    :cond_2d
    const v0, -0x200001

    and-int/2addr p1, v0

    goto :goto_16
.end method

.method multiWindow(IZ)V
    .registers 6
    .parameter "windowMode"
    .parameter "pinup"

    .prologue
    .line 337
    const v1, 0xffffff

    and-int/2addr p1, v1

    .line 338
    const/high16 v1, 0x200

    or-int/2addr p1, v1

    .line 339
    if-eqz p2, :cond_39

    .line 340
    const/high16 v1, 0x80

    or-int/2addr p1, v1

    .line 341
    and-int/lit8 p1, p1, -0x10

    .line 346
    :goto_e
    const v1, -0x200001

    and-int/2addr p1, v1

    .line 348
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/app/Activity;->setWindowMode(IZ)V

    .line 350
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 351
    .local v0, winInfo:Landroid/os/Bundle;
    const-string v1, "android.intent.extra.WINDOW_LAST_PINUP"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 352
    iget v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mArrange:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_30

    if-nez p2, :cond_30

    .line 353
    const-string v1, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 355
    :cond_30
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setWindowInfo(Landroid/os/Bundle;)V

    .line 357
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setWindowParams(I)V

    .line 358
    return-void

    .line 344
    .end local v0           #winInfo:Landroid/os/Bundle;
    :cond_39
    const v1, -0x800001

    and-int/2addr p1, v1

    goto :goto_e
.end method

.method normalWindow(I)V
    .registers 4
    .parameter "windowMode"

    .prologue
    .line 326
    const v0, 0xffffff

    and-int/2addr p1, v0

    .line 327
    const/high16 v0, 0x100

    or-int/2addr p1, v0

    .line 328
    const v0, -0x800001

    and-int/2addr p1, v0

    .line 329
    const v0, -0x200001

    and-int/2addr p1, v0

    .line 330
    and-int/lit8 p1, p1, -0x10

    .line 332
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->setWindowMode(IZ)V

    .line 333
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setWindowParams(I)V

    .line 334
    return-void
.end method

.method public onAttachedFromWindow()V
    .registers 5

    .prologue
    .line 652
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mToolkitManagerService:Landroid/toolkit/IToolkitService;

    if-eqz v2, :cond_f

    .line 655
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mToolkitManagerService:Landroid/toolkit/IToolkitService;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/toolkit/IToolkitService;->addPluginPackageName(Ljava/lang/String;)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_34

    .line 661
    :cond_f
    :goto_f
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWfdReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_21

    .line 662
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.WIFI_DISPLAY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 663
    .local v1, intentFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWfdReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 666
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :cond_21
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVideoCapabilityReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_33

    .line 667
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.VIDEOCAPABILITY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 668
    .restart local v1       #intentFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVideoCapabilityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 670
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :cond_33
    return-void

    .line 656
    :catch_34
    move-exception v0

    .line 657
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_f
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8
    .parameter "newConfig"

    .prologue
    const/high16 v5, 0x80

    const/high16 v4, 0x20

    const v3, -0x200001

    const/4 v2, 0x1

    .line 1539
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    invoke-static {v1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 1547
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowMode()I

    move-result v0

    .line 1548
    .local v0, windowMode:I
    iget v1, p1, Landroid/content/res/Configuration;->arrange:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mArrange:I

    .line 1554
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->updateSplitRect(I)V

    .line 1556
    iget v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mArrange:I

    sparse-switch v1, :sswitch_data_92

    .line 1584
    :cond_21
    :goto_21
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->windowIsTranslucent(I)Z

    move-result v1

    if-nez v1, :cond_62

    .line 1585
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    if-eqz v1, :cond_5f

    .line 1586
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v2, 0x10203bb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    .line 1587
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v2, 0x10203be

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeButton:Landroid/widget/ImageButton;

    .line 1588
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v2, 0x10203c0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaximizeButton:Landroid/widget/ImageButton;

    .line 1589
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v2, 0x10203c1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mExitButton:Landroid/widget/ImageButton;

    .line 1591
    :cond_5f
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorVisibility(I)V

    .line 1594
    :cond_62
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setWindowParams(I)V

    .line 1595
    return-void

    .line 1558
    :sswitch_66
    or-int/2addr v0, v4

    .line 1559
    or-int/2addr v0, v5

    .line 1560
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->setWindowMode(IZ)V

    goto :goto_21

    .line 1569
    :sswitch_6e
    invoke-static {v0}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v1

    and-int/2addr v1, v4

    if-eqz v1, :cond_21

    .line 1570
    and-int/2addr v0, v3

    .line 1571
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->setWindowMode(IZ)V

    goto :goto_21

    .line 1575
    :sswitch_7c
    invoke-static {v0}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v1

    and-int/2addr v1, v5

    if-nez v1, :cond_21

    .line 1576
    const v1, 0xffffff

    and-int/2addr v0, v1

    .line 1577
    const/high16 v1, 0x100

    or-int/2addr v0, v1

    .line 1578
    and-int/2addr v0, v3

    .line 1579
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->setWindowMode(IZ)V

    goto :goto_21

    .line 1556
    nop

    :sswitch_data_92
    .sparse-switch
        0x2 -> :sswitch_6e
        0x4 -> :sswitch_6e
        0x8 -> :sswitch_6e
        0x10 -> :sswitch_6e
        0x20 -> :sswitch_6e
        0x80 -> :sswitch_66
        0x100 -> :sswitch_6e
        0x200 -> :sswitch_7c
    .end sparse-switch
.end method

.method public onDetachedFromWindow()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 673
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWfdReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_e

    .line 674
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWfdReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 675
    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWfdReceiver:Landroid/content/BroadcastReceiver;

    .line 677
    :cond_e
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVideoCapabilityReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1b

    .line 678
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVideoCapabilityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 679
    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVideoCapabilityReceiver:Landroid/content/BroadcastReceiver;

    .line 681
    :cond_1b
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mToolkitManagerService:Landroid/toolkit/IToolkitService;

    if-eqz v1, :cond_2a

    .line 683
    :try_start_1f
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mToolkitManagerService:Landroid/toolkit/IToolkitService;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/toolkit/IToolkitService;->removePluginPackageName(Ljava/lang/String;)Z
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2a} :catch_2b

    .line 688
    :cond_2a
    :goto_2a
    return-void

    .line 684
    :catch_2b
    move-exception v0

    .line 685
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2a
.end method

.method public onWindowAttributesChanged(II)V
    .registers 8
    .parameter "flags"
    .parameter "mask"

    .prologue
    .line 1684
    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    if-eq v3, p1, :cond_55

    .line 1688
    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    xor-int/lit8 v4, p2, -0x1

    and-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    .line 1689
    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    or-int/2addr v3, p1

    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    .line 1693
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowMode()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMultiWindow(I)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 1694
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1695
    .local v0, curLp:Landroid/view/WindowManager$LayoutParams;
    const v2, 0x10400

    .line 1697
    .local v2, noNeedsFlags:I
    const/16 v1, 0x320

    .line 1701
    .local v1, needsFlags:I
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v3, v2

    if-nez v3, :cond_35

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v3, v1

    if-eq v3, v1, :cond_55

    .line 1702
    :cond_35
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x10401

    and-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1703
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v3, v1

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1705
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1709
    .end local v0           #curLp:Landroid/view/WindowManager$LayoutParams;
    .end local v1           #needsFlags:I
    .end local v2           #noNeedsFlags:I
    :cond_55
    return-void
.end method

.method public onWindowStatusChanged(II)V
    .registers 12
    .parameter "windowMode"
    .parameter "windowInfoChanged"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1633
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-static {v7}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->supportedMultiWindow(Landroid/view/Window;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 1681
    :goto_a
    return-void

    .line 1637
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->updateSplitRect(I)V

    .line 1639
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isPhone(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_24

    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v7

    const/high16 v8, 0x200

    and-int/2addr v7, v8

    if-eqz v7, :cond_24

    .line 1641
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->closeAllPanels()V

    .line 1644
    :cond_24
    and-int/lit8 v7, p2, 0x1

    if-eqz v7, :cond_2f

    .line 1645
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setWindowParams(I)V

    .line 1646
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorVisibility(I)V

    goto :goto_a

    .line 1650
    :cond_2f
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->windowIsTranslucent(I)Z

    move-result v7

    if-nez v7, :cond_38

    .line 1651
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorVisibility(I)V

    .line 1653
    :cond_38
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setWindowParams(I)V

    .line 1655
    const/4 v1, 0x0

    .line 1656
    .local v1, isNormalWindow:Z
    const/4 v0, 0x0

    .line 1657
    .local v0, isMinimized:Z
    const/4 v2, 0x0

    .line 1659
    .local v2, isPinup:Z
    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v7

    sparse-switch v7, :sswitch_data_8c

    .line 1671
    :goto_45
    if-eqz v1, :cond_62

    .line 1672
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    const-string v8, "keyguard"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 1673
    .local v3, km:Landroid/app/KeyguardManager;
    if-eqz v3, :cond_7f

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v7

    if-eqz v7, :cond_7f

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v7

    if-eqz v7, :cond_7f

    .line 1674
    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setActionBarMenuVisibility(Z)V

    .line 1680
    .end local v3           #km:Landroid/app/KeyguardManager;
    :cond_62
    :goto_62
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v1, v0, v2}, Landroid/app/Activity;->onWindowStatusChanged(ZZZ)V

    goto :goto_a

    .line 1661
    :sswitch_68
    const/4 v1, 0x1

    .line 1662
    goto :goto_45

    .line 1665
    :sswitch_6a
    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v4

    .line 1666
    .local v4, params:I
    const/high16 v7, 0x20

    and-int/2addr v7, v4

    if-eqz v7, :cond_7b

    move v0, v5

    .line 1667
    :goto_74
    const/high16 v7, 0x80

    and-int/2addr v7, v4

    if-eqz v7, :cond_7d

    move v2, v5

    :goto_7a
    goto :goto_45

    :cond_7b
    move v0, v6

    .line 1666
    goto :goto_74

    :cond_7d
    move v2, v6

    .line 1667
    goto :goto_7a

    .line 1675
    .end local v4           #params:I
    .restart local v3       #km:Landroid/app/KeyguardManager;
    :cond_7f
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isWfdConnected(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_62

    .line 1676
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setActionBarMenuVisibility(Z)V

    goto :goto_62

    .line 1659
    nop

    :sswitch_data_8c
    .sparse-switch
        0x1000000 -> :sswitch_68
        0x2000000 -> :sswitch_6a
    .end sparse-switch
.end method

.method setDecorPadding(IIII)V
    .registers 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    .line 945
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 947
    :cond_9
    return-void
.end method

.method setDecorVisibility(I)V
    .registers 13
    .parameter "windowMode"

    .prologue
    const/4 v10, -0x1

    const/16 v5, 0xa

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 962
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 964
    .local v0, decor:Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    if-eqz v3, :cond_18

    .line 965
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-virtual {v3, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorVisibility(I)V

    .line 968
    :cond_18
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMultiWindow(I)Z

    move-result v3

    if-eqz v3, :cond_137

    .line 970
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isNoTitleBar(I)Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isToolkitMode(I)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 1076
    :cond_2a
    :goto_2a
    return-void

    .line 974
    :cond_2b
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_36

    .line 975
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContentRoot:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 978
    :cond_36
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isToolkitMode(I)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 979
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_47

    .line 980
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContentRoot:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 982
    :cond_47
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 983
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    const v4, 0x1080800

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 984
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_2a

    .line 988
    :cond_5a
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    const v4, 0x1080573

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 989
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 991
    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v1

    .line 992
    .local v1, option:I
    const/high16 v3, 0x20

    and-int/2addr v3, v1

    if-nez v3, :cond_ff

    .line 994
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v4, 0x1080579

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 995
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 996
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor1:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 997
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 999
    const/high16 v3, 0x80

    and-int/2addr v3, v1

    if-eqz v3, :cond_f6

    .line 1000
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    const v4, 0x1080568

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1006
    :goto_99
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_MINIMIZED_BUTTON:Z

    if-eqz v3, :cond_a7

    .line 1007
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1008
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor2:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1011
    :cond_a7
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1012
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaximizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1014
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mExitButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1033
    :goto_b6
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1034
    invoke-virtual {p0, v9, v7, v9, v9}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorPadding(IIII)V

    .line 1036
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->needsMultiWindowPadding()Z

    move-result v3

    if-eqz v3, :cond_d9

    .line 1037
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->calculatePaddingRect(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 1038
    .local v2, paddingRect:Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x1

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v5, v5, 0x1

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorPadding(IIII)V

    .line 1057
    .end local v1           #option:I
    .end local v2           #paddingRect:Landroid/graphics/Rect;
    :cond_d9
    :goto_d9
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_MINIMIZED_BUTTON:Z

    if-nez v3, :cond_e7

    .line 1058
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor2:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1059
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1062
    :cond_e7
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    if-eqz v3, :cond_168

    .line 1063
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMultiWindow(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/gesture/GestureOverlayView;->setEnabled(Z)V

    goto/16 :goto_2a

    .line 1003
    .restart local v1       #option:I
    :cond_f6
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    const v4, 0x1080567

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_99

    .line 1017
    :cond_ff
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v4, 0x1080578

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1018
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1019
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor1:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1020
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1021
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_MINIMIZED_BUTTON:Z

    if-eqz v3, :cond_124

    .line 1022
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1023
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor2:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1026
    :cond_124
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1027
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaximizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1029
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mExitButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1030
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setTouchReceiver(Z)V

    goto :goto_b6

    .line 1042
    .end local v1           #option:I
    :cond_137
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isNoTitleBar(I)Z

    move-result v3

    if-eqz v3, :cond_143

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isToolkitMode(I)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1046
    :cond_143
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_14e

    .line 1047
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1050
    :cond_14e
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1051
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v4, 0x1080577

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1052
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1053
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setTouchReceiver(Z)V

    .line 1054
    invoke-virtual {p0, v7, v7, v7, v7}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorPadding(IIII)V

    goto/16 :goto_d9

    .line 1065
    :cond_168
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1066
    new-instance v3, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    .line 1067
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/gesture/GestureOverlayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1068
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    new-instance v4, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;)V

    invoke-virtual {v3, v4}, Landroid/gesture/GestureOverlayView;->addOnGestureListener(Landroid/gesture/GestureOverlayView$OnGestureListener;)V

    .line 1069
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v3, v7}, Landroid/gesture/GestureOverlayView;->setGestureVisible(Z)V

    .line 1070
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v3, v9}, Landroid/gesture/GestureOverlayView;->setByPassingMode(Z)V

    .line 1071
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/gesture/GestureOverlayView;->addView(Landroid/view/View;)V

    .line 1072
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1074
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMultiWindow(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/gesture/GestureOverlayView;->setEnabled(Z)V

    goto/16 :goto_2a
.end method

.method setDisplayStub(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 2051
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .line 2052
    return-void
.end method

.method setTouchReceiver(Z)V
    .registers 6
    .parameter "flag"

    .prologue
    const/4 v3, 0x0

    .line 951
    if-eqz p1, :cond_19

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTouchBroadcastReceiver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;

    if-nez v1, :cond_19

    .line 952
    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;

    invoke-direct {v0, p0, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;)V

    .line 953
    .local v0, mTouchBroadcastReceiver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sec.multiwindow.MW_TOUCH_DETECTED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 959
    .end local v0           #mTouchBroadcastReceiver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;
    :cond_18
    :goto_18
    return-void

    .line 955
    :cond_19
    if-nez p1, :cond_18

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTouchBroadcastReceiver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;

    if-eqz v1, :cond_18

    .line 956
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTouchBroadcastReceiver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 957
    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTouchBroadcastReceiver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;

    goto :goto_18
.end method

.method setWindowParams(I)V
    .registers 15
    .parameter "windowMode"

    .prologue
    const/16 v12, 0x33

    const v11, -0x10321

    const v10, -0x10401

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 857
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 858
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 860
    .local v3, p:Landroid/view/WindowManager$LayoutParams;
    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastWindowMode:I

    if-eq v5, p1, :cond_46

    .line 861
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastWindowMode:I

    .line 862
    iget-object v5, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v5, :cond_46

    iget-object v5, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-eqz v5, :cond_46

    .line 863
    const-string v5, "MultiPhoneWindowEvent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setWindowParams: token is null!!!! so replaced with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object v5, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object v5, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 868
    :cond_46
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    if-nez v5, :cond_5e

    sget-boolean v5, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFillWindow:Z

    if-eqz v5, :cond_5e

    .line 869
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v5}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 870
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_5e

    instance-of v5, v0, Landroid/app/Activity;

    if-eqz v5, :cond_5e

    .line 871
    check-cast v0, Landroid/app/Activity;

    .end local v0           #context:Landroid/content/Context;
    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    .line 875
    :cond_5e
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMultiWindow(I)Z

    move-result v5

    if-eqz v5, :cond_df

    .line 876
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v4

    .line 877
    .local v4, winInfo:Landroid/os/Bundle;
    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_71

    .line 941
    .end local v4           #winInfo:Landroid/os/Bundle;
    :cond_70
    :goto_70
    return-void

    .line 880
    .restart local v4       #winInfo:Landroid/os/Bundle;
    :cond_71
    invoke-direct {p0, p1, v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->getCurrentRect(ILandroid/os/Bundle;)Landroid/graphics/Rect;

    move-result-object v2

    .line 882
    .local v2, newSize:Landroid/graphics/Rect;
    iget v5, v2, Landroid/graphics/Rect;->left:I

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 883
    iget v5, v2, Landroid/graphics/Rect;->top:I

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 884
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 885
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 887
    iput v12, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 889
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v5, v10

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 890
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v5, v5, 0x320

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 894
    iput v12, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 896
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v5, v10

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 897
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v5, v5, 0x320

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 903
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.facebook.katana"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c7

    .line 904
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/Display;->setupFacekSize(ZII)V

    .line 935
    .end local v2           #newSize:Landroid/graphics/Rect;
    .end local v4           #winInfo:Landroid/os/Bundle;
    :cond_c7
    :goto_c7
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 936
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v5, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 938
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    if-eqz v5, :cond_70

    .line 939
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-virtual {v5, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setWindowParams(I)V

    goto :goto_70

    .line 908
    :cond_df
    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 909
    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 910
    iput v9, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 911
    iput v9, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 912
    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 914
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v5, v11

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 919
    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 921
    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 922
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v5, v11

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 927
    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 931
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.facebook.katana"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c7

    .line 932
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v8, v9, v9}, Landroid/view/Display;->setupFacekSize(ZII)V

    goto :goto_c7
.end method
