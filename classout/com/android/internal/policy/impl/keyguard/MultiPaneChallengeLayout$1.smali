.class Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$1;
.super Ljava/lang/Object;
.source "MultiPaneChallengeLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;)V
    .registers 2
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->hideBouncer()V

    .line 60
    return-void
.end method
