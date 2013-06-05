.class Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$2;
.super Landroid/os/Handler;
.source "ContextualWidgetMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)V
    .registers 2
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 170
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_32

    .line 194
    :goto_7
    return-void

    .line 173
    :sswitch_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->handleMissedEventUpdate()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$100(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)V

    goto :goto_7

    .line 176
    :sswitch_e
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->handleMusicWidgetUpdate(Z)V
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;Z)V

    goto :goto_7

    .line 179
    :sswitch_14
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->handleMusicWidgetUpdate(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;Z)V

    goto :goto_7

    .line 182
    :sswitch_1a
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->handleRemoteWidgetUpdate(Z)V
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;Z)V

    goto :goto_7

    .line 185
    :sswitch_20
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->handleRemoteWidgetUpdate(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;Z)V

    goto :goto_7

    .line 188
    :sswitch_26
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->handleSecMusicWidgetUpdate(Z)V
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$400(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;Z)V

    goto :goto_7

    .line 191
    :sswitch_2c
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->handleSecMusicWidgetUpdate(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$400(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;Z)V

    goto :goto_7

    .line 170
    :sswitch_data_32
    .sparse-switch
        0x12c0 -> :sswitch_8
        0x12ca -> :sswitch_8
        0x12d4 -> :sswitch_e
        0x12de -> :sswitch_14
        0x12e8 -> :sswitch_1a
        0x12f2 -> :sswitch_20
        0x12fc -> :sswitch_26
        0x1306 -> :sswitch_2c
    .end sparse-switch
.end method
