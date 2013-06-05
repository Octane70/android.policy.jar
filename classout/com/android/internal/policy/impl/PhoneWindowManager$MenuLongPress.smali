.class Lcom/android/internal/policy/impl/PhoneWindowManager$MenuLongPress;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 2
    .parameter

    .prologue
    .line 568
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MenuLongPress;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getApplicationNameFromPageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "packageName"

    .prologue
    .line 58
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MenuLongPress;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 61
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_9
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_c} :catch_16

    move-result-object v0

    .line 65
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    :goto_d
    if-eqz v0, :cond_19

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_13
    check-cast v1, Ljava/lang/String;

    .line 66
    .local v1, applicationName:Ljava/lang/String;
    return-object v1

    .line 62
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v1           #applicationName:Ljava/lang/String;
    :catch_16
    move-exception v2

    .line 63
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    goto :goto_d

    .line 65
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_19
    const-string v1, "Unknown"

    goto :goto_13
.end method

.method private isHomeApplication(Ljava/lang/String;)Z
    .registers 8
    .parameter "packageName"

    .prologue
    const/4 v3, 0x0

    .line 31
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MenuLongPress;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 34
    .local v2, res:Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_2a

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_2a

    .line 35
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 36
    .local v0, appFound:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 37
    const/4 v3, 0x1

    .line 40
    .end local v0           #appFound:Ljava/lang/String;
    :cond_2a
    return v3
.end method

.method private isWhitelisted(Ljava/lang/String;)Z
    .registers 4
    .parameter "packageName"

    .prologue
    const/4 v0, 0x1

    .line 46
    const-string v1, "com.android.providers.applications"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 50
    :cond_9
    :goto_9
    return v0

    .line 48
    :cond_a
    const-string v1, "com.sec.android.app.clockpackage"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "android"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "com.sec.android.widgetapp.alarmclock"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "com.sec.phone"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "com.android.defcontainer"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "com.sec.android.app.factorymode"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 50
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MenuLongPress;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MenuLongPress;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v11, v10, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 17
    const-string v4, "activity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 18
    .local v0, activityManager:Landroid/app/ActivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 19
    .local v1, appList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_76

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_76

    .line 20
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 21
    .local v9, taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v4, v9, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$MenuLongPress;->isWhitelisted(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_56

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$MenuLongPress;->isHomeApplication(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_59

    const-string v7, "PhoneWindowManager stopped package "

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Killed : "

    :try_start_44
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MenuLongPress;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v0, v9, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    const v1, 0x1

    invoke-interface {v3, v0, v1}, Landroid/app/IActivityManager;->removeTask(II)Z

    goto :goto_5d

    invoke-interface {v3, v5}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_56} :catch_7c

    :cond_56
    const-string v2, "White listed : "

    goto :goto_5d

    :cond_59
    const/4 v1, 0x1

    iput-boolean v1, v10, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    goto :goto_76

    :goto_5d
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$MenuLongPress;->getApplicationNameFromPageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    invoke-static {v11, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_76
    :goto_76
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v10, v7, v7, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    return-void

    :catch_7c
    move-exception v5

    goto :goto_76
.end method
