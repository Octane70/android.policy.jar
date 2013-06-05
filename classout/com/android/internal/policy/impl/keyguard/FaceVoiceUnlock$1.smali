.class Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock$1;
.super Ljava/lang/Object;
.source "FaceVoiceUnlock.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->initWakeUpHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;)V
    .registers 2
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 144
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_e0

    .line 195
    :cond_6
    :goto_6
    return v4

    .line 147
    :pswitch_7
    :try_start_7
    const-string v1, "FULLockscreen"

    const-string v2, "Create and initialize WakeUpCmdRecognizer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;

    new-instance v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;

    invoke-direct {v2, v3}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;-><init>(Lcom/samsung/voiceshell/VoiceEngineResultListener;)V

    #setter for: Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->access$002(Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    .line 149
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->access$000(Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->access$100(Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->setContext(Landroid/content/Context;)V

    .line 150
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->access$000(Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->init()I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_32} :catch_33

    goto :goto_6

    .line 151
    :catch_33
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FULLockscreen"

    const-string v2, "Error while initializing WakeUpCmdRecognizer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 157
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_3c
    :try_start_3c
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->access$000(Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mVoiceVerifyStarted:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->access$200(Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 158
    const-string v1, "FULLockscreen"

    const-string v2, "startVerify WakeUpCmdRecognizer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mVoiceVerifyStarted:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->access$202(Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;Z)Z

    .line 160
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->access$000(Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->startVerify(I)I
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_63} :catch_64

    goto :goto_6

    .line 162
    :catch_64
    move-exception v0

    .line 163
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "FULLockscreen"

    const-string v2, "Error while startVerify WakeUpCmdRecognizer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 168
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_6d
    :try_start_6d
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->access$000(Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mVoiceVerifyStarted:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->access$200(Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;)Z

    move-result v1

    if-ne v1, v4, :cond_6

    .line 169
    const-string v1, "FULLockscreen"

    const-string v2, "terminateVerify WakeUpCmdRecognizer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->access$000(Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->stopVerify()I

    .line 171
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mVoiceVerifyStarted:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->access$202(Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;Z)Z
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_93} :catch_95

    goto/16 :goto_6

    .line 173
    :catch_95
    move-exception v0

    .line 174
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "FULLockscreen"

    const-string v2, "Error while terminateVerify WakeUpCmdRecognizer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 180
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_9f
    :try_start_9f
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->access$000(Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 182
    const-string v1, "FULLockscreen"

    const-string v2, "cleanUp destroy WakeUpCmdRecognizer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mVoiceVerifyStarted:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->access$200(Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;)Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 184
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->access$000(Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->stopVerify()I

    .line 185
    :cond_bf
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mVoiceVerifyStarted:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->access$202(Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;Z)Z

    .line 186
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->access$000(Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->destroy()V

    .line 187
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->access$002(Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_d4} :catch_d6

    goto/16 :goto_6

    .line 189
    :catch_d6
    move-exception v0

    .line 190
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "FULLockscreen"

    const-string v2, "Error while terminating WakeUpCmdRecognizer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 144
    :pswitch_data_e0
    .packed-switch 0xa
        :pswitch_7
        :pswitch_3c
        :pswitch_6d
        :pswitch_9f
    .end packed-switch
.end method
