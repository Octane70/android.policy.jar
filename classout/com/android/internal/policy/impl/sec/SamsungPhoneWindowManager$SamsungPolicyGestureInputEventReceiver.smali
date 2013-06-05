.class public final Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyGestureInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SamsungPolicyGestureInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4
    .parameter
    .parameter "inputChannel"
    .parameter "looper"

    .prologue
    .line 1560
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyGestureInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .line 1561
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 1562
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 4
    .parameter "event"

    .prologue
    .line 1566
    const/4 v0, 0x0

    .line 1568
    .local v0, handled:Z
    :try_start_1
    instance-of v1, p1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_f

    .line 1569
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyGestureInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTspInputEventObserver:Lcom/samsung/android/service/gesture/TspInputEventObserver;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->access$100(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)Lcom/samsung/android/service/gesture/TspInputEventObserver;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/service/gesture/TspInputEventObserver;->onInputEvent(Landroid/view/InputEvent;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_13

    .line 1570
    const/4 v0, 0x1

    .line 1573
    :cond_f
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyGestureInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 1575
    return-void

    .line 1573
    :catchall_13
    move-exception v1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyGestureInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v1
.end method
