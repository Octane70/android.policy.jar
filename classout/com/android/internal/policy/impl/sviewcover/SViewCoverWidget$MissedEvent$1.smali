.class Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$1;
.super Landroid/os/Handler;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;)V
    .registers 2
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 278
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 283
    :goto_5
    return-void

    .line 280
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;

    #calls: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->handleMissedEventUpdate()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->access$400(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;)V

    goto :goto_5

    .line 278
    :pswitch_data_c
    .packed-switch 0x12c2
        :pswitch_6
    .end packed-switch
.end method
