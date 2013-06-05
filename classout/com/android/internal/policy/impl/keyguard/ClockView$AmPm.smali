.class Lcom/android/internal/policy/impl/keyguard/ClockView$AmPm;
.super Ljava/lang/Object;
.source "ClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/ClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AmPm"
.end annotation


# instance fields
.field private mAmPmTextView:Landroid/widget/TextView;

.field private mAmString:Ljava/lang/String;

.field private mPmString:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/graphics/Typeface;)V
    .registers 5
    .parameter "parent"
    .parameter "tf"

    .prologue
    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockView$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_e

    if-eqz p2, :cond_e

    .line 100
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockView$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 103
    :cond_e
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, ampm:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockView$AmPm;->mAmString:Ljava/lang/String;

    .line 105
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockView$AmPm;->mPmString:Ljava/lang/String;

    .line 106
    return-void
.end method


# virtual methods
.method setIsMorning(Z)V
    .registers 4
    .parameter "isMorning"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 116
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockView$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView$AmPm;->mAmString:Ljava/lang/String;

    :goto_a
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :cond_d
    return-void

    .line 116
    :cond_e
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView$AmPm;->mPmString:Ljava/lang/String;

    goto :goto_a
.end method

.method setShowAmPm(Z)V
    .registers 4
    .parameter "show"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 110
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockView$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_d

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    :cond_c
    return-void

    .line 110
    :cond_d
    const/16 v0, 0x8

    goto :goto_9
.end method
