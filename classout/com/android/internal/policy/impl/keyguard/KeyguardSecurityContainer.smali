.class public Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;
.super Landroid/widget/FrameLayout;
.source "KeyguardSecurityContainer.java"


# instance fields
.field private mIsPattern:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->mTempRect:Landroid/graphics/Rect;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->mIsPattern:Z

    .line 26
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 27
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 28
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->mIsPattern:Z

    .line 30
    :cond_22
    return-void
.end method


# virtual methods
.method getFlipper()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;
    .registers 4

    .prologue
    .line 33
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_15

    .line 34
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 35
    .local v0, child:Landroid/view/View;
    instance-of v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    if-eqz v2, :cond_12

    .line 36
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    .line 39
    .end local v0           #child:Landroid/view/View;
    :goto_11
    return-object v0

    .line 33
    .restart local v0       #child:Landroid/view/View;
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 39
    .end local v0           #child:Landroid/view/View;
    :cond_15
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public hideBouncer(I)V
    .registers 3
    .parameter "duration"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getFlipper()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    move-result-object v0

    .line 51
    .local v0, flipper:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;
    if-eqz v0, :cond_9

    .line 52
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->hideBouncer(I)V

    .line 54
    :cond_9
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "ev"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v5

    if-eqz v5, :cond_55

    .line 65
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->mIsPattern:Z

    if-eqz v5, :cond_55

    .line 66
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 67
    .local v2, result:Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 68
    const/4 v1, 0x0

    .local v1, i:I
    :goto_16
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_56

    .line 69
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_50

    .line 71
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 72
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 73
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_40

    if-eqz v2, :cond_53

    :cond_40
    move v2, v4

    .line 74
    :goto_41
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 68
    :cond_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_53
    move v2, v3

    .line 73
    goto :goto_41

    .end local v0           #child:Landroid/view/View;
    .end local v1           #i:I
    .end local v2           #result:Z
    :cond_55
    move v2, v4

    .line 80
    :cond_56
    return v2
.end method

.method public showBouncer(I)V
    .registers 3
    .parameter "duration"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getFlipper()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    move-result-object v0

    .line 44
    .local v0, flipper:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;
    if-eqz v0, :cond_9

    .line 45
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->showBouncer(I)V

    .line 47
    :cond_9
    return-void
.end method
