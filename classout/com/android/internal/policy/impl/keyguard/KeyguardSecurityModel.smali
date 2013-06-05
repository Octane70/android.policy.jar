.class public Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;
.super Ljava/lang/Object;
.source "KeyguardSecurityModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$2;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    }
.end annotation


# instance fields
.field private isPinUnlocking:Z

.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mLock:Ljava/lang/Object;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->isPinUnlocking:Z

    .line 96
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLock:Ljava/lang/Object;

    .line 76
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    .line 77
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 80
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.server.enterprise.ICCID_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "android.permission.sec.MDM_NOTIFY_ICCID_AVAILABLE"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private isBiometricUnlockSuppressed()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 117
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .line 118
    .local v1, monitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_26

    move v0, v2

    .line 120
    .local v0, backupIsTimedOut:Z
    :goto_10
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v4

    if-nez v4, :cond_24

    if-nez v0, :cond_24

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlternateUnlockEnabled()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v4

    if-eqz v4, :cond_25

    :cond_24
    move v3, v2

    :cond_25
    return v3

    .end local v0           #backupIsTimedOut:Z
    :cond_26
    move v0, v3

    .line 118
    goto :goto_10
.end method


# virtual methods
.method getAlternateFor(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    .registers 3
    .parameter "mode"

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->isBiometricUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->isBiometricUnlockSuppressed()Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v0, :cond_18

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v0, :cond_18

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v0, :cond_1a

    .line 260
    :cond_18
    sget-object p1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Biometric:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 262
    .end local p1
    :cond_1a
    return-object p1
.end method

.method getBackupSecurityMode(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    .registers 4
    .parameter "mode"

    .prologue
    .line 272
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$2;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 280
    .end local p1
    :goto_b
    return-object p1

    .line 274
    .restart local p1
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p1

    goto :goto_b

    .line 276
    :pswitch_11
    sget-object p1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_b

    .line 278
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSignatureBackupSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p1

    goto :goto_b

    .line 272
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_c
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method

.method getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    .registers 19

    .prologue
    .line 126
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v13

    .line 129
    .local v13, updateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v13}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v12

    .line 130
    .local v12, tempState:Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v14, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v12, v14, :cond_c1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->isPinUnlocking:Z

    if-nez v14, :cond_c1

    .line 131
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    const-string v15, "enterprise_policy"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 133
    .local v2, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/app/enterprise/PhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result v3

    .line 134
    .local v3, hasSimcardLockedByAdmin:Z
    if-eqz v3, :cond_bf

    .line 135
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    const-string v15, "phone"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 137
    .local v11, telManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, iccId:Ljava/lang/String;
    const/16 v7, 0xa

    .line 139
    .local v7, numRetries:I
    :goto_3f
    if-nez v4, :cond_5e

    if-lez v7, :cond_5e

    .line 140
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 142
    :try_start_48
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLock:Ljava/lang/Object;

    const-wide/16 v16, 0x3e8

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_53
    .catchall {:try_start_48 .. :try_end_53} :catchall_5b
    .catch Ljava/lang/InterruptedException; {:try_start_48 .. :try_end_53} :catch_198

    .line 146
    :goto_53
    :try_start_53
    monitor-exit v15
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_5b

    .line 147
    add-int/lit8 v7, v7, -0x1

    .line 148
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v4

    goto :goto_3f

    .line 146
    :catchall_5b
    move-exception v14

    :try_start_5c
    monitor-exit v15
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v14

    .line 150
    :cond_5e
    if-eqz v4, :cond_bd

    .line 151
    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/app/enterprise/PhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result v5

    .line 152
    .local v5, isSimLockedByAdmin:Z
    if-eqz v5, :cond_bb

    sget-object v10, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 153
    .local v10, simState:Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_6c
    if-eqz v5, :cond_88

    .line 154
    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/app/enterprise/PhoneRestrictionPolicy;->getPinCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 156
    .local v8, pin:Ljava/lang/String;
    :try_start_76
    const-string v14, "phone"

    invoke-static {v14}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v14

    invoke-interface {v14, v8}, Lcom/android/internal/telephony/ITelephony;->supplyPin(Ljava/lang/String;)Z

    .line 157
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->isPinUnlocking:Z
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_88} :catch_195

    .line 174
    .end local v2           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v3           #hasSimcardLockedByAdmin:Z
    .end local v4           #iccId:Ljava/lang/String;
    .end local v5           #isSimLockedByAdmin:Z
    .end local v7           #numRetries:I
    .end local v8           #pin:Ljava/lang/String;
    .end local v11           #telManager:Landroid/telephony/TelephonyManager;
    :cond_88
    :goto_88
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 175
    .local v6, mode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v14, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v10, v14, :cond_cf

    .line 176
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 225
    :cond_90
    :goto_90
    sget-boolean v14, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    if-eqz v14, :cond_a6

    sget-object v14, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v6, v14, :cond_a4

    sget-object v14, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v6, v14, :cond_a4

    sget-object v14, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v6, v14, :cond_a4

    sget-object v14, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SmartcardPIN:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v6, v14, :cond_a6

    .line 229
    :cond_a4
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 233
    :cond_a6
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v14

    if-eqz v14, :cond_ba

    .line 234
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v14

    if-eqz v14, :cond_ba

    .line 235
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getPUKRequest()Z

    move-result v14

    if-eqz v14, :cond_18b

    .line 236
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 244
    :cond_ba
    :goto_ba
    return-object v6

    .end local v6           #mode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    .end local v10           #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    .restart local v2       #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v3       #hasSimcardLockedByAdmin:Z
    .restart local v4       #iccId:Ljava/lang/String;
    .restart local v5       #isSimLockedByAdmin:Z
    .restart local v7       #numRetries:I
    .restart local v11       #telManager:Landroid/telephony/TelephonyManager;
    :cond_bb
    move-object v10, v12

    .line 152
    goto :goto_6c

    .line 162
    .end local v5           #isSimLockedByAdmin:Z
    :cond_bd
    move-object v10, v12

    .restart local v10       #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_88

    .line 165
    .end local v4           #iccId:Ljava/lang/String;
    .end local v7           #numRetries:I
    .end local v10           #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    .end local v11           #telManager:Landroid/telephony/TelephonyManager;
    :cond_bf
    move-object v10, v12

    .restart local v10       #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_88

    .line 167
    .end local v2           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v3           #hasSimcardLockedByAdmin:Z
    .end local v10           #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_c1
    sget-object v14, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v12, v14, :cond_cc

    .line 168
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->isPinUnlocking:Z

    .line 169
    move-object v10, v12

    .restart local v10       #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_88

    .line 171
    .end local v10           #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_cc
    sget-object v10, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v10       #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_88

    .line 177
    .restart local v6       #mode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_cf
    sget-object v14, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v10, v14, :cond_e0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->isPukUnlockScreenEnable()Z

    move-result v14

    if-eqz v14, :cond_e0

    .line 179
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_90

    .line 180
    :cond_e0
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isUSIMPersoFeatureEnable()Z

    move-result v14

    if-eqz v14, :cond_ed

    sget-object v14, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v10, v14, :cond_ed

    .line 182
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPerso:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_90

    .line 183
    :cond_ed
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->isRecoveryLockEnabled()Z

    move-result v14

    if-eqz v14, :cond_fa

    .line 184
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Recovery:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_90

    .line 185
    :cond_fa
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockEnabled()Z

    move-result v14

    if-eqz v14, :cond_107

    .line 186
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierLock:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_90

    .line 187
    :cond_107
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled()Z

    move-result v14

    if-eqz v14, :cond_115

    .line 188
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->FMM:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto/16 :goto_90

    .line 190
    :cond_115
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v9

    .line 191
    .local v9, security:I
    sparse-switch v9, :sswitch_data_19c

    .line 221
    new-instance v14, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown unlock mode:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 193
    :sswitch_139
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v14

    if-eqz v14, :cond_147

    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 195
    :goto_145
    goto/16 :goto_90

    .line 193
    :cond_147
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_145

    .line 199
    :sswitch_14a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v14

    if-eqz v14, :cond_158

    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 201
    :goto_156
    goto/16 :goto_90

    .line 199
    :cond_158
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_156

    .line 204
    :sswitch_15b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v14

    if-eqz v14, :cond_169

    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SmartcardPIN:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 206
    :goto_167
    goto/16 :goto_90

    .line 204
    :cond_169
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_167

    .line 210
    :sswitch_16c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v14

    if-eqz v14, :cond_90

    .line 211
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v14

    if-eqz v14, :cond_184

    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    :goto_182
    goto/16 :goto_90

    :cond_184
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_182

    .line 217
    :sswitch_187
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Signature:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 218
    goto/16 :goto_90

    .line 237
    .end local v9           #security:I
    :cond_18b
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getPINRequest()Z

    move-result v14

    if-eqz v14, :cond_ba

    .line 238
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto/16 :goto_ba

    .line 158
    .end local v6           #mode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    .restart local v2       #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v3       #hasSimcardLockedByAdmin:Z
    .restart local v4       #iccId:Ljava/lang/String;
    .restart local v5       #isSimLockedByAdmin:Z
    .restart local v7       #numRetries:I
    .restart local v8       #pin:Ljava/lang/String;
    .restart local v11       #telManager:Landroid/telephony/TelephonyManager;
    :catch_195
    move-exception v14

    goto/16 :goto_88

    .line 143
    .end local v5           #isSimLockedByAdmin:Z
    .end local v8           #pin:Ljava/lang/String;
    .end local v10           #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    :catch_198
    move-exception v14

    goto/16 :goto_53

    .line 191
    nop

    :sswitch_data_19c
    .sparse-switch
        0x0 -> :sswitch_16c
        0x9000 -> :sswitch_187
        0x10000 -> :sswitch_16c
        0x20000 -> :sswitch_139
        0x40000 -> :sswitch_14a
        0x50000 -> :sswitch_14a
        0x60000 -> :sswitch_14a
        0x70000 -> :sswitch_15b
    .end sparse-switch
.end method

.method public getSignatureBackupSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    .registers 5

    .prologue
    .line 284
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getBackupMode()I

    move-result v0

    .line 285
    .local v0, backupMode:I
    sparse-switch v0, :sswitch_data_36

    .line 293
    const-string v1, "KeyguardSecurityModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSignatureBackupSecurityMode, unexpected backup mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Signature:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    :goto_23
    return-object v1

    .line 287
    :sswitch_24
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_23

    .line 290
    :sswitch_27
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v1

    if-eqz v1, :cond_32

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_23

    :cond_32
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_23

    .line 285
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_27
        0x10000 -> :sswitch_27
        0x20000 -> :sswitch_24
    .end sparse-switch
.end method

.method isBiometricUnlockEnabled()Z
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 2
    .parameter "utils"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 101
    return-void
.end method
