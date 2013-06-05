.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$1;
.super Landroid/os/Handler;
.source "KeyguardEffectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    .line 91
    :goto_5
    return-void

    .line 84
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->handleChangeWallpaperType()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)V

    goto :goto_5

    .line 88
    :pswitch_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->handleUpdateKeygaurdBackgroud()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)V

    goto :goto_5

    .line 82
    :pswitch_data_12
    .packed-switch 0x12f0
        :pswitch_6
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method
