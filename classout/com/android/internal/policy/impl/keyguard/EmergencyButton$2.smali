.class Lcom/android/internal/policy/impl/keyguard/EmergencyButton$2;
.super Ljava/lang/Object;
.source "EmergencyButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)V
    .registers 2
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$2;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 109
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isEmergencyCallListEnable()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$2;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->takeEmergencyCallList()V

    .line 114
    :goto_b
    return-void

    .line 112
    :cond_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$2;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->takeEmergencyCallAction()V

    goto :goto_b
.end method
