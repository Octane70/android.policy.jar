.class public Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;
.super Ljava/lang/Object;
.source "MultiSimUtils.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final DUALSIMSLOT:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "MultiSimUtils"

.field public static final SIMSLOT1:I = 0x0

.field public static final SIMSLOT2:I = 0x1

.field public static final SIMSLOT3:I = 0x2

.field public static final SIMSLOT4:I = 0x3

.field public static final SIMSLOT5:I = 0x4

.field public static final UNKNOWN:I = -0x1

.field private static mCurrentPukLockSlot:I

.field private static mCurrnetPinLockSlot:I

.field private static mPINPUKRequest:Z

.field private static mPINPUKSlot:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 37
    sput v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mCurrnetPinLockSlot:I

    .line 38
    sput v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mCurrentPukLockSlot:I

    .line 41
    sput-boolean v1, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mPINPUKRequest:Z

    .line 45
    sput v1, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mPINPUKSlot:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SimRefreshCheck(Landroid/content/Context;)Z
    .registers 2
    .parameter "mContext"

    .prologue
    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public static appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .parameter "property"
    .parameter "simSlot"

    .prologue
    .line 122
    move-object v0, p0

    .line 127
    .local v0, str:Ljava/lang/String;
    if-eqz p1, :cond_1a

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    :cond_1a
    return-object v0
.end method

.method public static getCurrentPinLockSlot()I
    .registers 3

    .prologue
    .line 72
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 73
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getPINPUKSlot()I

    move-result v0

    .line 79
    :goto_a
    return v0

    .line 77
    :cond_b
    const-string v0, "MultiSimUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentPinLockSlot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mCurrnetPinLockSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sget v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mCurrnetPinLockSlot:I

    goto :goto_a
.end method

.method public static getCurrentPukLockSlot()I
    .registers 3

    .prologue
    .line 97
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 98
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getPINPUKSlot()I

    move-result v0

    .line 104
    :goto_a
    return v0

    .line 102
    :cond_b
    const-string v0, "MultiSimUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentPukLockSlot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mCurrentPukLockSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mCurrentPukLockSlot:I

    goto :goto_a
.end method

.method public static getCurrentSimState()Lcom/android/internal/telephony/IccCardConstants$State;
    .registers 1

    .prologue
    .line 178
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 179
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getPINRequest()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 180
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 185
    :goto_e
    return-object v0

    .line 181
    :cond_f
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getPUKRequest()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 182
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_e

    .line 185
    :cond_18
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_e
.end method

.method public static getDualModePINPUKRequest()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 244
    const-string v4, "gsm.sim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, mCDMAstate:Ljava/lang/String;
    const-string v4, "gsm.sim.state2"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, mGSMstate:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isDualModeDevice()I

    move-result v4

    if-ne v4, v3, :cond_36

    .line 249
    const-string v4, "PIN_REQUIRED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_34

    const-string v4, "PUK_REQUIRED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_34

    const-string v4, "PIN_REQUIRED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_34

    const-string v4, "PUK_REQUIRED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    :cond_34
    move v2, v3

    .line 260
    :cond_35
    :goto_35
    return v2

    .line 257
    :cond_36
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mPINPUKRequest:Z

    if-eqz v4, :cond_35

    move v2, v3

    .line 258
    goto :goto_35
.end method

.method public static getPINPUKRequest()Z
    .registers 1

    .prologue
    .line 63
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 64
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getDualModePINPUKRequest()Z

    move-result v0

    .line 67
    :goto_a
    return v0

    :cond_b
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getPINRequest()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getPUKRequest()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_17
    const/4 v0, 0x1

    goto :goto_a

    :cond_19
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getPINPUKSlot()I
    .registers 6

    .prologue
    const/4 v5, 0x1

    .line 266
    const-string v2, "ril.ICC_TYPE"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, mCDMAtype:Ljava/lang/String;
    const-string v2, "ril.ICC2_TYPE"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, mGSMtype:Ljava/lang/String;
    const-string v2, "MultiSimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPINPUKSlot : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mPINPUKSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isDualModeDevice()I

    move-result v2

    if-ne v2, v5, :cond_3f

    .line 273
    const-string v2, "3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    const-string v2, "4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 275
    :cond_3d
    sput v5, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mPINPUKSlot:I

    .line 283
    :cond_3f
    :goto_3f
    const-string v2, "MultiSimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPINPUKSlot return : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mPINPUKSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    sget v2, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mPINPUKSlot:I

    return v2

    .line 277
    :cond_5c
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6c

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 279
    :cond_6c
    const/4 v2, 0x2

    sput v2, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mPINPUKSlot:I

    goto :goto_3f
.end method

.method public static getPINRequest()Z
    .registers 5

    .prologue
    .line 49
    const/4 v2, -0x1

    sput v2, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mCurrnetPinLockSlot:I

    .line 50
    const/4 v0, 0x0

    .local v0, simSlot:I
    :goto_4
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getSimSlotCount()I

    move-result v2

    if-ge v0, v2, :cond_47

    .line 51
    const-string v2, "gsm.sim.state"

    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, simState:Ljava/lang/String;
    const-string v2, "MultiSimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInsertedSimNum() : simSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", simState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v2, "PIN_REQUIRED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 55
    sput v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mCurrnetPinLockSlot:I

    .line 56
    const/4 v2, 0x1

    .line 59
    .end local v1           #simState:Ljava/lang/String;
    :goto_43
    return v2

    .line 50
    .restart local v1       #simState:Ljava/lang/String;
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 59
    .end local v1           #simState:Ljava/lang/String;
    :cond_47
    const/4 v2, 0x0

    goto :goto_43
.end method

.method public static getPUKRequest()Z
    .registers 5

    .prologue
    .line 108
    const/4 v2, -0x1

    sput v2, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mCurrentPukLockSlot:I

    .line 109
    const/4 v0, 0x0

    .local v0, simSlot:I
    :goto_4
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getSimSlotCount()I

    move-result v2

    if-ge v0, v2, :cond_47

    .line 110
    const-string v2, "gsm.sim.state"

    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, simState:Ljava/lang/String;
    const-string v2, "MultiSimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInsertedSimNum() : simSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", simState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v2, "PUK_REQUIRED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 114
    sput v0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mCurrentPukLockSlot:I

    .line 115
    const/4 v2, 0x1

    .line 118
    .end local v1           #simState:Ljava/lang/String;
    :goto_43
    return v2

    .line 109
    .restart local v1       #simState:Ljava/lang/String;
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 118
    .end local v1           #simState:Ljava/lang/String;
    :cond_47
    const/4 v2, 0x0

    goto :goto_43
.end method

.method public static getSimPinRetry()I
    .registers 5

    .prologue
    .line 142
    const/4 v1, 0x0

    .line 144
    .local v1, result:I
    :try_start_1
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getCurrentPinLockSlot()I

    move-result v2

    if-lez v2, :cond_3a

    .line 145
    const-string v2, "phone2"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getSimPinRetry()I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_49

    move-result v1

    .line 155
    :goto_15
    const-string v2, "MultiSimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimPinRetry = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " counnt on slot:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mCurrnetPinLockSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return v1

    .line 148
    :cond_3a
    :try_start_3a
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getSimPinRetry()I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_47} :catch_49

    move-result v1

    goto :goto_15

    .line 151
    :catch_49
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method

.method public static getSimPukRetry()I
    .registers 5

    .prologue
    .line 160
    const/4 v1, 0x0

    .line 162
    .local v1, result:I
    :try_start_1
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getCurrentPukLockSlot()I

    move-result v2

    if-lez v2, :cond_3a

    .line 163
    const-string v2, "phone2"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getSimPukRetry()I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_49

    move-result v1

    .line 173
    :goto_15
    const-string v2, "MultiSimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimPukRetry = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " count on slot:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mCurrnetPinLockSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return v1

    .line 166
    :cond_3a
    :try_start_3a
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getSimPukRetry()I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_47} :catch_49

    move-result v1

    goto :goto_15

    .line 169
    :catch_49
    move-exception v0

    .line 170
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method

.method public static getSimSlotCount()I
    .registers 2

    .prologue
    .line 137
    const-string v0, "ro.multisim.simslotcount"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isMultiSIMDevice()Z
    .registers 1

    .prologue
    .line 83
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    return v0
.end method

.method public static isPlmnEnabled()Z
    .registers 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public static setPINPUKRequest(Z)V
    .registers 4
    .parameter "state"

    .prologue
    .line 233
    sput-boolean p0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mPINPUKRequest:Z

    .line 234
    const-string v0, "MultiSimUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPINPUKRequest : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mPINPUKRequest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void
.end method

.method public static setPINPUKSlot(I)V
    .registers 4
    .parameter "slot"

    .prologue
    .line 238
    const-string v0, "MultiSimUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPINPUKSlot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    sput p0, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->mPINPUKSlot:I

    .line 240
    return-void
.end method
