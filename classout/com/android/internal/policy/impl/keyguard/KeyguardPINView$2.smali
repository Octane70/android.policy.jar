.class Lcom/android/internal/policy/impl/keyguard/KeyguardPINView$2;
.super Ljava/lang/Object;
.source "KeyguardPINView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->doHapticKeyClick()V

    .line 82
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 83
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->verifyPasswordAndUnlock()V

    .line 85
    :cond_14
    return-void
.end method
