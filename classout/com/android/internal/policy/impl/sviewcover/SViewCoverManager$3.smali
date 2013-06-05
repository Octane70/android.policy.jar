.class Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$3;
.super Landroid/os/Handler;
.source "SViewCoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$3;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 141
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    .line 149
    :goto_5
    :pswitch_5
    return-void

    .line 143
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$3;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    #calls: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->handleHide()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$700(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V

    goto :goto_5

    .line 146
    :pswitch_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$3;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    #calls: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->handleShow()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$800(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V

    goto :goto_5

    .line 141
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_c
    .end packed-switch
.end method
