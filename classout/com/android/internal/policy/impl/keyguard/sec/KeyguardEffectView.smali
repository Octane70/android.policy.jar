.class public Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$5;,
        Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;,
        Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;
    }
.end annotation


# static fields
.field private static final MSG_CHANGE_WALLPAPER_TYPE:I = 0x12f0

.field private static final MSG_WALLPAPER_FILE_CHANGED:I = 0x12f2

.field private static final MSG_WALLPAPER_PATH_CHANGED:I = 0x12f1

.field private static final TAG:Ljava/lang/String; = "KeyguardBackgroundView"

.field private static sKeyguardBackgroundView:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;


# instance fields
.field private final mAdminReceiver:Landroid/content/BroadcastReceiver;

.field private mBackground:Landroid/widget/FrameLayout;

.field private mBackgroundView:Landroid/view/View;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mFileObserver:Landroid/os/FileObserver;

.field private mForeground:Landroid/widget/FrameLayout;

.field private mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

.field private final mHandler:Landroid/os/Handler;

.field private mIs_JBP_upgrade:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mWallpaperPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 110
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 78
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;

    .line 95
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mAdminReceiver:Landroid/content/BroadcastReceiver;

    .line 111
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    .line 113
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackground:Landroid/widget/FrameLayout;

    .line 114
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForeground:Landroid/widget/FrameLayout;

    .line 116
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 118
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContentObserver:Landroid/database/ContentObserver;

    .line 167
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_ripple_effect"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 169
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 171
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_path"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 175
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_path"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mWallpaperPath:Ljava/lang/String;

    .line 177
    const-string v1, "KeyguardBackgroundView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWallpaperPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mWallpaperPath:Ljava/lang/String;

    if-eqz v1, :cond_a1

    .line 179
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$4;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mFileObserver:Landroid/os/FileObserver;

    .line 197
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    .line 199
    :cond_a1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mIs_JBP_upgrade:Z

    .line 202
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 203
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.sec.LSO_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mAdminReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 207
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->handleChangeWallpaperType()V

    .line 208
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->handleChangeWallpaperType()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->handleUpdateKeygaurdBackgroud()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/FileObserver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mFileObserver:Landroid/os/FileObserver;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;Landroid/os/FileObserver;)Landroid/os/FileObserver;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mFileObserver:Landroid/os/FileObserver;

    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;
    .registers 3
    .parameter "context"

    .prologue
    .line 211
    const-string v0, "KeyguardBackgroundView"

    const-string v1, "*** KeyguardEffectView getInstance ***"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->sKeyguardBackgroundView:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    if-nez v0, :cond_12

    .line 213
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->sKeyguardBackgroundView:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    .line 214
    :cond_12
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->sKeyguardBackgroundView:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    return-object v0
.end method

.method private handleChangeWallpaperType()V
    .registers 6

    .prologue
    .line 221
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenWallpaper;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v0

    .line 223
    .local v0, isLiveWallpaper:Z
    if-eqz v0, :cond_22

    .line 225
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mIs_JBP_upgrade:Z

    if-eqz v2, :cond_17

    .line 226
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;->circle:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeForeground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;)V

    .line 227
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->none:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeBackground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;)V

    .line 254
    :goto_16
    return-void

    .line 229
    :cond_17
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;->lens:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeForeground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;)V

    .line 230
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->none:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeBackground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;)V

    goto :goto_16

    .line 235
    :cond_22
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_ripple_effect"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 237
    .local v1, unlockEffect:I
    packed-switch v1, :pswitch_data_54

    goto :goto_16

    .line 240
    :pswitch_33
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;->circle:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeForeground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;)V

    .line 241
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->wallpaper:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeBackground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;)V

    goto :goto_16

    .line 245
    :pswitch_3e
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;->lens:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeForeground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;)V

    .line 246
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->wallpaper:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeBackground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;)V

    goto :goto_16

    .line 250
    :pswitch_49
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;->none:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeForeground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;)V

    .line 251
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->ripple:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeBackground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;)V

    goto :goto_16

    .line 237
    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_33
        :pswitch_49
        :pswitch_3e
    .end packed-switch
.end method

.method private handleUpdateKeygaurdBackgroud()V
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 265
    :cond_4
    :goto_4
    return-void

    .line 260
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;

    if-eqz v0, :cond_12

    .line 261
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->setLockScreenWallpaper()V

    .line 263
    :cond_12
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    if-eqz v0, :cond_4

    .line 264
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->setBackground()V

    goto :goto_4
.end method

.method private makeBackground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;)V
    .registers 6
    .parameter "background"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 402
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$5;->$SwitchMap$com$android$internal$policy$impl$keyguard$sec$KeyguardEffectView$Background:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_46

    .line 421
    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 422
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_1d

    .line 423
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackground:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 425
    :cond_1d
    return-void

    .line 404
    :pswitch_1e
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    if-nez v0, :cond_d

    .line 405
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    .line 406
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    goto :goto_d

    .line 410
    :pswitch_30
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;

    if-nez v0, :cond_d

    .line 411
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    .line 412
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    goto :goto_d

    .line 416
    :pswitch_42
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    goto :goto_d

    .line 402
    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_30
        :pswitch_42
    .end packed-switch
.end method

.method private makeForeground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;)V
    .registers 6
    .parameter "foreground"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 375
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$5;->$SwitchMap$com$android$internal$policy$impl$keyguard$sec$KeyguardEffectView$Foreground:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_48

    .line 394
    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForeground:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 395
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    if-eqz v0, :cond_1f

    .line 396
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForeground:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v3, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 398
    :cond_1f
    return-void

    .line 377
    :pswitch_20
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;

    if-nez v0, :cond_d

    .line 378
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    .line 379
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    goto :goto_d

    .line 383
    :pswitch_32
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;

    if-nez v0, :cond_d

    .line 384
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    .line 385
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    goto :goto_d

    .line 389
    :pswitch_44
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    goto :goto_d

    .line 375
    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_20
        :pswitch_32
        :pswitch_44
    .end packed-switch
.end method


# virtual methods
.method public cleanUp()V
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    if-eqz v0, :cond_9

    .line 319
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->cleanUp()V

    .line 321
    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    if-eqz v0, :cond_16

    .line 322
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->cleanUp()V

    .line 323
    :cond_16
    return-void
.end method

.method public getBackgroundLayout()Landroid/widget/FrameLayout;
    .registers 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackground:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getForegroundLayout()Landroid/widget/FrameLayout;
    .registers 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForeground:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getUnlockDelay()J
    .registers 3

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    if-eqz v0, :cond_b

    .line 346
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->getUnlockDelay()J

    move-result-wide v0

    .line 351
    :goto_a
    return-wide v0

    .line 348
    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    if-eqz v0, :cond_1a

    .line 349
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->getUnlockDelay()J

    move-result-wide v0

    goto :goto_a

    .line 351
    :cond_1a
    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method public handleHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    if-eqz v0, :cond_b

    .line 357
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->handleHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 362
    :goto_a
    return v0

    .line 359
    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    if-eqz v0, :cond_1a

    .line 360
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->handleHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_a

    .line 362
    :cond_1a
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "view"
    .parameter "event"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    if-eqz v0, :cond_f

    .line 270
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 275
    :goto_e
    return v0

    .line 272
    :cond_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    if-eqz v0, :cond_1a

    .line 273
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_e

    .line 275
    :cond_1a
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 4
    .parameter "view"
    .parameter "event"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    if-eqz v0, :cond_e

    .line 281
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 286
    :cond_d
    :goto_d
    return-void

    .line 283
    :cond_e
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    if-eqz v0, :cond_d

    .line 284
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_d
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    if-eqz v0, :cond_9

    .line 328
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->reset()V

    .line 330
    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    if-eqz v0, :cond_16

    .line 331
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->reset()V

    .line 332
    :cond_16
    return-void
.end method

.method public screenTurnedOn()V
    .registers 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    if-eqz v0, :cond_9

    .line 337
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->screenTurnedOn()V

    .line 339
    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    if-eqz v0, :cond_16

    .line 340
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->screenTurnedOn()V

    .line 341
    :cond_16
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 290
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 291
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    if-nez v1, :cond_3b

    .line 292
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;->none:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeForeground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;)V

    .line 296
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenWallpaper;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v0

    .line 298
    .local v0, isLiveWallpaper:Z
    if-eqz v0, :cond_35

    .line 299
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->none:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeBackground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;)V

    .line 309
    .end local v0           #isLiveWallpaper:Z
    :goto_1e
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    if-eqz v1, :cond_27

    .line 310
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->show()V

    .line 312
    :cond_27
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v1, v1, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    if-eqz v1, :cond_34

    .line 313
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->show()V

    .line 314
    :cond_34
    return-void

    .line 301
    .restart local v0       #isLiveWallpaper:Z
    :cond_35
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->wallpaper:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeBackground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;)V

    goto :goto_1e

    .line 303
    .end local v0           #isLiveWallpaper:Z
    :cond_3b
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->handleChangeWallpaperType()V

    goto :goto_1e

    .line 306
    :cond_3f
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->handleChangeWallpaperType()V

    goto :goto_1e
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .registers 5
    .parameter "startDelay"
    .parameter "rect"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    if-eqz v0, :cond_a

    .line 368
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    .line 372
    :cond_9
    :goto_9
    return-void

    .line 369
    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    if-eqz v0, :cond_9

    .line 370
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    goto :goto_9
.end method
