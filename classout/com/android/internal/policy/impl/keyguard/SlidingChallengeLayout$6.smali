.class Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$6;
.super Ljava/lang/Object;
.source "SlidingChallengeLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)V
    .registers 2
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$6;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$6;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isChallengeShowing()Z

    move-result v0

    if-nez v0, :cond_e

    .line 186
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$6;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->showChallenge(Z)V

    .line 188
    :cond_e
    return-void
.end method
