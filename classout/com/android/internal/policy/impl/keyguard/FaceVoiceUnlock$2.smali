.class Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock$2;
.super Ljava/lang/Object;
.source "FaceVoiceUnlock.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;)V
    .registers 2
    .parameter

    .prologue
    .line 605
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock$2;->this$0:Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "className"
    .parameter "iservice"

    .prologue
    .line 610
    const-string v0, "FULLockscreen"

    const-string v1, "Connected to Face Unlock service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock$2;->this$0:Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;

    invoke-static {p2}, Lcom/android/internal/policy/IFaceLockInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IFaceLockInterface;

    move-result-object v1

    #setter for: Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->access$302(Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;Lcom/android/internal/policy/IFaceLockInterface;)Lcom/android/internal/policy/IFaceLockInterface;

    .line 612
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock$2;->this$0:Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->access$400(Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 613
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "className"

    .prologue
    .line 619
    const-string v0, "FULLockscreen"

    const-string v1, "Unexpected disconnect from Face Unlock service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock$2;->this$0:Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->access$400(Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 621
    return-void
.end method
