.class public Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;
.super Landroid/widget/LinearLayout;
.source "KeyguardShortcutView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShortcutItem"
.end annotation


# instance fields
.field private mClsName:Ljava/lang/String;

.field private mIcon:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

.field private mIntent:Landroid/content/Intent;

.field private mIsDummy:Z

.field private mItemPadding:I

.field private mPkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .registers 17
    .parameter
    .parameter "context"
    .parameter "cn"
    .parameter "isNotDummy"

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    .line 519
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 521
    if-nez p4, :cond_83

    const/4 v0, 0x1

    :goto_8
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIsDummy:Z

    .line 523
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 524
    .local v9, inflater:Landroid/view/LayoutInflater;
    const v0, 0x1090085

    const/4 v1, 0x1

    invoke-virtual {v9, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 526
    const v0, 0x1020380

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 527
    .local v10, mRoot:Landroid/widget/LinearLayout;
    const v0, 0x1020006

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    .line 529
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mItemPadding:I

    .line 536
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIconHeight:I
    invoke-static {p1, v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$502(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;I)I

    move-result v0

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIconWidth:I
    invoke-static {p1, v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$402(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;I)I

    .line 542
    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->DBG:Z
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$600(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 543
    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIconWidth ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIconWidth:I
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_66
    #calls: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->getLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    invoke-static {p1, p3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$700(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    .line 546
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_85

    .line 547
    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->DBG:Z
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$600(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 548
    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "There\'s no activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_7f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    .line 616
    :goto_82
    return-void

    .line 521
    .end local v9           #inflater:Landroid/view/LayoutInflater;
    .end local v10           #mRoot:Landroid/widget/LinearLayout;
    :cond_83
    const/4 v0, 0x0

    goto :goto_8

    .line 554
    .restart local v9       #inflater:Landroid/view/LayoutInflater;
    .restart local v10       #mRoot:Landroid/widget/LinearLayout;
    :cond_85
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mPkgName:Ljava/lang/String;

    .line 555
    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mClsName:Ljava/lang/String;

    .line 557
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 558
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$800()Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$900()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" and class=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 563
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_ef

    .line 564
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 565
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->setBadgeCount(I)V

    .line 567
    :cond_ec
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 572
    .end local v7           #c:Landroid/database/Cursor;
    :cond_ef
    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$1000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    .line 573
    .local v11, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-nez v11, :cond_110

    .line 574
    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->DBG:Z
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$600(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Z

    move-result v0

    if-eqz v0, :cond_10b

    .line 575
    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "There\'s no activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_10b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    goto/16 :goto_82

    .line 579
    :cond_110
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    invoke-virtual {p1, v11}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->getFullResIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    invoke-static {p1, v1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$1100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 580
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 583
    :try_start_124
    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$1000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 585
    .local v6, aInfo:Landroid/content/pm/ActivityInfo;
    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIsTouchExplorationEnabled:Z
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$1200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Z

    move-result v0

    if-nez v0, :cond_164

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$1000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mContext:Landroid/content/Context;

    const v2, 0x1040774

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_15e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_124 .. :try_end_15e} :catch_190

    .line 615
    .end local v6           #aInfo:Landroid/content/pm/ActivityInfo;
    :goto_15e
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->setFocusableInTouchMode(Z)V

    goto/16 :goto_82

    .line 589
    .restart local v6       #aInfo:Landroid/content/pm/ActivityInfo;
    :cond_164
    :try_start_164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$1000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mContext:Landroid/content/Context;

    const v2, 0x1040775

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_18f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_164 .. :try_end_18f} :catch_190

    goto :goto_15e

    .line 594
    .end local v6           #aInfo:Landroid/content/pm/ActivityInfo;
    :catch_190
    move-exception v8

    .line 595
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_15e
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mClsName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemPadding()I
    .registers 2

    .prologue
    .line 619
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mItemPadding:I

    return v0
.end method

.method public getPkgName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public isDummy()Z
    .registers 2

    .prologue
    .line 623
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIsDummy:Z

    return v0
.end method

.method public onPressed(Z)V
    .registers 3
    .parameter "pressed"

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->onPressed(Z)V

    .line 628
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 28
    .parameter "event"

    .prologue
    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->DBG:Z
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$600(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Z

    move-result v19

    if-eqz v19, :cond_1b

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "onTouch()"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIsFirst:Z
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$1300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Z

    move-result v19

    if-nez v19, :cond_2a

    .line 657
    const/16 v19, 0x0

    .line 791
    :goto_29
    return v19

    .line 660
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->isIgnoreTouch:Z
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$1400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Z

    move-result v19

    if-eqz v19, :cond_36

    .line 667
    :cond_36
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    .line 668
    .local v15, touchedEventX:F
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    .line 670
    .local v16, touchedEventY:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$1500(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Landroid/view/animation/AlphaAnimation;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_70

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "faded out"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const/16 v19, 0x0

    goto :goto_29

    .line 675
    :cond_70
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 676
    .local v4, action:I
    packed-switch v4, :pswitch_data_382

    .line 787
    :cond_77
    :goto_77
    const-string v19, "ShortcutWidget"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->setTag(Ljava/lang/Object;)V

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$2300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 791
    const/16 v19, 0x1

    goto :goto_29

    .line 678
    :pswitch_96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "action down"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mStartX:F
    invoke-static {v0, v15}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$1602(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;F)F

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mStartY:F
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$1702(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;F)F

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mDistance:D
    invoke-static/range {v19 .. v21}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$1802(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;D)D

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v20

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->hideOtherShortcuts(Landroid/view/View;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$1900(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;Landroid/view/View;Z)V

    .line 687
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->onPressed(Z)V

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mHelpTextCallback:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$HelpTextCallback;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$2000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    move-result-object v19

    if-eqz v19, :cond_77

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mHelpTextCallback:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$HelpTextCallback;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$2000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    move-result-object v19

    const/16 v20, 0x1

    invoke-interface/range {v19 .. v20}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$HelpTextCallback;->showShortcutHelpText(Z)V

    goto/16 :goto_77

    .line 693
    :pswitch_ff
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mDistance:D
    invoke-static/range {v19 .. v21}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$1802(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;D)D

    goto/16 :goto_77

    .line 696
    :pswitch_10c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "action up/cancel mDistance: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mDistance:D
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$1800(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mFirstBorder:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$2100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mDistance:D
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$1800(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)D

    move-result-wide v21

    cmpg-double v19, v19, v21

    if-gez v19, :cond_170

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mDistance:D
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$1800(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)D

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mSecondBorder:I
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$2200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    cmpg-double v19, v19, v21

    if-ltz v19, :cond_18d

    :cond_170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mDistance:D
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$1800(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)D

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mSecondBorder:I
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$2200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    cmpl-double v19, v19, v21

    if-ltz v19, :cond_1f2

    .line 701
    :cond_18d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIsFirst:Z
    invoke-static/range {v19 .. v20}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$1302(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;Z)Z

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$2300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$2400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v19

    if-eqz v19, :cond_1f2

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/Intent;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mLaunchIntent:Landroid/content/Intent;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$2502(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;Landroid/content/Intent;)Landroid/content/Intent;

    .line 705
    new-instance v19, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$2300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->getUnlockDelay()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 719
    :cond_1f2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIsFirst:Z
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$1300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Z

    move-result v19

    if-eqz v19, :cond_77

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v20

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->hideOtherShortcuts(Landroid/view/View;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$1900(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;Landroid/view/View;Z)V

    .line 721
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->onPressed(Z)V

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mHelpTextCallback:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$HelpTextCallback;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$2000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    move-result-object v19

    if-eqz v19, :cond_77

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mHelpTextCallback:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$HelpTextCallback;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$2000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$HelpTextCallback;->showShortcutHelpText(Z)V

    goto/16 :goto_77

    .line 730
    :pswitch_235
    const/4 v5, 0x0

    .line 731
    .local v5, diffX:I
    const/4 v6, 0x0

    .line 736
    .local v6, diffY:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->getMeasuredWidth()I

    move-result v19

    div-int/lit8 v17, v19, 0x2

    .line 737
    .local v17, viewCenterX:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->getMeasuredHeight()I

    move-result v19

    div-int/lit8 v18, v19, 0x2

    .line 738
    .local v18, viewCenterY:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v5, v0

    .line 739
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v6, v0

    .line 741
    int-to-double v0, v5

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x4000

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v19

    int-to-double v0, v6

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x4000

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v21

    add-double v9, v19, v21

    .line 743
    .local v9, distance_square:D
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    .line 744
    .local v7, distance:D
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->getMeasuredWidth()I

    move-result v19

    mul-int/lit8 v19, v19, 0x3

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-double v13, v0

    .line 745
    .local v13, threshold:D
    div-double v11, v7, v13

    .line 750
    .local v11, mDistanceRatio:D
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->setOpacity(D)V

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mStartX:F
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$1600(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)F

    move-result v19

    sub-float v19, v15, v19

    move/from16 v0, v19

    float-to-int v5, v0

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mStartY:F
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$1700(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)F

    move-result v19

    sub-float v19, v16, v19

    move/from16 v0, v19

    float-to-int v6, v0

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    int-to-double v0, v5

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    int-to-double v0, v6

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4000

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    add-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mDistance:D
    invoke-static/range {v19 .. v21}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$1802(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;D)D

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->DBG:Z
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$600(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Z

    move-result v19

    if-eqz v19, :cond_2fe

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ACTION_MOVE mDistance: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mDistance:D
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$1800(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :cond_2fe
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mDistance:D
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$1800(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)D

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mSecondBorder:I
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$2200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    cmpl-double v19, v19, v21

    if-ltz v19, :cond_77

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIsFirst:Z
    invoke-static/range {v19 .. v20}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$1302(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;Z)Z

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$2300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$2400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v19

    if-eqz v19, :cond_77

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/Intent;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mLaunchIntent:Landroid/content/Intent;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$2502(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;Landroid/content/Intent;)Landroid/content/Intent;

    .line 765
    new-instance v19, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem$2;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$2300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->getUnlockDelay()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_77

    .line 676
    :pswitch_data_382
    .packed-switch 0x0
        :pswitch_96
        :pswitch_10c
        :pswitch_235
        :pswitch_ff
    .end packed-switch
.end method

.method public refreshBadgeCount()V
    .registers 2

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->postInvalidate()V

    .line 649
    return-void
.end method

.method public setBadgeCount(I)V
    .registers 3
    .parameter "count"

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->setBadgeCount(I)V

    .line 645
    return-void
.end method

.method public setOpacity(D)V
    .registers 4
    .parameter "distanceRatio"

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->setDistanceRatio(D)V

    .line 632
    return-void
.end method
