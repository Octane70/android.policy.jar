.class public Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
.super Landroid/widget/ImageView;
.source "ImageViewBlended.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field private mode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->mPaint:Landroid/graphics/Paint;

    .line 24
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->mode:Landroid/graphics/PorterDuff$Mode;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/PorterDuff$Mode;)V
    .registers 4
    .parameter "context"
    .parameter "xfermode"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->mPaint:Landroid/graphics/Paint;

    .line 24
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->mode:Landroid/graphics/PorterDuff$Mode;

    .line 32
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->mode:Landroid/graphics/PorterDuff$Mode;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->mPaint:Landroid/graphics/Paint;

    .line 24
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->mode:Landroid/graphics/PorterDuff$Mode;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->mPaint:Landroid/graphics/Paint;

    .line 24
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->mode:Landroid/graphics/PorterDuff$Mode;

    .line 41
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->mRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 58
    return-void
.end method

.method public setImageResource(I)V
    .registers 6
    .parameter "resId"

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->mBitmap:Landroid/graphics/Bitmap;

    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->mode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_20

    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->mode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 67
    :cond_20
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->mRect:Landroid/graphics/Rect;

    .line 68
    return-void
.end method
