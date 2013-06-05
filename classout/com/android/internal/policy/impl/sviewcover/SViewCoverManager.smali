.class public Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;
.super Ljava/lang/Object;
.source "SViewCoverManager.java"


# static fields
.field public static final ACTION_CLEAR_COVER_OPEN:Ljava/lang/String; = "com.samsung.cover.OPEN"

.field public static final ACTION_CLEAR_COVER_STATE_CHANGE:Ljava/lang/String; = "com.samsung.cover.STATE_CHANGE"

.field private static final DEBUG:Z = true

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final MESSAGE_SHOW:I = 0x2

.field private static final SVIEW_COVER_DISPLAY_TIMEOUT_DEFAULT:I = 0x1f40

.field private static final TAG:Ljava/lang/String; = "SViewCoverManager"


# instance fields
.field private isAutoUnlock:I

.field private mContext:Landroid/content/Context;

.field private mCoverChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mGoToSleepRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mIsCoverOpen:Z

.field private mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

.field private mPMS:Landroid/os/IPowerManager;

.field private mPhoneState:I

.field private mSViewCoverDialog:Landroid/app/Dialog;

.field private mShowingCoverUI:Z

.field private mSuppressCoverUI:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .registers 6
    .parameter "context"
    .parameter "keyguardViewMediator"

    .prologue
    const/4 v2, 0x0

    .line 152
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSuppressCoverUI:Z

    .line 79
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShowingCoverUI:Z

    .line 80
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsCoverOpen:Z

    .line 81
    iput v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPhoneState:I

    .line 82
    iput v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->isAutoUnlock:I

    .line 84
    new-instance v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$1;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mGoToSleepRunnable:Ljava/lang/Runnable;

    .line 95
    new-instance v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$2;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCoverChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 139
    new-instance v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$3;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    .line 153
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContext:Landroid/content/Context;

    .line 154
    iput-object p2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    .line 156
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPMS:Landroid/os/IPowerManager;

    .line 158
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 159
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.samsung.cover.OPEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCoverChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/os/IPowerManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPMS:Landroid/os/IPowerManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSuppressCoverUI:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSuppressCoverUI:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPhoneState:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsCoverOpen:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShowingCoverUI:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mGoToSleepRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->handleHide()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->handleShow()V

    return-void
.end method

.method private createDialog()Landroid/app/Dialog;
    .registers 11

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 167
    const-string v4, "SViewCoverManager"

    const-string v5, "in createDialog of SViewCover "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v0, Landroid/app/Dialog;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 170
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0, v8}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 171
    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 172
    const v4, 0x10900d4

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 174
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const-string v5, "SViewCover"

    invoke-virtual {v4, v5}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 175
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x832

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 176
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v6, 0x400

    or-int/2addr v5, v6

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 177
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v9, v9}, Landroid/view/Window;->setLayout(II)V

    .line 178
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0xc00

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 180
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 182
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "automatic_unlock"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 183
    .local v1, isAutoUnlock:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v2

    .line 184
    .local v2, isSecureLock:Z
    if-nez v2, :cond_75

    if-ne v1, v8, :cond_75

    .line 185
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x48

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 189
    :cond_75
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 190
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 191
    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 192
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 193
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    return-object v0
.end method

.method private handleHide()V
    .registers 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1d

    .line 240
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mGoToSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 241
    const-string v0, "SViewCoverManager"

    const-string v1, "handleHide( hide SViewCover)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverDialog:Landroid/app/Dialog;

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShowingCoverUI:Z

    .line 247
    :cond_1d
    return-void
.end method

.method private handleShow()V
    .registers 5

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSuppressCoverUI:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsCoverOpen:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShowingCoverUI:Z

    if-nez v0, :cond_10

    iget v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPhoneState:I

    if-eqz v0, :cond_4f

    .line 223
    :cond_10
    const-string v0, "SViewCoverManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleShow( not show SViewCover) mSuppressCoverUI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSuppressCoverUI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsCoverOpen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsCoverOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mShowingCoverUI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShowingCoverUI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPhoneState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPhoneState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_4e
    :goto_4e
    return-void

    .line 227
    :cond_4f
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverDialog:Landroid/app/Dialog;

    if-nez v0, :cond_4e

    .line 228
    const-string v0, "SViewCoverManager"

    const-string v1, "handleShow( show SViewCover)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverDialog:Landroid/app/Dialog;

    .line 230
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShowingCoverUI:Z

    .line 233
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mGoToSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 234
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mGoToSleepRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4e
.end method


# virtual methods
.method public isShowing()Z
    .registers 2

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShowingCoverUI:Z

    return v0
.end method

.method public updateCoverState(Z)V
    .registers 4
    .parameter "isCoverOpen"

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsCoverOpen:Z

    .line 201
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsCoverOpen:Z

    if-eqz v0, :cond_14

    .line 203
    const-string v0, "SViewCoverManager"

    const-string v1, "updateCoverState( mIsCoverOpen is true. dismiss SViewCover)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 210
    :goto_13
    return-void

    .line 207
    :cond_14
    const-string v0, "SViewCoverManager"

    const-string v1, "updateCoverState( mIsCoverOpen is false. show SViewCover)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_13
.end method

.method public updateSupressCover(Z)V
    .registers 2
    .parameter "isSupress"

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSuppressCoverUI:Z

    .line 214
    return-void
.end method
