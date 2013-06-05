.class public Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;
.super Ljava/lang/Object;
.source "ContextualWidgetMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$4;,
        Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;,
        Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;
    }
.end annotation


# static fields
.field static final APPWIDGET_HOST_ID:I = 0x4b455947

.field private static final DBG:Z = true

.field private static final MSG_MISSED_EVENT_ADDED:I = 0x12c0

.field private static final MSG_MISSED_EVENT_REMOVED:I = 0x12ca

.field private static final MSG_MUSIC_WIDGET_ADDED:I = 0x12d4

.field private static final MSG_MUSIC_WIDGET_REMOVED:I = 0x12de

.field private static final MSG_REMOTE_WIDGET_ADDED:I = 0x12e8

.field private static final MSG_REMOTE_WIDGET_REMOVED:I = 0x12f2

.field private static final MSG_SEC_MUSIC_WIDGET_ADDED:I = 0x12fc

.field private static final MSG_SEC_MUSIC_WIDGET_REMOVED:I = 0x1306

.field private static final TAG:Ljava/lang/String; = "ContexualWidgetMonitor"

.field private static sInstance:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;


# instance fields
.field private final CONTEXTUAL_WIDGET_RESET_DELAY:J

.field private final MISSED_EVENT_ADDED:Ljava/lang/String;

.field private final MISSED_EVENT_REMOVED:Ljava/lang/String;

.field private final MMS_PACKAGE:Ljava/lang/String;

.field private final MUSIC_WIDGET_HIDE:Ljava/lang/String;

.field private final MUSIC_WIDGET_SHOW:Ljava/lang/String;

.field private final PHONE_PACKAGE:Ljava/lang/String;

.field private final REMOTE_ADDED:Ljava/lang/String;

.field private final REMOTE_REMOVED:Ljava/lang/String;

.field private final SEC_MUSIC_WIDGET_HIDE:Ljava/lang/String;

.field private final SEC_MUSIC_WIDGET_SHOW:Ljava/lang/String;

.field private mAlreadyAddedWidgetId:I

.field private mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallbacks:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

.field private mContext:Landroid/content/Context;

.field private mDefaultMissedWidget:Landroid/content/ComponentName;

.field private mDefaultMusicWidget:Landroid/content/ComponentName;

.field private mDefaultRemoteWidget:Landroid/content/ComponentName;

.field private mDefaultSecMusicWidget:Landroid/content/ComponentName;

.field private final mHandler:Landroid/os/Handler;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mResetContextualWidgetRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 199
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-string v2, "com.android.phone"

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->PHONE_PACKAGE:Ljava/lang/String;

    .line 70
    const-string v2, "com.android.mms"

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->MMS_PACKAGE:Ljava/lang/String;

    .line 72
    const-string v2, "com.android.server.NotificationManagerService.NotificationArrived"

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->MISSED_EVENT_ADDED:Ljava/lang/String;

    .line 74
    const-string v2, "com.android.server.NotificationManagerService.NotificationRemoved"

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->MISSED_EVENT_REMOVED:Ljava/lang/String;

    .line 76
    const-string v2, "com.sec.android.app.music.intent.action.SHOW_CONTEXTUAL_WIDGET"

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->MUSIC_WIDGET_SHOW:Ljava/lang/String;

    .line 78
    const-string v2, "com.sec.android.app.music.intent.action.HIDE_CONTEXTUAL_WIDGET"

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->MUSIC_WIDGET_HIDE:Ljava/lang/String;

    .line 80
    const-string v2, "com.android.internal.policy.impl.keyguard.sec.REMOTE_ADDED"

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->REMOTE_ADDED:Ljava/lang/String;

    .line 82
    const-string v2, "com.android.internal.policy.impl.keyguard.sec.REMOTE_REMOVED"

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->REMOTE_REMOVED:Ljava/lang/String;

    .line 84
    const-string v2, "com.samsung.music.intent.action.SHOW_CONTEXTUAL_WIDGET"

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->SEC_MUSIC_WIDGET_SHOW:Ljava/lang/String;

    .line 86
    const-string v2, "com.samsung.music.intent.action.HIDE_CONTEXTUAL_WIDGET"

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->SEC_MUSIC_WIDGET_HIDE:Ljava/lang/String;

    .line 114
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 167
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$2;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;

    .line 197
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAlreadyAddedWidgetId:I

    .line 425
    const-wide/16 v2, 0x12c

    iput-wide v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->CONTEXTUAL_WIDGET_RESET_DELAY:J

    .line 427
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$3;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mResetContextualWidgetRunnable:Ljava/lang/Runnable;

    .line 200
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mContext:Landroid/content/Context;

    .line 201
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 203
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->wipeContextualWidgets()V

    .line 205
    new-instance v2, Landroid/appwidget/AppWidgetHost;

    const v3, 0x4b455947

    invoke-direct {v2, p1, v3}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 206
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 209
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 210
    .local v1, res:Landroid/content/res/Resources;
    new-instance v2, Landroid/content/ComponentName;

    const v3, 0x10408b6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x10408b7

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultMissedWidget:Landroid/content/ComponentName;

    .line 215
    new-instance v2, Landroid/content/ComponentName;

    const v3, 0x10408b8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x10408b9

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultMusicWidget:Landroid/content/ComponentName;

    .line 220
    new-instance v2, Landroid/content/ComponentName;

    const v3, 0x10408ba

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x10408bb

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultRemoteWidget:Landroid/content/ComponentName;

    .line 225
    new-instance v2, Landroid/content/ComponentName;

    const v3, 0x10408c0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x10408c1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultSecMusicWidget:Landroid/content/ComponentName;

    .line 229
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 230
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    const-string v2, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    const-string v2, "com.sec.android.app.music.intent.action.SHOW_CONTEXTUAL_WIDGET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    const-string v2, "com.sec.android.app.music.intent.action.HIDE_CONTEXTUAL_WIDGET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    const-string v2, "com.android.internal.policy.impl.keyguard.sec.REMOTE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    const-string v2, "com.android.internal.policy.impl.keyguard.sec.REMOTE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    const-string v2, "com.samsung.music.intent.action.SHOW_CONTEXTUAL_WIDGET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    const-string v2, "com.samsung.music.intent.action.HIDE_CONTEXTUAL_WIDGET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 240
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->handleMissedEventUpdate()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->handleMusicWidgetUpdate(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->handleRemoteWidgetUpdate(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->handleSecMusicWidgetUpdate(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    return-object v0
.end method

.method private addContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V
    .registers 4
    .parameter "type"

    .prologue
    .line 305
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$4;->$SwitchMap$com$android$internal$policy$impl$keyguard$sec$ContextualWidgetMonitor$ContextualWidget:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_24

    .line 321
    :goto_b
    return-void

    .line 307
    :pswitch_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultMissedWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->appWidget(Landroid/content/ComponentName;)V

    goto :goto_b

    .line 310
    :pswitch_12
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultMusicWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->appWidget(Landroid/content/ComponentName;)V

    goto :goto_b

    .line 313
    :pswitch_18
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultRemoteWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->appWidget(Landroid/content/ComponentName;)V

    goto :goto_b

    .line 316
    :pswitch_1e
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultSecMusicWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->appWidget(Landroid/content/ComponentName;)V

    goto :goto_b

    .line 305
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_c
        :pswitch_12
        :pswitch_18
        :pswitch_1e
    .end packed-switch
.end method

.method private appWidget(Landroid/content/ComponentName;)V
    .registers 9
    .parameter "widgetComponentName"

    .prologue
    .line 374
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->getWidgetId(Landroid/content/ComponentName;)I

    move-result v2

    .line 375
    .local v2, widgetId:I
    if-eqz v2, :cond_12

    .line 376
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    if-eqz v3, :cond_f

    .line 377
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    invoke-interface {v3, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;->moveToContextualWidget(I)V

    .line 378
    :cond_f
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAlreadyAddedWidgetId:I

    .line 404
    :goto_11
    return-void

    .line 381
    :cond_12
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAlreadyAddedWidgetId:I

    .line 385
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->getContextualWidgetId(Landroid/content/ComponentName;)I

    move-result v0

    .line 387
    .local v0, contextualWidgetId:I
    if-nez v0, :cond_26

    .line 388
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 390
    :try_start_21
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v3, v0, p1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_26} :catch_41

    .line 399
    :cond_26
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->removeContextualWidget(I)Z

    .line 400
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->addContextualWidget(I)Z

    .line 402
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mResetContextualWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 403
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mResetContextualWidgetRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_11

    .line 391
    :catch_41
    move-exception v1

    .line 392
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "ContexualWidgetMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error when trying to bind default AppWidget: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v3, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_11
.end method

.method private getContextualWidgetId(Landroid/content/ComponentName;)I
    .registers 8
    .parameter "widgetComponentName"

    .prologue
    const/4 v3, 0x0

    .line 344
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getContextualWidgets()[I

    move-result-object v0

    .line 345
    .local v0, contextualWidgetIds:[I
    if-nez v0, :cond_a

    .line 354
    :cond_9
    :goto_9
    return v3

    .line 347
    :cond_a
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    array-length v4, v0

    if-ge v1, v4, :cond_9

    .line 348
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    aget v5, v0, v1

    invoke-virtual {v4, v5}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    .line 350
    .local v2, widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v2, :cond_23

    iget-object v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 351
    aget v3, v0, v1

    goto :goto_9

    .line 347
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;
    .registers 2
    .parameter "context"

    .prologue
    .line 274
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->sInstance:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    if-nez v0, :cond_b

    .line 275
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->sInstance:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    .line 277
    :cond_b
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->sInstance:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    return-object v0
.end method

.method private getWidgetId(Landroid/content/ComponentName;)I
    .registers 8
    .parameter "widgetComponentName"

    .prologue
    const/4 v3, 0x0

    .line 359
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v1

    .line 360
    .local v1, widgetIds:[I
    if-nez v1, :cond_a

    .line 368
    :cond_9
    :goto_9
    return v3

    .line 362
    :cond_a
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    array-length v4, v1

    if-ge v0, v4, :cond_9

    .line 363
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    aget v5, v1, v0

    invoke-virtual {v4, v5}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    .line 364
    .local v2, widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v2, :cond_23

    iget-object v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 365
    aget v3, v1, v0

    goto :goto_9

    .line 362
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method private handleMissedEventUpdate()V
    .registers 2

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->isMissedEvent()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 267
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->missedWidget:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->addContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    .line 271
    :goto_b
    return-void

    .line 269
    :cond_c
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->missedWidget:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->removeContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    goto :goto_b
.end method

.method private handleMusicWidgetUpdate(Z)V
    .registers 3
    .parameter "isPlaying"

    .prologue
    .line 250
    if-eqz p1, :cond_8

    .line 251
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->musicWidget:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->addContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    .line 255
    :goto_7
    return-void

    .line 253
    :cond_8
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->musicWidget:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->removeContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    goto :goto_7
.end method

.method private handleRemoteWidgetUpdate(Z)V
    .registers 3
    .parameter "added"

    .prologue
    .line 243
    if-eqz p1, :cond_8

    .line 244
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->remoteWidget:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->addContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    .line 247
    :goto_7
    return-void

    .line 246
    :cond_8
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->remoteWidget:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->removeContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    goto :goto_7
.end method

.method private handleSecMusicWidgetUpdate(Z)V
    .registers 3
    .parameter "isPlaying"

    .prologue
    .line 258
    if-eqz p1, :cond_8

    .line 259
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->secMusicWidget:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->addContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    .line 263
    :goto_7
    return-void

    .line 261
    :cond_8
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->secMusicWidget:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->removeContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    goto :goto_7
.end method

.method private removeContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V
    .registers 4
    .parameter "type"

    .prologue
    .line 324
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$4;->$SwitchMap$com$android$internal$policy$impl$keyguard$sec$ContextualWidgetMonitor$ContextualWidget:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_24

    .line 340
    :goto_b
    return-void

    .line 326
    :pswitch_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultMissedWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->removeWidget(Landroid/content/ComponentName;)V

    goto :goto_b

    .line 329
    :pswitch_12
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultMusicWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->removeWidget(Landroid/content/ComponentName;)V

    goto :goto_b

    .line 332
    :pswitch_18
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultRemoteWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->removeWidget(Landroid/content/ComponentName;)V

    goto :goto_b

    .line 335
    :pswitch_1e
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultSecMusicWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->removeWidget(Landroid/content/ComponentName;)V

    goto :goto_b

    .line 324
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_c
        :pswitch_12
        :pswitch_18
        :pswitch_1e
    .end packed-switch
.end method

.method private removeWidget(Landroid/content/ComponentName;)V
    .registers 8
    .parameter "widgetComponentName"

    .prologue
    .line 408
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->getWidgetId(Landroid/content/ComponentName;)I

    move-result v0

    .line 409
    .local v0, alreadyAddedWidgetId:I
    if-eqz v0, :cond_9

    .line 410
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAlreadyAddedWidgetId:I

    .line 414
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->getContextualWidgetId(Landroid/content/ComponentName;)I

    move-result v1

    .line 416
    .local v1, widgetId:I
    if-eqz v1, :cond_29

    .line 417
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 418
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->removeContextualWidget(I)Z

    .line 420
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mResetContextualWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 421
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mResetContextualWidgetRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 423
    :cond_29
    return-void
.end method


# virtual methods
.method public getTargetWidgetId()I
    .registers 2

    .prologue
    .line 437
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAlreadyAddedWidgetId:I

    return v0
.end method

.method public isMissedEvent()Z
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 290
    const/4 v2, 0x0

    .line 291
    .local v2, mNM:Landroid/app/NotificationManager;
    const/4 v0, 0x0

    .line 292
    .local v0, CallNotiInfo:Landroid/app/NotificationInfo;
    const/4 v1, 0x0

    .line 294
    .local v1, MsgNotiInfo:Landroid/app/NotificationInfo;
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_26

    .line 295
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #mNM:Landroid/app/NotificationManager;
    check-cast v2, Landroid/app/NotificationManager;

    .line 296
    .restart local v2       #mNM:Landroid/app/NotificationManager;
    const-string v5, "com.android.phone"

    invoke-virtual {v2, v5, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v0

    .line 297
    const-string v5, "com.android.mms"

    const/16 v6, 0x7b

    invoke-virtual {v2, v5, v6}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v1

    .line 301
    if-nez v0, :cond_25

    if-eqz v1, :cond_26

    :cond_25
    move v3, v4

    :cond_26
    return v3
.end method

.method public registerCallback(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    .line 286
    return-void
.end method

.method public removeCallback()V
    .registers 2

    .prologue
    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    .line 282
    return-void
.end method
