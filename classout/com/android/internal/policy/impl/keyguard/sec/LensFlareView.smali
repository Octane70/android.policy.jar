.class public Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;
.super Landroid/widget/FrameLayout;
.source "LensFlareView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;,
        Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$BackInterpolator;,
        Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$QuintEaseIn;,
        Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$QuintEaseOut;
    }
.end annotation


# instance fields
.field private final AFFORDANCE_OFF_DURATION:I

.field private final AFFORDANCE_ON_DURATION:I

.field private final DBG:Z

.field private final FADEOUT_ANIMATION_DURATION:I

.field private final FOG_MAX_ALPHA:F

.field private final FOG_ON_DURATION:I

.field private final HEXAGON_CIRCLE_TOTAL:I

.field private HEXAGON_TAP_TOTAL:I

.field private HEXAGON_TOTAL:I

.field private final HOVER_DURATION:I

.field private final HOVER_LIGHT_IN_DURATION:I

.field private final HOVER_LIGHT_OUT_DURATION:I

.field private MAX_ALPHA_DISTANCE:I

.field private final SHOW_ANIMATION_DURATION:I

.field private final TAG:Ljava/lang/String;

.field private final TAP_ANIMATION_DURATION:I

.field private final TAP_AREA_RADIUS:I

.field private final UNLOCK_ANIMATION_DURATION:I

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field private final X_OFFSET:I

.field private Y_OFFSET:I

.field private affordanceAnimationValue:F

.field private affordanceOffAnimator:Landroid/animation/ValueAnimator;

.field private affordanceOnAnimator:Landroid/animation/ValueAnimator;

.field private affordancePoint:Landroid/graphics/Point;

.field private affordanceRunnable:Ljava/lang/Runnable;

.field private createdDelaytime:J

.field private currentX:F

.field private currentY:F

.field private distance:D

.field private distancePerMaxAlpha:F

.field private fadeOutAnimator:Landroid/animation/ValueAnimator;

.field private fadeoutAnimationValue:F

.field private fogAlpha:F

.field private fogAnimationValue:F

.field private fogOnAnimator:Landroid/animation/ValueAnimator;

.field private hexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

.field private hexagonDistance:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private hexagonRes:[I

.field private hexagonRotation:[I

.field private hexagonScale:[F

.field private hoverAnimator:Landroid/animation/ValueAnimator;

.field private hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

.field private hoverLightAnimationValue:F

.field private hoverLightInAnimator:Landroid/animation/ValueAnimator;

.field private hoverLightOutAnimator:Landroid/animation/ValueAnimator;

.field private hoverX:F

.field private hoverY:F

.field private isBeforeInit:Z

.field private isPlayAffordance:Z

.field private isSoundEnable:Z

.field private isSystemSoundChecked:Z

.field private isTouched:Z

.field private lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

.field private lightObj:Landroid/widget/FrameLayout;

.field private lightTap:Landroid/widget/FrameLayout;

.field private longLight:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

.field private mContext:Landroid/content/Context;

.field private mFirstCreatedRunnable:Ljava/lang/Runnable;

.field private objAlpha:F

.field private objAnimationValue:F

.field private objAnimator:Landroid/animation/ValueAnimator;

.field private particle:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

.field private rainbow:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

.field private randomRotation:F

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private ring:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

.field private screenHeight:I

.field private screenWidth:I

.field private showStartX:F

.field private showStartY:F

.field private sound_tap:I

.field private sound_unlock:I

.field private soundpool:Landroid/media/SoundPool;

.field private tapAnimationValue:F

.field private tapAnimator:Landroid/animation/ValueAnimator;

.field private tapHexRandomPoint:[Landroid/graphics/Point;

.field private tapHexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

.field private tapHexagonScale:[F

.field private unlockAnimationValue:F

.field private unlockAnimator:Landroid/animation/ValueAnimator;

.field private vignetting:Landroid/widget/ImageView;

.field private vignettingAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/16 v1, 0x1f4

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 201
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 130
    const-string v0, "LensFlare"

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->TAG:Ljava/lang/String;

    .line 134
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_CIRCLE_TOTAL:I

    .line 136
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TAP_TOTAL:I

    .line 138
    const v0, 0x3f19999a

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->FOG_MAX_ALPHA:F

    .line 142
    const/16 v0, 0x1770

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->SHOW_ANIMATION_DURATION:I

    .line 144
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->TAP_ANIMATION_DURATION:I

    .line 146
    const/16 v0, 0x4b0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->UNLOCK_ANIMATION_DURATION:I

    .line 148
    const v0, 0x186a0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HOVER_DURATION:I

    .line 150
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HOVER_LIGHT_IN_DURATION:I

    .line 152
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HOVER_LIGHT_OUT_DURATION:I

    .line 154
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->AFFORDANCE_ON_DURATION:I

    .line 156
    const/16 v0, 0x44c

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->AFFORDANCE_OFF_DURATION:I

    .line 158
    const/16 v0, 0x258

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->TAP_AREA_RADIUS:I

    .line 160
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->FOG_ON_DURATION:I

    .line 162
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->FADEOUT_ANIMATION_DURATION:I

    .line 164
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->X_OFFSET:I

    .line 166
    const/16 v0, -0x50

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->Y_OFFSET:I

    .line 170
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->soundpool:Landroid/media/SoundPool;

    .line 178
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isSoundEnable:Z

    .line 180
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->DBG:Z

    .line 182
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isBeforeInit:Z

    .line 184
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mFirstCreatedRunnable:Ljava/lang/Runnable;

    .line 186
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->createdDelaytime:J

    .line 188
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->UNLOCK_SOUND_PLAY_TIME:J

    .line 190
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordancePoint:Landroid/graphics/Point;

    .line 196
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isPlayAffordance:Z

    .line 198
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isTouched:Z

    .line 203
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    .line 204
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isBeforeInit:Z

    .line 205
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mFirstCreatedRunnable:Ljava/lang/Runnable;

    .line 206
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimationValue:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->animatedDragPos()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->animatedHover()V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightAnimationValue:F

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->animatedHoverLight()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceAnimationValue:F

    return v0
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceAnimationValue:F

    return p1
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->animatedAffordance()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)Landroid/animation/ValueAnimator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;Landroid/animation/Animator;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)Landroid/animation/ValueAnimator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOffAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->playUnlockAffordance()V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isPlayAffordance:Z

    return p1
.end method

.method static synthetic access$2002(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogAnimationValue:F

    return p1
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lensFlareinit()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)Landroid/media/SoundPool;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->soundpool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->soundpool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->animatedDragAlpha()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimationValue:F

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->animatedTap()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fadeoutAnimationValue:F

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->animatedFadeOut()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->unlockAnimationValue:F

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->animatedUnlock()V

    return-void
.end method

.method private animatedAffordance()V
    .registers 3

    .prologue
    .line 727
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceAnimationValue:F

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->getCorrectAlpha(F)F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogAlpha:F

    .line 728
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 729
    return-void
.end method

.method private animatedDragAlpha()V
    .registers 6

    .prologue
    .line 692
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogAnimationValue:F

    const/high16 v3, 0x3f80

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->distancePerMaxAlpha:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->getCorrectAlpha(F)F

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogAlpha:F

    .line 693
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->distancePerMaxAlpha:F

    const/high16 v3, 0x4040

    mul-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->getCorrectAlpha(F)F

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAlpha:F

    .line 694
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->distancePerMaxAlpha:F

    const v3, 0x3fa66666

    mul-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->getCorrectAlpha(F)F

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->vignettingAlpha:F

    .line 696
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogAlpha:F

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 697
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->vignetting:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->vignettingAlpha:F

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 699
    const/4 v1, 0x0

    .local v1, i:I
    :goto_34
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TOTAL:I

    if-ge v1, v2, :cond_44

    .line 700
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    aget-object v0, v2, v1

    .line 701
    .local v0, hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAlpha:F

    invoke-direct {p0, v0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 699
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 703
    .end local v0           #hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    :cond_44
    return-void
.end method

.method private animatedDragPos()V
    .registers 13

    .prologue
    const/high16 v6, 0x3f80

    .line 676
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->distancePerMaxAlpha:F

    mul-float/2addr v0, v6

    add-float v11, v6, v0

    .line 677
    .local v11, scale:F
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v0, v11}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleX(F)V

    .line 678
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v0, v11}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleY(F)V

    .line 679
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimationValue:F

    neg-float v0, v0

    const/high16 v2, 0x41f0

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->distancePerMaxAlpha:F

    const/high16 v3, 0x4320

    mul-float/2addr v2, v3

    sub-float v10, v0, v2

    .line 680
    .local v10, rotation:F
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v0, v10}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setRotation(F)V

    .line 682
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentX:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 684
    const/4 v9, 0x0

    .local v9, i:I
    :goto_32
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TOTAL:I

    if-ge v9, v0, :cond_5d

    .line 685
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    aget-object v1, v0, v9

    .line 686
    .local v1, hex:Landroid/widget/ImageView;
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentX:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentY:F

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonDistance:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonScale:[F

    aget v7, v0, v9

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonRotation:[I

    aget v8, v0, v9

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setCenterPos(Landroid/view/View;FFFFFFI)V

    .line 684
    add-int/lit8 v9, v9, 0x1

    goto :goto_32

    .line 689
    .end local v1           #hex:Landroid/widget/ImageView;
    :cond_5d
    return-void
.end method

.method private animatedFadeOut()V
    .registers 6

    .prologue
    .line 706
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogAlpha:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fadeoutAnimationValue:F

    mul-float/2addr v3, v4

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 707
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->vignetting:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->vignettingAlpha:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fadeoutAnimationValue:F

    mul-float/2addr v3, v4

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 709
    const/4 v1, 0x0

    .local v1, i:I
    :goto_15
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TOTAL:I

    if-ge v1, v2, :cond_28

    .line 710
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    aget-object v0, v2, v1

    .line 711
    .local v0, hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAlpha:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fadeoutAnimationValue:F

    mul-float/2addr v2, v3

    invoke-direct {p0, v0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 709
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 713
    .end local v0           #hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    :cond_28
    return-void
.end method

.method private animatedHover()V
    .registers 7

    .prologue
    const/high16 v5, 0x4040

    const/high16 v4, 0x4000

    .line 619
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverX:F

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setX(F)V

    .line 620
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverY:F

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setY(F)V

    .line 621
    return-void
.end method

.method private animatedHoverLight()V
    .registers 3

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightAnimationValue:F

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleX(F)V

    .line 625
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightAnimationValue:F

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleY(F)V

    .line 626
    return-void
.end method

.method private animatedTap()V
    .registers 20

    .prologue
    .line 630
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimationValue:F

    const/high16 v16, 0x3f00

    cmpg-float v15, v15, v16

    if-gez v15, :cond_a0

    const/high16 v1, 0x3f80

    .line 632
    .local v1, alpha:F
    :goto_c
    const v15, 0x3e4ccccd

    const v16, 0x3f4ccccd

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimationValue:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v2, v15, v16

    .line 633
    .local v2, distanceScale:F
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1d
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TAP_TOTAL:I

    if-ge v4, v15, :cond_b4

    .line 634
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapHexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    aget-object v3, v15, v4

    .line 635
    .local v3, hex:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 637
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapHexagonScale:[F

    aget v15, v15, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimationValue:F

    move/from16 v16, v0

    const v17, 0x3f4ccccd

    mul-float v16, v16, v17

    const v17, 0x3f333333

    add-float v16, v16, v17

    mul-float v10, v15, v16

    .line 638
    .local v10, scale:F
    invoke-virtual {v3, v10}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleX(F)V

    .line 639
    invoke-virtual {v3, v10}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleY(F)V

    .line 641
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapHexRandomPoint:[Landroid/graphics/Point;

    move-object/from16 v16, v0

    aget-object v16, v16, v4

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v2

    add-float v13, v15, v16

    .line 642
    .local v13, tx:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapHexRandomPoint:[Landroid/graphics/Point;

    move-object/from16 v16, v0

    aget-object v16, v16, v4

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v2

    add-float v14, v15, v16

    .line 644
    .local v14, ty:F
    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->getWidth()I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    sub-float/2addr v13, v15

    .line 645
    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->getHeight()I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    .line 647
    invoke-virtual {v3, v13}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setX(F)V

    .line 648
    invoke-virtual {v3, v14}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setY(F)V

    .line 633
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1d

    .line 630
    .end local v1           #alpha:F
    .end local v2           #distanceScale:F
    .end local v3           #hex:Landroid/widget/ImageView;
    .end local v4           #i:I
    .end local v10           #scale:F
    .end local v13           #tx:F
    .end local v14           #ty:F
    :cond_a0
    const/high16 v15, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimationValue:F

    move/from16 v16, v0

    const/high16 v17, 0x3f00

    sub-float v16, v16, v17

    const/high16 v17, 0x4000

    mul-float v16, v16, v17

    sub-float v1, v15, v16

    goto/16 :goto_c

    .line 652
    .restart local v1       #alpha:F
    .restart local v2       #distanceScale:F
    .restart local v4       #i:I
    :cond_b4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimationValue:F

    const v16, 0x3fe66666

    mul-float v11, v15, v16

    .line 653
    .local v11, tapAniamationParticleValue:F
    const/high16 v15, 0x3f00

    cmpg-float v15, v11, v15

    if-gez v15, :cond_162

    const/high16 v15, 0x3f80

    :goto_c5
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->getCorrectAlpha(F)F

    move-result v7

    .line 654
    .local v7, prticleAalpha:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimationValue:F

    const v16, 0x3f99999a

    mul-float v6, v15, v16

    .line 655
    .local v6, particleScale:F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->particle:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v7}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 656
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->particle:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v15, v6}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleX(F)V

    .line 657
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->particle:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v15, v6}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleY(F)V

    .line 660
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimationValue:F

    const v16, 0x3fb33333

    mul-float v12, v15, v16

    .line 661
    .local v12, tapAniamationRingValue:F
    const/high16 v15, 0x3f00

    cmpg-float v15, v12, v15

    if-gez v15, :cond_170

    const/high16 v15, 0x3f80

    :goto_fc
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->getCorrectAlpha(F)F

    move-result v8

    .line 662
    .local v8, ringAlpha:F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->ring:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 663
    const/high16 v15, 0x3f00

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimationValue:F

    move/from16 v16, v0

    add-float v9, v15, v16

    .line 664
    .local v9, ringScale:F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->ring:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v15, v9}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleX(F)V

    .line 665
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->ring:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v15, v9}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleY(F)V

    .line 668
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->longLight:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 669
    const/high16 v15, 0x3fc0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimationValue:F

    move/from16 v16, v0

    const/high16 v17, 0x4000

    mul-float v16, v16, v17

    add-float v5, v15, v16

    .line 670
    .local v5, longScale:F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->longLight:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v15, v5}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleX(F)V

    .line 671
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->longLight:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v15, v5}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleY(F)V

    .line 672
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->longLight:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->randomRotation:F

    move/from16 v16, v0

    const/high16 v17, 0x41f0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimationValue:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    add-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setRotation(F)V

    .line 673
    return-void

    .line 653
    .end local v5           #longScale:F
    .end local v6           #particleScale:F
    .end local v7           #prticleAalpha:F
    .end local v8           #ringAlpha:F
    .end local v9           #ringScale:F
    .end local v12           #tapAniamationRingValue:F
    :cond_162
    const/high16 v15, 0x3f80

    const/high16 v16, 0x3f00

    sub-float v16, v11, v16

    const/high16 v17, 0x4000

    mul-float v16, v16, v17

    sub-float v15, v15, v16

    goto/16 :goto_c5

    .line 661
    .restart local v6       #particleScale:F
    .restart local v7       #prticleAalpha:F
    .restart local v12       #tapAniamationRingValue:F
    :cond_170
    const/high16 v15, 0x3f80

    const/high16 v16, 0x3f00

    sub-float v16, v12, v16

    const/high16 v17, 0x4000

    mul-float v16, v16, v17

    sub-float v15, v15, v16

    goto :goto_fc
.end method

.method private animatedUnlock()V
    .registers 10

    .prologue
    const/high16 v4, 0x4000

    const/high16 v3, 0x3f80

    const/high16 v2, 0x3f00

    .line 717
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->unlockAnimationValue:F

    const v1, 0x3fa66666

    mul-float/2addr v0, v1

    add-float v8, v3, v0

    .line 718
    .local v8, rainbowScale:F
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->unlockAnimationValue:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_39

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->unlockAnimationValue:F

    mul-float v7, v0, v4

    .line 720
    .local v7, rainbowAlpha:F
    :goto_18
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->rainbow:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-direct {p0, v0, v7}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 721
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->rainbow:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentX:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentY:F

    const v6, 0x3ecccccd

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 722
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->rainbow:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v0, v8}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleX(F)V

    .line 723
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->rainbow:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v0, v8}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleY(F)V

    .line 724
    return-void

    .line 718
    .end local v7           #rainbowAlpha:F
    :cond_39
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->unlockAnimationValue:F

    sub-float/2addr v0, v2

    mul-float/2addr v0, v4

    sub-float v7, v3, v0

    goto :goto_18
.end method

.method private calculateDistance(FF)V
    .registers 11
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide/high16 v6, 0x4000

    .line 741
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    sub-float v0, p1, v2

    .line 742
    .local v0, diffX:F
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    sub-float v1, p2, v2

    .line 743
    .local v1, diffY:F
    float-to-double v2, v0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    float-to-double v4, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->distance:D

    .line 744
    iget-wide v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->distance:D

    double-to-float v2, v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->MAX_ALPHA_DISTANCE:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->distancePerMaxAlpha:F

    .line 745
    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .registers 3
    .parameter "animator"

    .prologue
    .line 829
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 830
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 831
    :cond_b
    return-void
.end method

.method private cleanUpAllViews()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 802
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 803
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->ring:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 804
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->longLight:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 805
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->rainbow:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 806
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->particle:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 807
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->vignetting:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 809
    const/4 v1, 0x0

    .local v1, i:I
    :goto_20
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TOTAL:I

    if-ge v1, v2, :cond_2e

    .line 810
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    aget-object v0, v2, v1

    .line 811
    .local v0, hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    invoke-direct {p0, v0, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 809
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 813
    .end local v0           #hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    :cond_2e
    const/4 v1, 0x0

    :goto_2f
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TAP_TOTAL:I

    if-ge v1, v2, :cond_3d

    .line 814
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapHexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    aget-object v0, v2, v1

    .line 815
    .restart local v0       #hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    invoke-direct {p0, v0, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 813
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 818
    .end local v0           #hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    :cond_3d
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 819
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 820
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 821
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogOnAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 822
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->unlockAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 823
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 824
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 825
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOffAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 826
    return-void
.end method

.method private getCorrectAlpha(F)F
    .registers 5
    .parameter "alpha"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 732
    cmpg-float v2, p1, v0

    if-gtz v2, :cond_9

    move p1, v0

    .line 737
    .end local p1
    :cond_8
    :goto_8
    return p1

    .line 734
    .restart local p1
    :cond_9
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_8

    move p1, v1

    .line 735
    goto :goto_8
.end method

.method private hoverEnter(FF)V
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 597
    const/4 v0, 0x0

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverX:F

    .line 598
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->Y_OFFSET:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverY:F

    .line 600
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 601
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightInAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 602
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightOutAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 603
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 604
    return-void
.end method

.method private hoverExit()V
    .registers 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 613
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightInAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 614
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightOutAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 615
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 616
    return-void
.end method

.method private hoverMove(FF)V
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 607
    const/4 v0, 0x0

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverX:F

    .line 608
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->Y_OFFSET:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverY:F

    .line 609
    return-void
.end method

.method private lensFlareinit()V
    .registers 4

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_36

    .line 212
    const-string v1, "LensFlare"

    const-string v2, "this.getChildCount() == 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 214
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->screenWidth:I

    .line 215
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->screenHeight:I

    .line 217
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->screenWidth:I

    const/16 v2, 0x438

    if-ne v1, v2, :cond_3d

    .line 218
    const/16 v1, 0x5dc

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->MAX_ALPHA_DISTANCE:I

    .line 224
    :goto_27
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setLayout()V

    .line 225
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setHover()V

    .line 226
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setHexagon()V

    .line 227
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setTapHexagon()V

    .line 228
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAnimator()V

    .line 230
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    :cond_36
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isBeforeInit:Z

    .line 231
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mFirstCreatedRunnable:Ljava/lang/Runnable;

    .line 232
    return-void

    .line 220
    .restart local v0       #dm:Landroid/util/DisplayMetrics;
    :cond_3d
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->Y_OFFSET:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->Y_OFFSET:I

    .line 221
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->MAX_ALPHA_DISTANCE:I

    goto :goto_27
.end method

.method private playSound(I)V
    .registers 9
    .parameter "soundId"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 525
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isSoundEnable:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isSystemSoundChecked:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->soundpool:Landroid/media/SoundPool;

    if-eqz v0, :cond_18

    .line 526
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->soundpool:Landroid/media/SoundPool;

    move v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 528
    :cond_18
    return-void
.end method

.method private playUnlockAffordance()V
    .registers 8

    .prologue
    const/high16 v6, 0x3f80

    .line 855
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isBeforeInit:Z

    if-eqz v0, :cond_7

    .line 871
    :goto_6
    return-void

    .line 857
    :cond_7
    const-string v0, "LensFlare"

    const-string v1, "playUnlockAffordance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordancePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    .line 859
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordancePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    .line 861
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setHexagonRandomTarget(Z)V

    .line 863
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->ring:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 864
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->longLight:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 865
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->particle:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 866
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 868
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 869
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 870
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_6
.end method

.method private setAlphaAndVisibility(Landroid/view/View;F)V
    .registers 5
    .parameter "view"
    .parameter "alpha"

    .prologue
    const/16 v0, 0x8

    .line 790
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_18

    .line 791
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_17

    .line 792
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_14

    const/4 v0, 0x4

    :cond_14
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 799
    :cond_17
    :goto_17
    return-void

    .line 795
    :cond_18
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_22

    .line 796
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 797
    :cond_22
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_17
.end method

.method private setAnimator()V
    .registers 8

    .prologue
    const-wide/16 v5, 0x1f4

    const/4 v4, 0x2

    .line 412
    new-array v0, v4, [F

    fill-array-data v0, :array_188

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimator:Landroid/animation/ValueAnimator;

    .line 413
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$QuintEaseOut;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$QuintEaseOut;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 414
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1770

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 415
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 423
    new-array v0, v4, [F

    fill-array-data v0, :array_190

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogOnAnimator:Landroid/animation/ValueAnimator;

    .line 424
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogOnAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$QuintEaseOut;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$QuintEaseOut;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 425
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogOnAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 426
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogOnAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 434
    new-array v0, v4, [F

    fill-array-data v0, :array_198

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimator:Landroid/animation/ValueAnimator;

    .line 435
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$QuintEaseOut;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$QuintEaseOut;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 436
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 437
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 445
    new-array v0, v4, [F

    fill-array-data v0, :array_1a0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 446
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 447
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 448
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 456
    new-array v0, v4, [F

    fill-array-data v0, :array_1a8

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->unlockAnimator:Landroid/animation/ValueAnimator;

    .line 457
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->unlockAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$QuintEaseOut;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$QuintEaseOut;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 458
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->unlockAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 459
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->unlockAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 467
    new-array v0, v4, [F

    fill-array-data v0, :array_1b0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverAnimator:Landroid/animation/ValueAnimator;

    .line 468
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 469
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverAnimator:Landroid/animation/ValueAnimator;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 470
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/32 v1, 0x186a0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 471
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$6;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$6;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 478
    new-array v0, v4, [F

    fill-array-data v0, :array_1b8

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightInAnimator:Landroid/animation/ValueAnimator;

    .line 479
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$BackInterpolator;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;->OUT:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;

    const/high16 v3, 0x4100

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$BackInterpolator;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 480
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 481
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$7;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$7;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 488
    new-array v0, v4, [F

    fill-array-data v0, :array_1c0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightOutAnimator:Landroid/animation/ValueAnimator;

    .line 489
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$QuintEaseOut;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$QuintEaseOut;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 490
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 491
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLightOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$8;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$8;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 499
    new-array v0, v4, [F

    fill-array-data v0, :array_1c8

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    .line 500
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 501
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 502
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$9;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$9;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 513
    new-array v0, v4, [F

    fill-array-data v0, :array_1d0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOffAnimator:Landroid/animation/ValueAnimator;

    .line 514
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOffAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 515
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOffAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x44c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 516
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOffAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$10;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$10;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 522
    return-void

    .line 412
    :array_188
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 423
    :array_190
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x9at 0x99t 0x19t 0x3ft
    .end array-data

    .line 434
    :array_198
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 445
    :array_1a0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 456
    :array_1a8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 467
    :array_1b0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 478
    :array_1b8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 488
    :array_1c0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 499
    :array_1c8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x9at 0x99t 0x19t 0x3ft
    .end array-data

    .line 513
    :array_1d0
    .array-data 0x4
        0x9at 0x99t 0x19t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private setCenterPos(Landroid/view/View;FFFFF)V
    .registers 11
    .parameter "view"
    .parameter "fromX"
    .parameter "fromY"
    .parameter "x"
    .parameter "y"
    .parameter "distanceScale"

    .prologue
    const/high16 v3, 0x4000

    .line 749
    sub-float v2, p4, p2

    mul-float/2addr v2, p6

    add-float v0, v2, p2

    .line 750
    .local v0, tx:F
    sub-float v2, p5, p3

    mul-float/2addr v2, p6

    add-float v1, v2, p3

    .line 752
    .local v1, ty:F
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    .line 753
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 755
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v2, :cond_26

    .line 756
    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    .line 757
    invoke-virtual {p1, v1}, Landroid/view/View;->setY(F)V

    .line 759
    :cond_26
    return-void
.end method

.method private setCenterPos(Landroid/view/View;FFFFFFI)V
    .registers 27
    .parameter "view"
    .parameter "fromX"
    .parameter "fromY"
    .parameter "x"
    .parameter "y"
    .parameter "distanceScale"
    .parameter "scale"
    .parameter "rotation"

    .prologue
    .line 763
    const/high16 v12, 0x3f00

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->distance:D

    double-to-float v13, v13

    const/high16 v14, 0x4434

    div-float/2addr v13, v14

    const/high16 v14, 0x3f00

    mul-float/2addr v13, v14

    add-float v8, v12, v13

    .line 764
    .local v8, scaleByDistance:F
    const/high16 v12, 0x3f00

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimationValue:F

    const/high16 v14, 0x3f00

    mul-float/2addr v13, v14

    add-float v7, v12, v13

    .line 765
    .local v7, scaleByAnimationValue:F
    mul-float v12, p7, v8

    mul-float v9, v12, v7

    .line 766
    .local v9, tscale:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->setScaleX(F)V

    .line 767
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->setScaleY(F)V

    .line 769
    const/high16 v12, 0x3f00

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimationValue:F

    const/high16 v14, 0x3f00

    mul-float/2addr v13, v14

    add-float v2, v12, v13

    .line 770
    .local v2, distanceScaleByAnimation:F
    sub-float v12, p4, p2

    mul-float v12, v12, p6

    mul-float/2addr v12, v2

    add-float v10, v12, p2

    .line 771
    .local v10, tx:F
    sub-float v12, p5, p3

    mul-float v12, v12, p6

    mul-float/2addr v12, v2

    add-float v11, v12, p3

    .line 773
    .local v11, ty:F
    if-eqz p8, :cond_92

    .line 774
    const/high16 v12, 0x4396

    mul-float v1, p7, v12

    .line 775
    .local v1, dist:F
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->distance:D

    double-to-float v12, v12

    const/high16 v13, 0x447a

    div-float/2addr v12, v13

    mul-float v12, v12, p7

    mul-float v6, v12, p7

    .line 776
    .local v6, rotationByDistance:F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimationValue:F

    const/high16 v13, 0x3f80

    mul-float v5, v12, v13

    .line 777
    .local v5, rotationByAnimation:F
    move/from16 v0, p8

    int-to-double v12, v0

    const-wide v14, 0x400921fb54442d18L

    mul-double/2addr v12, v14

    const-wide v14, 0x4066800000000000L

    div-double/2addr v12, v14

    float-to-double v14, v6

    add-double/2addr v12, v14

    float-to-double v14, v5

    add-double v3, v12, v14

    .line 778
    .local v3, rad:D
    float-to-double v12, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    float-to-double v14, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v12, v12

    add-float v10, v12, p4

    .line 779
    float-to-double v12, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    neg-double v14, v14

    mul-double/2addr v12, v14

    float-to-double v14, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v12, v12

    add-float v11, v12, p5

    .line 782
    .end local v1           #dist:F
    .end local v3           #rad:D
    .end local v5           #rotationByAnimation:F
    .end local v6           #rotationByDistance:F
    :cond_92
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    sub-float/2addr v10, v12

    .line 783
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    .line 785
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setX(F)V

    .line 786
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setY(F)V

    .line 787
    return-void
.end method

.method private setHexagon()V
    .registers 9

    .prologue
    const/4 v7, -0x2

    .line 292
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_56

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonRes:[I

    .line 299
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonRes:[I

    array-length v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TOTAL:I

    .line 301
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TOTAL:I

    new-array v3, v3, [Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    .line 302
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TOTAL:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonRotation:[I

    .line 303
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonDistance:Ljava/util/ArrayList;

    .line 304
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TOTAL:I

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonScale:[F

    .line 306
    const/4 v1, 0x0

    .local v1, i:I
    :goto_28
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TOTAL:I

    if-ge v1, v3, :cond_55

    .line 307
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;-><init>(Landroid/content/Context;)V

    .line 308
    .local v0, hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonRes:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setImageResource(I)V

    .line 309
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4034

    mul-double/2addr v3, v5

    double-to-float v2, v3

    .line 310
    .local v2, rotation:F
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 311
    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setRotation(F)V

    .line 312
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightObj:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0, v7, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 313
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    aput-object v0, v3, v1

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 315
    .end local v0           #hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    .end local v2           #rotation:F
    :cond_55
    return-void

    .line 292
    :array_56
    .array-data 0x4
        0x64t 0x4t 0x8t 0x1t
        0x66t 0x4t 0x8t 0x1t
        0x64t 0x4t 0x8t 0x1t
        0x66t 0x4t 0x8t 0x1t
        0x65t 0x4t 0x8t 0x1t
        0x65t 0x4t 0x8t 0x1t
    .end array-data
.end method

.method private setHexagonRandomTarget(Z)V
    .registers 19
    .parameter "isForUnlockAffordance"

    .prologue
    .line 344
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TAP_TOTAL:I

    new-array v11, v11, [Landroid/graphics/Point;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapHexRandomPoint:[Landroid/graphics/Point;

    .line 345
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TAP_TOTAL:I

    new-array v11, v11, [F

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapHexagonScale:[F

    .line 346
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    const-wide v13, 0x4076800000000000L

    mul-double/2addr v11, v13

    double-to-int v11, v11

    int-to-float v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->randomRotation:F

    .line 349
    const/4 v4, 0x0

    .local v4, i:I
    :goto_25
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TAP_TOTAL:I

    if-ge v4, v11, :cond_98

    .line 350
    if-eqz p1, :cond_3d

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    const-wide v13, 0x4076800000000000L

    mul-double/2addr v11, v13

    double-to-int v11, v11

    int-to-float v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->randomRotation:F

    .line 351
    :cond_3d
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    const-wide v13, 0x4082c00000000000L

    mul-double/2addr v11, v13

    double-to-int v7, v11

    .line 352
    .local v7, randomDistance:I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->randomRotation:F

    invoke-static {v11}, Landroid/util/FloatMath;->cos(F)F

    move-result v11

    int-to-float v12, v7

    mul-float/2addr v11, v12

    float-to-int v9, v11

    .line 353
    .local v9, tx:I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->randomRotation:F

    invoke-static {v11}, Landroid/util/FloatMath;->sin(F)F

    move-result v11

    int-to-float v12, v7

    mul-float/2addr v11, v12

    float-to-int v10, v11

    .line 355
    .local v10, ty:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapHexRandomPoint:[Landroid/graphics/Point;

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    aput-object v12, v11, v4

    .line 356
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapHexagonScale:[F

    const v12, 0x3e99999a

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    const-wide v15, 0x3fe99999a0000000L

    mul-double/2addr v13, v15

    double-to-float v13, v13

    add-float/2addr v12, v13

    aput v12, v11, v4

    .line 357
    const/high16 v11, 0x3f00

    const/high16 v12, 0x3f00

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    double-to-float v13, v13

    mul-float/2addr v12, v13

    add-float v1, v11, v12

    .line 358
    .local v1, alpha:F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapHexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    aget-object v11, v11, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 349
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 362
    .end local v1           #alpha:F
    .end local v7           #randomDistance:I
    .end local v9           #tx:I
    .end local v10           #ty:I
    :cond_98
    if-nez p1, :cond_152

    .line 363
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonDistance:Ljava/util/ArrayList;

    if-eqz v11, :cond_a7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonDistance:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 364
    :cond_a7
    const v8, 0x3e4ccccd

    .line 365
    .local v8, startDistance:F
    const v2, 0x3e75c28f

    .line 366
    .local v2, distanceGap:F
    const/4 v5, 0x0

    .local v5, j:I
    :goto_ae
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TOTAL:I

    if-ge v5, v11, :cond_d3

    .line 367
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    double-to-float v11, v11

    const/high16 v12, 0x3f00

    sub-float/2addr v11, v12

    const v12, 0x3ecccccd

    mul-float v6, v11, v12

    .line 368
    .local v6, random:F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonDistance:Ljava/util/ArrayList;

    int-to-float v12, v5

    mul-float/2addr v12, v2

    add-float/2addr v12, v8

    add-float/2addr v12, v6

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    add-int/lit8 v5, v5, 0x1

    goto :goto_ae

    .line 370
    .end local v6           #random:F
    :cond_d3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonDistance:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 372
    const/4 v4, 0x0

    :goto_db
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TOTAL:I

    if-ge v4, v11, :cond_147

    .line 373
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    aget-object v3, v11, v4

    .line 374
    .local v3, hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TOTAL:I

    add-int/lit8 v11, v11, 0x0

    if-ge v4, v11, :cond_123

    .line 375
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonRotation:[I

    const/4 v12, 0x0

    aput v12, v11, v4

    .line 376
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonScale:[F

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonDistance:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    const v13, 0x3e4ccccd

    add-float/2addr v11, v13

    aput v11, v12, v4

    .line 381
    :goto_10e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonScale:[F

    aget v11, v11, v4

    invoke-virtual {v3, v11}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleX(F)V

    .line 382
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonScale:[F

    aget v11, v11, v4

    invoke-virtual {v3, v11}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleY(F)V

    .line 372
    add-int/lit8 v4, v4, 0x1

    goto :goto_db

    .line 378
    :cond_123
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonRotation:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    const-wide v14, 0x4076800000000000L

    mul-double/2addr v12, v14

    double-to-int v12, v12

    aput v12, v11, v4

    .line 379
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hexagonScale:[F

    const v12, 0x3f19999a

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    const-wide/high16 v15, 0x3ff0

    mul-double/2addr v13, v15

    double-to-float v13, v13

    add-float/2addr v12, v13

    aput v12, v11, v4

    goto :goto_10e

    .line 384
    .end local v3           #hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    :cond_147
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->particle:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->randomRotation:F

    invoke-virtual {v11, v12}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setRotation(F)V

    .line 386
    .end local v2           #distanceGap:F
    .end local v5           #j:I
    .end local v8           #startDistance:F
    :cond_152
    return-void
.end method

.method private setHover()V
    .registers 5

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 284
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    .line 285
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    const v1, 0x1080467

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setImageResource(I)V

    .line 286
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleX(F)V

    .line 287
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setScaleY(F)V

    .line 288
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverLight1:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {p0, v0, v3, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->addView(Landroid/view/View;II)V

    .line 289
    return-void
.end method

.method private setLayout()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 236
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->vignetting:Landroid/widget/ImageView;

    .line 237
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 238
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 239
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->vignetting:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108046d

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 240
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->vignetting:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 241
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->vignetting:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 242
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->vignetting:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->addView(Landroid/view/View;)V

    .line 245
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    .line 246
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    const v2, 0x1080468

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setImageResource(I)V

    .line 247
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {p0, v1, v4, v4}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->addView(Landroid/view/View;II)V

    .line 248
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-direct {p0, v1, v5}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 251
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightObj:Landroid/widget/FrameLayout;

    .line 252
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightObj:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->addView(Landroid/view/View;)V

    .line 255
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightTap:Landroid/widget/FrameLayout;

    .line 256
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightTap:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->addView(Landroid/view/View;)V

    .line 259
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->ring:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    .line 260
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->ring:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    const v2, 0x108046c

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setImageResource(I)V

    .line 261
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->ring:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {p0, v1, v4, v4}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->addView(Landroid/view/View;II)V

    .line 262
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->ring:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-direct {p0, v1, v5}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 265
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->longLight:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    .line 266
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->longLight:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    const v2, 0x1080469

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setImageResource(I)V

    .line 267
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->longLight:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {p0, v1, v4, v4}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->addView(Landroid/view/View;II)V

    .line 268
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->longLight:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-direct {p0, v1, v5}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 271
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->particle:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    .line 272
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->particle:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    const v2, 0x108046a

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setImageResource(I)V

    .line 273
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->particle:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {p0, v1, v4, v4}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->addView(Landroid/view/View;II)V

    .line 274
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->particle:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-direct {p0, v1, v5}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 277
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->rainbow:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    .line 278
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->rainbow:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    const v2, 0x108046b

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setImageResource(I)V

    .line 279
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->rainbow:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {p0, v1, v4, v4}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->addView(Landroid/view/View;II)V

    .line 280
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->rainbow:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-direct {p0, v1, v5}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 281
    return-void
.end method

.method private setSound()V
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 389
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->stopReleaseSound()V

    .line 392
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 394
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 396
    .local v2, result:I
    :try_start_c
    const-string v3, "lockscreen_sounds_enabled"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_c .. :try_end_11} :catch_46

    move-result v2

    .line 400
    :goto_12
    if-ne v2, v4, :cond_4b

    move v3, v4

    :goto_15
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isSystemSoundChecked:Z

    .line 402
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->soundpool:Landroid/media/SoundPool;

    if-nez v3, :cond_45

    .line 403
    new-instance v3, Landroid/media/SoundPool;

    const/16 v6, 0xa

    invoke-direct {v3, v6, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->soundpool:Landroid/media/SoundPool;

    .line 404
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->soundpool:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    const v6, 0x1100005

    invoke-virtual {v3, v5, v6, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->sound_tap:I

    .line 405
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->soundpool:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    const v6, 0x1100006

    invoke-virtual {v3, v5, v6, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->sound_unlock:I

    .line 406
    const-string v3, "LensFlare"

    const-string v4, "LensFlare sound : load"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_45
    return-void

    .line 397
    :catch_46
    move-exception v1

    .line 398
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_12

    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_4b
    move v3, v5

    .line 400
    goto :goto_15
.end method

.method private setTapHexagon()V
    .registers 11

    .prologue
    const/4 v9, -0x2

    .line 318
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TAP_TOTAL:I

    new-array v5, v5, [Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapHexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    .line 319
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->HEXAGON_TAP_TOTAL:I

    if-ge v1, v5, :cond_47

    .line 320
    rem-int/lit8 v2, v1, 0x3

    .line 321
    .local v2, index:I
    const/4 v4, 0x0

    .line 322
    .local v4, resource:I
    packed-switch v2, :pswitch_data_48

    .line 333
    :goto_12
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;-><init>(Landroid/content/Context;)V

    .line 334
    .local v0, hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setImageResource(I)V

    .line 335
    const/4 v5, 0x0

    invoke-direct {p0, v0, v5}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 336
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    const-wide v7, 0x4076800000000000L

    mul-double/2addr v5, v7

    double-to-int v3, v5

    .line 337
    .local v3, randomRotation:I
    int-to-float v5, v3

    invoke-virtual {v0, v5}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setRotation(F)V

    .line 338
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightTap:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v0, v9, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 339
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapHexagon:[Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    aput-object v0, v5, v1

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 324
    .end local v0           #hex:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;
    .end local v3           #randomRotation:I
    :pswitch_3b
    const v4, 0x1080464

    .line 325
    goto :goto_12

    .line 327
    :pswitch_3f
    const v4, 0x1080466

    .line 328
    goto :goto_12

    .line 330
    :pswitch_43
    const v4, 0x1080465

    goto :goto_12

    .line 341
    .end local v2           #index:I
    .end local v4           #resource:I
    :cond_47
    return-void

    .line 322
    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_3f
        :pswitch_43
    .end packed-switch
.end method

.method private stopReleaseSound()V
    .registers 2

    .prologue
    .line 955
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 956
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 957
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 959
    :cond_c
    return-void
.end method

.method private stopUnlockAffordance()V
    .registers 3

    .prologue
    .line 874
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_13

    .line 875
    const-string v0, "LensFlare"

    const-string v1, "remove delayed UnlockAffordance callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 877
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceRunnable:Ljava/lang/Runnable;

    .line 879
    :cond_13
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 4

    .prologue
    .line 934
    const-string v0, "LensFlare"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isBeforeInit:Z

    if-eqz v0, :cond_c

    .line 952
    :goto_b
    return-void

    .line 936
    :cond_c
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cleanUpAllViews()V

    .line 937
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isPlayAffordance:Z

    .line 939
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->stopReleaseSound()V

    .line 940
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$13;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$13;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 951
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b
.end method

.method public getUnlockDelay()J
    .registers 3

    .prologue
    .line 979
    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 985
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isBeforeInit:Z

    if-eqz v0, :cond_d

    .line 987
    const-string v0, "LensFlare"

    const-string v1, "Return handleTouchEvent!!! Becuase isBeforeInit is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    :goto_c
    return v2

    .line 991
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_32

    :pswitch_14
    goto :goto_c

    .line 1002
    :pswitch_15
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverExit()V

    goto :goto_c

    .line 993
    :pswitch_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverEnter(FF)V

    goto :goto_c

    .line 997
    :pswitch_25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hoverMove(FF)V

    goto :goto_c

    .line 991
    nop

    :pswitch_data_32
    .packed-switch 0x3
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_25
        :pswitch_14
        :pswitch_19
        :pswitch_15
    .end packed-switch
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 884
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isBeforeInit:Z

    if-eqz v0, :cond_d

    .line 886
    const-string v0, "LensFlare"

    const-string v1, "Return handleTouchEvent!!! Becuase isBeforeInit is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :cond_c
    :goto_c
    return v2

    .line 890
    :cond_d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1f

    .line 891
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->show(FF)V

    goto :goto_c

    .line 892
    :cond_1f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_38

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-nez v0, :cond_38

    .line 894
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->move(FF)V

    goto :goto_c

    .line 895
    :cond_38
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v2, :cond_45

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    .line 897
    :cond_45
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->hide()V

    goto :goto_c
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 5
    .parameter "view"
    .parameter "event"

    .prologue
    .line 904
    const-string v0, "LensFlare"

    const-string v1, "handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->unlock()V

    .line 906
    return-void
.end method

.method public hide()V
    .registers 2

    .prologue
    .line 579
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isTouched:Z

    .line 580
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogOnAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 581
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 582
    return-void
.end method

.method public move(FF)V
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isTouched:Z

    if-nez v0, :cond_8

    .line 565
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->show(FF)V

    .line 576
    :cond_7
    :goto_7
    return-void

    .line 567
    :cond_8
    const/4 v0, 0x0

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentX:F

    .line 568
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->Y_OFFSET:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentY:F

    .line 569
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentX:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentY:F

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->calculateDistance(FF)V

    .line 571
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogOnAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_24

    .line 572
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->animatedDragAlpha()V

    .line 573
    :cond_24
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_7

    .line 574
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->animatedDragPos()V

    goto :goto_7
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 963
    const-string v0, "LensFlare"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isBeforeInit:Z

    if-eqz v0, :cond_c

    .line 969
    :goto_b
    return-void

    .line 966
    :cond_c
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cleanUpAllViews()V

    .line 967
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isPlayAffordance:Z

    .line 968
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->stopUnlockAffordance()V

    goto :goto_b
.end method

.method public screenTurnedOn()V
    .registers 3

    .prologue
    .line 973
    const-string v0, "LensFlare"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isPlayAffordance:Z

    .line 975
    return-void
.end method

.method public show()V
    .registers 5

    .prologue
    .line 910
    const-string v0, "LensFlare"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isPlayAffordance:Z

    .line 913
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isBeforeInit:Z

    if-eqz v0, :cond_41

    .line 915
    const-string v0, "LensFlare"

    const-string v1, "isBeforeInit is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mFirstCreatedRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_41

    .line 918
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$12;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$12;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mFirstCreatedRunnable:Ljava/lang/Runnable;

    .line 925
    const-string v0, "LensFlare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this.postDelayed, createdDelaytime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->createdDelaytime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->mFirstCreatedRunnable:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->createdDelaytime:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 929
    :cond_41
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setSound()V

    .line 930
    return-void
.end method

.method public show(FF)V
    .registers 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    const/high16 v6, 0x3f80

    .line 531
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isTouched:Z

    .line 532
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->stopUnlockAffordance()V

    .line 534
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->distance:D

    .line 535
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->distancePerMaxAlpha:F

    .line 536
    add-float v0, p1, v2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    .line 537
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->Y_OFFSET:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    .line 538
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentX:F

    .line 539
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentY:F

    .line 540
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setHexagonRandomTarget(Z)V

    .line 542
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->animatedDragPos()V

    .line 544
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lightFog:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 545
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->ring:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 546
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->longLight:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 547
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->particle:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 549
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 550
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 551
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogOnAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 552
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 553
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 554
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOffAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 556
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 557
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->fogOnAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 558
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 560
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->sound_tap:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->playSound(I)V

    .line 561
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .registers 8
    .parameter "startDelay"
    .parameter "rect"

    .prologue
    .line 835
    const-string v0, "LensFlare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showUnlockAffordance : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", startDelay : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isPlayAffordance:Z

    if-eqz v0, :cond_77

    .line 838
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->stopUnlockAffordance()V

    .line 839
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordancePoint:Landroid/graphics/Point;

    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 840
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordancePoint:Landroid/graphics/Point;

    iget v1, p3, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 842
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$11;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$11;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceRunnable:Ljava/lang/Runnable;

    .line 850
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 852
    :cond_77
    return-void
.end method

.method public unlock()V
    .registers 6

    .prologue
    .line 585
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isBeforeInit:Z

    if-eqz v1, :cond_f

    .line 586
    const-string v1, "LensFlare"

    const-string v2, "unlock before init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->lensFlareinit()V

    .line 594
    :goto_e
    return-void

    .line 589
    :cond_f
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->sound_unlock:I

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->playSound(I)V

    .line 590
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentY:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartY:F

    sub-float/2addr v1, v2

    float-to-double v1, v1

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->currentX:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showStartX:F

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    const-wide v3, 0x4066800000000000L

    mul-double/2addr v1, v3

    const-wide v3, 0x400921fb54442d18L

    div-double/2addr v1, v3

    double-to-float v1, v1

    const/high16 v2, 0x4220

    sub-float v0, v1, v2

    .line 591
    .local v0, degree:F
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->rainbow:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;->setRotation(F)V

    .line 592
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->unlockAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_e
.end method
