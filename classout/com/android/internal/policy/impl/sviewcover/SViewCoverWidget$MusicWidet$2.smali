.class Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet$2;
.super Landroid/content/BroadcastReceiver;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;)V
    .registers 2
    .parameter

    .prologue
    .line 478
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 481
    const-string v7, "ClearCoverMusicWidet"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive() : intent="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, action:Ljava/lang/String;
    const-string v7, "com.sec.android.music.musicservicecommnad.mediainfo"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_77

    .line 485
    const-string v7, "isPlaying"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-ne v7, v5, :cond_78

    move v4, v5

    .line 486
    .local v4, playing:I
    :goto_2f
    const-string v7, "isStopped"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-ne v7, v5, :cond_7a

    move v1, v5

    .line 487
    .local v1, isStop:I
    :goto_38
    const-string v5, "uri"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 488
    .local v2, mediaUri:Landroid/net/Uri;
    const-string v5, "ClearCoverMusicWidet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isPlaying : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isStopped : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;

    #getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mMusicHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->access$700(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x12c2

    invoke-virtual {v5, v6, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 490
    .local v3, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;

    #getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->mMusicHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->access$700(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 492
    .end local v1           #isStop:I
    .end local v2           #mediaUri:Landroid/net/Uri;
    .end local v3           #msg:Landroid/os/Message;
    .end local v4           #playing:I
    :cond_77
    return-void

    :cond_78
    move v4, v6

    .line 485
    goto :goto_2f

    .restart local v4       #playing:I
    :cond_7a
    move v1, v6

    .line 486
    goto :goto_38
.end method
