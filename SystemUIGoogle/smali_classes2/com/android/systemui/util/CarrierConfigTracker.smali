.class public Lcom/android/systemui/util/CarrierConfigTracker;
.super Landroid/content/BroadcastReceiver;
.source "CarrierConfigTracker.java"


# instance fields
.field private final mCallStrengthConfigs:Landroid/util/SparseBooleanArray;

.field private final mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private final mCarrierProvisionsWifiMergedNetworks:Landroid/util/SparseBooleanArray;

.field private mDefaultCallStrengthConfig:Z

.field private mDefaultCallStrengthConfigLoaded:Z

.field private mDefaultCarrierProvisionsWifiMergedNetworks:Z

.field private mDefaultCarrierProvisionsWifiMergedNetworksLoaded:Z

.field private mDefaultNoCallingConfig:Z

.field private mDefaultNoCallingConfigLoaded:Z

.field private final mNoCallingConfigs:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCallStrengthConfigs:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mNoCallingConfigs:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCarrierProvisionsWifiMergedNetworks:Landroid/util/SparseBooleanArray;

    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public getCallStrengthConfig(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCallStrengthConfigs:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCallStrengthConfigs:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCallStrengthConfigs:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultCallStrengthConfigLoaded:Z

    if-nez p1, :cond_1

    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p1

    const-string v0, "display_call_strength_indicator_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultCallStrengthConfig:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultCallStrengthConfigLoaded:Z

    :cond_1
    iget-boolean p0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultCallStrengthConfig:Z

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getCarrierProvisionsWifiMergedNetworksBool(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCarrierProvisionsWifiMergedNetworks:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCarrierProvisionsWifiMergedNetworks:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCarrierProvisionsWifiMergedNetworks:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultCarrierProvisionsWifiMergedNetworksLoaded:Z

    if-nez p1, :cond_1

    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p1

    const-string v0, "carrier_provisions_wifi_merged_networks_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultCarrierProvisionsWifiMergedNetworks:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultCarrierProvisionsWifiMergedNetworksLoaded:Z

    :cond_1
    iget-boolean p0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultCarrierProvisionsWifiMergedNetworks:Z

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getNoCallingConfig(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mNoCallingConfigs:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mNoCallingConfigs:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mNoCallingConfigs:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultNoCallingConfigLoaded:Z

    if-nez p1, :cond_1

    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p1

    const-string v0, "use_ip_for_calling_indicator_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultNoCallingConfig:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultNoCallingConfigLoaded:Z

    :cond_1
    iget-boolean p0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultNoCallingConfig:Z

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "android.telephony.extra.SUBSCRIPTION_INDEX"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p2, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCallStrengthConfigs:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCallStrengthConfigs:Landroid/util/SparseBooleanArray;

    const-string v2, "display_call_strength_indicator_bool"

    invoke-virtual {p2, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mNoCallingConfigs:Landroid/util/SparseBooleanArray;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mNoCallingConfigs:Landroid/util/SparseBooleanArray;

    const-string v2, "use_ip_for_calling_indicator_bool"

    invoke-virtual {p2, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCarrierProvisionsWifiMergedNetworks:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    :try_start_2
    iget-object p0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCarrierProvisionsWifiMergedNetworks:Landroid/util/SparseBooleanArray;

    const-string v1, "carrier_provisions_wifi_merged_networks_bool"

    invoke-virtual {p2, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method
