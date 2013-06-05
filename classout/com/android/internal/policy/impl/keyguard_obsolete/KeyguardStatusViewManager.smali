.class Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;
.super Ljava/lang/Object;
.source "KeyguardStatusViewManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager$2;,
        Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager$StatusMode;,
        Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager$TransientTextManager;
    }
.end annotation


# static fields
.field public static final ALARM_ICON:I = 0x108002e

.field private static final BATTERY_INFO:I = 0xf

.field public static final BATTERY_LOW_ICON:I = 0x0

.field private static final CARRIER_HELP_TEXT:I = 0xc

.field private static final CARRIER_TEXT:I = 0xb

.field public static final CHARGING_ICON:I = 0x0

.field private static final DEBUG:Z = false

.field private static final HELP_MESSAGE_TEXT:I = 0xd

.field private static final INSTRUCTION_RESET_DELAY:J = 0x7d0L

.field private static final INSTRUCTION_TEXT:I = 0xa

.field public static final LOCK_ICON:I = 0x0

.field private static final OWNER_INFO:I = 0xe

.field private static final TAG:Ljava/lang/String; = "KeyguardStatusView"


# instance fields
.field private mAlarmStatusView:Landroid/widget/TextView;

.field protected mBatteryCharged:Z

.field protected mBatteryIsLow:Z

.field private mBatteryLevel:I

.field private mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

.field private mCarrierHelpText:Ljava/lang/CharSequence;

.field private mCarrierText:Ljava/lang/CharSequence;

.field private mCarrierView:Landroid/widget/TextView;

.field private mContainer:Landroid/view/View;

.field private mDateFormatString:Ljava/lang/String;

.field private mDateView:Landroid/widget/TextView;

.field private mDigitalClock:Lcom/android/internal/widget/DigitalClock;

.field private mEmergencyButtonEnabledBecauseSimLocked:Z

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private final mEmergencyCallButtonEnabledInScreen:Z

.field private mHelpMessageText:Ljava/lang/String;

.field private mInfoCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitorCallback;

.field private mInstructionText:Ljava/lang/String;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfoText:Ljava/lang/CharSequence;

.field private mOwnerInfoView:Landroid/widget/TextView;

.field protected mPhoneState:I

.field private mPlmn:Ljava/lang/CharSequence;

.field private mPluggedIn:Z

.field private mShowingBatteryInfo:Z

.field private mShowingStatus:Z

.field protected mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSpn:Ljava/lang/CharSequence;

.field private mStatus:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager$StatusMode;

.field private mStatus1View:Landroid/widget/TextView;

.field private mTransientTextManager:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager$TransientTextManager;

.field private mTransportView:Lcom/android/internal/widget/TransportControlView;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;Z)V
    .registers 15
    .parameter "view"
    .parameter "updateMonitor"
    .parameter "lockPatternUtils"
    .parameter "callback"
    .parameter "emergencyButtonEnabledInScreen"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 170
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mShowingBatteryInfo:Z

    .line 82
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mPluggedIn:Z

    .line 85
    const/16 v5, 0x64

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mBatteryLevel:I

    .line 621
    new-instance v5, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager$1;-><init>(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitorCallback;

    .line 172
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mContainer:Landroid/view/View;

    .line 173
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x10400d9

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mDateFormatString:Ljava/lang/String;

    .line 174
    iput-object p3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 175
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    .line 176
    iput-object p4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    .line 178
    const v5, 0x1020367

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    .line 179
    const v5, 0x1020063

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    .line 180
    const v5, 0x1020366

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    .line 181
    const v5, 0x1020365

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    .line 182
    const v5, 0x1020379

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    .line 183
    const v5, 0x102036a

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/TransportControlView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mTransportView:Lcom/android/internal/widget/TransportControlView;

    .line 184
    const v5, 0x1020351

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    .line 185
    iput-boolean p5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mEmergencyCallButtonEnabledInScreen:Z

    .line 186
    const v5, 0x1020064

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/DigitalClock;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mDigitalClock:Lcom/android/internal/widget/DigitalClock;

    .line 189
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mTransportView:Lcom/android/internal/widget/TransportControlView;

    if-eqz v5, :cond_8e

    .line 190
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mTransportView:Lcom/android/internal/widget/TransportControlView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/TransportControlView;->setVisibility(I)V

    .line 193
    :cond_8e
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    if-eqz v5, :cond_a4

    .line 194
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    const v6, 0x10404a5

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 195
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setFocusable(Z)V

    .line 199
    :cond_a4
    new-instance v5, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager$TransientTextManager;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    invoke-direct {v5, p0, v6}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager$TransientTextManager;-><init>(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;Landroid/widget/TextView;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mTransientTextManager:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager$TransientTextManager;

    .line 202
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitorCallback;

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitorCallback;)V

    .line 204
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->resetStatusInfo()V

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->refreshDate()V

    .line 206
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->updateOwnerInfo()V

    .line 209
    const/4 v5, 0x5

    new-array v3, v5, [Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    aput-object v5, v3, v7

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    aput-object v5, v3, v8

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    aput-object v6, v3, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    aput-object v6, v3, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    aput-object v6, v3, v5

    .line 211
    .local v3, scrollableViews:[Landroid/view/View;
    move-object v0, v3

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_da
    if-ge v1, v2, :cond_e6

    aget-object v4, v0, v1

    .line 212
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_e3

    .line 213
    invoke-virtual {v4, v8}, Landroid/view/View;->setSelected(Z)V

    .line 211
    :cond_e3
    add-int/lit8 v1, v1, 0x1

    goto :goto_da

    .line 216
    .end local v4           #v:Landroid/view/View;
    :cond_e6
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->getAltTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;Lcom/android/internal/telephony/IccCardConstants$State;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->updateEmergencyCallButtonState(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mShowingBatteryInfo:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mPluggedIn:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;ILjava/lang/CharSequence;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mSpn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method private findViewById(I)Landroid/view/View;
    .registers 3
    .parameter "id"

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getAltTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    .registers 8
    .parameter "icon"

    .prologue
    const/4 v5, 0x0

    .line 373
    const/4 v0, 0x0

    .line 374
    .local v0, string:Ljava/lang/CharSequence;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mShowingBatteryInfo:Z

    if-eqz v1, :cond_3d

    .line 376
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mPluggedIn:Z

    if-eqz v1, :cond_2b

    .line 378
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mBatteryCharged:Z

    if-eqz v1, :cond_27

    const v1, 0x10404ac

    :goto_15
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 380
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    .line 389
    :cond_26
    :goto_26
    return-object v0

    .line 378
    :cond_27
    const v1, 0x10404ab

    goto :goto_15

    .line 381
    :cond_2b
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mBatteryIsLow:Z

    if-eqz v1, :cond_26

    .line 383
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10404ae

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 384
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_26

    .line 387
    :cond_3d
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    goto :goto_26
.end method

.method private getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getPriorityTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    .registers 8
    .parameter "icon"

    .prologue
    const/4 v5, 0x0

    .line 393
    const/4 v0, 0x0

    .line 394
    .local v0, string:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 396
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    .line 397
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    .line 414
    :cond_e
    :goto_e
    return-object v0

    .line 398
    :cond_f
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mShowingBatteryInfo:Z

    if-eqz v1, :cond_4a

    .line 400
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mPluggedIn:Z

    if-eqz v1, :cond_38

    .line 402
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mBatteryCharged:Z

    if-eqz v1, :cond_34

    const v1, 0x10404ac

    :goto_22
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 404
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_e

    .line 402
    :cond_34
    const v1, 0x10404ab

    goto :goto_22

    .line 405
    :cond_38
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mBatteryIsLow:Z

    if-eqz v1, :cond_e

    .line 407
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10404ae

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 408
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_e

    .line 410
    :cond_4a
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->inWidgetMode()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_e

    .line 412
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    goto :goto_e
.end method

.method private getText(I)Ljava/lang/CharSequence;
    .registers 3
    .parameter "resId"

    .prologue
    .line 249
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_3
.end method

.method private inWidgetMode()Z
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mTransportView:Lcom/android/internal/widget/TransportControlView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mTransportView:Lcom/android/internal/widget/TransportControlView;

    invoke-virtual {v0}, Lcom/android/internal/widget/TransportControlView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 7
    .parameter "plmn"
    .parameter "spn"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 670
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2c

    move v0, v2

    .line 671
    .local v0, plmnValid:Z
    :goto_9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2e

    move v1, v2

    .line 672
    .local v1, spnValid:Z
    :goto_10
    if-eqz v0, :cond_30

    if-eqz v1, :cond_30

    .line 673
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 679
    .end local p0
    :cond_2b
    :goto_2b
    return-object p0

    .end local v0           #plmnValid:Z
    .end local v1           #spnValid:Z
    .restart local p0
    :cond_2c
    move v0, v3

    .line 670
    goto :goto_9

    .restart local v0       #plmnValid:Z
    :cond_2e
    move v1, v3

    .line 671
    goto :goto_10

    .line 674
    .restart local v1       #spnValid:Z
    :cond_30
    if-nez v0, :cond_2b

    .line 676
    if-eqz v1, :cond_36

    move-object p0, p1

    .line 677
    goto :goto_2b

    .line 679
    :cond_36
    const-string p0, ""

    goto :goto_2b
.end method

.method private makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .parameter "simMessage"
    .parameter "emergencyCallMessage"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 545
    invoke-static {p1, p2}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 547
    .end local p1
    :cond_c
    return-object p1
.end method

.method private update(ILjava/lang/CharSequence;)V
    .registers 7
    .parameter "what"
    .parameter "string"

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->inWidgetMode()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 269
    packed-switch p1, :pswitch_data_1a

    .line 285
    :goto_9
    :pswitch_9
    return-void

    .line 274
    :pswitch_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mTransientTextManager:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager$TransientTextManager;

    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager$TransientTextManager;->post(Ljava/lang/CharSequence;IJ)V

    goto :goto_9

    .line 283
    :cond_13
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mShowingStatus:Z

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->updateStatusLines(Z)V

    goto :goto_9

    .line 269
    nop

    :pswitch_data_1a
    .packed-switch 0xa
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private updateAlarmInfo()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 333
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v3, :cond_2a

    .line 334
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, nextAlarm:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mShowingStatus:Z

    if-eqz v3, :cond_2b

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2b

    const/4 v1, 0x1

    .line 336
    .local v1, showAlarm:Z
    :goto_16
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    const v4, 0x108002e

    invoke-virtual {v3, v4, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 338
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v1, :cond_2d

    :goto_27
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 340
    .end local v0           #nextAlarm:Ljava/lang/String;
    .end local v1           #showAlarm:Z
    :cond_2a
    return-void

    .restart local v0       #nextAlarm:Ljava/lang/String;
    :cond_2b
    move v1, v2

    .line 335
    goto :goto_16

    .line 338
    .restart local v1       #showAlarm:Z
    :cond_2d
    const/16 v2, 0x8

    goto :goto_27
.end method

.method private updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .registers 8
    .parameter "simState"

    .prologue
    const v5, 0x10404af

    const/4 v4, 0x1

    .line 472
    const/4 v1, 0x0

    .line 473
    .local v1, carrierText:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 474
    .local v0, carrierHelpTextId:I
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    .line 475
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager$StatusMode;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mStatus:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager$StatusMode;

    .line 476
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 477
    sget-object v2, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager$2;->$SwitchMap$com$android$internal$policy$impl$keyguard_obsolete$KeyguardStatusViewManager$StatusMode:[I

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mStatus:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager$StatusMode;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager$StatusMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_b0

    .line 533
    :cond_1e
    :goto_1e
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->setCarrierText(Ljava/lang/CharSequence;)V

    .line 534
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->setCarrierHelpText(I)V

    .line 535
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mPhoneState:I

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->updateEmergencyCallButtonState(I)V

    .line 536
    return-void

    .line 479
    :pswitch_2a
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mSpn:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 480
    goto :goto_1e

    .line 483
    :pswitch_33
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10404c7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 486
    const v0, 0x10404a3

    .line 487
    goto :goto_1e

    .line 494
    :pswitch_48
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 497
    const v0, 0x10404b2

    .line 498
    goto :goto_1e

    .line 501
    :pswitch_5a
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10404b3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 503
    const v0, 0x10404b4

    .line 504
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto :goto_1e

    .line 508
    :pswitch_6b
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 511
    const v0, 0x10404b1

    .line 512
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto :goto_1e

    .line 516
    :pswitch_7f
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10404cb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 519
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto :goto_1e

    .line 523
    :pswitch_93
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10404c9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 526
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isPukUnlockScreenEnable()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 528
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_1e

    .line 477
    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_33
        :pswitch_48
        :pswitch_5a
        :pswitch_6b
        :pswitch_7f
        :pswitch_93
    .end packed-switch
.end method

.method private updateCarrierText()V
    .registers 3

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->inWidgetMode()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    if-eqz v0, :cond_11

    .line 366
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    :cond_11
    return-void
.end method

.method private updateEmergencyCallButtonState(I)V
    .registers 7
    .parameter "phoneState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 611
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    if-eqz v4, :cond_21

    .line 612
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallEnabledWhileSimLocked()Z

    move-result v4

    if-eqz v4, :cond_22

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    if-eqz v4, :cond_22

    move v0, v2

    .line 615
    .local v0, enabledBecauseSimLocked:Z
    :goto_13
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mEmergencyCallButtonEnabledInScreen:Z

    if-nez v4, :cond_19

    if-eqz v0, :cond_24

    :cond_19
    move v1, v2

    .line 616
    .local v1, shown:Z
    :goto_1a
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v3, p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V

    .line 619
    .end local v0           #enabledBecauseSimLocked:Z
    .end local v1           #shown:Z
    :cond_21
    return-void

    :cond_22
    move v0, v3

    .line 612
    goto :goto_13

    .restart local v0       #enabledBecauseSimLocked:Z
    :cond_24
    move v1, v3

    .line 615
    goto :goto_1a
.end method

.method private updateOwnerInfo()V
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 343
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 344
    .local v1, res:Landroid/content/ContentResolver;
    const-string v2, "lock_screen_owner_info_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_37

    .line 346
    .local v0, ownerInfoEnabled:Z
    :goto_12
    if-eqz v0, :cond_39

    const-string v2, "lock_screen_owner_info"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1a
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    .line 348
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    if-eqz v2, :cond_36

    .line 349
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3b

    const/16 v2, 0x8

    :goto_33
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 352
    :cond_36
    return-void

    .end local v0           #ownerInfoEnabled:Z
    :cond_37
    move v0, v3

    .line 344
    goto :goto_12

    .line 346
    .restart local v0       #ownerInfoEnabled:Z
    :cond_39
    const/4 v2, 0x0

    goto :goto_1a

    :cond_3b
    move v2, v3

    .line 350
    goto :goto_33
.end method

.method private updateStatus1()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 355
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    if-eqz v3, :cond_23

    .line 356
    new-instance v0, Llibcore/util/MutableInt;

    invoke-direct {v0, v2}, Llibcore/util/MutableInt;-><init>(I)V

    .line 357
    .local v0, icon:Llibcore/util/MutableInt;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->getPriorityTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 358
    .local v1, string:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    iget v4, v0, Llibcore/util/MutableInt;->value:I

    invoke-virtual {v3, v4, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 360
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mShowingStatus:Z

    if-eqz v4, :cond_24

    :goto_20
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 362
    .end local v0           #icon:Llibcore/util/MutableInt;
    .end local v1           #string:Ljava/lang/CharSequence;
    :cond_23
    return-void

    .line 360
    .restart local v0       #icon:Llibcore/util/MutableInt;
    .restart local v1       #string:Ljava/lang/CharSequence;
    :cond_24
    const/4 v2, 0x4

    goto :goto_20
.end method


# virtual methods
.method public getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager$StatusMode;
    .registers 5
    .parameter "simState"

    .prologue
    .line 428
    if-nez p1, :cond_5

    .line 429
    sget-object v1, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager$StatusMode;->Normal:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager$StatusMode;

    .line 456
    :goto_4
    return-object v1

    .line 432
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_28

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, v1, :cond_15

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v1, :cond_28

    :cond_15
    const/4 v0, 0x1

    .line 437
    .local v0, missingAndNotProvisioned:Z
    :goto_16
    if-eqz v0, :cond_1a

    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 438
    :cond_1a
    sget-object v1, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager$2;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_42

    .line 456
    sget-object v1, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager$StatusMode;

    goto :goto_4

    .line 432
    .end local v0           #missingAndNotProvisioned:Z
    :cond_28
    const/4 v0, 0x0

    goto :goto_16

    .line 440
    .restart local v0       #missingAndNotProvisioned:Z
    :pswitch_2a
    sget-object v1, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager$StatusMode;

    goto :goto_4

    .line 442
    :pswitch_2d
    sget-object v1, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager$StatusMode;->SimMissingLocked:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager$StatusMode;

    goto :goto_4

    .line 444
    :pswitch_30
    sget-object v1, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager$StatusMode;

    goto :goto_4

    .line 446
    :pswitch_33
    sget-object v1, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager$StatusMode;->SimLocked:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager$StatusMode;

    goto :goto_4

    .line 448
    :pswitch_36
    sget-object v1, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager$StatusMode;->SimPukLocked:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager$StatusMode;

    goto :goto_4

    .line 450
    :pswitch_39
    sget-object v1, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager$StatusMode;->Normal:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager$StatusMode;

    goto :goto_4

    .line 452
    :pswitch_3c
    sget-object v1, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager$StatusMode;->SimPermDisabled:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager$StatusMode;

    goto :goto_4

    .line 454
    :pswitch_3f
    sget-object v1, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager$StatusMode;

    goto :goto_4

    .line 438
    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_3c
        :pswitch_3f
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_9

    .line 659
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;->takeEmergencyCallAction()V

    .line 661
    :cond_9
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 290
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mDigitalClock:Lcom/android/internal/widget/DigitalClock;

    if-eqz v0, :cond_9

    .line 298
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mDigitalClock:Lcom/android/internal/widget/DigitalClock;

    invoke-virtual {v0}, Lcom/android/internal/widget/DigitalClock;->updateTime()V

    .line 301
    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitorCallback;)V

    .line 302
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->resetStatusInfo()V

    .line 306
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 307
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10404aa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    .line 309
    :cond_29
    return-void
.end method

.method refreshDate()V
    .registers 4

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    if-eqz v0, :cond_14

    .line 419
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mDateFormatString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    :cond_14
    return-void
.end method

.method resetStatusInfo()V
    .registers 2

    .prologue
    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    .line 313
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->updateStatusLines(Z)V

    .line 314
    return-void
.end method

.method public setCarrierHelpText(I)V
    .registers 4
    .parameter "resId"

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mCarrierHelpText:Ljava/lang/CharSequence;

    .line 245
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mCarrierHelpText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 246
    return-void
.end method

.method setCarrierText(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "string"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    .line 229
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 230
    return-void
.end method

.method public setHelpMessage(II)V
    .registers 6
    .parameter "textResId"
    .parameter "lockIcon"

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 261
    .local v0, tmp:Ljava/lang/CharSequence;
    if-nez v0, :cond_11

    const/4 v1, 0x0

    :goto_7
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mHelpMessageText:Ljava/lang/String;

    .line 262
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mHelpMessageText:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 263
    return-void

    .line 261
    :cond_11
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method setInstructionText(Ljava/lang/String;)V
    .registers 3
    .parameter "string"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    .line 224
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 225
    return-void
.end method

.method setOwnerInfo(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "string"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    .line 234
    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 235
    return-void
.end method

.method updateStatusLines(Z)V
    .registers 2
    .parameter "showStatusLines"

    .prologue
    .line 325
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->mShowingStatus:Z

    .line 326
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->updateAlarmInfo()V

    .line 327
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->updateOwnerInfo()V

    .line 328
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->updateStatus1()V

    .line 329
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->updateCarrierText()V

    .line 330
    return-void
.end method
