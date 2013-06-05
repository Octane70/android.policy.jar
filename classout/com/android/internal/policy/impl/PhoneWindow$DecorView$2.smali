.class Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->addSwitchToPreviousSizeButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)V
    .registers 2
    .parameter

    .prologue
    .line 2956
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 2958
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mIsLongClick:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2500(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Z

    move-result v1

    if-nez v1, :cond_c

    move v5, v0

    .line 3000
    :cond_b
    :goto_b
    return v5

    .line 2962
    :cond_c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 2963
    .local v6, action:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v7, v1

    .line 2964
    .local v7, rowX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v8, v1

    .line 2966
    .local v8, rowY:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mIsFirstTouch:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2600(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Z

    move-result v1

    if-ne v1, v5, :cond_41

    .line 2967
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mXLocationOfSwitchToPreviousSizeButton:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2800(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v2

    sub-int v2, v7, v2

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mXOffsetTouch:I
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2702(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;I)I

    .line 2968
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mYLocationOfSwitchToPreviousSizeButton:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3000(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v2

    sub-int v2, v8, v2

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mYOffsetTouch:I
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2902(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;I)I

    .line 2969
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mIsFirstTouch:Z
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2602(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Z)Z

    .line 2972
    :cond_41
    const/4 v1, 0x2

    if-ne v6, v1, :cond_97

    .line 2973
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2300()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2974
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mScreenWidth:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3200(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v0

    sub-int/2addr v0, v7

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mXOffsetTouch:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2700(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3102(I)I

    .line 2976
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mScreenHeight:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3400(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v0

    sub-int/2addr v0, v8

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mYOffsetTouch:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2900(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3302(I)I

    .line 2978
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2300()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3100()I

    move-result v1

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3300()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mSwitchToPreviousSizeButtonWidth:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3500(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mSwitchToPreviousSizeButtonHeight:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3600(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto/16 :goto_b

    .line 2985
    :cond_97
    if-nez v6, :cond_e2

    .line 2986
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mScreenWidth:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3200(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v0

    sub-int/2addr v0, v7

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mXOffsetTouch:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2700(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3102(I)I

    .line 2988
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mScreenHeight:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3400(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v0

    sub-int/2addr v0, v8

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mYOffsetTouch:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2900(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3302(I)I

    .line 2990
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2300()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3100()I

    move-result v1

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3300()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mSwitchToPreviousSizeButtonWidth:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3500(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mSwitchToPreviousSizeButtonHeight:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3600(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto/16 :goto_b

    .line 2996
    :cond_e2
    if-ne v6, v5, :cond_b

    .line 2997
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mIsLongClick:Z
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2502(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Z)Z

    move v5, v0

    .line 2998
    goto/16 :goto_b
.end method
