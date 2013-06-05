.class Lcom/android/internal/policy/impl/keyguard/PagedView$8$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/PagedView$8;->onAnimationStart(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/PagedView$8;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/PagedView$8;)V
    .registers 2
    .parameter

    .prologue
    .line 2274
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/PagedView$8;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 2277
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/PagedView$8;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->access$500(Lcom/android/internal/policy/impl/keyguard/PagedView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2278
    return-void
.end method
