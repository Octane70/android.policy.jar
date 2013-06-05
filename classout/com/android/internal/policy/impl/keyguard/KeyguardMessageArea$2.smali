.class Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$2;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardMessageArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;)V
    .registers 2
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshBatteryInfo(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .registers 7
    .parameter "status"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 163
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result v0

    if-eqz v0, :cond_47

    :cond_10
    move v0, v2

    :goto_11
    iput-boolean v0, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingBatteryInfo:Z

    .line 164
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    iget v3, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1f

    iget v3, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_49

    :cond_1f
    :goto_1f
    iput-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mCharging:Z

    .line 166
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isSupportSPC()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 167
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingBatteryInfo:Z

    .line 169
    :cond_2b
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    iget v1, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iput v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryLevel:I

    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isCharged()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryCharged:Z

    .line 171
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryIsLow:Z

    .line 172
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->update()V

    .line 173
    return-void

    :cond_47
    move v0, v1

    .line 163
    goto :goto_11

    :cond_49
    move v2, v1

    .line 164
    goto :goto_1f
.end method
