.class Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;
.super Ljava/lang/Object;
.source "KeyguardPatternView.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockPatternListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V
    .registers 2
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 349
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 361
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_13

    .line 362
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const-wide/16 v1, 0x1b58

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 367
    :goto_12
    return-void

    .line 365
    :cond_13
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    goto :goto_12
.end method

.method public onPatternCleared()V
    .registers 1

    .prologue
    .line 356
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 370
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 371
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportSuccessfulUnlockAttempt()V

    .line 372
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v3

    sget-object v4, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 373
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    const/4 v4, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$602(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;I)I

    .line 374
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 400
    :goto_31
    return-void

    .line 376
    :cond_32
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_44

    .line 377
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v3

    const-wide/16 v4, 0x1b58

    invoke-interface {v3, v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 379
    :cond_44
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v3

    sget-object v4, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 380
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v7, :cond_68

    .line 381
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$608(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)I

    .line 382
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$708(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)I

    .line 383
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportFailedUnlockAttempt()V

    .line 385
    :cond_68
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)I

    move-result v3

    if-eqz v3, :cond_a0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v7, :cond_a0

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)I

    move-result v3

    rem-int/lit8 v3, v3, 0x5

    if-nez v3, :cond_a0

    .line 389
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    .line 390
    .local v0, deadline:J
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V
    invoke-static {v3, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;J)V

    .line 393
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PATTERN_LOCK_FAIL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_31

    .line 396
    .end local v0           #deadline:J
    .end local v2           #intent:Landroid/content/Intent;
    :cond_a0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    move-result-object v3

    const v4, 0x1040862

    invoke-interface {v3, v4, v6}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 397
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_31
.end method

.method public onPatternStart()V
    .registers 3

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 353
    return-void
.end method
