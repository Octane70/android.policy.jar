.class Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet$1;
.super Landroid/os/Handler;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;)V
    .registers 2
    .parameter

    .prologue
    .line 453
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 456
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    .line 461
    :goto_5
    return-void

    .line 458
    :pswitch_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    #calls: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->handleMediaUpdate(IILandroid/net/Uri;)V
    invoke-static {v1, v2, v3, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;->access$600(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;IILandroid/net/Uri;)V

    goto :goto_5

    .line 456
    :pswitch_data_14
    .packed-switch 0x12c2
        :pswitch_6
    .end packed-switch
.end method
