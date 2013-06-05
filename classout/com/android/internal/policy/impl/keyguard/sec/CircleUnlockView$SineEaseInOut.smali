.class public Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$SineEaseInOut;
.super Ljava/lang/Object;
.source "CircleUnlockView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SineEaseInOut"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;)V
    .registers 2
    .parameter

    .prologue
    .line 661
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$SineEaseInOut;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 662
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 664
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$SineEaseInOut;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 665
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 5
    .parameter "input"

    .prologue
    const/high16 v2, 0x3f80

    .line 668
    const/high16 v0, -0x4100

    const v1, 0x40490fdb

    mul-float/2addr v1, p1

    div-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->cos(F)F

    move-result v1

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    add-float/2addr v0, v1

    return v0
.end method
