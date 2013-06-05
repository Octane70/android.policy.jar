.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1;
.super Ljava/lang/Object;
.source "KeyguardUnlockView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)V
    .registers 2
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshVoiceUnlockHelpText()V
    .registers 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsHelpTextEnabled:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 164
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1$2;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 173
    :cond_1e
    return-void
.end method

.method public setVoiceRecognitionFailCue()V
    .registers 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsHelpTextEnabled:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 152
    :cond_1e
    return-void
.end method

.method public unlock()V
    .registers 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->access$700(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 157
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->access$700(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 159
    :cond_12
    return-void
.end method
