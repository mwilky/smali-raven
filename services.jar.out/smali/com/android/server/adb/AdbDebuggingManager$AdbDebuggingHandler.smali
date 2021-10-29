.class Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;
.super Landroid/os/Handler;
.source "AdbDebuggingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/adb/AdbDebuggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdbDebuggingHandler"
.end annotation


# static fields
.field private static final ADB_NOTIFICATION_CHANNEL_ID_TV:Ljava/lang/String; = "usbdevicemanager.adb.tv"

.field static final MESSAGE_ADB_ALLOW:I = 0x3

.field static final MESSAGE_ADB_CLEAR:I = 0x6

.field static final MESSAGE_ADB_CONFIRM:I = 0x5

.field static final MESSAGE_ADB_CONNECTED_KEY:I = 0xa

.field static final MESSAGE_ADB_DENY:I = 0x4

.field static final MESSAGE_ADB_DISABLED:I = 0x2

.field static final MESSAGE_ADB_DISCONNECT:I = 0x7

.field static final MESSAGE_ADB_ENABLED:I = 0x1

.field static final MESSAGE_ADB_PERSIST_KEYSTORE:I = 0x8

.field static final MESSAGE_ADB_UPDATE_KEYSTORE:I = 0x9

.field static final MSG_ADBDWIFI_DISABLE:I = 0xc

.field static final MSG_ADBDWIFI_ENABLE:I = 0xb

.field static final MSG_ADBD_SOCKET_CONNECTED:I = 0x1a

.field static final MSG_ADBD_SOCKET_DISCONNECTED:I = 0x1b

.field static final MSG_ADBWIFI_ALLOW:I = 0x12

.field static final MSG_ADBWIFI_DENY:I = 0x13

.field static final MSG_DISABLE_ADBDWIFI:Ljava/lang/String; = "DA"

.field static final MSG_DISCONNECT_DEVICE:Ljava/lang/String; = "DD"

.field static final MSG_PAIRING_CANCEL:I = 0xe

.field static final MSG_PAIR_PAIRING_CODE:I = 0xf

.field static final MSG_PAIR_QR_CODE:I = 0x10

.field static final MSG_REQ_UNPAIR:I = 0x11

.field static final MSG_RESPONSE_PAIRING_PORT:I = 0x15

.field static final MSG_RESPONSE_PAIRING_RESULT:I = 0x14

.field static final MSG_SERVER_CONNECTED:I = 0x18

.field static final MSG_SERVER_DISCONNECTED:I = 0x19

.field static final MSG_WIFI_DEVICE_CONNECTED:I = 0x16

.field static final MSG_WIFI_DEVICE_DISCONNECTED:I = 0x17

.field static final UPDATE_KEYSTORE_JOB_INTERVAL:J = 0x5265c00L

.field static final UPDATE_KEYSTORE_MIN_JOB_INTERVAL:J = 0xea60L


# instance fields
.field private mAdbEnabledRefCount:I

.field private mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

.field private mAdbNotificationShown:Z

.field private mAuthTimeObserver:Landroid/database/ContentObserver;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field final synthetic this$0:Lcom/android/server/adb/AdbDebuggingManager;


# direct methods
.method constructor <init>(Lcom/android/server/adb/AdbDebuggingManager;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;-><init>(Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;)V

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbEnabledRefCount:I

    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$2;

    invoke-direct {v0, p0, p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$2;-><init>(Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAuthTimeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method constructor <init>(Lcom/android/server/adb/AdbDebuggingManager;Landroid/os/Looper;Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;-><init>(Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;)V

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbEnabledRefCount:I

    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$2;

    invoke-direct {v0, p0, p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$2;-><init>(Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAuthTimeObserver:Landroid/database/ContentObserver;

    invoke-static {p1, p3}, Lcom/android/server/adb/AdbDebuggingManager;->access$402(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    iput-object p4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    return-void
.end method

.method private cancelJobToUpdateAdbKeyStore()V
    .locals 1

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->removeMessages(I)V

    return-void
.end method

.method private createPairingCode(I)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getCurrentWifiApInfo()Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;
    .locals 10

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$000(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "AdbDebuggingManager"

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    goto :goto_3

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->isOsuAp()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v5, "<unknown ssid>"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_2
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_4

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    iget v8, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v9

    if-ne v8, v9, :cond_3

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    if-nez v4, :cond_6

    const-string v7, "Unable to get ssid of the wifi AP."

    invoke-static {v3, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_5
    :goto_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getPasspointProviderFriendlyName()Ljava/lang/String;

    move-result-object v4

    :cond_6
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_2

    :cond_7
    new-instance v2, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;-><init>(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_8
    :goto_2
    const-string v6, "Unable to get the wifi ap\'s BSSID."

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_9
    :goto_3
    const-string v4, "Not connected to any wireless network. Not enabling adbwifi."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private isTv()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$000(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private logAdbConnectionChanged(Ljava/lang/String;IZ)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {v0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getLastConnectionTime(Ljava/lang/String;)J

    move-result-wide v8

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getAllowedConnectionTime()J

    move-result-wide v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Logging key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", alwaysAllow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lastConnectionTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", authWindow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdbDebuggingManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x90

    move-wide v2, v8

    move-wide v4, v10

    move v6, p2

    move v7, p3

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJJIZ)V

    return-void
.end method

.method private onAdbdWifiServerConnected(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getPairedDevices()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendPairedDevicesToUI(Ljava/util/Map;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendServerConnectionState(ZI)V

    return-void
.end method

.method private onAdbdWifiServerDisconnected(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$700(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->showAdbConnectedNotification(Z)V

    invoke-direct {p0, v0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendServerConnectionState(ZI)V

    return-void
.end method

.method private onPairingResult(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    const-string/jumbo v1, "status"

    const-string v2, "com.android.server.adb.WIRELESS_DEBUG_PAIRING_RESULT"

    if-nez p1, :cond_0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$000(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1, p1}, Lcom/android/server/adb/AdbDebuggingManager;->access$900(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "nouser@nohostname"

    const-string v5, "\\s+"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    if-le v6, v3, :cond_1

    aget-object v4, v5, v3

    :cond_1
    new-instance v3, Landroid/debug/PairDevice;

    invoke-direct {v3, v1, v4, v0}, Landroid/debug/PairDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, v3

    const-string/jumbo v3, "pair_device"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v3}, Lcom/android/server/adb/AdbDebuggingManager;->access$000(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object v3

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, p1, v6, v7}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->setLastConnectionTime(Ljava/lang/String;J)V

    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v3}, Lcom/android/server/adb/AdbDebuggingManager;->access$600(Lcom/android/server/adb/AdbDebuggingManager;)V

    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    :goto_0
    return-void
.end method

.method private sendPairedDevicesToUI(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/debug/PairDevice;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.adb.WIRELESS_DEBUG_PAIRED_DEVICES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "devices_map"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->access$000(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private sendPairingPortToUI(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.adb.WIRELESS_DEBUG_PAIRING_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "status"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "adb_port"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->access$000(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private sendServerConnectionState(ZI)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.adb.WIRELESS_DEBUG_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    :goto_0
    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "adb_port"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->access$000(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private setupNotifications()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$000(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_1

    const-string v0, "AdbDebuggingManager"

    const-string v1, "Unable to setup notifications for wireless debugging"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->isTv()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mNotificationManager:Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/NotificationChannel;

    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/adb/AdbDebuggingManager;->access$000(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x104010a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    const-string/jumbo v4, "usbdevicemanager.adb.tv"

    invoke-direct {v1, v4, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_2
    return-void
.end method

.method private startAdbDebuggingThread()V
    .locals 3

    iget v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbEnabledRefCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbEnabledRefCount:I

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->registerForAuthTimeChanges()V

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    new-instance v1, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-direct {v1, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;-><init>(Lcom/android/server/adb/AdbDebuggingManager;)V

    invoke-static {v0, v1}, Lcom/android/server/adb/AdbDebuggingManager;->access$402(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$400(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->start()V

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->updateKeyStore()V

    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    return-void
.end method

.method private stopAdbDebuggingThread()V
    .locals 6

    iget v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbEnabledRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbEnabledRefCount:I

    if-lez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$400(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$400(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->stopListening()V

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/adb/AdbDebuggingManager;->access$402(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    :cond_1
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$500(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$500(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->setLastConnectionTime(Ljava/lang/String;J)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$600(Lcom/android/server/adb/AdbDebuggingManager;)V

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$500(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$700(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    return-void
.end method

.method private updateUIPairCode(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.adb.WIRELESS_DEBUG_PAIRING_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "pairing_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "status"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->access$000(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private verifyWifiNetwork(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {v0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->isTrustedNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0, p2, p1}, Lcom/android/server/adb/AdbDebuggingManager;->access$1700(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-direct {v0, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;-><init>(Lcom/android/server/adb/AdbDebuggingManager;)V

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_7

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$1400(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$1400(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->cancelAndWait()V

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0, v3}, Lcom/android/server/adb/AdbDebuggingManager;->access$1402(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;)Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    :cond_1
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$1200(Lcom/android/server/adb/AdbDebuggingManager;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-direct {p0, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->onAdbdWifiServerDisconnected(I)V

    goto/16 :goto_7

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$1200(Lcom/android/server/adb/AdbDebuggingManager;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    new-instance v1, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/adb/AdbDebuggingManager;->access$1500(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;-><init>(Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;)V

    invoke-static {v0, v1}, Lcom/android/server/adb/AdbDebuggingManager;->access$1402(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;)Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$1400(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->start()V

    goto/16 :goto_7

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$1200(Lcom/android/server/adb/AdbDebuggingManager;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_7

    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->onAdbdWifiServerDisconnected(I)V

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->access$200(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_wifi_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->stopAdbDebuggingThread()V

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->access$1400(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    move-result-object v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->access$1400(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->cancelAndWait()V

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1, v3}, Lcom/android/server/adb/AdbDebuggingManager;->access$1402(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;)Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    goto/16 :goto_7

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->onAdbdWifiServerConnected(I)V

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->access$300(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/adb/AdbDebuggingManager;->access$300(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->setPort(I)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->access$200(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_wifi_enabled"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_7

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->access$700(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getPairedDevices()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendPairedDevicesToUI(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->access$700(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {p0, v4}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->showAdbConnectedNotification(Z)V

    goto/16 :goto_7

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->access$700(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getPairedDevices()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendPairedDevicesToUI(Ljava/util/Map;)V

    invoke-virtual {p0, v5}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->showAdbConnectedNotification(Z)V

    goto/16 :goto_7

    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendPairingPortToUI(I)V

    goto/16 :goto_7

    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string/jumbo v1, "publicKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->onPairingResult(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getPairedDevices()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendPairedDevicesToUI(Ljava/util/Map;)V

    goto/16 :goto_7

    :pswitch_9
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$200(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_wifi_enabled"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v4, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendServerConnectionState(ZI)V

    goto/16 :goto_7

    :pswitch_a
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$1200(Lcom/android/server/adb/AdbDebuggingManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_7

    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v5, :cond_4

    move v4, v5

    :cond_4
    move v1, v4

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {v2, v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->addTrustedNetwork(Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->getCurrentWifiApInfo()Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    move-result-object v2

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_7

    :cond_6
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v3, v2}, Lcom/android/server/adb/AdbDebuggingManager;->access$1300(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;)V

    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v3}, Lcom/android/server/adb/AdbDebuggingManager;->access$200(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_wifi_enabled"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v4}, Lcom/android/server/adb/AdbDebuggingManager;->access$000(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v4, "persist.adb.tls_server.enable"

    const-string v6, "1"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    new-instance v6, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    iget-object v7, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v7}, Lcom/android/server/adb/AdbDebuggingManager;->access$1500(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;-><init>(Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;)V

    invoke-static {v4, v6}, Lcom/android/server/adb/AdbDebuggingManager;->access$1402(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;)Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v4}, Lcom/android/server/adb/AdbDebuggingManager;->access$1400(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->start()V

    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->startAdbDebuggingThread()V

    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v4, v5}, Lcom/android/server/adb/AdbDebuggingManager;->access$1202(Lcom/android/server/adb/AdbDebuggingManager;Z)Z

    goto/16 :goto_7

    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {v1, v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->findKeyFromFingerprint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DD"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v3}, Lcom/android/server/adb/AdbDebuggingManager;->access$400(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v3}, Lcom/android/server/adb/AdbDebuggingManager;->access$400(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    :cond_8
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {v3, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->removeKey(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {v3}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getPairedDevices()Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendPairedDevicesToUI(Ljava/util/Map;)V

    goto/16 :goto_7

    :cond_9
    :goto_0
    const-string v2, "AdbDebuggingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not a known fingerprint ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string/jumbo v1, "serviceName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "password"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    new-instance v4, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

    iget-object v5, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-direct {v4, v5, v2, v1}, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;-><init>(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/android/server/adb/AdbDebuggingManager;->access$1602(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$PairingThread;)Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v3}, Lcom/android/server/adb/AdbDebuggingManager;->access$1600(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->start()V

    goto/16 :goto_7

    :pswitch_d
    invoke-direct {p0, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->createPairingCode(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->updateUIPairCode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    new-instance v2, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-direct {v2, v4, v0, v3}, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;-><init>(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/android/server/adb/AdbDebuggingManager;->access$1602(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$PairingThread;)Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->access$1600(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->start()V

    goto/16 :goto_7

    :pswitch_e
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$1600(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$1600(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->cancelPairing()V

    :try_start_2
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$1600(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "AdbDebuggingManager"

    const-string v2, "Error while waiting for pairing thread to quit."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0, v3}, Lcom/android/server/adb/AdbDebuggingManager;->access$1602(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$PairingThread;)Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

    goto/16 :goto_7

    :pswitch_f
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$1200(Lcom/android/server/adb/AdbDebuggingManager;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_7

    :cond_a
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0, v4}, Lcom/android/server/adb/AdbDebuggingManager;->access$1202(Lcom/android/server/adb/AdbDebuggingManager;Z)Z

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0, v3}, Lcom/android/server/adb/AdbDebuggingManager;->access$1300(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;)V

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$000(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$400(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$400(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object v0

    const-string v1, "DA"

    invoke-virtual {v0, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    :cond_b
    invoke-direct {p0, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->onAdbdWifiServerDisconnected(I)V

    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->stopAdbDebuggingThread()V

    goto/16 :goto_7

    :pswitch_10
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$1200(Lcom/android/server/adb/AdbDebuggingManager;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_7

    :cond_c
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->getCurrentWifiApInfo()Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    move-result-object v0

    if-nez v0, :cond_d

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->access$200(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_wifi_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_7

    :cond_d
    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->verifyWifiNetwork(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->access$200(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_wifi_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_7

    :cond_e
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1, v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$1300(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/adb/AdbDebuggingManager;->access$000(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v2, "persist.adb.tls_server.enable"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    new-instance v3, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v4}, Lcom/android/server/adb/AdbDebuggingManager;->access$1500(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;-><init>(Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;)V

    invoke-static {v2, v3}, Lcom/android/server/adb/AdbDebuggingManager;->access$1402(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;)Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/adb/AdbDebuggingManager;->access$1400(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->start()V

    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->startAdbDebuggingThread()V

    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v2, v5}, Lcom/android/server/adb/AdbDebuggingManager;->access$1202(Lcom/android/server/adb/AdbDebuggingManager;Z)Z

    goto/16 :goto_7

    :pswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    goto :goto_3

    :cond_f
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->access$500(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->access$500(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_10
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->access$500(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/adb/AdbDebuggingManager;->access$500(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->setLastConnectionTime(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->access$600(Lcom/android/server/adb/AdbDebuggingManager;)V

    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, v5}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->logAdbConnectionChanged(Ljava/lang/String;IZ)V

    goto/16 :goto_7

    :cond_11
    :goto_3
    const-string v1, "AdbDebuggingManager"

    const-string v2, "Received a connected key message with an empty key"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :pswitch_12
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$500(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$500(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->setLastConnectionTime(Ljava/lang/String;J)V

    goto :goto_4

    :cond_12
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$600(Lcom/android/server/adb/AdbDebuggingManager;)V

    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    goto/16 :goto_7

    :cond_13
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->updateKeyStore()V

    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    goto/16 :goto_7

    :pswitch_13
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->persistKeyStore()V

    goto/16 :goto_7

    :pswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_15

    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/adb/AdbDebuggingManager;->access$500(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/adb/AdbDebuggingManager;->access$500(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v5

    if-nez v2, :cond_14

    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->setLastConnectionTime(Ljava/lang/String;J)V

    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v3}, Lcom/android/server/adb/AdbDebuggingManager;->access$600(Lcom/android/server/adb/AdbDebuggingManager;)V

    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v3}, Lcom/android/server/adb/AdbDebuggingManager;->access$500(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_14
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v3}, Lcom/android/server/adb/AdbDebuggingManager;->access$500(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    goto :goto_6

    :cond_15
    const-string v2, "AdbDebuggingManager"

    const-string v3, "Received a disconnected key message with an empty key"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    :goto_6
    const/4 v2, 0x7

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->logAdbConnectionChanged(Ljava/lang/String;IZ)V

    goto/16 :goto_7

    :pswitch_15
    const-string v0, "AdbDebuggingManager"

    const-string v1, "Received a request to clear the adb authorizations"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$500(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    if-nez v0, :cond_17

    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-direct {v0, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;-><init>(Lcom/android/server/adb/AdbDebuggingManager;)V

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    :cond_17
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$700(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->deleteKeyStore()V

    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->cancelJobToUpdateAdbKeyStore()V

    goto/16 :goto_7

    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "trigger_restart_min_framework"

    const-string/jumbo v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "AdbDebuggingManager"

    const-string v3, "Deferring adb confirmation until after vold decrypt"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/adb/AdbDebuggingManager;->access$400(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/adb/AdbDebuggingManager;->access$400(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object v2

    const-string v3, "NO"

    invoke-virtual {v2, v3}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v4}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->logAdbConnectionChanged(Ljava/lang/String;IZ)V

    goto/16 :goto_7

    :cond_18
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1, v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$900(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/adb/AdbDebuggingManager;->access$400(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/adb/AdbDebuggingManager;->access$400(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object v2

    const-string v3, "NO"

    invoke-virtual {v2, v3}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    const/4 v2, 0x5

    invoke-direct {p0, v0, v2, v4}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->logAdbConnectionChanged(Ljava/lang/String;IZ)V

    goto/16 :goto_7

    :cond_19
    invoke-direct {p0, v0, v5, v4}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->logAdbConnectionChanged(Ljava/lang/String;IZ)V

    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v2, v1}, Lcom/android/server/adb/AdbDebuggingManager;->access$1002(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/adb/AdbDebuggingManager;->access$1000(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/android/server/adb/AdbDebuggingManager;->access$1100(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_17
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$400(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object v0

    if-eqz v0, :cond_20

    const-string v0, "AdbDebuggingManager"

    const-string v1, "Denying adb confirmation"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$400(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object v0

    const-string v1, "NO"

    invoke-virtual {v0, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-direct {p0, v3, v0, v4}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->logAdbConnectionChanged(Ljava/lang/String;IZ)V

    goto/16 :goto_7

    :pswitch_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1, v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$900(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/adb/AdbDebuggingManager;->access$1000(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "AdbDebuggingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fingerprints do not match. Got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v4}, Lcom/android/server/adb/AdbDebuggingManager;->access$1000(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_1a
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v5, :cond_1b

    move v4, v5

    :cond_1b
    move v2, v4

    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v3}, Lcom/android/server/adb/AdbDebuggingManager;->access$400(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object v3

    if-eqz v3, :cond_20

    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v3}, Lcom/android/server/adb/AdbDebuggingManager;->access$400(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object v3

    const-string v4, "OK"

    invoke-virtual {v3, v4}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    if-eqz v2, :cond_1d

    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v3}, Lcom/android/server/adb/AdbDebuggingManager;->access$500(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v3}, Lcom/android/server/adb/AdbDebuggingManager;->access$500(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->setLastConnectionTime(Ljava/lang/String;J)V

    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v3}, Lcom/android/server/adb/AdbDebuggingManager;->access$600(Lcom/android/server/adb/AdbDebuggingManager;)V

    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    :cond_1d
    const/4 v3, 0x2

    invoke-direct {p0, v0, v3, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->logAdbConnectionChanged(Ljava/lang/String;IZ)V

    goto :goto_7

    :pswitch_19
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$800(Lcom/android/server/adb/AdbDebuggingManager;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_7

    :cond_1e
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->stopAdbDebuggingThread()V

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0, v4}, Lcom/android/server/adb/AdbDebuggingManager;->access$802(Lcom/android/server/adb/AdbDebuggingManager;Z)Z

    goto :goto_7

    :pswitch_1a
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$800(Lcom/android/server/adb/AdbDebuggingManager;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_7

    :cond_1f
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->startAdbDebuggingThread()V

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0, v5}, Lcom/android/server/adb/AdbDebuggingManager;->access$802(Lcom/android/server/adb/AdbDebuggingManager;Z)Z

    nop

    :cond_20
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
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
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method registerForAuthTimeChanges()V
    .locals 4

    const-string v0, "adb_allowed_connection_time"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->access$000(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAuthTimeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method scheduleJobToUpdateAdbKeyStore()J
    .locals 6

    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->cancelJobToUpdateAdbKeyStore()V

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getNextExpirationTime()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_1
    const-wide/32 v2, 0x5265c00

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_0
    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-wide v2
.end method

.method public showAdbConnectedNotification(Z)V
    .locals 6

    const/16 v0, 0x3e

    iget-boolean v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbNotificationShown:Z

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->setupNotifications()V

    iget-boolean v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbNotificationShown:Z

    const/16 v2, 0x3e

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->access$000(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {v1, v4}, Landroid/debug/AdbNotifications;->createNotification(Landroid/content/Context;B)Landroid/app/Notification;

    move-result-object v1

    iput-boolean v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbNotificationShown:Z

    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v2, v1, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbNotificationShown:Z

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v3, v2, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :goto_0
    return-void
.end method
