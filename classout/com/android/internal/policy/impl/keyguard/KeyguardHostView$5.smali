.class Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$5;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .registers 2
    .parameter

    .prologue
    .line 716
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddView(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->shouldEnableAddWidget()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 730
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setAddWidgetEnabled(Z)V

    .line 732
    :cond_12
    return-void
.end method

.method public onRemoveView(Landroid/view/View;Z)V
    .registers 5
    .parameter "v"
    .parameter "deletePermanently"

    .prologue
    .line 736
    if-eqz p2, :cond_16

    .line 737
    check-cast p1, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    .end local p1
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v0

    .line 738
    .local v0, appWidgetId:I
    if-eqz v0, :cond_16

    const/4 v1, -0x2

    if-eq v0, v1, :cond_16

    .line 740
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/appwidget/AppWidgetHost;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 743
    .end local v0           #appWidgetId:I
    :cond_16
    return-void
.end method

.method public onRemoveViewAnimationCompleted()V
    .registers 3

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->shouldEnableAddWidget()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 748
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setAddWidgetEnabled(Z)V

    .line 750
    :cond_12
    return-void
.end method

.method public onUserActivityTimeoutChanged()V
    .registers 2

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->onUserActivityTimeoutChanged()V

    .line 725
    return-void
.end method

.method public userActivity()V
    .registers 2

    .prologue
    .line 719
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->userActivity()V

    .line 720
    return-void
.end method
