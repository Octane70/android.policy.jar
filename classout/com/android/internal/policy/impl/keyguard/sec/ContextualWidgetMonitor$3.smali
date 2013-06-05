.class Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$3;
.super Ljava/lang/Object;
.source "ContextualWidgetMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)V
    .registers 2
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$500(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 432
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$500(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;->resetContextualWidget()V

    .line 433
    :cond_11
    return-void
.end method
