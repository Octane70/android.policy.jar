.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3$1;
.super Landroid/os/FileObserver;
.source "KeyguardEffectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->onChange(ZLandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3$1;->this$1:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;

    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 6
    .parameter "event"
    .parameter "path"

    .prologue
    const/16 v2, 0x12f2

    .line 142
    sparse-switch p1, :sswitch_data_38

    .line 155
    :goto_5
    return-void

    .line 145
    :sswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3$1;->this$1:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 146
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3$1;->this$1:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 147
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3$1;->this$1:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3$1;->this$1:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 142
    nop

    :sswitch_data_38
    .sparse-switch
        0x2 -> :sswitch_6
        0x200 -> :sswitch_6
    .end sparse-switch
.end method
