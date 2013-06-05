.class Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$8;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showWipeDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

.field final synthetic val$attemptsCount:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 887
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$8;->val$attemptsCount:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 889
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$8;->val$attemptsCount:I

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->performWipeout(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1900(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;I)V

    .line 890
    return-void
.end method
