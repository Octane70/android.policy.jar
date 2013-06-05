.class Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 114
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v9, 0x12e8

    const/16 v8, 0x12de

    const/16 v7, 0x12d4

    const/16 v6, 0x12ca

    const/16 v5, 0x12c0

    .line 117
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, action:Ljava/lang/String;
    const-string v2, "pkg"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 120
    .local v1, pkg:Ljava/lang/String;
    const-string v2, "ContexualWidgetMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v2, "ContexualWidgetMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pkg ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    if-eqz v1, :cond_88

    const-string v2, "com.android.phone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_58

    const-string v2, "com.android.mms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 124
    :cond_58
    const-string v2, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11f

    .line 125
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 126
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 127
    :cond_75
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 134
    :cond_88
    :goto_88
    const-string v2, "com.sec.android.app.music.intent.action.SHOW_CONTEXTUAL_WIDGET"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_151

    .line 135
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 136
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 137
    :cond_a5
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 144
    :cond_b8
    :goto_b8
    const-string v2, "com.android.internal.policy.impl.keyguard.sec.REMOTE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_183

    .line 145
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_d5

    .line 146
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 147
    :cond_d5
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 154
    :cond_e8
    :goto_e8
    const-string v2, "com.samsung.music.intent.action.SHOW_CONTEXTUAL_WIDGET"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1bb

    .line 155
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x12fc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_109

    .line 156
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x12fc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 157
    :cond_109
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x12fc

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 164
    :cond_11e
    :goto_11e
    return-void

    .line 128
    :cond_11f
    const-string v2, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 129
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_13c

    .line 130
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 131
    :cond_13c
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_88

    .line 138
    :cond_151
    const-string v2, "com.sec.android.app.music.intent.action.HIDE_CONTEXTUAL_WIDGET"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 139
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_16e

    .line 140
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 141
    :cond_16e
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_b8

    .line 148
    :cond_183
    const-string v2, "com.android.internal.policy.impl.keyguard.sec.REMOTE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e8

    .line 149
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x12f2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1a4

    .line 150
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x12f2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 151
    :cond_1a4
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x12f2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_e8

    .line 158
    :cond_1bb
    const-string v2, "com.samsung.music.intent.action.HIDE_CONTEXTUAL_WIDGET"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11e

    .line 159
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x1306

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1dc

    .line 160
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x1306

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 161
    :cond_1dc
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x1306

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_11e
.end method
