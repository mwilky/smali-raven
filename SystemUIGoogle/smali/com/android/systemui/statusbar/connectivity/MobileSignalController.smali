.class public Lcom/android/systemui/statusbar/connectivity/MobileSignalController;
.super Lcom/android/systemui/statusbar/connectivity/SignalController;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/connectivity/MobileSignalController$SbInfo;,
        Lcom/android/systemui/statusbar/connectivity/MobileSignalController$QsInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/connectivity/SignalController<",
        "Lcom/android/systemui/statusbar/connectivity/MobileState;",
        "Lcom/android/settingslib/SignalIcon$MobileIconGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final SSDF:Ljava/text/SimpleDateFormat;


# instance fields
.field private final mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

.field private mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

.field private mDefaultIcons:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field private final mDefaults:Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;

.field private final mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

.field private mImsType:I

.field mInflateSignalStrengths:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mLastLevel:I

.field private mLastWlanCrossSimLevel:I

.field private mLastWlanLevel:I

.field private mLastWwanLevel:I

.field private final mMobileCallback:Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

.field private final mMobileStatusHistory:[Ljava/lang/String;

.field private mMobileStatusHistoryIndex:I

.field mMobileStatusTracker:Lcom/android/settingslib/mobile/MobileStatusTracker;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mNetworkNameDefault:Ljava/lang/String;

.field private final mNetworkNameSeparator:Ljava/lang/String;

.field private mNetworkToIconLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/SignalIcon$MobileIconGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserver:Landroid/database/ContentObserver;

.field private final mPhone:Landroid/telephony/TelephonyManager;

.field private final mProviderModelBehavior:Z

.field private final mProviderModelSetting:Z

.field private final mReceiverHandler:Landroid/os/Handler;

.field private final mRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

.field final mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field private final mTryRegisterIms:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->SSDF:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/mobile/MobileMappings$Config;ZLandroid/telephony/TelephonyManager;Lcom/android/systemui/statusbar/connectivity/CallbackHandler;Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;Landroid/telephony/SubscriptionInfo;Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;Landroid/os/Looper;Lcom/android/systemui/util/CarrierConfigTracker;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 12

    move-object v6, p0

    move v7, p3

    move-object/from16 v8, p9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MobileSignalController("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/connectivity/SignalController;-><init>(Ljava/lang/String;Landroid/content/Context;ILcom/android/systemui/statusbar/connectivity/CallbackHandler;Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;)V

    const/4 v0, 0x1

    iput v0, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mImsType:I

    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mInflateSignalStrengths:Z

    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mMobileStatusHistory:[Ljava/lang/String;

    new-instance v5, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;-><init>(Lcom/android/systemui/statusbar/connectivity/MobileSignalController;)V

    iput-object v5, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mMobileCallback:Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

    new-instance v0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$2;-><init>(Lcom/android/systemui/statusbar/connectivity/MobileSignalController;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    new-instance v0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$4;-><init>(Lcom/android/systemui/statusbar/connectivity/MobileSignalController;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mTryRegisterIms:Ljava/lang/Runnable;

    move-object/from16 v0, p10

    iput-object v0, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    move-object v0, p2

    iput-object v0, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    move-object/from16 v1, p4

    iput-object v1, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    move-object/from16 v4, p8

    iput-object v4, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mDefaults:Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;

    move-object/from16 v3, p7

    iput-object v3, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    sget v0, Lcom/android/systemui/R$string;->status_bar_network_name_separator:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    const v0, 0x1040490

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mReceiverHandler:Landroid/os/Handler;

    iget-object v2, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    invoke-static {v2}, Lcom/android/settingslib/mobile/MobileMappings;->mapIconSets(Lcom/android/settingslib/mobile/MobileMappings$Config;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    iget-object v2, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    invoke-static {v2}, Lcom/android/settingslib/mobile/MobileMappings;->getDefaultIcons(Lcom/android/settingslib/mobile/MobileMappings$Config;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object v2

    iput-object v2, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mDefaultIcons:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v2, v6, Lcom/android/systemui/statusbar/connectivity/SignalController;->mLastState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    move-object v9, v2

    check-cast v9, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-object v10, v6, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    move-object v11, v10

    check-cast v11, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iput-object v0, v11, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkName:Ljava/lang/String;

    iput-object v0, v9, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkName:Ljava/lang/String;

    move-object v9, v2

    check-cast v9, Lcom/android/systemui/statusbar/connectivity/MobileState;

    move-object v11, v10

    check-cast v11, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iput-object v0, v11, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkNameData:Ljava/lang/String;

    iput-object v0, v9, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkNameData:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    move-object v9, v10

    check-cast v9, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iput-boolean v7, v9, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->enabled:Z

    iput-boolean v7, v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->enabled:Z

    check-cast v2, Lcom/android/systemui/statusbar/connectivity/MobileState;

    check-cast v10, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-object v0, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mDefaultIcons:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iput-object v0, v10, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    iput-object v0, v2, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$3;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$3;-><init>(Lcom/android/systemui/statusbar/connectivity/MobileSignalController;Landroid/os/Handler;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ims/ImsMmTelManager;->createForSubscriptionId(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0

    iput-object v0, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    new-instance v7, Lcom/android/settingslib/mobile/MobileStatusTracker;

    move-object v0, v7

    move-object/from16 v1, p4

    move-object/from16 v2, p9

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/mobile/MobileStatusTracker;-><init>(Landroid/telephony/TelephonyManager;Landroid/os/Looper;Landroid/telephony/SubscriptionInfo;Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;)V

    iput-object v7, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mMobileStatusTracker:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-virtual/range {p11 .. p11}, Lcom/android/systemui/flags/FeatureFlags;->isCombinedStatusBarSignalIconsEnabled()Z

    move-result v0

    iput-boolean v0, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mProviderModelBehavior:Z

    invoke-virtual/range {p11 .. p11}, Lcom/android/systemui/flags/FeatureFlags;->isProviderModelSettingEnabled()Z

    move-result v0

    iput-boolean v0, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mProviderModelSetting:Z

    return-void
.end method

.method static synthetic access$000()Ljava/text/SimpleDateFormat;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->SSDF:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/connectivity/MobileSignalController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->recordLastMobileStatus(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/connectivity/MobileSignalController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mReceiverHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/connectivity/MobileSignalController;)Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/connectivity/MobileSignalController;)Landroid/telephony/ims/ImsMmTelManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/connectivity/MobileSignalController;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mTryRegisterIms:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/connectivity/MobileSignalController;Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->updateMobileStatus(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/connectivity/MobileSignalController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->updateTelephony()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/connectivity/MobileSignalController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mImsType:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/connectivity/MobileSignalController;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mLastWwanLevel:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/connectivity/MobileSignalController;IZ)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getCallStrengthIcon(IZ)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/connectivity/MobileSignalController;IZ)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getCallStrengthDescription(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/connectivity/MobileSignalController;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mLastWlanLevel:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/connectivity/MobileSignalController;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mLastWlanCrossSimLevel:I

    return p0
.end method

.method private checkDefaultData()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    sget-object v2, Lcom/android/settingslib/mobile/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    if-eq v1, v2, :cond_0

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->defaultDataOff:Z

    return-void

    :cond_0
    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->isDataControllerDisabled()Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->defaultDataOff:Z

    return-void
.end method

.method private getCallStrengthDescription(IZ)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    sget-object p2, Lcom/android/settingslib/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    aget p1, p2, p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/android/settingslib/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget p1, p2, p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getCallStrengthIcon(IZ)I
    .locals 0

    if-eqz p2, :cond_0

    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->WIFI_CALL_STRENGTH_ICONS:[I

    aget p0, p0, p1

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->MOBILE_CALL_STRENGTH_ICONS:[I

    aget p0, p0, p1

    :goto_0
    return p0
.end method

.method private getCdmaLevel(Landroid/telephony/SignalStrength;)I
    .locals 1

    const-class p0, Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {p1, p0}, Landroid/telephony/SignalStrength;->getCellSignalStrengths(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getLevel()I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method private getNumLevels()I
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mInflateSignalStrengths:Z

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result p0

    return p0
.end method

.method private getQsInfo(Ljava/lang/String;I)Lcom/android/systemui/statusbar/connectivity/MobileSignalController$QsInfo;
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mProviderModelSetting:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mProviderModelBehavior:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataSim:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    if-eqz v0, :cond_2

    move-object v0, v3

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->isDefault:Z

    if-nez v0, :cond_2

    new-instance p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$QsInfo;

    invoke-direct {p0, v2, v5, v5}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$QsInfo;-><init>(ILcom/android/systemui/statusbar/connectivity/IconState;Ljava/lang/CharSequence;)V

    return-object p0

    :cond_2
    check-cast v3, Lcom/android/systemui/statusbar/connectivity/MobileState;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/connectivity/MobileState;->showQuickSettingsRatIcon()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iget-boolean v0, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->alwaysShowDataRatIcon:Z

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move p2, v2

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->enabled:Z

    if-eqz v3, :cond_5

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->isEmergency:Z

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    new-instance v0, Lcom/android/systemui/statusbar/connectivity/IconState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getQsCurrentIconId()I

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ZILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    move-object p1, p0

    check-cast p1, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/connectivity/MobileState;->isEmergency:Z

    if-nez p1, :cond_6

    check-cast p0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-object v5, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkName:Ljava/lang/String;

    :cond_6
    move v2, p2

    move-object p0, v5

    move-object v5, v0

    goto :goto_4

    :cond_7
    move-object p0, v5

    :goto_4
    new-instance p1, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$QsInfo;

    invoke-direct {p1, v2, v5, p0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$QsInfo;-><init>(ILcom/android/systemui/statusbar/connectivity/IconState;Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method private getSbInfo(Ljava/lang/String;I)Lcom/android/systemui/statusbar/connectivity/MobileSignalController$SbInfo;
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/connectivity/MobileState;->isDataDisabledOrNotDefault()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mProviderModelBehavior:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    move-object v4, v1

    check-cast v4, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataConnected:Z

    if-nez v4, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataSim:Z

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->isDefault:Z

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-nez v0, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iget-boolean v4, v4, Lcom/android/settingslib/mobile/MobileMappings$Config;->alwaysShowDataRatIcon:Z

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move p2, v3

    :cond_3
    :goto_1
    move-object v4, v1

    check-cast v4, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/connectivity/MobileState;->roaming:Z

    or-int/2addr v0, v4

    new-instance v4, Lcom/android/systemui/statusbar/connectivity/IconState;

    if-eqz v0, :cond_4

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/connectivity/MobileState;->airplaneMode:Z

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getCurrentIconId()I

    move-result v5

    invoke-direct {v4, v1, v5, p1}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ZILjava/lang/String;)V

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast p0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->airplaneMode:Z

    if-nez p0, :cond_5

    goto :goto_6

    :cond_5
    move v2, v3

    goto :goto_6

    :cond_6
    new-instance v4, Lcom/android/systemui/statusbar/connectivity/IconState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->enabled:Z

    if-eqz v5, :cond_7

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/connectivity/MobileState;->airplaneMode:Z

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_3

    :cond_7
    move v1, v3

    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getCurrentIconId()I

    move-result v5

    invoke-direct {v4, v1, v5, p1}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ZILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataConnected:Z

    if-eqz v1, :cond_8

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/connectivity/MobileState;->isDefault:Z

    if-nez v1, :cond_9

    :cond_8
    if-eqz v0, :cond_a

    :cond_9
    move v0, v2

    goto :goto_4

    :cond_a
    move v0, v3

    :goto_4
    if-nez v0, :cond_c

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iget-boolean p0, p0, Lcom/android/settingslib/mobile/MobileMappings$Config;->alwaysShowDataRatIcon:Z

    if-eqz p0, :cond_b

    goto :goto_5

    :cond_b
    move p2, v3

    :cond_c
    :goto_5
    move-object p0, p1

    check-cast p0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->enabled:Z

    if-eqz p0, :cond_5

    check-cast p1, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/connectivity/MobileState;->airplaneMode:Z

    if-nez p0, :cond_5

    :goto_6
    new-instance p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$SbInfo;

    invoke-direct {p0, v2, p2, v4}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$SbInfo;-><init>(ZILcom/android/systemui/statusbar/connectivity/IconState;)V

    return-object p0
.end method

.method private hideNoCalling()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->hasDefaultNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/CarrierConfigTracker;->getNoCallingConfig(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isCarrierNetworkChangeActive()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast p0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->carrierNetworkChangeMode:Z

    return p0
.end method

.method private isRoaming()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->isCarrierNetworkChangeActive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/connectivity/MobileState;->isCdma()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCdmaEnhancedRoamingIndicatorDisplayNumber()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    move v1, v0

    :cond_1
    return v1

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast p0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/MobileState;->isRoaming()Z

    move-result p0

    return p0
.end method

.method private maybeNotifyCallStateChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/connectivity/MobileState;->getVoiceServiceState()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    if-eqz p1, :cond_1

    if-nez v0, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast p1, Lcom/android/systemui/statusbar/connectivity/MobileState;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/connectivity/MobileState;->isNoCalling()Z

    move-result p1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->hideNoCalling()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    and-int/2addr p1, v0

    new-instance v0, Lcom/android/systemui/statusbar/connectivity/IconState;

    sget v1, Lcom/android/systemui/R$drawable;->ic_qs_no_calling_sms:I

    sget v2, Lcom/android/settingslib/AccessibilityContentDescriptions;->NO_CALLING:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ZILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyCallStateChange(Lcom/android/systemui/statusbar/connectivity/IconState;I)V

    :cond_2
    return-void
.end method

.method private recordLastMobileStatus(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mMobileStatusHistory:[Ljava/lang/String;

    iget v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mMobileStatusHistoryIndex:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mMobileStatusHistoryIndex:I

    return-void
.end method

.method private updateDataSim()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mDefaults:Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;

    invoke-virtual {v0}, Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;->getActiveDataSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataSim:Z

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast p0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataSim:Z

    :goto_1
    return-void
.end method

.method private updateInflateSignalStrength()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settingslib/net/SignalStrengthUtil;->shouldInflateSignalStrength(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mInflateSignalStrengths:Z

    return-void
.end method

.method private updateMobileStatus(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/connectivity/MobileState;->getVoiceServiceState()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/MobileState;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/connectivity/MobileState;->setFromMobileStatus(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    iget-object p1, p1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->signalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->notifyMobileLevelChangeIfNecessary(Landroid/telephony/SignalStrength;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mProviderModelBehavior:Z

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->maybeNotifyCallStateChanged(I)V

    :cond_0
    return-void
.end method

.method private updateTelephony()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mTag:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTelephonySignalStrength: hasService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v2, Lcom/android/systemui/statusbar/connectivity/MobileState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/connectivity/MobileState;->isInService()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ss="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v2, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/connectivity/MobileState;->signalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " displayInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v2, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/connectivity/MobileState;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->checkDefaultData()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/MobileState;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/connectivity/MobileState;->isInService()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/MobileState;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->signalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getSignalLevel(Landroid/telephony/SignalStrength;)I

    move-result v0

    iput v0, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->level:I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-static {v0}, Lcom/android/settingslib/mobile/MobileMappings;->getIconKey(Landroid/telephony/TelephonyDisplayInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/SignalIcon$IconGroup;

    iput-object v0, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mDefaultIcons:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/MobileState;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/connectivity/MobileState;->isDataConnected()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataConnected:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->isRoaming()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->roaming:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->isCarrierNetworkChangeActive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->isDataDisabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iget-boolean v0, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->alwaysShowDataRatIcon:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mDefaults:Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;

    invoke-virtual {v1}, Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;->getDefaultDataSubId()I

    move-result v1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->DATA_DISABLED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/connectivity/MobileState;->isEmergencyOnly()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/connectivity/MobileState;->isEmergency:Z

    if-eq v0, v2, :cond_6

    move-object v0, v1

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/MobileState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/connectivity/MobileState;->isEmergencyOnly()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->isEmergency:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->recalculateEmergency()V

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/connectivity/MobileState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/MobileState;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/connectivity/MobileState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkName:Ljava/lang/String;

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkNameData:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataSim:Z

    if-eqz v1, :cond_8

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/connectivity/MobileState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/MobileState;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/connectivity/MobileState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkNameData:Ljava/lang/String;

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic cleanState()Lcom/android/systemui/statusbar/connectivity/ConnectivityState;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->cleanState()Lcom/android/systemui/statusbar/connectivity/MobileState;

    move-result-object p0

    return-object p0
.end method

.method protected cleanState()Lcom/android/systemui/statusbar/connectivity/MobileState;
    .locals 0

    new-instance p0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/connectivity/MobileState;-><init>()V

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/connectivity/SignalController;->dump(Ljava/io/PrintWriter;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSubscription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mProviderModelSetting="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mProviderModelSetting:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mProviderModelBehavior="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mProviderModelBehavior:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mInflateSignalStrengths="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mInflateSignalStrengths:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  isDataDisabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->isDataDisabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNetworkToIconLookup="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  MobileStatusHistory"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x40

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mMobileStatusHistory:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mMobileStatusHistoryIndex:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_1
    iget v3, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mMobileStatusHistoryIndex:I

    add-int/2addr v3, v2

    sub-int/2addr v3, v1

    if-lt v0, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Previous MobileStatus("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mMobileStatusHistoryIndex:I

    add-int/2addr v4, v2

    sub-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mMobileStatusHistory:[Ljava/lang/String;

    and-int/lit8 v5, v0, 0x3f

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public getCurrentIconId()I
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    sget-object v2, Lcom/android/settingslib/mobile/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getNumLevels()I

    move-result p0

    invoke-static {p0}, Lcom/android/settingslib/graph/SignalDrawable;->getCarrierChangeState(I)I

    move-result p0

    return p0

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->level:I

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mInflateSignalStrengths:Z

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/connectivity/MobileState;->userSetup:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-object v3, v3, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->DATA_DISABLED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    if-eq v3, v5, :cond_2

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-object v3, v3, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    if-ne v3, v5, :cond_3

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/connectivity/MobileState;->defaultDataOff:Z

    if-eqz v3, :cond_3

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->inetCondition:I

    if-nez v0, :cond_4

    move v0, v4

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    if-nez v3, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    move v2, v4

    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getNumLevels()I

    move-result p0

    invoke-static {v1, p0, v2}, Lcom/android/settingslib/graph/SignalDrawable;->getState(IIZ)I

    move-result p0

    return p0

    :cond_7
    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->enabled:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getNumLevels()I

    move-result p0

    invoke-static {p0}, Lcom/android/settingslib/graph/SignalDrawable;->getEmptyState(I)I

    move-result p0

    return p0

    :cond_8
    return v2
.end method

.method getNetworkNameForCarrierWiFi()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getQsCurrentIconId()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getCurrentIconId()I

    move-result p0

    return p0
.end method

.method getSignalLevel(Landroid/telephony/SignalStrength;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iget-boolean v0, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->alwaysShowCdmaRssi:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getCdmaLevel(Landroid/telephony/SignalStrength;)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p0

    return p0
.end method

.method handleBroadcast(Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telephony.action.SERVICE_PROVIDERS_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "android.telephony.extra.SHOW_SPN"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v0, "android.telephony.extra.SPN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "android.telephony.extra.DATA_SPN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "android.telephony.extra.SHOW_PLMN"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v0, "android.telephony.extra.PLMN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->updateNetworkName(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyListenersIfNecessary()V

    goto :goto_0

    :cond_0
    const-string p1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->updateDataSim()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyListenersIfNecessary()V

    :cond_1
    :goto_0
    return-void
.end method

.method isDataDisabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataConnectionAllowed()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isInService()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast p0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/MobileState;->isInService()Z

    move-result p0

    return p0
.end method

.method notifyDefaultMobileLevelChange(I)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mProviderModelBehavior:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mLastWlanCrossSimLevel:I

    iget v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mImsType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/connectivity/IconState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getCallStrengthIcon(IZ)I

    move-result v3

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getCallStrengthDescription(IZ)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v3, p1}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ZILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyCallStateChange(Lcom/android/systemui/statusbar/connectivity/IconState;I)V

    return-void
.end method

.method public notifyListeners(Lcom/android/systemui/statusbar/connectivity/SignalCallback;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    iget-object v2, v0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->isCarrierMergedWifi(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getIcons()Lcom/android/settingslib/SignalIcon$IconGroup;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

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

    iget-object v4, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v4, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget v4, v4, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->inetCondition:I

    if-nez v4, :cond_1

    iget-object v3, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->data_connection_no_internet:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_1
    move-object v11, v3

    iget v3, v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataType:I

    invoke-direct {v0, v2, v3}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getQsInfo(Ljava/lang/String;I)Lcom/android/systemui/statusbar/connectivity/MobileSignalController$QsInfo;

    move-result-object v3

    iget v1, v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataType:I

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getSbInfo(Ljava/lang/String;I)Lcom/android/systemui/statusbar/connectivity/MobileSignalController$SbInfo;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;

    iget-object v5, v1, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$SbInfo;->icon:Lcom/android/systemui/statusbar/connectivity/IconState;

    iget-object v6, v3, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$QsInfo;->icon:Lcom/android/systemui/statusbar/connectivity/IconState;

    iget v7, v1, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$SbInfo;->ratTypeIcon:I

    iget v8, v3, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$QsInfo;->ratTypeIcon:I

    iget-object v4, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v4, Lcom/android/systemui/statusbar/connectivity/MobileState;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/connectivity/MobileState;->hasActivityIn()Z

    move-result v9

    iget-object v4, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v4, Lcom/android/systemui/statusbar/connectivity/MobileState;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/connectivity/MobileState;->hasActivityOut()Z

    move-result v10

    iget-object v13, v3, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$QsInfo;->description:Ljava/lang/CharSequence;

    iget-object v3, v0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v14

    iget-object v0, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->roaming:Z

    iget-boolean v0, v1, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$SbInfo;->showTriangle:Z

    move-object v4, v2

    move/from16 v16, v0

    invoke-direct/range {v4 .. v16}, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;-><init>(Lcom/android/systemui/statusbar/connectivity/IconState;Lcom/android/systemui/statusbar/connectivity/IconState;IIZZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZ)V

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/connectivity/SignalCallback;->setMobileDataIndicators(Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;)V

    return-void
.end method

.method notifyMobileLevelChangeIfNecessary(Landroid/telephony/SignalStrength;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mProviderModelBehavior:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getSignalLevel(Landroid/telephony/SignalStrength;)I

    move-result p1

    iget v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mLastLevel:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mLastLevel:I

    iput p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mLastWwanLevel:I

    iget v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mImsType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/android/systemui/statusbar/connectivity/IconState;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getCallStrengthIcon(IZ)I

    move-result v3

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getCallStrengthDescription(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ZILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyCallStateChange(Lcom/android/systemui/statusbar/connectivity/IconState;I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataSim:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->notifyDefaultMobileLevelChange(I)V

    :cond_2
    return-void
.end method

.method notifyWifiLevelChange(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mProviderModelBehavior:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mLastWlanLevel:I

    iget v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mImsType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/connectivity/IconState;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getCallStrengthIcon(IZ)I

    move-result v2

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getCallStrengthDescription(IZ)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ZILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyCallStateChange(Lcom/android/systemui/statusbar/connectivity/IconState;I)V

    return-void
.end method

.method onMobileDataChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->checkDefaultData()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method refreshCallIndicator(Lcom/android/systemui/statusbar/connectivity/SignalCallback;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/connectivity/MobileState;->isNoCalling()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->hideNoCalling()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    and-int/2addr v0, v1

    new-instance v1, Lcom/android/systemui/statusbar/connectivity/IconState;

    sget v3, Lcom/android/systemui/R$drawable;->ic_qs_no_calling_sms:I

    sget v4, Lcom/android/settingslib/AccessibilityContentDescriptions;->NO_CALLING:I

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v3, v4}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ZILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-interface {p1, v1, v0}, Lcom/android/systemui/statusbar/connectivity/SignalCallback;->setCallIndicator(Lcom/android/systemui/statusbar/connectivity/IconState;I)V

    iget v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mImsType:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/connectivity/IconState;

    iget v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mLastWlanCrossSimLevel:I

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getCallStrengthIcon(IZ)I

    move-result v0

    iget v4, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mLastWlanCrossSimLevel:I

    invoke-direct {p0, v4, v3}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getCallStrengthDescription(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ZILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/systemui/statusbar/connectivity/IconState;

    iget v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mLastWlanLevel:I

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getCallStrengthIcon(IZ)I

    move-result v0

    iget v3, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mLastWlanLevel:I

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getCallStrengthDescription(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ZILjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/systemui/statusbar/connectivity/IconState;

    iget v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mLastWwanLevel:I

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getCallStrengthIcon(IZ)I

    move-result v0

    iget v4, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mLastWwanLevel:I

    invoke-direct {p0, v4, v3}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getCallStrengthDescription(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ZILjava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    invoke-interface {p1, v1, p0}, Lcom/android/systemui/statusbar/connectivity/SignalCallback;->setCallIndicator(Lcom/android/systemui/statusbar/connectivity/IconState;I)V

    return-void
.end method

.method public registerListener()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mMobileStatusTracker:Lcom/android/settingslib/mobile/MobileStatusTracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mProviderModelBehavior:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mReceiverHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mTryRegisterIms:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method setActivity(I)V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/MobileState;

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

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

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

.method setAirplaneMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->airplaneMode:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method setCarrierNetworkChangeMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->carrierNetworkChangeMode:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->updateTelephony()V

    return-void
.end method

.method setConfiguration(Lcom/android/settingslib/mobile/MobileMappings$Config;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->updateInflateSignalStrength()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    invoke-static {p1}, Lcom/android/settingslib/mobile/MobileMappings;->mapIconSets(Lcom/android/settingslib/mobile/MobileMappings$Config;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    invoke-static {p1}, Lcom/android/settingslib/mobile/MobileMappings;->getDefaultIcons(Lcom/android/settingslib/mobile/MobileMappings$Config;)Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mDefaultIcons:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->updateTelephony()V

    return-void
.end method

.method setImsType(I)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mImsType:I

    return-void
.end method

.method setUserSetupComplete(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->userSetup:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method public unregisterListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mMobileStatusTracker:Lcom/android/settingslib/mobile/MobileStatusTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    invoke-virtual {v0, p0}, Landroid/telephony/ims/ImsMmTelManager;->unregisterImsRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    return-void
.end method

.method public updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mTransportType:I

    invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget v1, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mTransportType:I

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->isDefault:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    if-nez p2, :cond_1

    check-cast p1, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/connectivity/MobileState;->isDefault:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput p1, v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->inetCondition:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method updateNetworkName(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->CHATTY:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateNetworkName showSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " spn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dataSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " showPlmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " plmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarrierLabel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p4

    if-eqz p4, :cond_2

    iget-object p4, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast p2, Lcom/android/systemui/statusbar/connectivity/MobileState;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p2, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkName:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast p2, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-object p4, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object p4, p2, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkName:Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_6

    if-eqz p3, :cond_6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast p0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkNameData:Ljava/lang/String;

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast p1, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object p0, p1, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkNameData:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method updateNoCallingState()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/connectivity/MobileState;->getVoiceServiceState()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->hideNoCalling()Z

    move-result v2

    xor-int/2addr v1, v2

    and-int/2addr v0, v1

    new-instance v1, Lcom/android/systemui/statusbar/connectivity/IconState;

    sget v2, Lcom/android/systemui/R$drawable;->ic_qs_no_calling_sms:I

    sget v3, Lcom/android/settingslib/AccessibilityContentDescriptions;->NO_CALLING:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ZILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyCallStateChange(Lcom/android/systemui/statusbar/connectivity/IconState;I)V

    return-void
.end method
