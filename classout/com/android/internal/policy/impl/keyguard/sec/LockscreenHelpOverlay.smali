.class public Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;
.super Landroid/widget/RelativeLayout;
.source "LockscreenHelpOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static DEBUG:Z = false

.field private static final HELP_OVERLAY_CHECKED:Ljava/lang/String; = "help_overlay_checked"

.field private static final TAG:Ljava/lang/String; = "LockscreenHelpOverlay"


# instance fields
.field private final FIRST_OVERLAY:I

.field private final LIMIT_COUNT:I

.field private final SCREEN_UPDATE:I

.field private dm:Landroid/util/DisplayMetrics;

.field private isHelpOverlayUSA:Z

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mChecked:I

.field private mContext:Landroid/content/Context;

.field private mEntireLayout:Landroid/widget/RelativeLayout;

.field private mHelpButton1:Landroid/widget/Button;

.field private mHelpButton2:Landroid/widget/Button;

.field private mHelpCheckBox1:Landroid/widget/CheckBox;

.field private mHelpCheckBox2:Landroid/widget/CheckBox;

.field private mOverlayLayout2:Landroid/widget/RelativeLayout;

.field private mPopupLayout1:Landroid/widget/LinearLayout;

.field private mPopupLayout2:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->dm:Landroid/util/DisplayMetrics;

    .line 60
    const/16 v0, 0x12c3

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->SCREEN_UPDATE:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->FIRST_OVERLAY:I

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->LIMIT_COUNT:I

    .line 71
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->dm:Landroid/util/DisplayMetrics;

    .line 60
    const/16 v0, 0x12c3

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->SCREEN_UPDATE:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->FIRST_OVERLAY:I

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->LIMIT_COUNT:I

    .line 81
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->dm:Landroid/util/DisplayMetrics;

    .line 60
    const/16 v0, 0x12c3

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->SCREEN_UPDATE:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->FIRST_OVERLAY:I

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->LIMIT_COUNT:I

    .line 76
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    .line 77
    return-void
.end method

.method private castingDpi(I)I
    .registers 4
    .parameter "value"

    .prologue
    .line 257
    int-to-float v0, p1

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->dm:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private checkPortrait()Ljava/lang/Boolean;
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 231
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_12

    .line 232
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 234
    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_11
.end method


# virtual methods
.method public checkOverlayCondition()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 127
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mChecked:I

    if-ge v1, v0, :cond_15

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->isLargePhone()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->checkPortrait()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_16

    .line 128
    :cond_15
    const/4 v0, 0x0

    .line 130
    :cond_16
    return v0
.end method

.method public cleanUp()V
    .registers 3

    .prologue
    .line 210
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "LockscreenHelpOverlay"

    const-string v1, "onCleanUp() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_b
    return-void
.end method

.method public isHelpOverlayVisible()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 247
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_e

    .line 253
    :cond_d
    :goto_d
    return v0

    .line 250
    :cond_e
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_d

    .line 251
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public isLargePhone()Z
    .registers 4

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 239
    .local v0, deviceSW:I
    const/16 v1, 0x258

    if-ge v0, v1, :cond_1a

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->dm:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4000

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1a

    .line 240
    const/4 v1, 0x0

    .line 242
    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x1

    goto :goto_19
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    const/16 v3, 0x8

    .line 215
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_d

    .line 216
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x1388

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 218
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_2c

    .line 228
    :goto_14
    return-void

    .line 220
    :pswitch_15
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 221
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->setHelpLayoutFlag()V

    .line 223
    :cond_20
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 224
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->setVisibility(I)V

    .line 225
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->removeCallback()V

    goto :goto_14

    .line 218
    :pswitch_data_2c
    .packed-switch 0x1020339
        :pswitch_15
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .registers 7

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 87
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "help_overlay_checked"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mChecked:I

    .line 90
    const-string v0, "LockscreenHelpOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mChecked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mChecked:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->isHelpOverlayUSA:Z

    .line 93
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 94
    sput-boolean v4, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->DEBUG:Z

    .line 96
    :cond_45
    const v0, 0x102032c

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mEntireLayout:Landroid/widget/RelativeLayout;

    .line 97
    const v0, 0x1020334

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    .line 98
    const v0, 0x102032f

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mPopupLayout1:Landroid/widget/LinearLayout;

    .line 99
    const v0, 0x1020336

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mPopupLayout2:Landroid/widget/LinearLayout;

    .line 100
    const v0, 0x1020331

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpCheckBox1:Landroid/widget/CheckBox;

    .line 101
    const v0, 0x1020338

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpCheckBox2:Landroid/widget/CheckBox;

    .line 102
    const v0, 0x1020332

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpButton1:Landroid/widget/Button;

    .line 103
    const v0, 0x1020339

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpButton2:Landroid/widget/Button;

    .line 105
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setSoundEffectsEnabled(Z)V

    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 107
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setSoundEffectsEnabled(Z)V

    .line 108
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->checkOverlayCondition()Z

    move-result v0

    if-eqz v0, :cond_bb

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->isHelpOverlayUSA:Z

    if-eqz v0, :cond_c7

    .line 111
    :cond_bb
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 112
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->setVisibility(I)V

    .line 113
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->removeCallback()V

    .line 124
    :goto_c6
    return-void

    .line 116
    :cond_c7
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpButton1:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpButton2:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->showHelpTip()V

    goto :goto_c6
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 206
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "LockscreenHelpOverlay"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_b
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 202
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "LockscreenHelpOverlay"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_b
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 162
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_10

    .line 163
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 189
    :cond_f
    :goto_f
    return v1

    .line 166
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 167
    .local v0, action:I
    packed-switch v0, :pswitch_data_40

    .line 185
    :cond_17
    :goto_17
    :pswitch_17
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    if-eqz v3, :cond_f

    .line 186
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v3, 0x1388

    invoke-interface {v1, v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    move v1, v2

    .line 187
    goto :goto_f

    .line 170
    :pswitch_24
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_17

    .line 171
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mPopupLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setPressed(Z)V

    goto :goto_17

    .line 177
    :pswitch_32
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_17

    .line 178
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mPopupLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    goto :goto_17

    .line 167
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_24
        :pswitch_32
        :pswitch_24
        :pswitch_32
        :pswitch_17
        :pswitch_17
        :pswitch_32
    .end packed-switch
.end method

.method public removeCallback()V
    .registers 2

    .prologue
    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 199
    return-void
.end method

.method public setCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 195
    return-void
.end method

.method public setHelpLayoutFlag()V
    .registers 5

    .prologue
    .line 149
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mChecked:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mChecked:I

    .line 150
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 151
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "displayed"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 153
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "help_overlay_checked"

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mChecked:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 155
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->checkOverlayCondition()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 156
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->setVisibility(I)V

    .line 158
    :cond_2e
    return-void
.end method

.method public showHelpTip()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 134
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "kg_multiple_lockscreen"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_25

    .line 136
    .local v0, isMultipleLockscreen:Z
    :goto_12
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mChecked:I

    if-nez v2, :cond_27

    if-eqz v0, :cond_27

    .line 137
    const-string v2, "LockscreenHelpOverlay"

    const-string v3, "Help view show"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 145
    :goto_24
    return-void

    .end local v0           #isMultipleLockscreen:Z
    :cond_25
    move v0, v1

    .line 134
    goto :goto_12

    .line 140
    .restart local v0       #isMultipleLockscreen:Z
    :cond_27
    const-string v1, "LockscreenHelpOverlay"

    const-string v2, "Help view GONE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 142
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->setVisibility(I)V

    .line 143
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->removeCallback()V

    goto :goto_24
.end method
