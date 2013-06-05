.class Lcom/android/internal/policy/impl/DeviceUnLockService$1;
.super Lcom/android/internal/policy/impl/IDeviceUnlockService$Stub;
.source "DeviceUnLockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/DeviceUnLockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/DeviceUnLockService;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/DeviceUnLockService;)V
    .registers 2
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/internal/policy/impl/DeviceUnLockService$1;->this$0:Lcom/android/internal/policy/impl/DeviceUnLockService;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/IDeviceUnlockService$Stub;-><init>()V

    return-void
.end method

.method private verifyPassword(Ljava/lang/String;)Z
    .registers 7
    .parameter "entry"

    .prologue
    .line 60
    const-string v2, "LocalAppMainServicess"

    const-string v3, "verifyPassword"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :try_start_7
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/internal/policy/impl/DeviceUnLockService$1;->this$0:Lcom/android/internal/policy/impl/DeviceUnLockService;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 63
    .local v1, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 64
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_19

    .line 65
    const/4 v2, 0x1

    .line 71
    .end local v1           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :goto_18
    return v2

    .line 67
    :catch_19
    move-exception v0

    .line 69
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LocalAppMainServicess"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while verifyPassword"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .end local v0           #e:Ljava/lang/Exception;
    :cond_36
    const/4 v2, 0x0

    goto :goto_18
.end method


# virtual methods
.method public isScreenLocked()Z
    .registers 5

    .prologue
    .line 123
    const-string v1, "LocalAppMainServicess"

    const-string v2, "isScreenLocked"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/DeviceUnLockService$1;->this$0:Lcom/android/internal/policy/impl/DeviceUnLockService;

    #getter for: Lcom/android/internal/policy/impl/DeviceUnLockService;->mKeyguardViewMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
    invoke-static {v1}, Lcom/android/internal/policy/impl/DeviceUnLockService;->access$000(Lcom/android/internal/policy/impl/DeviceUnLockService;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    move-result-object v1

    if-eqz v1, :cond_59

    .line 127
    const-string v1, "LocalAppMainServicess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isShowing()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/DeviceUnLockService$1;->this$0:Lcom/android/internal/policy/impl/DeviceUnLockService;

    #getter for: Lcom/android/internal/policy/impl/DeviceUnLockService;->mKeyguardViewMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
    invoke-static {v3}, Lcom/android/internal/policy/impl/DeviceUnLockService;->access$000(Lcom/android/internal/policy/impl/DeviceUnLockService;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v1, p0, Lcom/android/internal/policy/impl/DeviceUnLockService$1;->this$0:Lcom/android/internal/policy/impl/DeviceUnLockService;

    #getter for: Lcom/android/internal/policy/impl/DeviceUnLockService;->mKeyguardViewMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
    invoke-static {v1}, Lcom/android/internal/policy/impl/DeviceUnLockService;->access$000(Lcom/android/internal/policy/impl/DeviceUnLockService;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3a} :catch_3c

    move-result v1

    .line 136
    :goto_3b
    return v1

    .line 131
    :catch_3c
    move-exception v0

    .line 133
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LocalAppMainServicess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while getting isScreenLocked  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .end local v0           #e:Ljava/lang/Exception;
    :cond_59
    const/4 v1, 0x1

    goto :goto_3b
.end method

.method public unlockScreen(Ljava/lang/String;)I
    .registers 7
    .parameter "entry"

    .prologue
    .line 82
    const-string v2, "LocalAppMainServicess"

    const-string v3, "unlockScreen"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1a

    .line 85
    :cond_f
    const-string v2, "LocalAppMainServicess"

    const-string v3, "password_is_blank"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const v2, 0x11173

    .line 115
    :goto_19
    return v2

    .line 90
    :cond_1a
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/DeviceUnLockService$1;->verifyPassword(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 91
    const-string v2, "LocalAppMainServicess"

    const-string v3, "password_is_wrong"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const v2, 0x11172

    goto :goto_19

    .line 97
    :cond_2b
    :try_start_2b
    iget-object v2, p0, Lcom/android/internal/policy/impl/DeviceUnLockService$1;->this$0:Lcom/android/internal/policy/impl/DeviceUnLockService;

    #getter for: Lcom/android/internal/policy/impl/DeviceUnLockService;->mKeyguardViewMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
    invoke-static {v2}, Lcom/android/internal/policy/impl/DeviceUnLockService;->access$000(Lcom/android/internal/policy/impl/DeviceUnLockService;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    move-result-object v2

    if-eqz v2, :cond_77

    .line 98
    iget-object v2, p0, Lcom/android/internal/policy/impl/DeviceUnLockService$1;->this$0:Lcom/android/internal/policy/impl/DeviceUnLockService;

    #getter for: Lcom/android/internal/policy/impl/DeviceUnLockService;->mKeyguardViewMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
    invoke-static {v2}, Lcom/android/internal/policy/impl/DeviceUnLockService;->access$000(Lcom/android/internal/policy/impl/DeviceUnLockService;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    .line 99
    const-string v2, "LocalAppMainServicess"

    const-string v3, "screen_unlocked_successfully"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 103
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/DeviceUnLockService$1;->this$0:Lcom/android/internal/policy/impl/DeviceUnLockService;

    invoke-direct {v0, v2}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 104
    .local v0, dem:Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v0, p1}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_56} :catch_5a

    .line 106
    const v2, 0x11171

    goto :goto_19

    .line 109
    .end local v0           #dem:Landroid/dirEncryption/DirEncryptionManager;
    :catch_5a
    move-exception v1

    .line 111
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "LocalAppMainServicess"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while unlocking"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .end local v1           #e:Ljava/lang/Exception;
    :cond_77
    const-string v2, "LocalAppMainServicess"

    const-string v3, "other_exception"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const v2, 0x11174

    goto :goto_19
.end method
