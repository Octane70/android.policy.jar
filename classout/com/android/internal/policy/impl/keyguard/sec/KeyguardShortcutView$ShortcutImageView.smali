.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;
.super Landroid/widget/ImageView;
.source "KeyguardShortcutView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShortcutImageView"
.end annotation


# instance fields
.field private mBadgeCount:I

.field private mBoundsRect:Landroid/graphics/Rect;

.field private mDistanceRatio:D

.field private mIsPressed:Z

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 960
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 951
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mIsPressed:Z

    .line 952
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    .line 955
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBadgeCount:I

    .line 957
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    .line 961
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 962
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 965
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 966
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 968
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 971
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 951
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mIsPressed:Z

    .line 952
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    .line 955
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBadgeCount:I

    .line 957
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    .line 972
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 975
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    .line 976
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 977
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$2700()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 978
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 979
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 980
    return-void
.end method


# virtual methods
.method public createBadgeDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 23
    .parameter "badgeCount"

    .prologue
    .line 1095
    if-nez p1, :cond_5

    .line 1096
    const/16 v18, 0x0

    .line 1154
    :goto_4
    return-object v18

    .line 1098
    :cond_5
    const/16 v18, 0x64

    move/from16 v0, p1

    move/from16 v1, v18

    if-lt v0, v1, :cond_10a

    .line 1099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$3800()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1104
    :goto_1f
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$3900()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v14, v0, Landroid/graphics/Rect;->left:I

    .line 1106
    .local v14, paddingLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v15, v0, Landroid/graphics/Rect;->top:I

    .line 1107
    .local v15, paddingTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    add-int v16, v14, v18

    .line 1108
    .local v16, paddingWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    add-int v13, v15, v18

    .line 1109
    .local v13, paddingHeight:I
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$3900()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    sub-int v11, v18, v16

    .line 1110
    .local v11, defaultContentsWidth:I
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$3900()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    sub-int v10, v18, v13

    .line 1112
    .local v10, defaultContentsHeight:I
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 1113
    .local v5, badgeText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    .line 1114
    .local v6, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v5, v1, v2, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1121
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v18

    add-int/lit8 v9, v18, 0xa

    .line 1122
    .local v9, contentsWidth:I
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 1123
    .local v8, contentsHeight:I
    if-ge v9, v11, :cond_9a

    .line 1126
    move v9, v11

    .line 1129
    :cond_9a
    if-ge v8, v10, :cond_a3

    .line 1131
    sub-int v18, v10, v8

    div-int/lit8 v18, v18, 0x2

    add-int v15, v15, v18

    .line 1132
    move v8, v10

    .line 1135
    :cond_a3
    add-int v17, v9, v16

    .line 1136
    .local v17, width:I
    add-int v12, v8, v13

    .line 1138
    .local v12, height:I
    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v12, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1139
    .local v4, b:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1141
    .local v7, c:Landroid/graphics/Canvas;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$3900()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1142
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$3900()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1151
    div-int/lit8 v18, v9, 0x2

    add-int v18, v18, v14

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v19, v15, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v7, v5, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1154
    new-instance v18, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    .line 1101
    .end local v4           #b:Landroid/graphics/Bitmap;
    .end local v5           #badgeText:Ljava/lang/String;
    .end local v6           #bounds:Landroid/graphics/Rect;
    .end local v7           #c:Landroid/graphics/Canvas;
    .end local v8           #contentsHeight:I
    .end local v9           #contentsWidth:I
    .end local v10           #defaultContentsHeight:I
    .end local v11           #defaultContentsWidth:I
    .end local v12           #height:I
    .end local v13           #paddingHeight:I
    .end local v14           #paddingLeft:I
    .end local v15           #paddingTop:I
    .end local v16           #paddingWidth:I
    .end local v17           #width:I
    :cond_10a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$2700()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_1f
.end method

.method public getBadgeCount()I
    .registers 2

    .prologue
    .line 1090
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBadgeCount:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 20
    .parameter "canvas"

    .prologue
    .line 984
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 987
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBadgeCount:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->createBadgeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 988
    .local v6, overlay:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_51

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v11

    if-eqz v11, :cond_51

    .line 989
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 990
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->getPaddingTop()I

    move-result v11

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$2800()I

    move-result v12

    add-int v9, v11, v12

    .line 991
    .local v9, top:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->getWidth()I

    move-result v10

    .line 992
    .local v10, viewWidth:I
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 993
    .local v7, overlayWidth:I
    div-int/lit8 v11, v10, 0x2

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$2900()I

    move-result v12

    add-int v4, v11, v12

    .line 995
    .local v4, left:I
    add-int v11, v4, v7

    if-le v11, v10, :cond_3a

    .line 996
    add-int v11, v4, v7

    sub-int/2addr v11, v10

    sub-int/2addr v4, v11

    .line 999
    :cond_3a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->getScrollX()I

    move-result v11

    add-int/2addr v4, v11

    .line 1000
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    add-int/2addr v11, v4

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    add-int/2addr v12, v9

    invoke-virtual {v6, v4, v9, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1002
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1005
    .end local v4           #left:I
    .end local v7           #overlayWidth:I
    .end local v9           #top:I
    .end local v10           #viewWidth:I
    :cond_51
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mIsPressed:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_fd

    .line 1009
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$3100()Landroid/graphics/Paint;

    move-result-object v11

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$3000()Landroid/graphics/MaskFilter;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 1010
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$3100()Landroid/graphics/Paint;

    move-result-object v11

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$3200()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 1012
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_fe

    .line 1013
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$3300()Landroid/graphics/Paint;

    move-result-object v11

    const/16 v12, 0xff

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1014
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$3100()Landroid/graphics/Paint;

    move-result-object v11

    const/16 v12, 0xff

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1043
    :goto_8a
    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1044
    new-instance v11, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v12, 0x4

    const/4 v13, 0x2

    invoke-direct {v11, v12, v13}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 1048
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 1049
    .local v2, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1053
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const/4 v8, 0x2

    .line 1056
    .local v8, padding:I
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$3400()I

    move-result v11

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$3500()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/lit8 v5, v11, 0x2

    .line 1059
    .local v5, outerPadding:I
    const/4 v11, 0x0

    new-instance v12, Landroid/graphics/Rect;

    add-int v13, v8, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->getWidth()I

    move-result v14

    sub-int/2addr v14, v8

    sub-int/2addr v14, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->getHeight()I

    move-result v15

    sub-int/2addr v15, v8

    invoke-direct {v12, v13, v8, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$3300()Landroid/graphics/Paint;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1063
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$3600()Landroid/graphics/Paint;

    move-result-object v11

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$3700()[I

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1064
    .local v3, glow:Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    new-instance v12, Landroid/graphics/Rect;

    neg-int v13, v8

    add-int/2addr v13, v5

    neg-int v14, v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->getWidth()I

    move-result v15

    add-int/2addr v15, v8

    sub-int/2addr v15, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->getHeight()I

    move-result v16

    add-int v16, v16, v8

    invoke-direct/range {v12 .. v16}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$3100()Landroid/graphics/Paint;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1068
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1071
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v3           #glow:Landroid/graphics/Bitmap;
    .end local v5           #outerPadding:I
    .end local v8           #padding:I
    :cond_fd
    return-void

    .line 1015
    :cond_fe
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-lez v11, :cond_129

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    const-wide v13, 0x3fe999999999999aL

    cmpg-double v11, v11, v13

    if-gez v11, :cond_129

    .line 1023
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$3300()Landroid/graphics/Paint;

    move-result-object v11

    const/16 v12, 0xff

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1024
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$3100()Landroid/graphics/Paint;

    move-result-object v11

    const/16 v12, 0xff

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_8a

    .line 1026
    :cond_129
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    const-wide/high16 v13, 0x3ff0

    cmpg-double v11, v11, v13

    if-gez v11, :cond_146

    .line 1027
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$3300()Landroid/graphics/Paint;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1028
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$3100()Landroid/graphics/Paint;

    move-result-object v11

    const/16 v12, 0xff

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_8a

    .line 1030
    :cond_146
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    const-wide v13, 0x3ff4cccccccccccdL

    cmpg-double v11, v11, v13

    if-gez v11, :cond_17b

    .line 1031
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$3300()Landroid/graphics/Paint;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1035
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$3100()Landroid/graphics/Paint;

    move-result-object v11

    const-wide v12, 0x4055400000000000L

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    const-wide/high16 v16, 0x3ff0

    sub-double v14, v14, v16

    mul-double/2addr v12, v14

    const-wide v14, 0x3fb999999999999aL

    div-double/2addr v12, v14

    double-to-int v12, v12

    rsub-int v12, v12, 0xff

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_8a

    .line 1038
    :cond_17b
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$3300()Landroid/graphics/Paint;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1039
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$3100()Landroid/graphics/Paint;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_8a
.end method

.method public onPressed(Z)V
    .registers 4
    .parameter "pressed"

    .prologue
    .line 1074
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mIsPressed:Z

    .line 1075
    if-eqz p1, :cond_8

    .line 1076
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    .line 1077
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->postInvalidate()V

    .line 1078
    return-void
.end method

.method public setBadgeCount(I)V
    .registers 2
    .parameter "count"

    .prologue
    .line 1086
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBadgeCount:I

    .line 1087
    return-void
.end method

.method public setDistanceRatio(D)V
    .registers 3
    .parameter "distanceRatio"

    .prologue
    .line 1081
    iput-wide p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    .line 1082
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->postInvalidate()V

    .line 1083
    return-void
.end method
