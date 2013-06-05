.class Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$SlidingTabMethods;
.super Ljava/lang/Object;
.source "LockScreen.java"

# interfaces
.implements Lcom/android/internal/widget/SlidingTab$OnTriggerListener;
.implements Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$UnlockWidgetCommonMethods;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlidingTabMethods"
.end annotation


# instance fields
.field private final mSlidingTab:Lcom/android/internal/widget/SlidingTab;

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;Lcom/android/internal/widget/SlidingTab;)V
    .registers 3
    .parameter
    .parameter "slidingTab"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$SlidingTabMethods;->mSlidingTab:Lcom/android/internal/widget/SlidingTab;

    .line 139
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$SlidingTabMethods;->mSlidingTab:Lcom/android/internal/widget/SlidingTab;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab;->setOnTriggerListener(Lcom/android/internal/widget/SlidingTab$OnTriggerListener;)V

    .line 203
    return-void
.end method

.method public getTargetPosition(I)I
    .registers 3
    .parameter "resourceId"

    .prologue
    .line 198
    const/4 v0, -0x1

    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$SlidingTabMethods;->mSlidingTab:Lcom/android/internal/widget/SlidingTab;

    return-object v0
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .registers 5
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 169
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1e

    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;

    #calls: Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->isSilentMode()Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->access$600(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Z

    move-result v1

    #setter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mSilentMode:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->access$002(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;Z)Z

    .line 171
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$SlidingTabMethods;->mSlidingTab:Lcom/android/internal/widget/SlidingTab;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mSilentMode:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->access$000(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const v0, 0x10404e2

    :goto_1b
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/SlidingTab;->setRightHintText(I)V

    .line 177
    :cond_1e
    if-eqz p2, :cond_29

    .line 178
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->access$400(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;->pokeWakelock()V

    .line 180
    :cond_29
    return-void

    .line 171
    :cond_2a
    const v0, 0x10404e3

    goto :goto_1b
.end method

.method public onTrigger(Landroid/view/View;I)V
    .registers 4
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    .line 159
    const/4 v0, 0x1

    if-ne p2, v0, :cond_d

    .line 160
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->access$400(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 165
    :cond_c
    :goto_c
    return-void

    .line 161
    :cond_d
    const/4 v0, 0x2

    if-ne p2, v0, :cond_c

    .line 162
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;

    #calls: Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->toggleRingMode()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->access$500(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)V

    .line 163
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->access$400(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_c
.end method

.method public ping()V
    .registers 1

    .prologue
    .line 191
    return-void
.end method

.method public reset(Z)V
    .registers 3
    .parameter "animate"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$SlidingTabMethods;->mSlidingTab:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab;->reset(Z)V

    .line 188
    return-void
.end method

.method public setEnabled(IZ)V
    .registers 3
    .parameter "resourceId"
    .parameter "enabled"

    .prologue
    .line 195
    return-void
.end method

.method public updateResources()V
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 142
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mSilentMode:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->access$000(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->access$300(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v0, :cond_49

    .line 145
    .local v0, vibe:Z
    :goto_15
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$SlidingTabMethods;->mSlidingTab:Lcom/android/internal/widget/SlidingTab;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mSilentMode:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->access$000(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Z

    move-result v1

    if-eqz v1, :cond_4f

    if-eqz v0, :cond_4b

    const v1, 0x1080343

    :goto_24
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mSilentMode:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->access$000(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Z

    move-result v2

    if-eqz v2, :cond_53

    const v2, 0x1080440

    :goto_2f
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mSilentMode:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->access$000(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Z

    move-result v3

    if-eqz v3, :cond_57

    const v3, 0x1080429

    :goto_3a
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mSilentMode:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->access$000(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Z

    move-result v4

    if-eqz v4, :cond_5b

    const v4, 0x108043c

    :goto_45
    invoke-virtual {v5, v1, v2, v3, v4}, Lcom/android/internal/widget/SlidingTab;->setRightTabResources(IIII)V

    .line 155
    return-void

    .line 142
    .end local v0           #vibe:Z
    :cond_49
    const/4 v0, 0x0

    goto :goto_15

    .line 145
    .restart local v0       #vibe:Z
    :cond_4b
    const v1, 0x1080340

    goto :goto_24

    :cond_4f
    const v1, 0x1080341

    goto :goto_24

    :cond_53
    const v2, 0x108043d

    goto :goto_2f

    :cond_57
    const v3, 0x1080428

    goto :goto_3a

    :cond_5b
    const v4, 0x108043b

    goto :goto_45
.end method
