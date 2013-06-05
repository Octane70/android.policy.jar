.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$11;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->startUnlockServiceForSPC()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field deviceUnLockService:Lcom/android/internal/policy/impl/DeviceUnLockService;

.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V
    .registers 2
    .parameter

    .prologue
    .line 3273
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$11;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .parameter "className"
    .parameter "binder"

    .prologue
    .line 3278
    :try_start_0
    check-cast p2, Lcom/android/internal/policy/impl/DeviceUnLockService$LocalBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/android/internal/policy/impl/DeviceUnLockService$LocalBinder;->getLocalAppMainService()Lcom/android/internal/policy/impl/DeviceUnLockService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$11;->deviceUnLockService:Lcom/android/internal/policy/impl/DeviceUnLockService;

    .line 3280
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$11;->deviceUnLockService:Lcom/android/internal/policy/impl/DeviceUnLockService;

    if-eqz v1, :cond_16

    .line 3281
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$11;->deviceUnLockService:Lcom/android/internal/policy/impl/DeviceUnLockService;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$11;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/DeviceUnLockService;->setKeyguardViewMediator(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 3289
    :goto_15
    return-void

    .line 3283
    :cond_16
    const-string v1, "SamsungWindowManager"

    const-string v2, "In lockServiceConnection mKeyguardMediator in null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_15

    .line 3285
    :catch_1e
    move-exception v0

    .line 3286
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SamsungWindowManager"

    const-string v2, "Only to handle any unexcpted condition not interpt the default behaiour"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "className"

    .prologue
    .line 3292
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$11;->deviceUnLockService:Lcom/android/internal/policy/impl/DeviceUnLockService;

    if-eqz v0, :cond_a

    .line 3293
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$11;->deviceUnLockService:Lcom/android/internal/policy/impl/DeviceUnLockService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/DeviceUnLockService;->setKeyguardViewMediator(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 3295
    :cond_a
    return-void
.end method
