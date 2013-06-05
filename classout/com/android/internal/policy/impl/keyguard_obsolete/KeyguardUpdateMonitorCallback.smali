.class Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitorCallback;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitorCallback.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onClockVisibilityChanged()V
    .registers 1

    .prologue
    .line 68
    return-void
.end method

.method onDevicePolicyManagerStateChanged()V
    .registers 1

    .prologue
    .line 79
    return-void
.end method

.method onDeviceProvisioned()V
    .registers 1

    .prologue
    .line 73
    return-void
.end method

.method onPhoneStateChanged(I)V
    .registers 2
    .parameter "phoneState"

    .prologue
    .line 62
    return-void
.end method

.method onRefreshBatteryInfo(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$BatteryStatus;)V
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
    .line 90
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
    .line 95
    return-void
.end method

.method onUserSwitched(I)V
    .registers 2
    .parameter "userId"

    .prologue
    .line 84
    return-void
.end method
