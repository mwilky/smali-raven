.class Lcom/android/server/BluetoothManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "BluetoothManagerService"

    if-eqz v1, :cond_1

    const-string v1, "android.bluetooth.adapter.extra.LOCAL_NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bluetooth Adapter name changed to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3, v1, v2}, Lcom/android/server/BluetoothManagerService;->access$600(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    goto/16 :goto_6

    :cond_1
    const-string v1, "android.bluetooth.adapter.action.BLUETOOTH_ADDRESS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "android.bluetooth.adapter.extra.BLUETOOTH_ADDRESS"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bluetooth Adapter address changed to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3, v2, v1}, Lcom/android/server/BluetoothManagerService;->access$600(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "No Bluetooth Adapter address parameter found"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto/16 :goto_6

    :cond_3
    const-string v1, "android.os.action.SETTING_RESTORED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_6

    const-string/jumbo v1, "setting_name"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "bluetooth_on"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    nop

    const-string/jumbo v5, "previous_value"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "new_value"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_SETTING_RESTORED with BLUETOOTH_ON, prevValue="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", newValue="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_5

    if-eqz v5, :cond_5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    const/16 v7, 0x1f4

    const-string v8, "0"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v2, v4

    goto :goto_1

    :cond_4
    nop

    :goto_1
    nop

    invoke-virtual {v3, v7, v2, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    goto/16 :goto_6

    :cond_6
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_5

    :cond_7
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "Device is shutting down."

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1, v2}, Lcom/android/server/BluetoothManagerService;->access$802(Lcom/android/server/BluetoothManagerService;Z)Z

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$900(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1, v4}, Lcom/android/server/BluetoothManagerService;->access$1002(Lcom/android/server/BluetoothManagerService;Z)Z

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1, v4}, Lcom/android/server/BluetoothManagerService;->access$1102(Lcom/android/server/BluetoothManagerService;Z)Z

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->onBrEdrDown(Landroid/content/AttributionSource;)V

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->disable(Landroid/content/AttributionSource;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    :goto_2
    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "Unable to shutdown Bluetooth"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :goto_3
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$900(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_6

    :goto_4
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$900(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1

    :cond_a
    :goto_5
    const/4 v1, 0x2

    const-string v2, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v2

    const/16 v4, 0x258

    invoke-virtual {v2, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_b

    if-nez v1, :cond_b

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$700(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothModeChangeHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/BluetoothModeChangeHelper;->isA2dpOrHearingAidConnected()Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "Device disconnected, reactivating pending flag changes"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v2}, Lcom/android/server/BluetoothManagerService;->onInitFlagsChanged()V

    :cond_b
    nop

    :goto_6
    return-void
.end method
