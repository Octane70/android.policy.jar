.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem$1;
.super Ljava/lang/Object;
.source "KeyguardShortcutView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;)V
    .registers 2
    .parameter

    .prologue
    .line 705
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem$1;->this$1:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem$1;->this$1:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->launchApplication()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$2600(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)V

    .line 709
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem$1;->this$1:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$2400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 710
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem$1;->this$1:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$2400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 712
    :cond_1d
    return-void
.end method
