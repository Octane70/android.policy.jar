.class Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen$1;
.super Ljava/lang/Object;
.source "AccountUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;->postOnCheckPasswordResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen$1;->val$success:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 182
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen$1;->val$success:Z

    if-eqz v1, :cond_61

    .line 184
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;->access$000(Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 185
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;->access$000(Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 186
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;->access$000(Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 190
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 191
    .local v6, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v3, "com.android.settings.ChooseLockGeneric"

    invoke-virtual {v6, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const/high16 v1, 0x1000

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 193
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;->access$100(Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 194
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;->access$200(Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;)Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    .line 196
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Unlock account screen succeeded."

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;->access$200(Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;)Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 213
    .end local v6           #intent:Landroid/content/Intent;
    :goto_60
    return-void

    .line 204
    :cond_61
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;->mInstructions:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;->access$300(Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;)Landroid/widget/TextView;

    move-result-object v1

    const v3, 0x10404de

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 205
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;->mPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;->access$400(Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;)Landroid/widget/EditText;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;->access$200(Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;)Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;->reportFailedUnlockAttempt()V

    .line 208
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Unlock account screen failed."

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_60
.end method
