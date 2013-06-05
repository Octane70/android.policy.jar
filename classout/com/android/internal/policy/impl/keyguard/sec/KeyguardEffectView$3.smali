.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;
.super Landroid/database/ContentObserver;
.source "KeyguardEffectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 7
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    const/16 v3, 0x12f1

    const/16 v2, 0x12f0

    .line 122
    const-string v0, "lockscreen_wallpaper"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
    :cond_25
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 165
    :cond_38
    :goto_38
    return-void

    .line 126
    :cond_39
    const-string v0, "lockscreen_ripple_effect"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 127
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 129
    :cond_5a
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_38

    .line 130
    :cond_6e
    const-string v0, "lockscreen_wallpaper_path"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 131
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 132
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_path"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mWallpaperPath:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mWallpaperPath:Ljava/lang/String;

    if-eqz v0, :cond_c5

    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mFileObserver:Landroid/os/FileObserver;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/FileObserver;

    move-result-object v0

    if-eqz v0, :cond_a8

    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mFileObserver:Landroid/os/FileObserver;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/FileObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 137
    :cond_a8
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mFileObserver:Landroid/os/FileObserver;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$402(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;Landroid/os/FileObserver;)Landroid/os/FileObserver;

    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3$1;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;Ljava/lang/String;)V

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mFileObserver:Landroid/os/FileObserver;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$402(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;Landroid/os/FileObserver;)Landroid/os/FileObserver;

    .line 157
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mFileObserver:Landroid/os/FileObserver;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/FileObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 159
    :cond_c5
    const-string v0, "KeyguardBackgroundView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWallpaperPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 161
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 162
    :cond_f6
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_38
.end method
