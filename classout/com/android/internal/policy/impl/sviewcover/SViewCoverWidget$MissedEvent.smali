.class public Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;
.super Landroid/widget/LinearLayout;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MissedEvent"
.end annotation


# static fields
.field private static final MISSED_EVENT_ARRIVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationArrived"

.field private static final MISSED_EVENT_REMOVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationRemoved"


# instance fields
.field private final CALL_PKG:Ljava/lang/String;

.field private final EMAIL_PKG:Ljava/lang/String;

.field private final MISSED_EVENT_UPDATE:I

.field private MSG_PKG:Ljava/lang/String;

.field private final REQ_INDEX_CALL_EMAIL:I

.field private final REQ_INDEX_MSG:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMissedCallCount:I

.field private mMissedCallMsgView:Landroid/view/View;

.field private mMissedCallNotiInfo:Landroid/app/NotificationInfo;

.field private mMissedCallTextView:Landroid/widget/TextView;

.field private mMissedMsgCount:I

.field private mMissedMsgTextView:Landroid/widget/TextView;

.field private mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 287
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 252
    const-string v1, "com.android.phone"

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->CALL_PKG:Ljava/lang/String;

    .line 253
    const-string v1, "com.android.mms"

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->MSG_PKG:Ljava/lang/String;

    .line 254
    const-string v1, "com.android.email"

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->EMAIL_PKG:Ljava/lang/String;

    .line 260
    const/16 v1, 0x12c2

    iput v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->MISSED_EVENT_UPDATE:I

    .line 261
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->REQ_INDEX_CALL_EMAIL:I

    .line 262
    const/16 v1, 0x7b

    iput v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->REQ_INDEX_MSG:I

    .line 264
    iput v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    .line 265
    iput v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    .line 275
    new-instance v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$1;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mHandler:Landroid/os/Handler;

    .line 289
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    .line 290
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 291
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    const-string v1, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    new-instance v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$2;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 304
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MissedEvent ()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 306
    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->handleMissedEventUpdate()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getNumMissedEvent(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;)I
    .registers 7
    .parameter "mode"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 381
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 383
    .local v0, mNM:Landroid/app/NotificationManager;
    if-nez v0, :cond_f

    .line 403
    :cond_e
    :goto_e
    return v1

    .line 386
    :cond_f
    sget-object v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;

    if-ne p1, v2, :cond_52

    .line 387
    const-string v2, "com.android.phone"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    .line 394
    :cond_1b
    :goto_1b
    sget-object v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;

    if-ne p1, v2, :cond_6e

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_6e

    .line 395
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$000()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 396
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumMissedEvent(missed Call Count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget v3, v3, Landroid/app/NotificationInfo;->missedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_4d
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto :goto_e

    .line 388
    :cond_52
    sget-object v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;

    if-ne p1, v2, :cond_61

    .line 389
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->MSG_PKG:Ljava/lang/String;

    const/16 v3, 0x7b

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1b

    .line 390
    :cond_61
    sget-object v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;

    if-ne p1, v2, :cond_1b

    .line 391
    const-string v2, "com.android.email"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1b

    .line 398
    :cond_6e
    sget-object v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;

    if-eq p1, v2, :cond_76

    sget-object v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;

    if-ne p1, v2, :cond_e

    :cond_76
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_e

    .line 399
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$000()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 400
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumMissedEvent(Unread Msg Count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget v3, v3, Landroid/app/NotificationInfo;->missedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_a4
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto/16 :goto_e
.end method

.method private handleMissedEventUpdate()V
    .registers 1

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->updateMissedEvent()V

    .line 335
    return-void
.end method

.method private updateMissedEvent()V
    .registers 10

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    const/16 v5, 0x3e7

    .line 338
    const/4 v2, 0x0

    .line 339
    .local v2, nCallCount:I
    const/4 v3, 0x0

    .line 340
    .local v3, nMsgCount:I
    const/4 v0, 0x0

    .line 341
    .local v0, bUpdatedCallCount:Z
    const/4 v1, 0x0

    .line 343
    .local v1, bUpdatedMsgCount:Z
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    if-nez v4, :cond_12

    .line 377
    :cond_11
    :goto_11
    return-void

    .line 346
    :cond_12
    sget-object v4, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->getNumMissedEvent(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;)I

    move-result v2

    .line 347
    if-le v2, v5, :cond_a1

    .line 348
    iput v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    .line 352
    :goto_1c
    sget-object v4, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->getNumMissedEvent(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;)I

    move-result v3

    .line 353
    if-le v3, v5, :cond_a5

    .line 354
    iput v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    .line 358
    :goto_26
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$000()Z

    move-result v4

    if-eqz v4, :cond_58

    .line 359
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMissedEvent(missed Call Count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", bUpdatedCallCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_58
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$000()Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 362
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMissedEvent(Unread Msg Count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", bUpdatedMsgCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_8a
    iget v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    if-nez v4, :cond_a9

    .line 365
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    :goto_93
    iget v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    if-nez v4, :cond_ba

    .line 371
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    :goto_9c
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->getCallMsgTTSMessage()V

    goto/16 :goto_11

    .line 350
    :cond_a1
    iput v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    goto/16 :goto_1c

    .line 356
    :cond_a5
    iput v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    goto/16 :goto_26

    .line 367
    :cond_a9
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 368
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_93

    .line 373
    :cond_ba
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 374
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9c
.end method


# virtual methods
.method public getCallMsgTTSMessage()V
    .registers 10

    .prologue
    const v8, 0x10408a3

    const v7, 0x10408a2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 407
    const-string v0, ""

    .line 408
    .local v0, TTSMessage:Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    if-lez v1, :cond_59

    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    if-lez v1, :cond_59

    .line 409
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    const v2, 0x10408a4

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 410
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v8, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 427
    :goto_58
    return-void

    .line 412
    :cond_59
    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    if-le v1, v5, :cond_73

    .line 413
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 414
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_58

    .line 415
    :cond_73
    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    if-le v1, v5, :cond_8d

    .line 416
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 417
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_58

    .line 418
    :cond_8d
    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    if-ne v1, v5, :cond_a0

    .line 419
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    const v2, 0x10408a0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 420
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_58

    .line 421
    :cond_a0
    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    if-ne v1, v5, :cond_b3

    .line 422
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    const v2, 0x10408a1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 423
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_58

    .line 425
    :cond_b3
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    const v2, 0x104089f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_58
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 318
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 319
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->updateMissedEvent()V

    .line 320
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 324
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 325
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 326
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    .line 327
    iput-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    .line 329
    :cond_13
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_19

    .line 330
    iput-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    .line 331
    :cond_19
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 310
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 311
    const v0, 0x1020402

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    .line 312
    const v0, 0x1020401

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    .line 313
    const v0, 0x1020400

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallMsgView:Landroid/view/View;

    .line 314
    return-void
.end method
