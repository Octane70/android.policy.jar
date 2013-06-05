.class final Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
.super Landroid/widget/FrameLayout;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/view/RootViewSurfaceTaker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DecorView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindow$DecorView$ActionModeCallbackWrapper;
    }
.end annotation


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModePopup:Landroid/widget/PopupWindow;

.field private mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

.field private final mBackgroundPadding:Landroid/graphics/Rect;

.field private mChanging:Z

.field mDefaultOpacity:I

.field private mDownY:I

.field private final mDrawingBounds:Landroid/graphics/Rect;

.field private final mFeatureId:I

.field private final mFrameOffsets:Landroid/graphics/Rect;

.field private final mFramePadding:Landroid/graphics/Rect;

.field private mGravityOfSwitchToPreviousSizeButton:I

.field private mIsFirstTouch:Z

.field private mIsLongClick:Z

.field private mMenuBackground:Landroid/graphics/drawable/Drawable;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mShowActionModePopup:Ljava/lang/Runnable;

.field private mShowSwitchToPreviousSizeButton:Ljava/lang/Runnable;

.field private mSupportedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchToPreviousSizeButtonHeight:I

.field private mSwitchToPreviousSizeButtonWidth:I

.field private mWatchingForMenu:Z

.field private mXLocationOfSwitchToPreviousSizeButton:I

.field private mXOffsetOfSwitchToPreviousSizeButton:I

.field private mXOffsetTouch:I

.field private mYLocationOfSwitchToPreviousSizeButton:I

.field private mYOffsetOfSwitchToPreviousSizeButton:I

.field private mYOffsetTouch:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/content/Context;I)V
    .registers 6
    .parameter
    .parameter "context"
    .parameter "featureId"

    .prologue
    const/16 v1, 0x8

    .line 2048
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    .line 2049
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2006
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDefaultOpacity:I

    .line 2011
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    .line 2013
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 2015
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    .line 2017
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    .line 2031
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mShowSwitchToPreviousSizeButton:Ljava/lang/Runnable;

    .line 2032
    const/16 v0, 0x55

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mGravityOfSwitchToPreviousSizeButton:I

    .line 2033
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mXOffsetOfSwitchToPreviousSizeButton:I

    .line 2034
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mYOffsetOfSwitchToPreviousSizeButton:I

    .line 2050
    iput p3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    .line 2051
    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2005
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2005
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2005
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 2005
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mIsLongClick:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2005
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mIsLongClick:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 2005
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mIsFirstTouch:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2005
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mIsFirstTouch:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 2005
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mXOffsetTouch:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2005
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mXOffsetTouch:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 2005
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mXLocationOfSwitchToPreviousSizeButton:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2005
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mXLocationOfSwitchToPreviousSizeButton:I

    return p1
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 2005
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mYOffsetTouch:I

    return v0
.end method

.method static synthetic access$2902(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2005
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mYOffsetTouch:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ActionMode;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2005
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 2005
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mYLocationOfSwitchToPreviousSizeButton:I

    return v0
.end method

.method static synthetic access$3002(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2005
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mYLocationOfSwitchToPreviousSizeButton:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2005
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 2005
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 2005
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mScreenHeight:I

    return v0
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 2005
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mSwitchToPreviousSizeButtonWidth:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 2005
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mSwitchToPreviousSizeButtonHeight:I

    return v0
.end method

.method static synthetic access$3700(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 2005
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mGravityOfSwitchToPreviousSizeButton:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 2005
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mXOffsetOfSwitchToPreviousSizeButton:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 2005
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mYOffsetOfSwitchToPreviousSizeButton:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2005
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mShowActionModePopup:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 2005
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getWindowMode()I

    move-result v0

    return v0
.end method

.method private drawableChanged()V
    .registers 12

    .prologue
    const/4 v10, -0x1

    .line 2701
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mChanging:Z

    if-eqz v5, :cond_6

    .line 2759
    :cond_5
    :goto_5
    return-void

    .line 2705
    :cond_6
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setPadding(IIII)V

    .line 2708
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->requestLayout()V

    .line 2709
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->invalidate()V

    .line 2711
    const/4 v4, -0x1

    .line 2718
    .local v4, opacity:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2719
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2720
    .local v2, fg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_44

    .line 2721
    if-nez v2, :cond_50

    .line 2722
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v4

    .line 2755
    :cond_44
    :goto_44
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDefaultOpacity:I

    .line 2756
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v5, :cond_5

    .line 2757
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #calls: Lcom/android/internal/policy/impl/PhoneWindow;->setDefaultWindowFormat(I)V
    invoke-static {v5, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1600(Lcom/android/internal/policy/impl/PhoneWindow;I)V

    goto :goto_5

    .line 2723
    :cond_50
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-gtz v5, :cond_83

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gtz v5, :cond_83

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-gtz v5, :cond_83

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-gtz v5, :cond_83

    .line 2727
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    .line 2728
    .local v3, fop:I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    .line 2731
    .local v1, bop:I
    if-eq v3, v10, :cond_74

    if-ne v1, v10, :cond_76

    .line 2732
    :cond_74
    const/4 v4, -0x1

    goto :goto_44

    .line 2733
    :cond_76
    if-nez v3, :cond_7a

    .line 2734
    move v4, v1

    goto :goto_44

    .line 2735
    :cond_7a
    if-nez v1, :cond_7e

    .line 2736
    move v4, v3

    goto :goto_44

    .line 2738
    :cond_7e
    invoke-static {v3, v1}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v4

    goto :goto_44

    .line 2746
    .end local v1           #bop:I
    .end local v3           #fop:I
    :cond_83
    const/4 v4, -0x3

    goto :goto_44
.end method

.method private fillSupportedPackageName()V
    .registers 3

    .prologue
    .line 3105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mSupportedPackages:Ljava/util/ArrayList;

    .line 3106
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mSupportedPackages:Ljava/util/ArrayList;

    const-string v1, "com.android.chrome"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3107
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mSupportedPackages:Ljava/util/ArrayList;

    const-string v1, "com.google.android.gm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3111
    return-void
.end method

.method private getWindowMode()I
    .registers 10

    .prologue
    .line 3076
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 3077
    .local v3, ctx:Landroid/content/Context;
    instance-of v7, v3, Landroid/app/Activity;

    if-nez v7, :cond_12

    instance-of v7, v3, Landroid/content/ContextWrapper;

    if-eqz v7, :cond_12

    .line 3078
    check-cast v3, Landroid/content/ContextWrapper;

    .end local v3           #ctx:Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    .line 3079
    .restart local v3       #ctx:Landroid/content/Context;
    :cond_12
    instance-of v7, v3, Landroid/app/Activity;

    if-eqz v7, :cond_3b

    .line 3081
    :try_start_16
    move-object v0, v3

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 3082
    .local v1, activity:Landroid/app/Activity;
    const-string v7, "android.app.Activity"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 3083
    .local v2, cl:Ljava/lang/Class;
    const-string v7, "getWindowMode"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 3084
    .local v6, sGetWindowModeMethod:Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 3085
    .local v5, ret:Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_35
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_35} :catch_37
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_35} :catch_3e
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_35} :catch_43
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_16 .. :try_end_35} :catch_48
    .catch Ljava/lang/NoSuchMethodException; {:try_start_16 .. :try_end_35} :catch_4d

    move-result v7

    .line 3098
    .end local v1           #activity:Landroid/app/Activity;
    .end local v2           #cl:Ljava/lang/Class;
    .end local v5           #ret:Ljava/lang/Integer;
    .end local v6           #sGetWindowModeMethod:Ljava/lang/reflect/Method;
    :goto_36
    return v7

    .line 3086
    :catch_37
    move-exception v4

    .line 3087
    .local v4, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 3098
    .end local v4           #e:Ljava/lang/ClassNotFoundException;
    :cond_3b
    :goto_3b
    sget v7, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_NORMAL:I

    goto :goto_36

    .line 3088
    :catch_3e
    move-exception v4

    .line 3089
    .local v4, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3b

    .line 3090
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    :catch_43
    move-exception v4

    .line 3091
    .local v4, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_3b

    .line 3092
    .end local v4           #e:Ljava/lang/IllegalAccessException;
    :catch_48
    move-exception v4

    .line 3093
    .local v4, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_3b

    .line 3094
    .end local v4           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_4d
    move-exception v4

    .line 3095
    .local v4, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v4}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_3b
.end method

.method private isOutOfBounds(II)Z
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, -0x5

    .line 2203
    if-lt p1, v0, :cond_15

    if-lt p2, v0, :cond_15

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_15

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-le p2, v0, :cond_17

    :cond_15
    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method


# virtual methods
.method public addSwitchToPreviousSizeButton()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 2913
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mMultiPhoneWindowEvent:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1800(Lcom/android/internal/policy/impl/PhoneWindow;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_20

    .line 2914
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2300()Landroid/widget/PopupWindow;

    move-result-object v4

    if-eqz v4, :cond_20

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2300()Landroid/widget/PopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 2916
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2300()Landroid/widget/PopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_20} :catch_dd
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_da

    .line 2926
    :cond_20
    :goto_20
    :try_start_20
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mMultiPhoneWindowEvent:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1800(Lcom/android/internal/policy/impl/PhoneWindow;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_53

    .line 2927
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2400()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getSwitchToPreviousSizeWindow"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2929
    .local v3, sGetSwitchToPreviousSizeWindowMethod:Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mMultiPhoneWindowEvent:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1800(Lcom/android/internal/policy/impl/PhoneWindow;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/PopupWindow;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2302(Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    :try_end_53
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_53} :catch_a7
    .catch Ljava/lang/IllegalAccessException; {:try_start_20 .. :try_end_53} :catch_ac
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_20 .. :try_end_53} :catch_b1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_20 .. :try_end_53} :catch_b6
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_53} :catch_bb

    .line 2944
    .end local v3           #sGetSwitchToPreviousSizeWindowMethod:Ljava/lang/reflect/Method;
    :cond_53
    :goto_53
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2300()Landroid/widget/PopupWindow;

    move-result-object v4

    if-eqz v4, :cond_d2

    .line 2945
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2300()Landroid/widget/PopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    move-object v2, v4

    check-cast v2, Landroid/widget/FrameLayout;

    .line 2946
    .local v2, popupContainer:Landroid/widget/FrameLayout;
    if-eqz v2, :cond_c0

    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2947
    .local v0, button:Landroid/view/View;
    :goto_6c
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mIsLongClick:Z

    .line 2948
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mIsFirstTouch:Z

    .line 2949
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2300()Landroid/widget/PopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mSwitchToPreviousSizeButtonWidth:I

    .line 2950
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2300()Landroid/widget/PopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mSwitchToPreviousSizeButtonHeight:I

    .line 2951
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mScreenWidth:I

    .line 2952
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mScreenHeight:I

    .line 2954
    if-nez v0, :cond_c2

    .line 3049
    .end local v0           #button:Landroid/view/View;
    .end local v2           #popupContainer:Landroid/widget/FrameLayout;
    :goto_a6
    return-void

    .line 2932
    :catch_a7
    move-exception v1

    .line 2933
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_53

    .line 2934
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_ac
    move-exception v1

    .line 2935
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_53

    .line 2936
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_b1
    move-exception v1

    .line 2937
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_53

    .line 2938
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_b6
    move-exception v1

    .line 2939
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_53

    .line 2940
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_bb
    move-exception v1

    .line 2941
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_53

    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #popupContainer:Landroid/widget/FrameLayout;
    :cond_c0
    move-object v0, v2

    .line 2946
    goto :goto_6c

    .line 2956
    .restart local v0       #button:Landroid/view/View;
    :cond_c2
    new-instance v4, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;-><init>(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3004
    new-instance v4, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$3;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$3;-><init>(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3017
    .end local v0           #button:Landroid/view/View;
    .end local v2           #popupContainer:Landroid/widget/FrameLayout;
    :cond_d2
    new-instance v4, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$4;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$4;-><init>(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mShowSwitchToPreviousSizeButton:Ljava/lang/Runnable;

    goto :goto_a6

    .line 2921
    :catch_da
    move-exception v4

    goto/16 :goto_20

    .line 2919
    :catch_dd
    move-exception v4

    goto/16 :goto_20
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "ev"

    .prologue
    .line 2147
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2148
    .local v0, cb:Landroid/view/Window$Callback;
    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_19

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_19

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_18
    return v1

    :cond_19
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_18
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 11
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2055
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 2056
    .local v4, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2057
    .local v0, action:I
    if-nez v0, :cond_2c

    move v3, v5

    .line 2059
    .local v3, isDown:Z
    :goto_d
    if-eqz v3, :cond_4e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-nez v7, :cond_4e

    .line 2062
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->access$600(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v7

    if-lez v7, :cond_2e

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->access$600(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v7

    if-eq v7, v4, :cond_2e

    .line 2063
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 2064
    .local v2, handled:Z
    if-eqz v2, :cond_2e

    .line 2087
    .end local v2           #handled:Z
    :cond_2b
    :goto_2b
    return v5

    .end local v3           #isDown:Z
    :cond_2c
    move v3, v6

    .line 2057
    goto :goto_d

    .line 2071
    .restart local v3       #isDown:Z
    :cond_2e
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->access$700(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v7

    if-eqz v7, :cond_4e

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->access$700(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v7, :cond_4e

    .line 2072
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PhoneWindow;->access$700(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v8

    #calls: Lcom/android/internal/policy/impl/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    invoke-static {v7, v8, v4, p1, v6}, Lcom/android/internal/policy/impl/PhoneWindow;->access$800(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v6

    if-nez v6, :cond_2b

    .line 2078
    :cond_4e
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v6

    if-nez v6, :cond_68

    .line 2079
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    .line 2080
    .local v1, cb:Landroid/view/Window$Callback;
    if-eqz v1, :cond_77

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v6, :cond_77

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 2082
    .restart local v2       #handled:Z
    :goto_66
    if-nez v2, :cond_2b

    .line 2087
    .end local v1           #cb:Landroid/view/Window$Callback;
    .end local v2           #handled:Z
    :cond_68
    if-eqz v3, :cond_7c

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v5, v6, v7, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->onKeyDown(IILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_2b

    .line 2080
    .restart local v1       #cb:Landroid/view/Window$Callback;
    :cond_77
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_66

    .line 2087
    .end local v1           #cb:Landroid/view/Window$Callback;
    :cond_7c
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v5, v6, v7, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->onKeyUp(IILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_2b
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 10
    .parameter "ev"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2095
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindow;->access$700(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v5

    if-eqz v5, :cond_2d

    .line 2096
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v6}, Lcom/android/internal/policy/impl/PhoneWindow;->access$700(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    #calls: Lcom/android/internal/policy/impl/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    invoke-static {v5, v6, v7, p1, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->access$800(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v1

    .line 2098
    .local v1, handled:Z
    if-eqz v1, :cond_2d

    .line 2099
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$700(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 2100
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$700(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v4

    iput-boolean v3, v4, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 2128
    :cond_2c
    :goto_2c
    return v3

    .line 2107
    .end local v1           #handled:Z
    :cond_2d
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2108
    .local v0, cb:Landroid/view/Window$Callback;
    if-eqz v0, :cond_6a

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_6a

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v5, :cond_6a

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 2110
    .restart local v1       #handled:Z
    :goto_45
    if-nez v1, :cond_2c

    .line 2118
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindow;->access$700(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v5

    if-nez v5, :cond_68

    .line 2119
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #calls: Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v5, v4, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->access$900(Lcom/android/internal/policy/impl/PhoneWindow;IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 2120
    .local v2, st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v5, v2, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 2121
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    #calls: Lcom/android/internal/policy/impl/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    invoke-static {v5, v2, v6, p1, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->access$800(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v1

    .line 2123
    iput-boolean v4, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 2124
    if-nez v1, :cond_2c

    .end local v2           #st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_68
    move v3, v4

    .line 2128
    goto :goto_2c

    .line 2108
    .end local v1           #handled:Z
    :cond_6a
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_45
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 2315
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2316
    .local v0, cb:Landroid/view/Window$Callback;
    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_18

    .line 2317
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2318
    const/4 v1, 0x1

    .line 2321
    :goto_17
    return v1

    :cond_18
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    goto :goto_17
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "ev"

    .prologue
    .line 2133
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2134
    .local v0, cb:Landroid/view/Window$Callback;
    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_19

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_19

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_18
    return v1

    :cond_19
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_18
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "ev"

    .prologue
    .line 2140
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2141
    .local v0, cb:Landroid/view/Window$Callback;
    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_19

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_19

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_18
    return v1

    :cond_19
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_18
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter "canvas"

    .prologue
    .line 2453
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2455
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 2456
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2458
    :cond_c
    return-void
.end method

.method public finishChanging()V
    .registers 2

    .prologue
    .line 2655
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mChanging:Z

    .line 2656
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->drawableChanged()V

    .line 2657
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .registers 3
    .parameter "insets"

    .prologue
    .line 2693
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2694
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 2695
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->drawableChanged()V

    .line 2697
    :cond_e
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 7

    .prologue
    .line 2785
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2787
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->updateWindowResizeState()V

    .line 2789
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2790
    .local v0, cb:Landroid/view/Window$Callback;
    if-eqz v0, :cond_1d

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1d

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v2, :cond_1d

    .line 2791
    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    .line 2794
    :cond_1d
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_27

    .line 2802
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #calls: Lcom/android/internal/policy/impl/PhoneWindow;->openPanelsAfterRestore()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1700(Lcom/android/internal/policy/impl/PhoneWindow;)V

    .line 2805
    :cond_27
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mMultiPhoneWindowEvent:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1800(Lcom/android/internal/policy/impl/PhoneWindow;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_44

    .line 2807
    :try_start_2f
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1900()Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mMultiPhoneWindowEvent:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1800(Lcom/android/internal/policy/impl/PhoneWindow;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2808
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #calls: Lcom/android/internal/policy/impl/PhoneWindow;->checkSwitchToPreviousSizeButton()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2000(Lcom/android/internal/policy/impl/PhoneWindow;)V
    :try_end_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_44} :catch_90
    .catch Ljava/lang/IllegalAccessException; {:try_start_2f .. :try_end_44} :catch_95
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2f .. :try_end_44} :catch_9a

    .line 2820
    :cond_44
    :goto_44
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->fillSupportedPackageName()V

    .line 2821
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mSupportedPackages:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8f

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_8f

    .line 2824
    const-string v2, "PhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSmartScrollVisQ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2825
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    new-instance v3, Lcom/android/internal/widget/SmartScrollVisQ;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/internal/widget/SmartScrollVisQ;-><init>(Landroid/content/Context;Landroid/view/WindowManager;)V

    iput-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindow;->mSmartScrollVisQ:Lcom/android/internal/widget/SmartScrollVisQ;

    .line 2828
    :cond_8f
    return-void

    .line 2809
    :catch_90
    move-exception v1

    .line 2810
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_44

    .line 2811
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_95
    move-exception v1

    .line 2812
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_44

    .line 2813
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_9a
    move-exception v1

    .line 2814
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_44
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .registers 3
    .parameter "reason"

    .prologue
    .line 2884
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-ltz v0, :cond_9

    .line 2885
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->closeAllPanels()V

    .line 2887
    :cond_9
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 2832
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2834
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2835
    .local v0, cb:Landroid/view/Window$Callback;
    if-eqz v0, :cond_13

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v3, :cond_13

    .line 2836
    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 2839
    :cond_13
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1000(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/widget/ActionBarView;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 2840
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1000(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/widget/ActionBarView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarView;->dismissPopupMenus()V

    .line 2843
    :cond_24
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_3d

    .line 2844
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2845
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 2846
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2848
    :cond_3a
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 2851
    :cond_3d
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #calls: Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v3, v4, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$900(Lcom/android/internal/policy/impl/PhoneWindow;IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 2852
    .local v2, st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_52

    iget-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_52

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v3, :cond_52

    .line 2853
    iget-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    .line 2857
    :cond_52
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mMultiPhoneWindowEvent:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1800(Lcom/android/internal/policy/impl/PhoneWindow;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7c

    .line 2859
    :try_start_5a
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2100()Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mMultiPhoneWindowEvent:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1800(Lcom/android/internal/policy/impl/PhoneWindow;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2862
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2200(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-result-object v3

    if-eqz v3, :cond_7c

    .line 2863
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2200(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->refreshSwitchToPreviousSizeButton(Z)V
    :try_end_7c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5a .. :try_end_7c} :catch_8a
    .catch Ljava/lang/IllegalAccessException; {:try_start_5a .. :try_end_7c} :catch_8f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5a .. :try_end_7c} :catch_94

    .line 2876
    :cond_7c
    :goto_7c
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindow;->mSmartScrollVisQ:Lcom/android/internal/widget/SmartScrollVisQ;

    if-eqz v3, :cond_89

    .line 2877
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindow;->mSmartScrollVisQ:Lcom/android/internal/widget/SmartScrollVisQ;

    invoke-virtual {v3}, Lcom/android/internal/widget/SmartScrollVisQ;->removeSmartScrollVisQ()V

    .line 2880
    :cond_89
    return-void

    .line 2865
    :catch_8a
    move-exception v1

    .line 2866
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_7c

    .line 2867
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_8f
    move-exception v1

    .line 2868
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_7c

    .line 2869
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_94
    move-exception v1

    .line 2870
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_7c
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2210
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "disable_pen_gesture"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_20

    .line 2211
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_20

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_20

    .line 2231
    :goto_1f
    return v3

    .line 2218
    :cond_20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2219
    .local v0, action:I
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-ltz v5, :cond_42

    .line 2220
    if-nez v0, :cond_42

    .line 2221
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v1, v5

    .line 2222
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v2, v5

    .line 2223
    .local v2, y:I
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->isOutOfBounds(II)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 2224
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(I)V

    goto :goto_1f

    .end local v1           #x:I
    .end local v2           #y:I
    :cond_42
    move v3, v4

    .line 2231
    goto :goto_1f
.end method

.method protected onMeasure(II)V
    .registers 22
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 2370
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 2371
    .local v8, metrics:Landroid/util/DisplayMetrics;
    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_ef

    const/4 v6, 0x1

    .line 2373
    .local v6, isPortrait:Z
    :goto_1b
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 2374
    .local v15, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 2376
    .local v4, heightMode:I
    const/4 v2, 0x0

    .line 2377
    .local v2, fixedWidth:Z
    const/high16 v17, -0x8000

    move/from16 v0, v17

    if-ne v15, v0, :cond_64

    .line 2378
    if-eqz v6, :cond_f2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 2379
    .local v12, tvw:Landroid/util/TypedValue;
    :goto_36
    if-eqz v12, :cond_64

    iget v0, v12, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    if-eqz v17, :cond_64

    .line 2381
    iget v0, v12, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_fe

    .line 2382
    invoke-virtual {v12, v8}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v13, v0

    .line 2389
    .local v13, w:I
    :goto_51
    if-lez v13, :cond_64

    .line 2390
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 2391
    .local v16, widthSize:I
    move/from16 v0, v16

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v17

    const/high16 v18, 0x4000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2393
    const/4 v2, 0x1

    .line 2398
    .end local v12           #tvw:Landroid/util/TypedValue;
    .end local v13           #w:I
    .end local v16           #widthSize:I
    :cond_64
    const/high16 v17, -0x8000

    move/from16 v0, v17

    if-ne v4, v0, :cond_a1

    .line 2399
    if-eqz v6, :cond_12c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 2400
    .local v11, tvh:Landroid/util/TypedValue;
    :goto_76
    if-eqz v11, :cond_a1

    iget v0, v11, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    if-eqz v17, :cond_a1

    .line 2402
    iget v0, v11, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_138

    .line 2403
    invoke-virtual {v11, v8}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v3, v0

    .line 2410
    .local v3, h:I
    :goto_91
    if-lez v3, :cond_a1

    .line 2411
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 2412
    .local v5, heightSize:I
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v17

    const/high16 v18, 0x4000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 2418
    .end local v3           #h:I
    .end local v5           #heightSize:I
    .end local v11           #tvh:Landroid/util/TypedValue;
    :cond_a1
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2420
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getMeasuredWidth()I

    move-result v14

    .line 2421
    .local v14, width:I
    const/4 v7, 0x0

    .line 2423
    .local v7, measure:Z
    const/high16 v17, 0x4000

    move/from16 v0, v17

    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2425
    if-nez v2, :cond_e9

    const/high16 v17, -0x8000

    move/from16 v0, v17

    if-ne v15, v0, :cond_e9

    .line 2426
    if-eqz v6, :cond_166

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v10, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 2427
    .local v10, tv:Landroid/util/TypedValue;
    :goto_c5
    iget v0, v10, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    if-eqz v17, :cond_e9

    .line 2429
    iget v0, v10, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_172

    .line 2430
    invoke-virtual {v10, v8}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v9, v0

    .line 2437
    .local v9, min:I
    :goto_de
    if-ge v14, v9, :cond_e9

    .line 2438
    const/high16 v17, 0x4000

    move/from16 v0, v17

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2439
    const/4 v7, 0x1

    .line 2446
    .end local v9           #min:I
    .end local v10           #tv:Landroid/util/TypedValue;
    :cond_e9
    if-eqz v7, :cond_ee

    .line 2447
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2449
    :cond_ee
    return-void

    .line 2371
    .end local v2           #fixedWidth:Z
    .end local v4           #heightMode:I
    .end local v6           #isPortrait:Z
    .end local v7           #measure:Z
    .end local v14           #width:I
    .end local v15           #widthMode:I
    :cond_ef
    const/4 v6, 0x0

    goto/16 :goto_1b

    .line 2378
    .restart local v2       #fixedWidth:Z
    .restart local v4       #heightMode:I
    .restart local v6       #isPortrait:Z
    .restart local v15       #widthMode:I
    :cond_f2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    goto/16 :goto_36

    .line 2383
    .restart local v12       #tvw:Landroid/util/TypedValue;
    :cond_fe
    iget v0, v12, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_129

    .line 2384
    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v17

    move/from16 v0, v17

    float-to-int v13, v0

    .restart local v13       #w:I
    goto/16 :goto_51

    .line 2386
    .end local v13           #w:I
    :cond_129
    const/4 v13, 0x0

    .restart local v13       #w:I
    goto/16 :goto_51

    .line 2399
    .end local v12           #tvw:Landroid/util/TypedValue;
    .end local v13           #w:I
    :cond_12c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    goto/16 :goto_76

    .line 2404
    .restart local v11       #tvh:Landroid/util/TypedValue;
    :cond_138
    iget v0, v11, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_163

    .line 2405
    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v17

    move/from16 v0, v17

    float-to-int v3, v0

    .restart local v3       #h:I
    goto/16 :goto_91

    .line 2407
    .end local v3           #h:I
    :cond_163
    const/4 v3, 0x0

    .restart local v3       #h:I
    goto/16 :goto_91

    .line 2426
    .end local v3           #h:I
    .end local v11           #tvh:Landroid/util/TypedValue;
    .restart local v7       #measure:Z
    .restart local v14       #width:I
    :cond_166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v10, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    goto/16 :goto_c5

    .line 2431
    .restart local v10       #tv:Landroid/util/TypedValue;
    :cond_172
    iget v0, v10, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_19d

    .line 2432
    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v17

    move/from16 v0, v17

    float-to-int v9, v0

    .restart local v9       #min:I
    goto/16 :goto_de

    .line 2434
    .end local v9           #min:I
    :cond_19d
    const/4 v9, 0x0

    .restart local v9       #min:I
    goto/16 :goto_de
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 2199
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5
    .parameter "hasWindowFocus"

    .prologue
    .line 2763
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 2767
    if-nez p1, :cond_13

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$600(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v1

    if-eqz v1, :cond_13

    .line 2768
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(I)V

    .line 2771
    :cond_13
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2772
    .local v0, cb:Landroid/view/Window$Callback;
    if-eqz v0, :cond_2a

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_2a

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_2a

    .line 2773
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 2775
    :cond_2a
    return-void
.end method

.method public refreshSwitchToPreviousSizeButton(Z)V
    .registers 6
    .parameter "needToShow"

    .prologue
    .line 3052
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mShowSwitchToPreviousSizeButton:Ljava/lang/Runnable;

    if-eqz v2, :cond_74

    .line 3053
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2300()Landroid/widget/PopupWindow;

    move-result-object v2

    if-eqz v2, :cond_3e

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2300()Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 3055
    :try_start_14
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2300()Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3056
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mIsLongClick:Z

    .line 3057
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mScreenWidth:I

    .line 3058
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mScreenHeight:I
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3e} :catch_75

    .line 3063
    :cond_3e
    :goto_3e
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getWindowMode()I

    move-result v1

    .line 3064
    .local v1, windowMode:I
    if-eqz p1, :cond_74

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mMultiPhoneWindowEvent:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1800(Lcom/android/internal/policy/impl/PhoneWindow;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_74

    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->mode(I)I

    move-result v2

    sget v3, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_FREESTYLE:I

    if-eq v2, v3, :cond_74

    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->option(I)I

    move-result v2

    sget v3, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_OPTION_COMMON_RESIZE:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_74

    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->option(I)I

    move-result v2

    sget v3, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_OPTION_COMMON_FORCE_TITLE_BAR:I

    and-int/2addr v2, v3

    if-nez v2, :cond_74

    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->option(I)I

    move-result v2

    sget v3, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_OPTION_COMMON_NO_TITLE_BAR:I

    and-int/2addr v2, v3

    if-nez v2, :cond_74

    .line 3070
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mShowSwitchToPreviousSizeButton:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->post(Ljava/lang/Runnable;)Z

    .line 3073
    .end local v1           #windowMode:I
    :cond_74
    return-void

    .line 3059
    :catch_75
    move-exception v0

    .line 3060
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3e
.end method

.method public sendAccessibilityEvent(I)V
    .registers 4
    .parameter "eventType"

    .prologue
    .line 2295
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2311
    :goto_c
    return-void

    .line 2302
    :cond_d
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-eqz v0, :cond_20

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_20

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_30

    :cond_20
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_30

    .line 2307
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_c

    .line 2309
    :cond_30
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    goto :goto_c
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "d"

    .prologue
    .line 2673
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2674
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 2675
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->updateWindowResizeState()V

    .line 2677
    :cond_c
    return-void
.end method

.method protected setFrame(IIII)Z
    .registers 14
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 2326
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setFrame(IIII)Z

    move-result v1

    .line 2327
    .local v1, changed:Z
    if-eqz v1, :cond_65

    .line 2328
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    .line 2329
    .local v2, drawingBounds:Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2331
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2332
    .local v3, fg:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_5c

    .line 2333
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    .line 2334
    .local v4, frameOffsets:Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 2335
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 2336
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 2337
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 2338
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2339
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    .line 2340
    .local v5, framePadding:Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 2341
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 2342
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    iget v8, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 2343
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 2346
    .end local v4           #frameOffsets:Landroid/graphics/Rect;
    .end local v5           #framePadding:Landroid/graphics/Rect;
    :cond_5c
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2347
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_65

    .line 2348
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2365
    .end local v0           #bg:Landroid/graphics/drawable/Drawable;
    .end local v2           #drawingBounds:Landroid/graphics/Rect;
    .end local v3           #fg:Landroid/graphics/drawable/Drawable;
    :cond_65
    return v1
.end method

.method public setSurfaceFormat(I)V
    .registers 3
    .parameter "format"

    .prologue
    .line 2902
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->setFormat(I)V

    .line 2903
    return-void
.end method

.method public setSurfaceKeepScreenOn(Z)V
    .registers 4
    .parameter "keepOn"

    .prologue
    const/16 v1, 0x80

    .line 2906
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->addFlags(I)V

    .line 2908
    :goto_9
    return-void

    .line 2907
    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->clearFlags(I)V

    goto :goto_9
.end method

.method public setSurfaceType(I)V
    .registers 3
    .parameter "type"

    .prologue
    .line 2898
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->setType(I)V

    .line 2899
    return-void
.end method

.method public setWindowBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "drawable"

    .prologue
    .line 2660
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_13

    .line 2661
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2662
    if-eqz p1, :cond_14

    .line 2663
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2667
    :goto_10
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->drawableChanged()V

    .line 2669
    :cond_13
    return-void

    .line 2665
    :cond_14
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_10
.end method

.method public setWindowFrame(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "drawable"

    .prologue
    .line 2680
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_13

    .line 2681
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 2682
    if-eqz p1, :cond_14

    .line 2683
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2687
    :goto_10
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->drawableChanged()V

    .line 2689
    :cond_13
    return-void

    .line 2685
    :cond_14
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_10
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .registers 6
    .parameter "originalView"

    .prologue
    .line 2464
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1100(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    if-nez v1, :cond_43

    .line 2465
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    new-instance v2, Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/view/menu/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1102(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/view/menu/ContextMenuBuilder;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 2466
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1100(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/impl/PhoneWindow$DialogMenuCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ContextMenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 2471
    :goto_23
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1100(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/view/menu/ContextMenuBuilder;->show(Landroid/view/View;Landroid/os/IBinder;)Lcom/android/internal/view/menu/MenuDialogHelper;

    move-result-object v0

    .line 2473
    .local v0, helper:Lcom/android/internal/view/menu/MenuDialogHelper;
    if-eqz v0, :cond_3a

    .line 2474
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/impl/PhoneWindow$DialogMenuCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuDialogHelper;->setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 2476
    :cond_3a
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1202(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/view/menu/MenuDialogHelper;)Lcom/android/internal/view/menu/MenuDialogHelper;

    .line 2477
    if-eqz v0, :cond_4d

    const/4 v1, 0x1

    :goto_42
    return v1

    .line 2468
    .end local v0           #helper:Lcom/android/internal/view/menu/MenuDialogHelper;
    :cond_43
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1100(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ContextMenuBuilder;->clearAll()V

    goto :goto_23

    .line 2477
    .restart local v0       #helper:Lcom/android/internal/view/menu/MenuDialogHelper;
    :cond_4d
    const/4 v1, 0x0

    goto :goto_42
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3
    .parameter "callback"

    .prologue
    .line 2493
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 20
    .parameter "view"
    .parameter "callback"

    .prologue
    .line 2497
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    if-eqz v13, :cond_d

    .line 2498
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v13}, Landroid/view/ActionMode;->finish()V

    .line 2501
    :cond_d
    new-instance v12, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$ActionModeCallbackWrapper;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v12, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$ActionModeCallbackWrapper;-><init>(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Landroid/view/ActionMode$Callback;)V

    .line 2502
    .local v12, wrappedCallback:Landroid/view/ActionMode$Callback;
    const/4 v6, 0x0

    .line 2503
    .local v6, mode:Landroid/view/ActionMode;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v13

    if-eqz v13, :cond_37

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v13

    if-nez v13, :cond_37

    .line 2505
    :try_start_2b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v13

    invoke-interface {v13, v12}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    :try_end_36
    .catch Ljava/lang/AbstractMethodError; {:try_start_2b .. :try_end_36} :catch_1fc

    move-result-object v6

    .line 2510
    :cond_37
    :goto_37
    if-eqz v6, :cond_6b

    .line 2511
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    .line 2640
    :cond_3d
    :goto_3d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    if-eqz v13, :cond_66

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v13

    if-eqz v13, :cond_66

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v13

    if-nez v13, :cond_66

    .line 2642
    :try_start_57
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    invoke-interface {v13, v14}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V
    :try_end_66
    .catch Ljava/lang/AbstractMethodError; {:try_start_57 .. :try_end_66} :catch_1f9

    .line 2647
    :cond_66
    :goto_66
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    return-object v13

    .line 2513
    :cond_6b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-nez v13, :cond_118

    .line 2514
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/PhoneWindow;->isFloating()Z

    move-result v13

    if-eqz v13, :cond_1cd

    .line 2515
    new-instance v13, Lcom/android/internal/widget/ActionBarContextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 2516
    new-instance v13, Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    const v16, 0x10103ff

    invoke-direct/range {v13 .. v16}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 2518
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 2519
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/PopupWindow;->setLayoutInsetDecor(Z)V

    .line 2521
    if-eqz p1, :cond_1c0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getWindowMode()I

    move-result v13

    invoke-static {v13}, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->mode(I)I

    move-result v13

    sget v14, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_FREESTYLE:I

    if-ne v13, v14, :cond_1c0

    const/4 v2, 0x1

    .line 2524
    .local v2, bLocationChange:Z
    :goto_b8
    if-eqz v2, :cond_1c3

    .line 2525
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    const/16 v14, 0x3ea

    invoke-virtual {v13, v14}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 2532
    :goto_c3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v13, v14}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 2533
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 2535
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 2536
    .local v5, heightValue:Landroid/util/TypedValue;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v13

    const v14, 0x10102eb

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v5, v15}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2538
    iget v13, v5, Landroid/util/TypedValue;->data:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v4

    .line 2540
    .local v4, height:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v13, v4}, Lcom/android/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 2541
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v14, -0x2

    invoke-virtual {v13, v14}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 2542
    new-instance v13, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v13, v0, v2, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;ZLandroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mShowActionModePopup:Ljava/lang/Runnable;

    .line 2598
    .end local v2           #bLocationChange:Z
    .end local v4           #height:I
    .end local v5           #heightValue:Landroid/util/TypedValue;
    :cond_118
    :goto_118
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v13, :cond_3d

    .line 2599
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v13}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 2600
    new-instance v6, Lcom/android/internal/view/StandaloneActionMode;

    .end local v6           #mode:Landroid/view/ActionMode;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    if-nez v13, :cond_1e6

    const/4 v13, 0x1

    :goto_136
    invoke-direct {v6, v14, v15, v12, v13}, Lcom/android/internal/view/StandaloneActionMode;-><init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)V

    .line 2602
    .restart local v6       #mode:Landroid/view/ActionMode;
    invoke-virtual {v6}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v13}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v13

    if-eqz v13, :cond_1f2

    .line 2603
    invoke-virtual {v6}, Landroid/view/ActionMode;->invalidate()V

    .line 2604
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v13, v6}, Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    .line 2605
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 2606
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    .line 2607
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v13, :cond_1b5

    .line 2609
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    .line 2610
    .local v3, ctx:Landroid/content/Context;
    instance-of v13, v3, Landroid/app/Activity;

    if-nez v13, :cond_173

    instance-of v13, v3, Landroid/content/ContextWrapper;

    if-eqz v13, :cond_173

    .line 2611
    check-cast v3, Landroid/content/ContextWrapper;

    .end local v3           #ctx:Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    .line 2613
    .restart local v3       #ctx:Landroid/content/Context;
    :cond_173
    if-eqz v3, :cond_1ac

    instance-of v13, v3, Landroid/app/Activity;

    if-eqz v13, :cond_1ac

    move-object v13, v3

    .line 2614
    check-cast v13, Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    .line 2615
    .local v7, root:Landroid/view/View;
    check-cast v3, Landroid/app/Activity;

    .end local v3           #ctx:Landroid/content/Context;
    invoke-virtual {v3}, Landroid/app/Activity;->getWindowMode()I

    move-result v10

    .line 2616
    .local v10, windowMode:I
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 2617
    .local v9, vlp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v11, 0x0

    .line 2619
    .local v11, wlp:Landroid/view/WindowManager$LayoutParams;
    instance-of v13, v9, Landroid/view/WindowManager$LayoutParams;

    if-eqz v13, :cond_1ac

    move-object v11, v9

    .line 2620
    check-cast v11, Landroid/view/WindowManager$LayoutParams;

    .line 2621
    iget v13, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v13, v13, 0x200

    if-eqz v13, :cond_1e9

    sget v13, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_NORMAL:I

    if-eq v10, v13, :cond_1e9

    .line 2623
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 2631
    .end local v7           #root:Landroid/view/View;
    .end local v9           #vlp:Landroid/view/ViewGroup$LayoutParams;
    .end local v10           #windowMode:I
    .end local v11           #wlp:Landroid/view/WindowManager$LayoutParams;
    :cond_1ac
    :goto_1ac
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mShowActionModePopup:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->post(Ljava/lang/Runnable;)Z

    .line 2633
    :cond_1b5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/16 v14, 0x20

    invoke-virtual {v13, v14}, Lcom/android/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    goto/16 :goto_3d

    .line 2521
    :cond_1c0
    const/4 v2, 0x0

    goto/16 :goto_b8

    .line 2528
    .restart local v2       #bLocationChange:Z
    :cond_1c3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    goto/16 :goto_c3

    .line 2590
    .end local v2           #bLocationChange:Z
    :cond_1cd
    const v13, 0x1020403

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewStub;

    .line 2592
    .local v8, stub:Landroid/view/ViewStub;
    if-eqz v8, :cond_118

    .line 2593
    invoke-virtual {v8}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/ActionBarContextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    goto/16 :goto_118

    .line 2600
    .end local v6           #mode:Landroid/view/ActionMode;
    .end local v8           #stub:Landroid/view/ViewStub;
    :cond_1e6
    const/4 v13, 0x0

    goto/16 :goto_136

    .line 2626
    .restart local v6       #mode:Landroid/view/ActionMode;
    .restart local v7       #root:Landroid/view/View;
    .restart local v9       #vlp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v10       #windowMode:I
    .restart local v11       #wlp:Landroid/view/WindowManager$LayoutParams;
    :cond_1e9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    goto :goto_1ac

    .line 2636
    .end local v7           #root:Landroid/view/View;
    .end local v9           #vlp:Landroid/view/ViewGroup$LayoutParams;
    .end local v10           #windowMode:I
    .end local v11           #wlp:Landroid/view/WindowManager$LayoutParams;
    :cond_1f2
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    goto/16 :goto_3d

    .line 2643
    :catch_1f9
    move-exception v13

    goto/16 :goto_66

    .line 2506
    :catch_1fc
    move-exception v13

    goto/16 :goto_37
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4
    .parameter "originalView"
    .parameter "callback"

    .prologue
    .line 2486
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startChanging()V
    .registers 2

    .prologue
    .line 2651
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mChanging:Z

    .line 2652
    return-void
.end method

.method public superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 2194
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 2153
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2178
    :cond_7
    :goto_7
    return v1

    .line 2159
    :cond_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3f

    .line 2160
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2162
    .local v0, action:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_1f

    .line 2163
    if-ne v0, v1, :cond_7

    .line 2164
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    goto :goto_7

    .line 2170
    :cond_1f
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1000(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/widget/ActionBarView;

    move-result-object v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1000(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/widget/ActionBarView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarView;->hasExpandedActionView()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 2171
    if-ne v0, v1, :cond_7

    .line 2172
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1000(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/widget/ActionBarView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarView;->collapseActionView()V

    goto :goto_7

    .line 2178
    .end local v0           #action:I
    :cond_3f
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 2182
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 2186
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 2190
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method updateWindowResizeState()V
    .registers 4

    .prologue
    .line 2778
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2779
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_12

    :cond_d
    const/4 v1, 0x1

    :goto_e
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->hackTurnOffWindowResizeAnim(Z)V

    .line 2781
    return-void

    .line 2779
    :cond_12
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;
    .registers 2

    .prologue
    .line 2894
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;
    .registers 2

    .prologue
    .line 2890
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
