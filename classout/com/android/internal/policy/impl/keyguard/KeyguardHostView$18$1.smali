.class Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$18$1;
.super Ljava/lang/Thread;
.source "KeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$18;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$18;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$18;)V
    .registers 2
    .parameter

    .prologue
    .line 2413
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$18$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$18;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 2415
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$18$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$18;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$18;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->formatExtStorage()I
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$3000(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)I

    .line 2416
    return-void
.end method
