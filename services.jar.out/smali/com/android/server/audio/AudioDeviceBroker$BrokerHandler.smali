.class Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
.super Landroid/os/Handler;
.source "AudioDeviceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioDeviceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrokerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioDeviceBroker;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;Lcom/android/server/audio/AudioDeviceBroker$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "AS.AudioDeviceBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$500(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v2

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v4}, Lcom/android/server/audio/BtHelper;->onScoAudioStateChanged(I)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/server/audio/AudioDeviceBroker;->access$1100(Lcom/android/server/audio/AudioDeviceBroker;Ljava/lang/String;)V

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto/16 :goto_2

    :catchall_2
    move-exception v2

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v2

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v1

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_a
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :try_start_b
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;

    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v5, v2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mCb:Landroid/os/IBinder;

    iget v6, v2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mPid:I

    iget-object v7, v2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    iget v8, v2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mScoAudioMode:I

    iget-object v9, v2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mEventSource:Ljava/lang/String;

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/audio/AudioDeviceBroker;->setCommunicationRouteForClient(Landroid/os/IBinder;ILandroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto/16 :goto_2

    :catchall_4
    move-exception v2

    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw v2

    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v1

    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioDeviceBroker;->removePreferredDevicesForStrategySync(I)I

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$1300(Lcom/android/server/audio/AudioDeviceBroker;)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2, v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$1400(Lcom/android/server/audio/AudioDeviceBroker;Landroid/media/AudioDeviceAttributes;)V

    :cond_0
    goto/16 :goto_2

    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v4, v0, v2}, Lcom/android/server/audio/AudioDeviceBroker;->setPreferredDevicesForStrategySync(ILjava/util/List;)I

    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v4}, Lcom/android/server/audio/AudioDeviceBroker;->access$1300(Lcom/android/server/audio/AudioDeviceBroker;)I

    move-result v4

    if-ne v0, v4, :cond_2

    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    :goto_0
    invoke-static {v4, v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$1400(Lcom/android/server/audio/AudioDeviceBroker;Landroid/media/AudioDeviceAttributes;)V

    :cond_2
    goto/16 :goto_2

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_f
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    :try_start_10
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/server/audio/AudioDeviceBroker;->access$600(Lcom/android/server/audio/AudioDeviceBroker;Ljava/lang/String;)V

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :try_start_11
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    goto/16 :goto_2

    :catchall_6
    move-exception v2

    :try_start_12
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    :try_start_13
    throw v2

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    throw v1

    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioDeviceInventory;->onSaveClearPreferredDevicesForCapturePreset(I)V

    goto/16 :goto_2

    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->onSaveSetPreferredDevicesForCapturePreset(ILjava/util/List;)V

    goto/16 :goto_2

    :pswitch_9
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0, v3}, Lcom/android/server/audio/AudioDeviceBroker;->access$1500(Lcom/android/server/audio/AudioDeviceBroker;I)V

    goto/16 :goto_2

    :pswitch_a
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_14
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    :try_start_15
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    invoke-static {v2, v4}, Lcom/android/server/audio/AudioDeviceBroker;->access$1200(Lcom/android/server/audio/AudioDeviceBroker;Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;)V

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    :try_start_16
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    goto/16 :goto_2

    :catchall_8
    move-exception v2

    :try_start_17
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    :try_start_18
    throw v2

    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    throw v1

    :pswitch_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioDeviceInventory;->onSaveRemovePreferredDevices(I)V

    goto/16 :goto_2

    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->onSaveSetPreferredDevices(ILjava/util/List;)V

    goto/16 :goto_2

    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;

    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "msg: setHearingAidDeviceConnectionState state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " addr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " supprNoisy="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;->mSupprNoisy:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " src="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;->mEventSource:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v4, "AS.AudioDeviceBroker"

    invoke-virtual {v2, v4}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_19
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v5, v0, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;->mState:I

    iget-boolean v6, v0, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;->mSupprNoisy:Z

    iget v7, v0, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;->mMusicDevice:I

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/server/audio/AudioDeviceInventory;->setBluetoothHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZI)I

    monitor-exit v1

    goto/16 :goto_2

    :catchall_a
    move-exception v2

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    throw v2

    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;

    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "msg: setBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent  state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " addr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " prof="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mProfile:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " supprNoisy="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mSupprNoisy:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " vol="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mVolume:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v4, "AS.AudioDeviceBroker"

    invoke-virtual {v2, v4}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1a
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v6, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mState:I

    iget v7, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mProfile:I

    iget-boolean v8, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mSupprNoisy:Z

    const/4 v9, 0x0

    iget v10, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mVolume:I

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/audio/AudioDeviceInventory;->setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IIZII)V

    monitor-exit v1

    goto/16 :goto_2

    :catchall_b
    move-exception v2

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    throw v2

    :pswitch_f
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_1b
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v4}, Lcom/android/server/audio/AudioDeviceInventory;->onSetA2dpSinkConnectionState(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V

    monitor-exit v0

    goto/16 :goto_2

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_c

    throw v1

    :pswitch_10
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1c
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_e

    :try_start_1d
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$500(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v2

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2, v4}, Lcom/android/server/audio/BtHelper;->onHeadsetProfileConnected(Landroid/bluetooth/BluetoothHeadset;)V

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_d

    :try_start_1e
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_e

    goto/16 :goto_2

    :catchall_d
    move-exception v2

    :try_start_1f
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_d

    :try_start_20
    throw v2

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_e

    throw v1

    :pswitch_11
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_21
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$500(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v1, v2}, Lcom/android/server/audio/BtHelper;->onHearingAidProfileConnected(Landroid/bluetooth/BluetoothHearingAid;)V

    monitor-exit v0

    goto/16 :goto_2

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_f

    throw v1

    :pswitch_12
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_22
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$500(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v1, v2}, Lcom/android/server/audio/BtHelper;->onA2dpSinkProfileConnected(Landroid/bluetooth/BluetoothProfile;)V

    monitor-exit v0

    goto/16 :goto_2

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_10

    throw v1

    :pswitch_13
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_23
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$500(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, v2}, Lcom/android/server/audio/BtHelper;->onA2dpProfileConnected(Landroid/bluetooth/BluetoothA2dp;)V

    monitor-exit v0

    goto/16 :goto_2

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_11

    throw v1

    :pswitch_14
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_24
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_13

    :try_start_25
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$500(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/BtHelper;->disconnectHeadset()V

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_12

    :try_start_26
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_13

    goto/16 :goto_2

    :catchall_12
    move-exception v2

    :try_start_27
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_12

    :try_start_28
    throw v2

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_13

    throw v1

    :pswitch_15
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_29
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory;->disconnectHearingAid()V

    monitor-exit v0

    goto/16 :goto_2

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_14

    throw v1

    :pswitch_16
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_2a
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory;->disconnectA2dpSink()V

    monitor-exit v0

    goto/16 :goto_2

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_15

    throw v1

    :pswitch_17
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_2b
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory;->disconnectA2dp()V

    monitor-exit v0

    goto/16 :goto_2

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_16

    throw v1

    :pswitch_18
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_2c
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    invoke-virtual {v1, v4, v2}, Lcom/android/server/audio/AudioDeviceInventory;->onBluetoothA2dpActiveDeviceChange(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V

    monitor-exit v0

    goto/16 :goto_2

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_17

    throw v1

    :pswitch_19
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2d
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_19

    :try_start_2e
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4, v5}, Lcom/android/server/audio/AudioDeviceBroker;->access$1002(Lcom/android/server/audio/AudioDeviceBroker;I)I

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eq v4, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v4, "setNewModeOwner"

    invoke-static {v2, v4}, Lcom/android/server/audio/AudioDeviceBroker;->access$1100(Lcom/android/server/audio/AudioDeviceBroker;Ljava/lang/String;)V

    :cond_3
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_18

    :try_start_2f
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_19

    goto/16 :goto_2

    :catchall_18
    move-exception v2

    :try_start_30
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_18

    :try_start_31
    throw v2

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_19

    throw v1

    :pswitch_1a
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_32
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$500(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/server/audio/BtHelper;->setAvrcpAbsoluteVolumeIndex(I)V

    monitor-exit v0

    goto/16 :goto_2

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_1a

    throw v1

    :pswitch_1b
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_33
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$500(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v4}, Lcom/android/server/audio/BtHelper;->setHearingAidVolume(II)V

    monitor-exit v0

    goto/16 :goto_2

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_1b

    throw v1

    :pswitch_1c
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_34
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory;->onReportNewRoutes()V

    monitor-exit v0

    goto/16 :goto_2

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_1c

    throw v1

    :pswitch_1d
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$900(Lcom/android/server/audio/AudioDeviceBroker;)V

    goto/16 :goto_2

    :pswitch_1e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_35
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$500(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/audio/BtHelper;->getA2dpCodec(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v4}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v4

    new-instance v5, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    const/4 v6, -0x1

    invoke-direct {v5, v0, v6, v2}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;II)V

    invoke-virtual {v4, v5, v3}, Lcom/android/server/audio/AudioDeviceInventory;->onBluetoothA2dpActiveDeviceChange(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V

    monitor-exit v1

    goto/16 :goto_2

    :catchall_1d
    move-exception v2

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_1d

    throw v2

    :pswitch_1f
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_36
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v4}, Lcom/android/server/audio/AudioDeviceInventory;->onMakeA2dpDeviceUnavailableNow(Ljava/lang/String;I)V

    monitor-exit v0

    goto/16 :goto_2

    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_1e

    throw v1

    :pswitch_20
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_37
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_20

    :try_start_38
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$500(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/BtHelper;->resetBluetoothSco()V

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_1f

    :try_start_39
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_20

    goto/16 :goto_2

    :catchall_1f
    move-exception v2

    :try_start_3a
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_1f

    :try_start_3b
    throw v2

    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_20

    throw v1

    :pswitch_21
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_3c
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v5}, Lcom/android/server/audio/AudioDeviceBroker;->access$800(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService;->getHearingAidStreamType()I

    move-result v5

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/audio/AudioDeviceInventory;->onSetHearingAidConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    monitor-exit v0

    goto/16 :goto_2

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_21

    throw v1

    :pswitch_22
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_3d
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v4}, Lcom/android/server/audio/AudioDeviceInventory;->onSetA2dpSourceConnectionState(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V

    monitor-exit v0

    goto/16 :goto_2

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_22

    throw v1

    :pswitch_23
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_3e
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory;->onToggleHdmi()V

    monitor-exit v0

    goto/16 :goto_2

    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_23

    throw v1

    :pswitch_24
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v0, v1, v4, v2, v5}, Lcom/android/server/audio/AudioDeviceBroker;->access$700(Lcom/android/server/audio/AudioDeviceBroker;IIZLjava/lang/String;)V

    goto :goto_2

    :pswitch_25
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_3f
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$500(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/server/audio/BtHelper;->onBroadcastScoConnectionState(I)V

    monitor-exit v0

    goto :goto_2

    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_24

    throw v1

    :pswitch_26
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_40
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioDeviceInventory;->onSetWiredDeviceConnectionState(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;)V

    monitor-exit v0

    goto :goto_2

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_25

    throw v1

    :pswitch_27
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_41
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_27

    :try_start_42
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$300(Lcom/android/server/audio/AudioDeviceBroker;)V

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->updateActiveCommunicationDevice()V

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceInventory;->onRestoreDevices()V

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$500(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/BtHelper;->onAudioServerDiedRestoreA2dp()V

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    const-string v4, "MSG_RESTORE_DEVICES"

    invoke-static {v2, v4}, Lcom/android/server/audio/AudioDeviceBroker;->access$600(Lcom/android/server/audio/AudioDeviceBroker;Ljava/lang/String;)V

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_26

    :try_start_43
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_27

    goto :goto_2

    :catchall_26
    move-exception v2

    :try_start_44
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_26

    :try_start_45
    throw v2

    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_27

    throw v1

    :goto_2
    invoke-static {}, Lcom/android/server/audio/AudioDeviceBroker;->access$1600()Ljava/util/Set;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    const/16 v1, 0x23

    const/16 v2, 0x64

    invoke-static {v0, v1, v3, v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$1700(Lcom/android/server/audio/AudioDeviceBroker;III)V

    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$1800(I)Z

    move-result v0

    if-eqz v0, :cond_6

    :try_start_46
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->access$1900(Lcom/android/server/audio/AudioDeviceBroker;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "AS.AudioDeviceBroker"

    const-string v2, "Exception releasing wakelock"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_1c
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
