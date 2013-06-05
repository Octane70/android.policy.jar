.class final Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;
.super Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper$SamsungPolicyOnGestureListener;
.source "StatusBarWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/StatusBarWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ShowFullScreenGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V
    .registers 2
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper$SamsungPolicyOnGestureListener;-><init>()V

    .line 121
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "e"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 162
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarExpanded:Z

    if-eqz v3, :cond_9

    .line 196
    :cond_8
    :goto_8
    return v5

    .line 166
    :cond_9
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    if-eqz v3, :cond_2c

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget v0, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHeight:I

    .line 171
    .local v0, controlAllowHeight:I
    :goto_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    int-to-float v4, v0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_33

    .line 172
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v4, v4, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultHideOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 173
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iput-boolean v5, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyControlStatusBar:Z

    goto :goto_8

    .line 166
    .end local v0           #controlAllowHeight:I
    :cond_2c
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHeight:I

    mul-int/lit8 v0, v3, 0x2

    goto :goto_13

    .line 178
    .restart local v0       #controlAllowHeight:I
    :cond_33
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    if-eqz v3, :cond_57

    .line 180
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsStatusBarWindow:Z

    if-nez v3, :cond_8

    .line 182
    :try_start_3f
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    .line 183
    .local v2, statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v2, :cond_4a

    .line 184
    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_4a} :catch_50

    .line 190
    .end local v2           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_4a
    :goto_4a
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    invoke-virtual {v3, v6}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->performShowStatusBarOnFullScreen(Z)V

    goto :goto_8

    .line 186
    :catch_50
    move-exception v1

    .line 188
    .local v1, ex:Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_4a

    .line 192
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_57
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyControlStatusBar:Z

    if-eqz v3, :cond_8

    .line 193
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iput-boolean v6, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyControlStatusBar:Z

    goto :goto_8
.end method

.method public onFinished(Landroid/view/MotionEvent;)V
    .registers 6
    .parameter "e"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarExpanded:Z

    if-eqz v0, :cond_7

    .line 223
    :goto_6
    return-void

    .line 215
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyControlStatusBar:Z

    if-eqz v0, :cond_2b

    .line 217
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    if-eqz v0, :cond_2b

    .line 218
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultHideOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 219
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultHideOnFullScreen:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 222
    :cond_2b
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyControlStatusBar:Z

    goto :goto_6
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x1

    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarExpanded:Z

    if-eqz v0, :cond_8

    .line 148
    :cond_7
    :goto_7
    return v2

    .line 141
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyControlStatusBar:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    if-nez v0, :cond_7

    .line 143
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget v1, v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mFlingGestureMaxXVelocityPx:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mFlingGestureMinVelocityPy:F

    cmpl-float v0, p4, v0

    if-ltz v0, :cond_7

    .line 145
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->performShowStatusBarOnFullScreen(Z)V

    goto :goto_7
.end method
