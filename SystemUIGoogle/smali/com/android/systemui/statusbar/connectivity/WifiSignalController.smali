.class public Lcom/android/systemui/statusbar/connectivity/WifiSignalController;
.super Lcom/android/systemui/statusbar/connectivity/SignalController;
.source "WifiSignalController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/connectivity/WifiSignalController$WifiTrafficStateCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/connectivity/SignalController<",
        "Lcom/android/systemui/statusbar/connectivity/WifiState;",
        "Lcom/android/settingslib/SignalIcon$IconGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCarrierMergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field private final mHasMobileDataFeature:Z

.field private final mProviderModelSetting:Z

.field private final mUnmergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;


# direct methods
.method public static synthetic $r8$lambda$43RmIPQqx4RoFlVDiUc6juR_r0A(Lcom/android/systemui/statusbar/connectivity/WifiSignalController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->handleStatusUpdated()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/android/systemui/statusbar/connectivity/CallbackHandler;Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 6

    const-string v1, "WifiSignalController"

    const/4 v3, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/connectivity/SignalController;-><init>(Ljava/lang/String;Landroid/content/Context;ILcom/android/systemui/statusbar/connectivity/CallbackHandler;Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;)V

    sget-object p3, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->UNMERGED_WIFI:Lcom/android/settingslib/SignalIcon$IconGroup;

    iput-object p3, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mUnmergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    sget-object p4, Lcom/android/settingslib/mobile/TelephonyIcons;->CARRIER_MERGED_WIFI:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iput-object p4, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mCarrierMergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iput-object p5, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance p4, Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/systemui/statusbar/connectivity/WifiSignalController$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/connectivity/WifiSignalController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/connectivity/WifiSignalController;)V

    move-object v0, p4

    move-object v2, p5

    move-object v3, p7

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/wifi/WifiStatusTracker;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/NetworkScoreManager;Landroid/net/ConnectivityManager;Ljava/lang/Runnable;)V

    iput-object p4, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    const/4 p6, 0x1

    invoke-virtual {p4, p6}, Lcom/android/settingslib/wifi/WifiStatusTracker;->setListening(Z)V

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mHasMobileDataFeature:Z

    if-eqz p5, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/connectivity/WifiSignalController$WifiTrafficStateCallback;

    const/4 p4, 0x0

    invoke-direct {p2, p0, p4}, Lcom/android/systemui/statusbar/connectivity/WifiSignalController$WifiTrafficStateCallback;-><init>(Lcom/android/systemui/statusbar/connectivity/WifiSignalController;Lcom/android/systemui/statusbar/connectivity/WifiSignalController$1;)V

    invoke-virtual {p5, p1, p2}, Landroid/net/wifi/WifiManager;->registerTrafficStateCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$TrafficStateCallback;)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast p1, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-object p2, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mLastState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast p2, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iput-object p3, p2, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    iput-object p3, p1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    invoke-virtual {p8}, Lcom/android/systemui/flags/FeatureFlags;->isProviderModelSettingEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mProviderModelSetting:Z

    return-void
.end method

.method private copyWifiStates()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->enabled:Z

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->enabled:Z

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->isDefaultNetwork:Z

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/connectivity/WifiState;->isDefault:Z

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->connected:Z

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-object v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/systemui/statusbar/connectivity/WifiState;->ssid:Ljava/lang/String;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget v1, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->rssi:I

    iput v1, v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->rssi:I

    iget v0, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->level:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->notifyWifiLevelChangeIfNecessary(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->level:I

    iput v3, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->level:I

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-object v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->statusLabel:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/systemui/statusbar/connectivity/WifiState;->statusLabel:Ljava/lang/String;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->isCarrierMerged:Z

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/connectivity/WifiState;->isCarrierMerged:Z

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget v2, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->subId:I

    iput v2, v1, Lcom/android/systemui/statusbar/connectivity/WifiState;->subId:I

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/WifiState;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/connectivity/WifiState;->isCarrierMerged:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mCarrierMergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mUnmergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    :goto_0
    iput-object p0, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    return-void
.end method

.method private getCurrentIconIdForCarrierWifi()I
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->level:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getMaxSignalLevel()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    move-object v3, p0

    check-cast v3, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget v3, v3, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->inetCondition:I

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    move-object v3, p0

    check-cast v3, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    if-eqz v3, :cond_1

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/graph/SignalDrawable;->getState(IIZ)I

    move-result p0

    return p0

    :cond_1
    check-cast p0, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->enabled:Z

    if-eqz p0, :cond_2

    invoke-static {v1}, Lcom/android/settingslib/graph/SignalDrawable;->getEmptyState(I)I

    move-result p0

    return p0

    :cond_2
    return v4
.end method

.method private getQsCurrentIconIdForCarrierWifi()I
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->getCurrentIconIdForCarrierWifi()I

    move-result p0

    return p0
.end method

.method private handleStatusUpdated()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->copyWifiStates()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method private notifyListenersForCarrierWifi(Lcom/android/systemui/statusbar/connectivity/SignalCallback;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mCarrierMergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getContentDescription()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataContentDescription:I

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v5, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget v5, v5, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->inetCondition:I

    if-nez v5, :cond_0

    iget-object v3, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->data_connection_no_internet:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    move-object v11, v3

    iget-object v3, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    move-object v5, v3

    check-cast v5, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->enabled:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    check-cast v3, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    if-eqz v3, :cond_1

    move v3, v6

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    new-instance v5, Lcom/android/systemui/statusbar/connectivity/IconState;

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->getCurrentIconIdForCarrierWifi()I

    move-result v7

    invoke-direct {v5, v3, v7, v2}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ZILjava/lang/String;)V

    if-eqz v3, :cond_2

    iget v3, v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataType:I

    move v7, v3

    goto :goto_1

    :cond_2
    move v7, v4

    :goto_1
    iget v8, v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataType:I

    new-instance v1, Lcom/android/systemui/statusbar/connectivity/IconState;

    iget-object v3, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v3, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->getQsCurrentIconIdForCarrierWifi()I

    move-result v9

    invoke-direct {v1, v3, v9, v2}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ZILjava/lang/String;)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    iget-object v3, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v3, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget v3, v3, Lcom/android/systemui/statusbar/connectivity/WifiState;->subId:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->getNetworkNameForCarrierWiFi(I)Ljava/lang/String;

    move-result-object v13

    iget-object v2, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v2, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/connectivity/WifiState;->isDefault:Z

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->isRadioOn()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v17, v4

    goto :goto_3

    :cond_4
    :goto_2
    move/from16 v17, v6

    :goto_3
    new-instance v2, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;

    iget-object v0, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v9, v3, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityIn:Z

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v10, v3, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityOut:Z

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget v14, v0, Lcom/android/systemui/statusbar/connectivity/WifiState;->subId:I

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object v4, v2

    move-object v6, v1

    invoke-direct/range {v4 .. v17}, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;-><init>(Lcom/android/systemui/statusbar/connectivity/IconState;Lcom/android/systemui/statusbar/connectivity/IconState;IIZZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZZ)V

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/connectivity/SignalCallback;->setMobileDataIndicators(Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;)V

    return-void
.end method

.method private notifyListenersForNonCarrierWifi(Lcom/android/systemui/statusbar/connectivity/SignalCallback;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$bool;->config_showWifiIndicatorWhenEnabled:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iget-object v3, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->enabled:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget v4, v4, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->inetCondition:I

    if-eq v4, v6, :cond_1

    :cond_0
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mHasMobileDataFeature:Z

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/connectivity/WifiState;->isDefault:Z

    if-nez v4, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    move v2, v6

    goto :goto_0

    :cond_2
    move v2, v5

    :goto_0
    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    if-eqz v4, :cond_3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-object v4, v4, Lcom/android/systemui/statusbar/connectivity/WifiState;->ssid:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    move-object v13, v4

    if-eqz v2, :cond_4

    check-cast v3, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-object v3, v3, Lcom/android/systemui/statusbar/connectivity/WifiState;->ssid:Ljava/lang/String;

    if-eqz v3, :cond_4

    move v3, v6

    goto :goto_2

    :cond_4
    move v3, v5

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getContentDescription()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v7, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v7, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget v7, v7, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->inetCondition:I

    if-nez v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/systemui/R$string;->data_connection_no_internet:I

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_5
    iget-boolean v7, v0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mProviderModelSetting:Z

    if-eqz v7, :cond_b

    new-instance v9, Lcom/android/systemui/statusbar/connectivity/IconState;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getCurrentIconId()I

    move-result v7

    invoke-direct {v9, v2, v7, v4}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ZILjava/lang/String;)V

    new-instance v10, Lcom/android/systemui/statusbar/connectivity/IconState;

    iget-object v2, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v2, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    iget-object v7, v0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v7, v7, Lcom/android/settingslib/wifi/WifiStatusTracker;->isCaptivePortal:Z

    if-eqz v7, :cond_6

    sget v7, Lcom/android/systemui/R$drawable;->ic_qs_wifi_disconnected:I

    goto :goto_3

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getQsCurrentIconId()I

    move-result v7

    :goto_3
    invoke-direct {v10, v2, v7, v4}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ZILjava/lang/String;)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v2, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/connectivity/WifiState;->isDefault:Z

    if-nez v2, :cond_8

    iget-object v2, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->isRadioOn()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->isEthernetDefault()Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    move/from16 v16, v5

    goto :goto_5

    :cond_8
    :goto_4
    move/from16 v16, v6

    :goto_5
    new-instance v2, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;

    iget-object v0, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v8, v4, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->enabled:Z

    if-eqz v3, :cond_9

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityIn:Z

    if-eqz v4, :cond_9

    move v11, v6

    goto :goto_6

    :cond_9
    move v11, v5

    :goto_6
    if-eqz v3, :cond_a

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityOut:Z

    if-eqz v3, :cond_a

    move v12, v6

    goto :goto_7

    :cond_a
    move v12, v5

    :goto_7
    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v14, v3, Lcom/android/systemui/statusbar/connectivity/WifiState;->isTransient:Z

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-object v15, v0, Lcom/android/systemui/statusbar/connectivity/WifiState;->statusLabel:Ljava/lang/String;

    move-object v7, v2

    invoke-direct/range {v7 .. v16}, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;-><init>(ZLcom/android/systemui/statusbar/connectivity/IconState;Lcom/android/systemui/statusbar/connectivity/IconState;ZZLjava/lang/String;ZLjava/lang/String;Z)V

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/connectivity/SignalCallback;->setWifiIndicators(Lcom/android/systemui/statusbar/connectivity/WifiIndicators;)V

    goto :goto_b

    :cond_b
    new-instance v9, Lcom/android/systemui/statusbar/connectivity/IconState;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getCurrentIconId()I

    move-result v7

    invoke-direct {v9, v2, v7, v4}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ZILjava/lang/String;)V

    new-instance v10, Lcom/android/systemui/statusbar/connectivity/IconState;

    iget-object v2, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v2, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    iget-object v7, v0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v7, v7, Lcom/android/settingslib/wifi/WifiStatusTracker;->isCaptivePortal:Z

    if-eqz v7, :cond_c

    sget v7, Lcom/android/systemui/R$drawable;->ic_qs_wifi_disconnected:I

    goto :goto_8

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getQsCurrentIconId()I

    move-result v7

    :goto_8
    invoke-direct {v10, v2, v7, v4}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ZILjava/lang/String;)V

    new-instance v2, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;

    iget-object v0, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v8, v4, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->enabled:Z

    if-eqz v3, :cond_d

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityIn:Z

    if-eqz v4, :cond_d

    move v11, v6

    goto :goto_9

    :cond_d
    move v11, v5

    :goto_9
    if-eqz v3, :cond_e

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityOut:Z

    if-eqz v3, :cond_e

    move v12, v6

    goto :goto_a

    :cond_e
    move v12, v5

    :goto_a
    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v14, v3, Lcom/android/systemui/statusbar/connectivity/WifiState;->isTransient:Z

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-object v15, v0, Lcom/android/systemui/statusbar/connectivity/WifiState;->statusLabel:Ljava/lang/String;

    const/16 v16, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v16}, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;-><init>(ZLcom/android/systemui/statusbar/connectivity/IconState;Lcom/android/systemui/statusbar/connectivity/IconState;ZZLjava/lang/String;ZLjava/lang/String;Z)V

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/connectivity/SignalCallback;->setWifiIndicators(Lcom/android/systemui/statusbar/connectivity/WifiIndicators;)V

    :goto_b
    return-void
.end method


# virtual methods
.method protected bridge synthetic cleanState()Lcom/android/systemui/statusbar/connectivity/ConnectivityState;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->cleanState()Lcom/android/systemui/statusbar/connectivity/WifiState;

    move-result-object p0

    return-object p0
.end method

.method protected cleanState()Lcom/android/systemui/statusbar/connectivity/WifiState;
    .locals 0

    new-instance p0, Lcom/android/systemui/statusbar/connectivity/WifiState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/connectivity/WifiState;-><init>()V

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/connectivity/SignalController;->dump(Ljava/io/PrintWriter;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public fetchInitialState()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->fetchInitialState()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->copyWifiStates()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method public handleBroadcast(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->handleBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->copyWifiStates()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method isCarrierMergedWifi(I)Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/connectivity/WifiState;->isDefault:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/connectivity/WifiState;->isCarrierMerged:Z

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget p0, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->subId:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyListeners(Lcom/android/systemui/statusbar/connectivity/SignalCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/connectivity/WifiState;->isCarrierMerged:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->notifyListenersForCarrierWifi(Lcom/android/systemui/statusbar/connectivity/SignalCallback;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->notifyListenersForNonCarrierWifi(Lcom/android/systemui/statusbar/connectivity/SignalCallback;)V

    :goto_0
    return-void
.end method

.method notifyWifiLevelChangeIfNecessary(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->level:I

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->notifyWifiLevelChange(I)V

    :cond_0
    return-void
.end method

.method refreshLocale()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->refreshLocale()V

    return-void
.end method

.method setActivity(I)V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/WifiState;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq p1, v3, :cond_1

    if-ne p1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v5, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v4

    :goto_1
    iput-boolean v5, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityIn:Z

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/WifiState;

    if-eq p1, v3, :cond_2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    :cond_2
    move v2, v4

    :cond_3
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityOut:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method
