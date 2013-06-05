.class Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;
.super Ljava/lang/Object;
.source "MultiPhoneWindowEvent.java"

# interfaces
.implements Landroid/gesture/GestureOverlayView$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GesturesProcessor"
.end annotation


# instance fields
.field bottomResize:Landroid/graphics/Rect;

.field currentLaunchMode:I

.field leftResize:Landroid/graphics/Rect;

.field leftbottomResize:Landroid/graphics/Rect;

.field rightResize:Landroid/graphics/Rect;

.field rightbottomResize:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

.field private windowMode:I


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V
    .registers 2
    .parameter

    .prologue
    .line 1712
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1712
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    return-void
.end method

.method private isResizeArea(II)Z
    .registers 11
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v7, 0x190

    const/4 v2, 0x1

    const/16 v6, 0x1e

    .line 1746
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z

    move-result v3

    if-nez v3, :cond_ca

    .line 1747
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v3

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1748
    .local v0, moveDistanceX:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v3

    sub-int/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1750
    .local v1, moveDistanceY:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->leftResize:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_43

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->leftResize:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_43

    if-le v0, v1, :cond_43

    if-lt v1, v6, :cond_c9

    :cond_43
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->rightResize:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_63

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->rightResize:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_63

    if-le v0, v1, :cond_63

    if-lt v1, v6, :cond_c9

    :cond_63
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->leftbottomResize:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_86

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->leftbottomResize:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_c9

    mul-int v3, v0, v0

    mul-int v4, v1, v1

    add-int/2addr v3, v4

    if-gt v3, v7, :cond_c9

    :cond_86
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->rightbottomResize:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_a9

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->rightbottomResize:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_c9

    mul-int v3, v0, v0

    mul-int v4, v1, v1

    add-int/2addr v3, v4

    if-gt v3, v7, :cond_c9

    :cond_a9
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->bottomResize:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_156

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->bottomResize:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_156

    if-le v1, v0, :cond_156

    if-ge v0, v6, :cond_156

    .line 1767
    .end local v0           #moveDistanceX:I
    .end local v1           #moveDistanceY:I
    :cond_c9
    :goto_c9
    return v2

    .line 1758
    :cond_ca
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->leftResize:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_e6

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->leftResize:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_c9

    :cond_e6
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->rightResize:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_102

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->rightResize:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_c9

    :cond_102
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->leftbottomResize:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_11e

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->leftbottomResize:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_c9

    :cond_11e
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->rightbottomResize:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_13a

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->rightbottomResize:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_c9

    :cond_13a
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->bottomResize:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_156

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->bottomResize:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_c9

    .line 1767
    :cond_156
    const/4 v2, 0x0

    goto/16 :goto_c9
.end method


# virtual methods
.method public onGesture(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .registers 10
    .parameter "overlay"
    .parameter "event"

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1771
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->windowMode:I

    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isNormalWindow(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1819
    :cond_b
    :goto_b
    return-void

    .line 1775
    :cond_c
    const/4 v0, 0x0

    .line 1776
    .local v0, needGuideView:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z

    move-result v2

    if-nez v2, :cond_b0

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-result-object v2

    if-nez v2, :cond_b0

    .line 1777
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->isResizeArea(II)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1778
    const/4 v0, 0x1

    .line 1780
    :cond_2e
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->currentLaunchMode:I

    if-eq v2, v4, :cond_3f

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->currentLaunchMode:I

    if-eq v2, v5, :cond_3f

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->windowMode:I

    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isPinup(I)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 1783
    const/4 v0, 0x0

    .line 1786
    :cond_3f
    if-eqz v0, :cond_6d

    .line 1787
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #calls: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->forceHideInputMethod()Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z

    .line 1788
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 1789
    .local v1, winInfo:Landroid/os/Bundle;
    const-string v2, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1790
    const-string v2, "MultiPhoneWindowEvent"

    const-string v3, "Create GhostView by onGesture"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v4

    #calls: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->createGhostView(II)Z
    invoke-static {v2, v3, v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;II)Z

    .line 1806
    .end local v1           #winInfo:Landroid/os/Bundle;
    :cond_6d
    :goto_6d
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z

    move-result v2

    if-eqz v2, :cond_f9

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-result-object v2

    if-eqz v2, :cond_f9

    .line 1807
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_ee

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsResizeOnly:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z

    move-result v2

    if-eqz v2, :cond_ee

    .line 1808
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/gesture/GestureOverlayView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/gesture/GestureOverlayView;->setByPassingModeToSuper(Z)V

    .line 1809
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/gesture/GestureOverlayView;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/gesture/GestureOverlayView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1810
    if-eqz v0, :cond_b

    .line 1811
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/gesture/GestureOverlayView;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/gesture/GestureOverlayView;->sendCancelEventToChild(Landroid/view/MotionEvent;)V

    goto/16 :goto_b

    .line 1794
    :cond_b0
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->currentLaunchMode:I

    if-eq v2, v4, :cond_c0

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->currentLaunchMode:I

    if-eq v2, v5, :cond_c0

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->windowMode:I

    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isPinup(I)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 1797
    :cond_c0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->isResizeArea(II)Z

    move-result v2

    if-nez v2, :cond_6d

    .line 1798
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->dismissGuideRelayoutWindow()V

    .line 1799
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    const/4 v3, 0x0

    #setter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$102(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .line 1800
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #setter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z
    invoke-static {v2, v6}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1002(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Z)Z

    .line 1801
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/gesture/GestureOverlayView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/gesture/GestureOverlayView;->setByPassingModeToSuper(Z)V

    goto :goto_6d

    .line 1814
    :cond_ee
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/gesture/GestureOverlayView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/gesture/GestureOverlayView;->setByPassingModeToSuper(Z)V

    goto/16 :goto_b

    .line 1817
    :cond_f9
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/gesture/GestureOverlayView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/gesture/GestureOverlayView;->setByPassingModeToSuper(Z)V

    goto/16 :goto_b
.end method

.method public onGestureCancelled(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .registers 6
    .parameter "overlay"
    .parameter "event"

    .prologue
    .line 1836
    iget v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->windowMode:I

    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isNormalWindow(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1847
    :goto_8
    return-void

    .line 1840
    :cond_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 1841
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1842
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1002(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Z)Z

    .line 1844
    :cond_28
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/gesture/GestureOverlayView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/gesture/GestureOverlayView;->setByPassingModeToSuper(Z)V

    .line 1845
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.multiwindow.RESIZE_STOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1846
    .local v0, intentForResize:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$300(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_8
.end method

.method public onGestureEnded(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .registers 6
    .parameter "overlay"
    .parameter "event"

    .prologue
    .line 1822
    iget v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->windowMode:I

    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isNormalWindow(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1833
    :goto_8
    return-void

    .line 1826
    :cond_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 1827
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1828
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1002(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Z)Z

    .line 1830
    :cond_28
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/gesture/GestureOverlayView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/gesture/GestureOverlayView;->setByPassingModeToSuper(Z)V

    .line 1831
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.multiwindow.RESIZE_STOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1832
    .local v0, intentForResize:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$300(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_8
.end method

.method public onGestureStarted(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .registers 12
    .parameter "overlay"
    .parameter "event"

    .prologue
    const/16 v8, 0x1e

    const/4 v7, 0x0

    .line 1724
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #setter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z
    invoke-static {v4, v7}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1002(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Z)Z

    .line 1725
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    const/4 v5, 0x0

    #setter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$102(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .line 1726
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    #setter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1802(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;I)I

    .line 1727
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    #setter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1902(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;I)I

    .line 1728
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowMode()I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->windowMode:I

    .line 1729
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->arrange:I

    and-int/lit16 v4, v4, -0x401

    iput v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->currentLaunchMode:I

    .line 1732
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1300(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1733
    .local v3, th:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 1734
    .local v0, bh:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    .line 1735
    .local v1, bw:I
    new-instance v4, Landroid/graphics/Rect;

    add-int/lit8 v5, v0, -0x1e

    invoke-direct {v4, v7, v3, v8, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->leftResize:Landroid/graphics/Rect;

    .line 1736
    new-instance v4, Landroid/graphics/Rect;

    add-int/lit8 v5, v1, -0x1e

    add-int/lit8 v6, v0, -0x1e

    invoke-direct {v4, v5, v3, v1, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->rightResize:Landroid/graphics/Rect;

    .line 1737
    new-instance v4, Landroid/graphics/Rect;

    add-int/lit8 v5, v0, -0x3c

    const/16 v6, 0x3c

    invoke-direct {v4, v7, v5, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->leftbottomResize:Landroid/graphics/Rect;

    .line 1738
    new-instance v4, Landroid/graphics/Rect;

    add-int/lit8 v5, v1, -0x3c

    add-int/lit8 v6, v0, -0x3c

    invoke-direct {v4, v5, v6, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->rightbottomResize:Landroid/graphics/Rect;

    .line 1739
    new-instance v4, Landroid/graphics/Rect;

    add-int/lit8 v5, v0, -0x1e

    add-int/lit8 v6, v1, -0x1e

    invoke-direct {v4, v8, v5, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->bottomResize:Landroid/graphics/Rect;

    .line 1740
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.android.multiwindow.RESIZE_START"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1741
    .local v2, intentForResize:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$300(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1742
    return-void
.end method
