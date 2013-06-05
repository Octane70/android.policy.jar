.class synthetic Lcom/android/internal/policy/impl/keyguard/CarrierText$2;
.super Ljava/lang/Object;
.source "CarrierText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/CarrierText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$policy$impl$keyguard$CarrierText$StatusMode:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 230
    invoke-static {}, Lcom/android/internal/telephony/IccCardConstants$State;->values()[Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    :try_start_9
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_f8

    :goto_14
    :try_start_14
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_f5

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_f2

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_ef

    :goto_35
    :try_start_35
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_ec

    :goto_40
    :try_start_40
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_e9

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_e6

    :goto_56
    :try_start_56
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_e3

    :goto_62
    :try_start_62
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_e1

    .line 140
    :goto_6e
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->values()[Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$policy$impl$keyguard$CarrierText$StatusMode:[I

    :try_start_77
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$policy$impl$keyguard$CarrierText$StatusMode:[I

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->Normal:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_82
    .catch Ljava/lang/NoSuchFieldError; {:try_start_77 .. :try_end_82} :catch_df

    :goto_82
    :try_start_82
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$policy$impl$keyguard$CarrierText$StatusMode:[I

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimNotReady:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_82 .. :try_end_8d} :catch_dd

    :goto_8d
    :try_start_8d
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$policy$impl$keyguard$CarrierText$StatusMode:[I

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->NetworkLocked:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_98
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8d .. :try_end_98} :catch_db

    :goto_98
    :try_start_98
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$policy$impl$keyguard$CarrierText$StatusMode:[I

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_a3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_98 .. :try_end_a3} :catch_d9

    :goto_a3
    :try_start_a3
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$policy$impl$keyguard$CarrierText$StatusMode:[I

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimPermDisabled:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_ae
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a3 .. :try_end_ae} :catch_d7

    :goto_ae
    :try_start_ae
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$policy$impl$keyguard$CarrierText$StatusMode:[I

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimMissingLocked:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_b9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ae .. :try_end_b9} :catch_d5

    :goto_b9
    :try_start_b9
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$policy$impl$keyguard$CarrierText$StatusMode:[I

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimLocked:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_c4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b9 .. :try_end_c4} :catch_d3

    :goto_c4
    :try_start_c4
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$policy$impl$keyguard$CarrierText$StatusMode:[I

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimPukLocked:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_d0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c4 .. :try_end_d0} :catch_d1

    :goto_d0
    return-void

    :catch_d1
    move-exception v0

    goto :goto_d0

    :catch_d3
    move-exception v0

    goto :goto_c4

    :catch_d5
    move-exception v0

    goto :goto_b9

    :catch_d7
    move-exception v0

    goto :goto_ae

    :catch_d9
    move-exception v0

    goto :goto_a3

    :catch_db
    move-exception v0

    goto :goto_98

    :catch_dd
    move-exception v0

    goto :goto_8d

    :catch_df
    move-exception v0

    goto :goto_82

    .line 230
    :catch_e1
    move-exception v0

    goto :goto_6e

    :catch_e3
    move-exception v0

    goto/16 :goto_62

    :catch_e6
    move-exception v0

    goto/16 :goto_56

    :catch_e9
    move-exception v0

    goto/16 :goto_4b

    :catch_ec
    move-exception v0

    goto/16 :goto_40

    :catch_ef
    move-exception v0

    goto/16 :goto_35

    :catch_f2
    move-exception v0

    goto/16 :goto_2a

    :catch_f5
    move-exception v0

    goto/16 :goto_1f

    :catch_f8
    move-exception v0

    goto/16 :goto_14
.end method
