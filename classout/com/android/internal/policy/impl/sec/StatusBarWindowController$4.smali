.class Lcom/android/internal/policy/impl/sec/StatusBarWindowController$4;
.super Ljava/lang/Object;
.source "StatusBarWindowController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/StatusBarWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V
    .registers 2
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$4;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$4;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "StatusBarWindowController"

    const-string v1, "mDefaultHideOnFullScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_d
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$4;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->performShowStatusBarOnFullScreen(Z)V

    .line 348
    return-void
.end method
