.class Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;
.super Ljava/lang/Object;
.source "LockScreen.java"

# interfaces
.implements Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;
.implements Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$UnlockWidgetCommonMethods;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GlowPadViewMethods"
.end annotation


# instance fields
.field private final mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;Lcom/android/internal/widget/multiwaveview/GlowPadView;)V
    .registers 3
    .parameter
    .parameter "glowPadView"

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    .line 258
    return-void
.end method

.method private launchActivity(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    .line 347
    const/high16 v1, 0x3400

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 352
    :try_start_5
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_1c

    .line 357
    :goto_c
    :try_start_c
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->access$1500(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c .. :try_end_1b} :catch_25

    .line 361
    :goto_1b
    return-void

    .line 353
    :catch_1c
    move-exception v0

    .line 354
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LockScreen"

    const-string v2, "can\'t dismiss keyguard on launch"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 358
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_25
    move-exception v0

    .line 359
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "LockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity not found for intent + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 394
    return-void
.end method

.method public getTargetPosition(I)I
    .registers 3
    .parameter "resourceId"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getTargetPosition(I)I

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    return-object v0
.end method

.method public isTargetPresent(I)Z
    .registers 4
    .parameter "resId"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getTargetPosition(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onFinishFinalAnimation()V
    .registers 1

    .prologue
    .line 398
    return-void
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .registers 3
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 304
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .registers 4
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 367
    if-eqz p2, :cond_b

    .line 368
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->access$400(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;->pokeWakelock()V

    .line 370
    :cond_b
    return-void
.end method

.method public onReleased(Landroid/view/View;I)V
    .registers 3
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 308
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .registers 8
    .parameter "v"
    .parameter "target"

    .prologue
    .line 311
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v2, p2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getResourceIdForTarget(I)I

    move-result v1

    .line 312
    .local v1, resId:I
    sparse-switch v1, :sswitch_data_68

    .line 340
    :goto_9
    return-void

    .line 314
    :sswitch_a
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->access$1400(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->access$1300(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, -0x2

    invoke-virtual {v2, v3, v4}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 317
    .local v0, assistIntent:Landroid/content/Intent;
    if-eqz v0, :cond_32

    .line 318
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;->launchActivity(Landroid/content/Intent;)V

    .line 322
    :goto_28
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->access$400(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_9

    .line 320
    :cond_32
    const-string v2, "LockScreen"

    const-string v3, "Failed to get intent for assist activity"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 326
    .end local v0           #assistIntent:Landroid/content/Intent;
    :sswitch_3a
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;->launchActivity(Landroid/content/Intent;)V

    .line 327
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->access$400(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_9

    .line 331
    :sswitch_4e
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;

    #calls: Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->toggleRingMode()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->access$500(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)V

    .line 332
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->access$400(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_9

    .line 337
    :sswitch_5d
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->access$400(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_9

    .line 312
    nop

    :sswitch_data_68
    .sparse-switch
        0x10802f7 -> :sswitch_a
        0x108034e -> :sswitch_3a
        0x1080368 -> :sswitch_4e
        0x1080377 -> :sswitch_5d
        0x108037a -> :sswitch_5d
    .end sparse-switch
.end method

.method public ping()V
    .registers 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->ping()V

    .line 382
    return-void
.end method

.method public reset(Z)V
    .registers 3
    .parameter "animate"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->reset(Z)V

    .line 378
    return-void
.end method

.method public setEnabled(IZ)V
    .registers 4
    .parameter "resourceId"
    .parameter "enabled"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setEnableTarget(IZ)V

    .line 386
    return-void
.end method

.method public updateResources()V
    .registers 11

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const v9, 0x10802f7

    .line 266
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mCameraDisabled:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->access$800(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Z

    move-result v4

    if-eqz v4, :cond_9f

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mEnableRingSilenceFallback:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->access$900(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Z

    move-result v4

    if-eqz v4, :cond_9f

    .line 268
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mSilentMode:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->access$000(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Z

    move-result v4

    if-eqz v4, :cond_9b

    const v3, 0x107000b

    .line 273
    .local v3, resId:I
    :goto_20
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v4}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getTargetResourceId()I

    move-result v4

    if-eq v4, v3, :cond_2d

    .line 274
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setTargetResources(I)V

    .line 278
    :cond_2d
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mSearchDisabled:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->access$1000(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Z

    move-result v4

    if-nez v4, :cond_80

    .line 279
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->access$1200(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Landroid/content/Context;

    move-result-object v4

    const-string v7, "search"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SearchManager;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->access$1100(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Landroid/content/Context;

    move-result-object v7

    const/4 v8, -0x2

    invoke-virtual {v4, v7, v8}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    .line 281
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_80

    .line 285
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 286
    .local v0, component:Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const-string v7, "com.android.systemui.action_assist_icon_google"

    invoke-virtual {v4, v0, v7, v9}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v2

    .line 290
    .local v2, replaced:Z
    if-nez v2, :cond_80

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const-string v7, "com.android.systemui.action_assist_icon"

    invoke-virtual {v4, v0, v7, v9}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_80

    .line 293
    const-string v4, "LockScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t grab icon from package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #replaced:Z
    :cond_80
    const v7, 0x108034e

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mCameraDisabled:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->access$800(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Z

    move-result v4

    if-nez v4, :cond_a4

    move v4, v5

    :goto_8c
    invoke-virtual {p0, v7, v4}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;->setEnabled(IZ)V

    .line 299
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mSearchDisabled:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->access$1000(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Z

    move-result v4

    if-nez v4, :cond_a6

    :goto_97
    invoke-virtual {p0, v9, v5}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;->setEnabled(IZ)V

    .line 300
    return-void

    .line 268
    .end local v3           #resId:I
    :cond_9b
    const v3, 0x107000e

    goto :goto_20

    .line 271
    :cond_9f
    const v3, 0x1070010

    .restart local v3       #resId:I
    goto/16 :goto_20

    :cond_a4
    move v4, v6

    .line 298
    goto :goto_8c

    :cond_a6
    move v5, v6

    .line 299
    goto :goto_97
.end method
