.class public Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;
.super Landroid/widget/FrameLayout;
.source "WallpaperWidget.java"


# static fields
.field private static sWallpaperWidget:Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;


# instance fields
.field private final DBG:Z

.field private final PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIsLiveWallpaper:Z

.field private mLockScreenWallpaperImage:Landroid/widget/ImageView;

.field private mWallpaperPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    const-string v0, "WallpaperWidget"

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->TAG:Ljava/lang/String;

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->DBG:Z

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 31
    const-string v0, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenWallpaper;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mIsLiveWallpaper:Z

    .line 47
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mIsLiveWallpaper:Z

    if-eqz v0, :cond_21

    .line 57
    :goto_20
    return-void

    .line 51
    :cond_21
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 54
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->addView(Landroid/view/View;II)V

    .line 56
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->setLockScreenWallpaper()V

    goto :goto_20
.end method

.method public static getInstance()Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;
    .registers 1

    .prologue
    .line 152
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->sWallpaperWidget:Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;
    .registers 2
    .parameter "cotext"

    .prologue
    .line 156
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->sWallpaperWidget:Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;

    if-nez v0, :cond_b

    .line 157
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->sWallpaperWidget:Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;

    .line 158
    :cond_b
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->sWallpaperWidget:Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;

    return-object v0
.end method

.method private setDefaultWallpaper()Landroid/graphics/drawable/BitmapDrawable;
    .registers 10

    .prologue
    const v8, 0x1080450

    .line 109
    new-instance v1, Ljava/io/File;

    const-string v7, "//system/wallpaper/lockscreen_default_wallpaper.jpg"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .local v1, file:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v7, "//system/csc_contents/lockscreen_default_wallpaper.jpg"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .local v2, fileMultiCSC:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v7, "//system/wallpaper/lockscreen_default_wallpaper.png"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .local v4, filePng:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v7, "//system/csc_contents/lockscreen_default_wallpaper.png"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v3, fileMultiCSCPng:Ljava/io/File;
    const/4 v5, 0x0

    .line 114
    .local v5, is:Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_44

    .line 116
    :try_start_26
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #is:Ljava/io/InputStream;
    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2b} :catch_38

    .line 141
    .restart local v5       #is:Ljava/io/InputStream;
    :goto_2b
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 144
    .local v6, tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :try_start_34
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_97

    .line 148
    :goto_37
    return-object v6

    .line 117
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :catch_38
    move-exception v0

    .line 118
    .local v0, e:Ljava/io/IOException;
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 119
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_2b

    .line 120
    .end local v0           #e:Ljava/io/IOException;
    :cond_44
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 122
    :try_start_4a
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #is:Ljava/io/InputStream;
    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4f} :catch_50

    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_2b

    .line 123
    .end local v5           #is:Ljava/io/InputStream;
    :catch_50
    move-exception v0

    .line 124
    .restart local v0       #e:Ljava/io/IOException;
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 125
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_2b

    .line 126
    .end local v0           #e:Ljava/io/IOException;
    :cond_5c
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_74

    .line 128
    :try_start_62
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #is:Ljava/io/InputStream;
    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_67} :catch_68

    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_2b

    .line 129
    .end local v5           #is:Ljava/io/InputStream;
    :catch_68
    move-exception v0

    .line 130
    .restart local v0       #e:Ljava/io/IOException;
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 131
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_2b

    .line 132
    .end local v0           #e:Ljava/io/IOException;
    :cond_74
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_8c

    .line 134
    :try_start_7a
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #is:Ljava/io/InputStream;
    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7f} :catch_80

    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_2b

    .line 135
    .end local v5           #is:Ljava/io/InputStream;
    :catch_80
    move-exception v0

    .line 136
    .restart local v0       #e:Ljava/io/IOException;
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 137
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_2b

    .line 139
    .end local v0           #e:Ljava/io/IOException;
    :cond_8c
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    goto :goto_2b

    .line 145
    .restart local v6       #tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :catch_97
    move-exception v0

    .line 146
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_37
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .prologue
    .line 62
    const-string v0, "WallpaperWidget"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    return-void
.end method

.method public setLockScreenWallpaper()V
    .registers 9

    .prologue
    .line 71
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenWallpaper;->isAdminWallpaper()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 72
    const-string v4, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    .line 74
    :try_start_a
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1a} :catch_1b

    .line 105
    :goto_1a
    return-void

    .line 76
    :catch_1b
    move-exception v0

    .line 78
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "WallpaperWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading Admin wallpaper EX:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_38
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_wallpaper_path"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    .line 85
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    if-nez v4, :cond_4e

    .line 86
    const-string v4, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    .line 89
    :cond_4e
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .local v1, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 92
    .local v2, tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_79

    .line 94
    :try_start_5c
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_67} :catch_6e

    .line 95
    .end local v2           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    .local v3, tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    :try_start_67
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6c} :catch_83

    move-object v2, v3

    .line 99
    .end local v3           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2       #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_1a

    .line 96
    :catch_6e
    move-exception v0

    .line 97
    .restart local v0       #ex:Ljava/lang/Exception;
    :goto_6f
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->setDefaultWallpaper()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 98
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1a

    .line 101
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_79
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->setDefaultWallpaper()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 102
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1a

    .line 96
    .end local v2           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v3       #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    :catch_83
    move-exception v0

    move-object v2, v3

    .end local v3           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2       #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_6f
.end method
