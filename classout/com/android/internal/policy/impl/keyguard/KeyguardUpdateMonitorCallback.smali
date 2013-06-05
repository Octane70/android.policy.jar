.class public Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitorCallback.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onBootCompleted()V
    .registers 1

    .prologue
    .line 109
    return-void
.end method

.method onClockVisibilityChanged()V
    .registers 1

    .prologue
    .line 74
    return-void
.end method

.method onDevicePolicyManagerStateChanged()V
    .registers 1

    .prologue
    .line 85
    return-void
.end method

.method onDeviceProvisioned()V
    .registers 1

    .prologue
    .line 79
    return-void
.end method

.method onKeyguardVisibilityChanged(Z)V
    .registers 2
    .parameter "showing"

    .prologue
    .line 68
    return-void
.end method

.method onPhoneStateChanged(I)V
    .registers 2
    .parameter "phoneState"

    .prologue
    .line 62
    return-void
.end method

.method onRefreshBatteryInfo(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .registers 2
    .parameter "status"

    .prologue
    .line 33
    return-void
.end method

.method onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 47
    return-void
.end method

.method onRingerModeChanged(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 54
    return-void
.end method

.method onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .registers 2
    .parameter "simState"

    .prologue
    .line 96
    return-void
.end method

.method onTimeChanged()V
    .registers 1

    .prologue
    .line 38
    return-void
.end method

.method onUserRemoved(I)V
    .registers 2
    .parameter "userId"

    .prologue
    .line 101
    return-void
.end method

.method onUserSwitched(I)V
    .registers 2
    .parameter "userId"

    .prologue
    .line 90
    return-void
.end method
