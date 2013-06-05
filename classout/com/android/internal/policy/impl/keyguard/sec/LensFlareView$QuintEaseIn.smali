.class public Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$QuintEaseIn;
.super Ljava/lang/Object;
.source "LensFlareView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QuintEaseIn"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V
    .registers 2
    .parameter

    .prologue
    .line 1014
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$QuintEaseIn;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 3
    .parameter "input"

    .prologue
    .line 1016
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    return v0
.end method
