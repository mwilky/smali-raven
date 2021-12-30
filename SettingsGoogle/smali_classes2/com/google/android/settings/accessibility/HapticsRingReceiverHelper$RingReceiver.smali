.class Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper$RingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HapticsRingReceiverHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RingReceiver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;


# direct methods
.method private constructor <init>(Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper$RingReceiver;->this$0:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper$RingReceiver;-><init>(Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper$RingReceiver;->this$0:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    invoke-static {p1}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->access$300(Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;)Lcom/android/settings/notification/AudioHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/notification/AudioHelper;->getRingerModeInternal()I

    move-result p1

    iget-object p2, p0, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper$RingReceiver;->this$0:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    invoke-static {p2}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->access$400(Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;)I

    move-result p2

    if-eq p1, p2, :cond_0

    iget-object p2, p0, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper$RingReceiver;->this$0:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    invoke-static {p2}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->access$500(Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;)Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper$H;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p0, p0, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper$RingReceiver;->this$0:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    invoke-static {p0, p1}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->access$402(Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;I)I

    :cond_0
    return-void
.end method

.method public register(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper$RingReceiver;->mRegistered:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper$RingReceiver;->this$0:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    invoke-static {v1}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->access$200(Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper$RingReceiver;->this$0:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    invoke-static {v0}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->access$200(Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper$RingReceiver;->mRegistered:Z

    return-void
.end method
