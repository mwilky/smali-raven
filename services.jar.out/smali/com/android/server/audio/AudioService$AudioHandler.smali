.class Lcom/android/server/audio/AudioService$AudioHandler;
.super Landroid/os/Handler;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method

.method private onNotifyVolumeEvent(Landroid/media/audiopolicy/IAudioPolicyCallback;I)V
    .locals 1

    :try_start_0
    invoke-interface {p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyVolumeAdjust(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private onPersistSafeVolumeState(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "audio_safe_volume_state"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private persistRingerMode(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mode_ringer"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$4000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_2
    return-void
.end method

.method private setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v1

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SpatializerHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$4800(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/SpatializerHelper;->init(Z)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4800(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SpatializerHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->isSpatialAudioEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/SpatializerHelper;->setFeatureEnabled(Z)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioService;->monitorRoutingChanges(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4600(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_1

    :sswitch_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4600(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_1

    :sswitch_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4500(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/PlaybackActivityMonitor;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_1

    move v1, v2

    :cond_1
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/PlaybackActivityMonitor;->disableAudioForUid(ZI)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4600(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_1

    :sswitch_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService;->onPersistSpatialAudioEnabled(Z)V

    goto/16 :goto_1

    :sswitch_4
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SpatializerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/SpatializerHelper;->onInitSensors()V

    goto/16 :goto_1

    :sswitch_5
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SpatializerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/SpatializerHelper;->onRoutingUpdated()V

    goto/16 :goto_1

    :sswitch_6
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService;->dispatchMode(I)V

    goto/16 :goto_1

    :sswitch_7
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_1

    :sswitch_8
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->queueBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;)V

    goto/16 :goto_1

    :sswitch_9
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$6100(Lcom/android/server/audio/AudioService;Ljava/util/List;)V

    goto/16 :goto_1

    :sswitch_a
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/android/server/audio/AudioService;->onUpdateAudioMode(IILjava/lang/String;Z)V

    monitor-exit v0

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :sswitch_b
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6400(Lcom/android/server/audio/AudioService;)V

    goto/16 :goto_1

    :sswitch_c
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$6300(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_d
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/server/audio/AudioService;->access$6200(Lcom/android/server/audio/AudioService;ILjava/lang/String;)V

    goto/16 :goto_1

    :sswitch_e
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    const-string v2, "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$3500(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    goto/16 :goto_1

    :sswitch_f
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_3

    monitor-exit v0

    goto/16 :goto_1

    :cond_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_4

    monitor-exit v0

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->isActive()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$4500(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/PlaybackActivityMonitor;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/audio/PlaybackActivityMonitor;->isPlaybackActiveForUid(I)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->setPlaybackActive(Z)V

    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/RecordingActivityMonitor;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/audio/RecordingActivityMonitor;->isRecordingActiveForUid(I)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->setRecordingActive(Z)V

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->isActive()Z

    move-result v4

    if-eq v3, v4, :cond_5

    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, -0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v7, v7, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7, v1}, Lcom/android/server/audio/AudioService;->onUpdateAudioMode(IILjava/lang/String;Z)V

    :cond_5
    monitor-exit v0

    goto/16 :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :sswitch_10
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SystemServerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/SystemServerAdapter;->sendMicrophoneMuteChangedIntent()V

    goto/16 :goto_1

    :sswitch_11
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$6000(Lcom/android/server/audio/AudioService;Ljava/util/List;)V

    goto/16 :goto_1

    :sswitch_12
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/server/audio/AudioService;->access$5900(Lcom/android/server/audio/AudioService;ILjava/lang/String;)V

    goto/16 :goto_1

    :sswitch_13
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$5800(Lcom/android/server/audio/AudioService;I)V

    goto/16 :goto_1

    :sswitch_14
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;)V

    goto/16 :goto_1

    :sswitch_15
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$5600(Lcom/android/server/audio/AudioService;)V

    goto/16 :goto_1

    :sswitch_16
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$5500(Lcom/android/server/audio/AudioService;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    :sswitch_17
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_6

    move v1, v2

    :cond_6
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$4200(Lcom/android/server/audio/AudioService;Z)V

    goto/16 :goto_1

    :sswitch_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiopolicy/IAudioPolicyCallback;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->onNotifyVolumeEvent(Landroid/media/audiopolicy/IAudioPolicyCallback;I)V

    goto/16 :goto_1

    :sswitch_19
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$5200(Lcom/android/server/audio/AudioService;I)V

    goto/16 :goto_1

    :sswitch_1a
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    goto/16 :goto_1

    :sswitch_1b
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/android/server/audio/AudioService;->access$5400(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    goto/16 :goto_1

    :sswitch_1c
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/audio/AudioService;->access$5300(Lcom/android/server/audio/AudioService;II)V

    goto/16 :goto_1

    :sswitch_1d
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "unsafe_volume_music_active_ms"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_1

    :sswitch_1e
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onSystemReady()V

    goto/16 :goto_1

    :sswitch_1f
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4300(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SoundEffectsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/SoundEffectsHelper;->unloadSoundEffects()V

    goto/16 :goto_1

    :sswitch_20
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->onPersistSafeVolumeState(I)V

    goto/16 :goto_1

    :sswitch_21
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0xd

    if-ne v3, v4, :cond_7

    move v1, v2

    :cond_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/server/audio/AudioService;->access$5100(Lcom/android/server/audio/AudioService;ZLjava/lang/String;)V

    goto/16 :goto_1

    :sswitch_22
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$5000(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_23
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V

    goto/16 :goto_1

    :sswitch_24
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v2, :cond_8

    const-string v2, "AS.AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid force use FOR_MEDIA in AudioService from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    new-instance v2, Landroid/media/MediaMetrics$Item;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audio.forceUse."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/media/AudioSystem;->forceUseUsageToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v5, "setForceUse"

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    sget-object v4, Landroid/media/MediaMetrics$Property;->FORCE_USE_DUE_TO:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v2, v4, v0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    sget-object v4, Landroid/media/MediaMetrics$Property;->FORCE_USE_MODE:Landroid/media/MediaMetrics$Key;

    invoke-static {v3}, Landroid/media/AudioSystem;->forceUseConfigToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    sget-object v2, Lcom/android/server/audio/AudioService;->sForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v4, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    invoke-direct {v4, v1, v3, v0}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Lcom/android/server/audio/AudioSystemAdapter;->setForceUse(II)I

    goto :goto_1

    :sswitch_25
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;

    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$4300(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SoundEffectsHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/audio/SoundEffectsHelper;->loadSoundEffects(Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V

    goto :goto_0

    :cond_9
    const-string v2, "AS.AudioService"

    const-string v3, "[schedule]loadSoundEffects() called before boot complete"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_a

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->run(Z)V

    :cond_a
    :goto_0
    goto :goto_1

    :sswitch_26
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4300(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SoundEffectsHelper;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/SoundEffectsHelper;->playSoundEffect(II)V

    goto :goto_1

    :sswitch_27
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onAudioServerDied()V

    goto :goto_1

    :sswitch_28
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->persistRingerMode(I)V

    goto :goto_1

    :sswitch_29
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeGroupState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->access$4100(Lcom/android/server/audio/AudioService$VolumeGroupState;I)V

    goto :goto_1

    :sswitch_2a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    goto :goto_1

    :sswitch_2b
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/AudioService;->setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    nop

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2b
        0x1 -> :sswitch_2a
        0x2 -> :sswitch_29
        0x3 -> :sswitch_28
        0x4 -> :sswitch_27
        0x5 -> :sswitch_26
        0x7 -> :sswitch_25
        0x8 -> :sswitch_24
        0xa -> :sswitch_23
        0xb -> :sswitch_22
        0xc -> :sswitch_21
        0xd -> :sswitch_21
        0xe -> :sswitch_20
        0xf -> :sswitch_1f
        0x10 -> :sswitch_1e
        0x11 -> :sswitch_1d
        0x12 -> :sswitch_1c
        0x13 -> :sswitch_1b
        0x14 -> :sswitch_1a
        0x15 -> :sswitch_19
        0x16 -> :sswitch_18
        0x17 -> :sswitch_17
        0x18 -> :sswitch_16
        0x19 -> :sswitch_15
        0x1a -> :sswitch_14
        0x1b -> :sswitch_13
        0x1c -> :sswitch_12
        0x1d -> :sswitch_11
        0x1e -> :sswitch_10
        0x1f -> :sswitch_f
        0x20 -> :sswitch_e
        0x21 -> :sswitch_d
        0x22 -> :sswitch_c
        0x23 -> :sswitch_b
        0x24 -> :sswitch_a
        0x25 -> :sswitch_9
        0x26 -> :sswitch_8
        0x27 -> :sswitch_7
        0x28 -> :sswitch_6
        0x29 -> :sswitch_5
        0x2a -> :sswitch_4
        0x2b -> :sswitch_3
        0x64 -> :sswitch_2
        0x65 -> :sswitch_1
        0x66 -> :sswitch_0
    .end sparse-switch
.end method
