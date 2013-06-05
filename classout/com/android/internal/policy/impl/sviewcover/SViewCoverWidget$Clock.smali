.class public Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;
.super Landroid/widget/LinearLayout;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Clock"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$FormatChangeObserver;
    }
.end annotation


# static fields
.field private static final mAmPmFormat:Ljava/lang/String; = "AA"

.field private static final mTime24HFormat:Ljava/lang/String; = "kk:mm"

.field private static final mTimeFormat:Ljava/lang/String; = "h:mm"


# instance fields
.field private mAmPm:Landroid/widget/TextView;

.field mCalendar:Ljava/util/Calendar;

.field private mClockView:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDayofWeek:Landroid/widget/TextView;

.field private mFormatChangeObserver:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$FormatChangeObserver;

.field private mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIs24HTime:Z

.field private mMonthandDay:Landroid/widget/TextView;

.field private mSamsungNumTypeface:Landroid/graphics/Typeface;

.field private mTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mIs24HTime:Z

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mSamsungNumTypeface:Landroid/graphics/Typeface;

    .line 94
    new-instance v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$1;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    .line 105
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->initClock(Landroid/content/Context;)V

    .line 106
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Clock()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mClockView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;
    .registers 10
    .parameter "context"

    .prologue
    .line 198
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .local v5, result:Ljava/lang/StringBuilder;
    const-string v6, "yyyy"

    .line 200
    .local v6, year:Ljava/lang/String;
    const-string v4, "MM"

    .line 201
    .local v4, month:Ljava/lang/String;
    const-string v0, "dd"

    .line 202
    .local v0, day:Ljava/lang/String;
    const-string v1, "-"

    .line 204
    .local v1, divider:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v2

    .line 205
    .local v2, formatArray:[C
    const/4 v3, 0x0

    .local v3, i:I
    :goto_12
    array-length v7, v2

    if-ge v3, v7, :cond_3b

    .line 206
    aget-char v7, v2, v3

    const/16 v8, 0x79

    if-ne v7, v8, :cond_1e

    .line 207
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :cond_1e
    aget-char v7, v2, v3

    const/16 v8, 0x4d

    if-ne v7, v8, :cond_27

    .line 210
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_27
    aget-char v7, v2, v3

    const/16 v8, 0x64

    if-ne v7, v8, :cond_30

    .line 213
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_30
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    if-eq v3, v7, :cond_38

    .line 216
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 218
    :cond_3b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private initClock(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 110
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    if-nez v1, :cond_a

    .line 111
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    .line 114
    :cond_a
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 116
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    new-instance v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$FormatChangeObserver;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$FormatChangeObserver;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mFormatChangeObserver:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$FormatChangeObserver;

    .line 124
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mFormatChangeObserver:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$FormatChangeObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 127
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mIs24HTime:Z

    .line 129
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mSamsungNumTypeface:Landroid/graphics/Typeface;

    if-nez v1, :cond_5b

    .line 130
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/SAMSUNG_CLOCK_NUMERALS.TTF"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mSamsungNumTypeface:Landroid/graphics/Typeface;

    .line 132
    :cond_5b
    return-void
.end method

.method private onTimeChanged()V
    .registers 6

    .prologue
    .line 159
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 160
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mIs24HTime:Z

    if-eqz v2, :cond_82

    .line 161
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mTime:Landroid/widget/TextView;

    const-string v3, "kk:mm"

    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    :cond_25
    :goto_25
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    const-string v3, "AA"

    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 171
    const-string v0, ""

    .line 172
    .local v0, dateFormat:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, value:Ljava/lang/String;
    const-string v2, "yyyy-MM-dd"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    const-string v2, "MM-dd-yyyy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 174
    :cond_50
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    const v3, 0x10400de

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    :cond_59
    :goto_59
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mDayofWeek:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    const v4, 0x10400dd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mMonthandDay:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mClockView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->getSingleTTSMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 183
    return-void

    .line 164
    .end local v0           #dateFormat:Ljava/lang/String;
    .end local v1           #value:Ljava/lang/String;
    :cond_82
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mTime:Landroid/widget/TextView;

    const-string v3, "h:mm"

    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_25

    .line 175
    .restart local v0       #dateFormat:Ljava/lang/String;
    .restart local v1       #value:Ljava/lang/String;
    :cond_9a
    const-string v2, "dd-MM-yyyy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 176
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    const v3, 0x10400df

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_59
.end method


# virtual methods
.method public getSingleTTSMessage()Ljava/lang/String;
    .registers 9

    .prologue
    .line 223
    const-string v0, ""

    .line 225
    .local v0, TTSMessage:Ljava/lang/String;
    const-string v1, ""

    .line 226
    .local v1, dateFormat:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 227
    .local v4, value:Ljava/lang/String;
    const-string v5, "yyyy-MM-dd"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    const-string v5, "MM-dd-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 228
    :cond_1a
    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    const v6, 0x10400d7

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 232
    :cond_23
    :goto_23
    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 235
    .local v2, dateText:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 236
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mIs24HTime:Z

    if-eqz v5, :cond_66

    .line 237
    const-string v5, "kk:mm"

    iget-object v6, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, mTTSTime:Ljava/lang/String;
    :goto_42
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    return-object v0

    .line 229
    .end local v2           #dateText:Ljava/lang/CharSequence;
    .end local v3           #mTTSTime:Ljava/lang/String;
    :cond_54
    const-string v5, "dd-MM-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 230
    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    const v6, 0x10400d8

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_23

    .line 239
    .restart local v2       #dateText:Ljava/lang/CharSequence;
    :cond_66
    const-string v5, "h:mm"

    iget-object v6, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 240
    .restart local v3       #mTTSTime:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_42
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 147
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 148
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->onTimeChanged()V

    .line 149
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 153
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 154
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mFormatChangeObserver:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$FormatChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 156
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 136
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 137
    const v0, 0x10203f9

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mClockView:Landroid/widget/LinearLayout;

    .line 138
    const v0, 0x10203fa

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mTime:Landroid/widget/TextView;

    .line 139
    const v0, 0x10203fb

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    .line 140
    const v0, 0x10203fc

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mDayofWeek:Landroid/widget/TextView;

    .line 141
    const v0, 0x10203fd

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mMonthandDay:Landroid/widget/TextView;

    .line 142
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mSamsungNumTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 143
    return-void
.end method
