.class public Lcom/android/internal/policy/impl/keyguard/sec/LockscreenWallpaper;
.super Ljava/lang/Object;
.source "LockscreenWallpaper.java"


# static fields
.field public static final ACTION_UPDATE_LOCKSCREEN_WALLPAPER:Ljava/lang/String; = "android.intent.action.sec.LSO_CONFIG_CHANGED"

.field public static final ADMIN_WALLPAPER_PORTRAIT:Ljava/lang/String; = "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

.field public static final ADMIN_WALLPAPER_RIPPLE:Ljava/lang/String; = "/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAdminWallpaper()Z
    .registers 2

    .prologue
    .line 55
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static isLiveWallpaper(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 48
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenWallpaper;->isAdminWallpaper()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 51
    :cond_8
    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_wallpaper"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_8

    move v0, v1

    goto :goto_8
.end method
