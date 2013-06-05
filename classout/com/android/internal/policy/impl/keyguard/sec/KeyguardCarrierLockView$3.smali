.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView$3;
.super Landroid/os/Handler;
.source "KeyguardCarrierLockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;)V
    .registers 2
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 225
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 230
    :goto_5
    return-void

    .line 227
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->handleTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->access$400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;I)V

    goto :goto_5

    .line 225
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
