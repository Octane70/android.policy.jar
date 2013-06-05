.class Lcom/android/internal/policy/impl/PhoneWindow$DecorView$4;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->addSwitchToPreviousSizeButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)V
    .registers 2
    .parameter

    .prologue
    .line 3017
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$4;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v5, -0x1

    .line 3020
    :try_start_1
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2300()Landroid/widget/PopupWindow;

    move-result-object v3

    if-eqz v3, :cond_56

    .line 3021
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2300()Landroid/widget/PopupWindow;

    move-result-object v4

    monitor-enter v4
    :try_end_c
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_c} :catch_70

    .line 3022
    :try_start_c
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2300()Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_55

    .line 3023
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$4;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 3025
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2300()Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 3027
    .local v2, token:Landroid/os/IBinder;
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3100()I

    move-result v3

    if-eq v3, v5, :cond_3c

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3300()I

    move-result v3

    if-ne v3, v5, :cond_57

    .line 3029
    :cond_3c
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2300()Landroid/widget/PopupWindow;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$4;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mGravityOfSwitchToPreviousSizeButton:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3700(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$4;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mXOffsetOfSwitchToPreviousSizeButton:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3800(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$4;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mYOffsetOfSwitchToPreviousSizeButton:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3900(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v7

    invoke-virtual {v3, v2, v5, v6, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 3042
    .end local v1           #metrics:Landroid/util/DisplayMetrics;
    .end local v2           #token:Landroid/os/IBinder;
    :cond_55
    :goto_55
    monitor-exit v4

    .line 3047
    :cond_56
    :goto_56
    return-void

    .line 3035
    .restart local v1       #metrics:Landroid/util/DisplayMetrics;
    .restart local v2       #token:Landroid/os/IBinder;
    :cond_57
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2300()Landroid/widget/PopupWindow;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$4;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mGravityOfSwitchToPreviousSizeButton:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3700(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v5

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3100()I

    move-result v6

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3300()I

    move-result v7

    invoke-virtual {v3, v2, v5, v6, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto :goto_55

    .line 3042
    .end local v1           #metrics:Landroid/util/DisplayMetrics;
    .end local v2           #token:Landroid/os/IBinder;
    :catchall_6d
    move-exception v3

    monitor-exit v4
    :try_end_6f
    .catchall {:try_start_c .. :try_end_6f} :catchall_6d

    :try_start_6f
    throw v3
    :try_end_70
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_6f .. :try_end_70} :catch_70

    .line 3044
    :catch_70
    move-exception v0

    .line 3045
    .local v0, e:Landroid/view/WindowManager$BadTokenException;
    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_56
.end method
