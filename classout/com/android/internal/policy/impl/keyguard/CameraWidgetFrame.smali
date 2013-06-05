.class public Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
.source "CameraWidgetFrame.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;,
        Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final RECOVERY_DELAY:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = null

.field private static final WIDGET_ANIMATION_DURATION:I = 0xfa

.field private static final WIDGET_WAIT_DURATION:I = 0x28a


# instance fields
.field private mActive:Z

.field private final mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

.field private final mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private final mCallbacks:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;

.field private mDown:Z

.field private mFullscreenPreview:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private mLaunchCameraStart:J

.field private final mPostTransitionToCameraEndAction:Ljava/lang/Runnable;

.field private mPreview:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

.field private final mRecoverRunnable:Ljava/lang/Runnable;

.field private final mRenderRunnable:Ljava/lang/Runnable;

.field private final mRenderedSize:Landroid/graphics/Point;

.field private final mSecureCameraActivityStartedRunnable:Ljava/lang/Runnable;

.field private final mTmpLoc:[I

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTransitionToCameraEndAction:Ljava/lang/Runnable;

.field private final mTransitionToCameraRunnable:Ljava/lang/Runnable;

.field private mTransitioning:Z

.field private final mWidgetInfo:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-class v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    .line 42
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;Landroid/view/View;)V
    .registers 10
    .parameter "context"
    .parameter "callbacks"
    .parameter "activityLauncher"
    .parameter "widgetInfo"
    .parameter "previewWidget"

    .prologue
    const v3, 0x10404ef

    .line 142
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    .line 58
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    .line 59
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTmpLoc:[I

    .line 60
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTmpRect:Landroid/graphics/Rect;

    .line 70
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$1;-><init>(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitionToCameraRunnable:Ljava/lang/Runnable;

    .line 76
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$2;-><init>(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitionToCameraEndAction:Ljava/lang/Runnable;

    .line 87
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$3;-><init>(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mPostTransitionToCameraEndAction:Ljava/lang/Runnable;

    .line 93
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$4;-><init>(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    .line 99
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$5;-><init>(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRenderRunnable:Ljava/lang/Runnable;

    .line 105
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$6;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$6;-><init>(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mSecureCameraActivityStartedRunnable:Ljava/lang/Runnable;

    .line 112
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$7;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$7;-><init>(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 143
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;

    .line 144
    iput-object p3, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    .line 145
    iput-object p4, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mWidgetInfo:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;

    .line 146
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mWindowManager:Landroid/view/WindowManager;

    .line 147
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 149
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-direct {v1, p1}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    .line 150
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v1, p5}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->addView(Landroid/view/View;)V

    .line 152
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->addView(Landroid/view/View;)V

    .line 154
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 155
    .local v0, clickBlocker:Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 156
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->addView(Landroid/view/View;)V

    .line 159
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 160
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v1, :cond_ba

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new CameraWidgetFrame instance "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->instanceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_ba
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->transitionToCamera()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitioning:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->render()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->onSecureCameraActivityStarted()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->onKeyguardVisibilityChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    return-wide p1
.end method

.method static synthetic access$400()Z
    .registers 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mSecureCameraActivityStartedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitionToCameraEndAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->recover()V

    return-void
.end method

.method private cancelTransitionToCamera()V
    .registers 5

    .prologue
    .line 385
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelTransitionToCamera at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_20
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitionToCameraRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 387
    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;)Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;
    .registers 9
    .parameter "context"
    .parameter "callbacks"
    .parameter "launcher"

    .prologue
    const/4 v0, 0x0

    .line 165
    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    if-nez p2, :cond_8

    .line 175
    :cond_7
    :goto_7
    return-object v0

    .line 168
    :cond_8
    invoke-virtual {p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;->getCameraWidgetInfo()Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;

    move-result-object v4

    .line 169
    .local v4, widgetInfo:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;
    if-eqz v4, :cond_7

    .line 171
    invoke-static {p0, v4}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->getPreviewWidget(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;)Landroid/view/View;

    move-result-object v5

    .line 172
    .local v5, previewWidget:Landroid/view/View;
    if-eqz v5, :cond_7

    .line 175
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;Landroid/view/View;)V

    goto :goto_7
.end method

.method private enableWindowExitAnimation(Z)V
    .registers 10
    .parameter "isEnabled"

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 427
    .local v2, root:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 428
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v0, Landroid/view/WindowManager$LayoutParams;

    if-nez v4, :cond_d

    .line 438
    :cond_c
    :goto_c
    return-void

    :cond_d
    move-object v3, v0

    .line 430
    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    .line 431
    .local v3, wlp:Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_4b

    const v1, 0x10301e3

    .line 432
    .local v1, newWindowAnimations:I
    :goto_15
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v1, v4, :cond_c

    .line 433
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v4, :cond_43

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting windowAnimations to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_43
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 436
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_c

    .line 431
    .end local v1           #newWindowAnimations:I
    :cond_4b
    const/4 v1, 0x0

    goto :goto_15
.end method

.method private static getPreviewWidget(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;)Landroid/view/View;
    .registers 3
    .parameter "context"
    .parameter "widgetInfo"

    .prologue
    .line 179
    iget v0, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;->layoutId:I

    if-lez v0, :cond_9

    invoke-static {p0, p1}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->inflateWidgetView(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;)Landroid/view/View;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->inflateGenericWidgetView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_8
.end method

.method private static inflateGenericWidgetView(Landroid/content/Context;)Landroid/view/View;
    .registers 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 207
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v1, :cond_c

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v2, "inflateGenericWidgetView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_c
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 209
    .local v0, iv:Landroid/widget/ImageView;
    const v1, 0x108034e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 210
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 211
    const/16 v1, 0x7f

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 212
    return-object v0
.end method

.method private static inflateWidgetView(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;)Landroid/view/View;
    .registers 10
    .parameter "context"
    .parameter "widgetInfo"

    .prologue
    .line 185
    sget-boolean v5, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v5, :cond_1e

    sget-object v5, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "inflateWidgetView: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;->contextPackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_1e
    const/4 v4, 0x0

    .line 187
    .local v4, widgetView:Landroid/view/View;
    const/4 v3, 0x0

    .line 189
    .local v3, exception:Ljava/lang/Exception;
    :try_start_20
    iget-object v5, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;->contextPackage:Ljava/lang/String;

    const/4 v6, 0x4

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 191
    .local v0, cameraContext:Landroid/content/Context;
    const-string v5, "layout_inflater"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 193
    .local v1, cameraInflater:Landroid/view/LayoutInflater;
    invoke-virtual {v1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 194
    iget v5, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;->layoutId:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_3a} :catch_45
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_3a} :catch_48

    move-result-object v4

    .line 200
    .end local v0           #cameraContext:Landroid/content/Context;
    .end local v1           #cameraInflater:Landroid/view/LayoutInflater;
    :goto_3b
    if-eqz v3, :cond_44

    .line 201
    sget-object v5, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v6, "Error creating camera widget view"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    :cond_44
    return-object v4

    .line 195
    :catch_45
    move-exception v2

    .line 196
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v3, v2

    .line 199
    goto :goto_3b

    .line 197
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_48
    move-exception v2

    .line 198
    .local v2, e:Ljava/lang/RuntimeException;
    move-object v3, v2

    goto :goto_3b
.end method

.method private instanceId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 461
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onCameraLaunched()V
    .registers 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;->onCameraLaunchedSuccessfully()V

    .line 391
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->reset()V

    .line 392
    return-void
.end method

.method private onKeyguardVisibilityChanged(Z)V
    .registers 11
    .parameter "showing"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 441
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v2, :cond_2d

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyguardVisibilityChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_2d
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitioning:Z

    if-eqz v2, :cond_67

    if-nez p1, :cond_67

    .line 444
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitioning:Z

    .line 445
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 446
    iget-wide v2, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    cmp-long v2, v2, v7

    if-lez v2, :cond_67

    .line 447
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    sub-long v0, v2, v4

    .line 448
    .local v0, launchTime:J
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v2, :cond_62

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v3, "Camera took %sms to launch"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_62
    iput-wide v7, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    .line 450
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->onCameraLaunched()V

    .line 453
    .end local v0           #launchTime:J
    :cond_67
    return-void
.end method

.method private onSecureCameraActivityStarted()V
    .registers 5

    .prologue
    .line 456
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSecureCameraActivityStarted at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_20
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 458
    return-void
.end method

.method private recover()V
    .registers 5

    .prologue
    .line 301
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recovering at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_20
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;->onCameraLaunchedUnsuccessfully()V

    .line 303
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->reset()V

    .line 304
    return-void
.end method

.method private render()V
    .registers 19

    .prologue
    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->getRootView()Landroid/view/View;

    move-result-object v9

    .line 217
    .local v9, root:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v12

    .line 218
    .local v12, width:I
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 219
    .local v1, height:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->x:I

    if-ne v13, v12, :cond_3f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    if-ne v13, v1, :cond_3f

    .line 220
    sget-boolean v13, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v13, :cond_3e

    sget-object v13, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v14, "Already rendered at size=%sx%s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_3e
    :goto_3e
    return-void

    .line 223
    :cond_3f
    if-eqz v12, :cond_3e

    if-eqz v1, :cond_3e

    .line 227
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    iput v12, v13, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->width:I

    .line 228
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    iput v1, v13, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->height:I

    .line 229
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->requestLayout()V

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->getWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->getPaddingLeft()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->getPaddingRight()I

    move-result v14

    sub-int v11, v13, v14

    .line 232
    .local v11, thisWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->getHeight()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->getPaddingTop()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->getPaddingBottom()I

    move-result v14

    sub-int v10, v13, v14

    .line 234
    .local v10, thisHeight:I
    int-to-float v13, v11

    int-to-float v14, v12

    div-float v4, v13, v14

    .line 235
    .local v4, pvScaleX:F
    int-to-float v13, v10

    int-to-float v14, v1

    div-float v5, v13, v14

    .line 236
    .local v5, pvScaleY:F
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 238
    .local v3, pvScale:F
    int-to-float v13, v12

    mul-float/2addr v13, v3

    float-to-int v8, v13

    .line 239
    .local v8, pvWidth:I
    int-to-float v13, v1

    mul-float/2addr v13, v3

    float-to-int v2, v13

    .line 241
    .local v2, pvHeight:I
    if-ge v8, v11, :cond_f3

    sub-int v13, v11, v8

    div-int/lit8 v13, v13, 0x2

    int-to-float v6, v13

    .line 242
    .local v6, pvTransX:F
    :goto_8d
    if-ge v2, v10, :cond_f5

    sub-int v13, v10, v2

    div-int/lit8 v13, v13, 0x2

    int-to-float v7, v13

    .line 244
    .local v7, pvTransY:F
    :goto_94
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->setPivotX(F)V

    .line 245
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->setPivotY(F)V

    .line 246
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v13, v3}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->setScaleX(F)V

    .line 247
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v13, v3}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->setScaleY(F)V

    .line 248
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v13, v6}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->setTranslationX(F)V

    .line 249
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v13, v7}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->setTranslationY(F)V

    .line 251
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    invoke-virtual {v13, v12, v1}, Landroid/graphics/Point;->set(II)V

    .line 252
    sget-boolean v13, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v13, :cond_3e

    sget-object v13, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v14, "Rendered camera widget size=%sx%s instance=%s"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->instanceId()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3e

    .line 241
    .end local v6           #pvTransX:F
    .end local v7           #pvTransY:F
    :cond_f3
    const/4 v6, 0x0

    goto :goto_8d

    .line 242
    .restart local v6       #pvTransX:F
    :cond_f5
    const/4 v7, 0x0

    goto :goto_94
.end method

.method private rescheduleTransitionToCamera()V
    .registers 5

    .prologue
    .line 379
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rescheduleTransitionToCamera at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_20
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitionToCameraRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 381
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitionToCameraRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28a

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 382
    return-void
.end method

.method private reset()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 395
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_21

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    .line 397
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitioning:Z

    .line 398
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mDown:Z

    .line 399
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->cancelTransitionToCamera()V

    .line 400
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 401
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    if-eqz v0, :cond_4c

    .line 403
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 404
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 406
    :cond_4c
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->enableWindowExitAnimation(Z)V

    .line 407
    return-void
.end method

.method private transitionToCamera()V
    .registers 16

    .prologue
    const/4 v14, 0x1

    const/high16 v13, 0x4000

    const/high16 v12, 0x3f80

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 257
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitioning:Z

    if-nez v8, :cond_f

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mDown:Z

    if-eqz v8, :cond_10

    .line 298
    :cond_f
    :goto_f
    return-void

    .line 259
    :cond_10
    iput-boolean v14, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitioning:Z

    .line 261
    invoke-direct {p0, v10}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->enableWindowExitAnimation(Z)V

    .line 263
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTmpLoc:[I

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->getLocationInWindow([I)V

    .line 264
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->getScaleY()F

    move-result v9

    mul-float v6, v8, v9

    .line 265
    .local v6, pvHeight:F
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTmpLoc:[I

    aget v8, v8, v14

    int-to-float v8, v8

    div-float v9, v6, v13

    add-float v5, v8, v9

    .line 268
    .local v5, pvCenter:F
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->getRootView()Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    const v9, 0x102033b

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 269
    .local v7, root:Landroid/view/ViewGroup;
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    if-nez v8, :cond_5b

    .line 270
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mWidgetInfo:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;

    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->getPreviewWidget(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    .line 271
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setClickable(Z)V

    .line 272
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 275
    :cond_5b
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 276
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v1, v8

    .line 277
    .local v1, fsHeight:F
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    div-float v9, v1, v13

    add-float v0, v8, v9

    .line 279
    .local v0, fsCenter:F
    div-float v3, v6, v1

    .line 280
    .local v3, fsScaleY:F
    sub-float v4, v5, v0

    .line 281
    .local v4, fsTransY:F
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->getScaleX()F

    move-result v2

    .line 283
    .local v2, fsScaleX:F
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->setVisibility(I)V

    .line 284
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 285
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v8, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 286
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v8, v2}, Landroid/view/View;->setScaleX(F)V

    .line 287
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v8, v3}, Landroid/view/View;->setScaleY(F)V

    .line 288
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const-wide/16 v9, 0xfa

    invoke-virtual {v8, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mPostTransitionToCameraEndAction:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 297
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;

    invoke-interface {v8}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;->onLaunchingCamera()V

    goto/16 :goto_f
.end method


# virtual methods
.method public onActive(Z)V
    .registers 5
    .parameter "isActive"

    .prologue
    const/4 v0, 0x1

    .line 333
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "kg_camera_widget_instantly_launch"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_1b

    .line 335
    .local v0, enableNotification:Z
    :goto_f
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mActive:Z

    .line 336
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mActive:Z

    if-eqz v1, :cond_1d

    if-eqz v0, :cond_1d

    .line 337
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->rescheduleTransitionToCamera()V

    .line 341
    :goto_1a
    return-void

    .line 333
    .end local v0           #enableNotification:Z
    :cond_1b
    const/4 v0, 0x0

    goto :goto_f

    .line 339
    .restart local v0       #enableNotification:Z
    :cond_1d
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->reset()V

    goto :goto_1a
.end method

.method public onBouncerShowing(Z)V
    .registers 4
    .parameter "showing"

    .prologue
    .line 419
    if-eqz p1, :cond_c

    .line 420
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitioning:Z

    .line 421
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 423
    :cond_c
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 313
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v1, "clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_b
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitioning:Z

    if-eqz v0, :cond_10

    .line 319
    :cond_f
    :goto_f
    return-void

    .line 315
    :cond_10
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mActive:Z

    if-eqz v0, :cond_f

    .line 316
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->cancelTransitionToCamera()V

    .line 317
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->transitionToCamera()V

    goto :goto_f
.end method

.method protected onDetachedFromWindow()V
    .registers 5

    .prologue
    .line 323
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetachedFromWindow: instance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->instanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_2e
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->onDetachedFromWindow()V

    .line 326
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 327
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->cancelTransitionToCamera()V

    .line 328
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 329
    return-void
.end method

.method protected onFocusLost()V
    .registers 5

    .prologue
    .line 368
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocusLost at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_20
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->cancelTransitionToCamera()V

    .line 370
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->onFocusLost()V

    .line 371
    return-void
.end method

.method public onScreenTurnedOff()V
    .registers 3

    .prologue
    .line 374
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_b
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->reset()V

    .line 376
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 11
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 411
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_39

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v1, "onSizeChanged new=%sx%s old=%sx%s at %s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_39
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRenderRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 414
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->onSizeChanged(IIII)V

    .line 415
    return-void
.end method

.method public onUserInteraction(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 345
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitioning:Z

    if-eqz v4, :cond_12

    .line 346
    sget-boolean v3, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v3, :cond_11

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v4, "onUserInteraction eaten: mTransitioning"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_11
    :goto_11
    return v2

    .line 350
    :cond_12
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTmpLoc:[I

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->getLocationOnScreen([I)V

    .line 351
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTmpLoc:[I

    aget v4, v4, v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->getHeight()I

    move-result v5

    add-int v1, v4, v5

    .line 352
    .local v1, rawBottom:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    int-to-float v5, v1

    cmpl-float v4, v4, v5

    if-lez v4, :cond_36

    .line 353
    sget-boolean v3, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v3, :cond_11

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v4, "onUserInteraction eaten: below widget"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 357
    :cond_36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 358
    .local v0, action:I
    if-eqz v0, :cond_3f

    const/4 v4, 0x2

    if-ne v0, v4, :cond_55

    :cond_3f
    :goto_3f
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mDown:Z

    .line 359
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mActive:Z

    if-eqz v2, :cond_48

    .line 360
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->rescheduleTransitionToCamera()V

    .line 362
    :cond_48
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v2, :cond_53

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v4, "onUserInteraction observed, not eaten"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    move v2, v3

    .line 363
    goto :goto_11

    :cond_55
    move v2, v3

    .line 358
    goto :goto_3f
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 309
    return-void
.end method
