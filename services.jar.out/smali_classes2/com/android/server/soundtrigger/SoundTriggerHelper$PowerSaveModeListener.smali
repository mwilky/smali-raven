.class Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;
.super Landroid/content/BroadcastReceiver;
.source "SoundTriggerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger/SoundTriggerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PowerSaveModeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;


# direct methods
.method constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->access$300(Lcom/android/server/soundtrigger/SoundTriggerHelper;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->getSoundTriggerPowerSaveMode()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->access$000(Lcom/android/server/soundtrigger/SoundTriggerHelper;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-static {v2, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->access$400(Lcom/android/server/soundtrigger/SoundTriggerHelper;I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
