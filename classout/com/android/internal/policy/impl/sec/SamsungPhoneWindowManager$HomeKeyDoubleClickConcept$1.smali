.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept$1;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;)V
    .registers 2
    .parameter

    .prologue
    .line 2653
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 2656
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;

    #calls: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->isSingleClick()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->access$600(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2658
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;

    #calls: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->singleClickJob()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->access$700(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;)V

    .line 2663
    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;

    #calls: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->reset()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->access$1000(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;)V

    .line 2664
    return-void

    .line 2659
    :cond_13
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;

    #calls: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->isDoubleClick()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->access$800(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2661
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;

    #calls: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->doubleClickJob()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->access$900(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;)V

    goto :goto_d
.end method
