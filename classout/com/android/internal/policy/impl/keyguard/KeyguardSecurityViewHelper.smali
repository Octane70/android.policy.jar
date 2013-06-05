.class public Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;
.super Ljava/lang/Object;
.source "KeyguardSecurityViewHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hideBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V
    .registers 9
    .parameter "securityMessageDisplay"
    .parameter "ecaView"
    .parameter "bouncerFrame"
    .parameter "duration"

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 71
    if-eqz p0, :cond_8

    .line 72
    invoke-interface {p0, p3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->hideBouncer(I)V

    .line 74
    :cond_8
    if-eqz p1, :cond_21

    .line 75
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 76
    if-lez p3, :cond_39

    .line 77
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    aput v4, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 78
    .local v0, anim:Landroid/animation/Animator;
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 79
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 84
    .end local v0           #anim:Landroid/animation/Animator;
    :cond_21
    :goto_21
    if-eqz p2, :cond_38

    .line 85
    if-lez p3, :cond_3d

    .line 86
    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_42

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 87
    .restart local v0       #anim:Landroid/animation/Animator;
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 88
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 93
    .end local v0           #anim:Landroid/animation/Animator;
    :cond_38
    :goto_38
    return-void

    .line 81
    :cond_39
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_21

    .line 90
    :cond_3d
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_38

    .line 86
    nop

    :array_42
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static showBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V
    .registers 9
    .parameter "securityMessageDisplay"
    .parameter "ecaView"
    .parameter "bouncerFrame"
    .parameter "duration"

    .prologue
    const/4 v4, 0x0

    .line 32
    if-eqz p0, :cond_6

    .line 33
    invoke-interface {p0, p3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->showBouncer(I)V

    .line 35
    :cond_6
    if-eqz p1, :cond_25

    .line 36
    if-lez p3, :cond_3d

    .line 37
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 38
    .local v0, anim:Landroid/animation/Animator;
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 39
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper$1;

    invoke-direct {v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 52
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 58
    .end local v0           #anim:Landroid/animation/Animator;
    :cond_25
    :goto_25
    if-eqz p2, :cond_3c

    .line 59
    if-lez p3, :cond_45

    .line 60
    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_4c

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 61
    .restart local v0       #anim:Landroid/animation/Animator;
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 62
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 67
    .end local v0           #anim:Landroid/animation/Animator;
    :cond_3c
    :goto_3c
    return-void

    .line 54
    :cond_3d
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 55
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_25

    .line 64
    :cond_45
    const/16 v1, 0xff

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_3c

    .line 60
    nop

    :array_4c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method
