.class public Lcom/android/server/vcn/UnderlyingNetworkTracker;
.super Ljava/lang/Object;
.source "UnderlyingNetworkTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vcn/UnderlyingNetworkTracker$Dependencies;,
        Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkTrackerCallback;,
        Lcom/android/server/vcn/UnderlyingNetworkTracker$VcnActiveDataSubscriptionIdListener;,
        Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;,
        Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;,
        Lcom/android/server/vcn/UnderlyingNetworkTracker$NetworkBringupCallback;
    }
.end annotation


# static fields
.field static final PRIORITY_ANY:I = 0x7fffffff

.field static final PRIORITY_MACRO_CELLULAR:I = 0x3

.field static final PRIORITY_OPPORTUNISTIC_CELLULAR:I = 0x0

.field private static final PRIORITY_TO_STRING_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final PRIORITY_WIFI_IN_USE:I = 0x1

.field static final PRIORITY_WIFI_PROSPECTIVE:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field static final WIFI_ENTRY_RSSI_THRESHOLD_DEFAULT:I = -0x46

.field static final WIFI_EXIT_RSSI_THRESHOLD_DEFAULT:I = -0x4a


# instance fields
.field private final mActiveDataSubIdListener:Landroid/telephony/TelephonyCallback;

.field private mCarrierConfig:Landroid/os/PersistableBundle;

.field private final mCb:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkTrackerCallback;

.field private final mCellBringupCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/ConnectivityManager$NetworkCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mCurrentRecord:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

.field private final mDeps:Lcom/android/server/vcn/UnderlyingNetworkTracker$Dependencies;

.field private final mHandler:Landroid/os/Handler;

.field private mIsQuitting:Z

.field private mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

.field private mRecordInProgress:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;

.field private mRouteSelectionCallback:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;

.field private final mSubscriptionGroup:Landroid/os/ParcelUuid;

.field private final mVcnContext:Lcom/android/server/vcn/VcnContext;

.field private mWifiBringupCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mWifiEntryRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mWifiExitRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/android/server/vcn/UnderlyingNetworkTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->PRIORITY_TO_STRING_MAP:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "PRIORITY_OPPORTUNISTIC_CELLULAR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    const-string v2, "PRIORITY_WIFI_IN_USE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x2

    const-string v2, "PRIORITY_WIFI_PROSPECTIVE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x3

    const-string v2, "PRIORITY_MACRO_CELLULAR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x7fffffff

    const-string v2, "PRIORITY_ANY"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkTrackerCallback;)V
    .locals 6

    new-instance v5, Lcom/android/server/vcn/UnderlyingNetworkTracker$Dependencies;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lcom/android/server/vcn/UnderlyingNetworkTracker$Dependencies;-><init>(Lcom/android/server/vcn/UnderlyingNetworkTracker$1;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/vcn/UnderlyingNetworkTracker;-><init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkTrackerCallback;Lcom/android/server/vcn/UnderlyingNetworkTracker$Dependencies;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkTrackerCallback;Lcom/android/server/vcn/UnderlyingNetworkTracker$Dependencies;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/vcn/UnderlyingNetworkTracker$VcnActiveDataSubscriptionIdListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/vcn/UnderlyingNetworkTracker$VcnActiveDataSubscriptionIdListener;-><init>(Lcom/android/server/vcn/UnderlyingNetworkTracker;Lcom/android/server/vcn/UnderlyingNetworkTracker$1;)V

    iput-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mActiveDataSubIdListener:Landroid/telephony/TelephonyCallback;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mCellBringupCallbacks:Ljava/util/List;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mIsQuitting:Z

    const-string v1, "Missing vcnContext"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/android/server/vcn/VcnContext;

    iput-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    const-string v2, "Missing subscriptionGroup"

    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v2, p2

    check-cast v2, Landroid/os/ParcelUuid;

    iput-object v2, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    const-string v3, "Missing snapshot"

    invoke-static {p3, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, p3

    check-cast v3, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iput-object v3, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    const-string v3, "Missing cb"

    invoke-static {p4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, p4

    check-cast v3, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkTrackerCallback;

    iput-object v3, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mCb:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkTrackerCallback;

    const-string v3, "Missing deps"

    invoke-static {p5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, p5

    check-cast v3, Lcom/android/server/vcn/UnderlyingNetworkTracker$Dependencies;

    iput-object v3, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mDeps:Lcom/android/server/vcn/UnderlyingNetworkTracker$Dependencies;

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v1}, Lcom/android/server/vcn/VcnContext;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    iput-object v4, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    nop

    invoke-virtual {v1}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    new-instance v4, Landroid/os/HandlerExecutor;

    invoke-direct {v4, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v1, v4, v0}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    invoke-virtual {v0, v2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v2}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v2, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    if-eqz v2, :cond_0

    iput-object v2, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    iget-object v3, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->isOpportunistic(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Ljava/util/Set;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->registerOrUpdateNetworkRequests()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/vcn/UnderlyingNetworkTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->reevaluateNetworks()V

    return-void
.end method

.method static synthetic access$1200(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->logWtf(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Ljava/util/Set;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->isOpportunistic(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/os/PersistableBundle;)I
    .locals 1

    invoke-static {p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->getWifiExitRssiThreshold(Landroid/os/PersistableBundle;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Landroid/os/PersistableBundle;)I
    .locals 1

    invoke-static {p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->getWifiEntryRssiThreshold(Landroid/os/PersistableBundle;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900()Landroid/util/SparseArray;
    .locals 1

    sget-object v0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->PRIORITY_TO_STRING_MAP:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/vcn/UnderlyingNetworkTracker;)Landroid/os/ParcelUuid;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/vcn/UnderlyingNetworkTracker;)Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/vcn/UnderlyingNetworkTracker;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mCurrentRecord:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/vcn/UnderlyingNetworkTracker;)Landroid/os/PersistableBundle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method private getBaseNetworkRequestBuilder()Landroid/net/NetworkRequest$Builder;
    .locals 2

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private getCellNetworkRequestForSubId(I)Landroid/net/NetworkRequest;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->getBaseNetworkRequestBuilder()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    new-instance v1, Landroid/net/TelephonyNetworkSpecifier;

    invoke-direct {v1, p1}, Landroid/net/TelephonyNetworkSpecifier;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    return-object v0
.end method

.method private getRouteSelectionRequest()Landroid/net/NetworkRequest;
    .locals 3

    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->isInTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->getTestNetworkRequest(Ljava/util/Set;)Landroid/net/NetworkRequest;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->getBaseNetworkRequestBuilder()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v2, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->setSubscriptionIds(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    return-object v0
.end method

.method private getTestNetworkRequest(Ljava/util/Set;)Landroid/net/NetworkRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/net/NetworkRequest;"
        }
    .end annotation

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/NetworkRequest$Builder;->setSubscriptionIds(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    return-object v0
.end method

.method private static getWifiEntryRssiThreshold(Landroid/os/PersistableBundle;)I
    .locals 2

    const/16 v0, -0x46

    if-eqz p0, :cond_0

    const-string v1, "vcn_network_selection_wifi_entry_rssi_threshold"

    invoke-virtual {p0, v1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    return v0
.end method

.method private getWifiEntryRssiThresholdNetworkRequest()Landroid/net/NetworkRequest;
    .locals 3

    invoke-direct {p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->getBaseNetworkRequestBuilder()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v2, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->setSubscriptionIds(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    invoke-static {v1}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->getWifiEntryRssiThreshold(Landroid/os/PersistableBundle;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->setSignalStrength(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    return-object v0
.end method

.method private static getWifiExitRssiThreshold(Landroid/os/PersistableBundle;)I
    .locals 2

    const/16 v0, -0x4a

    if-eqz p0, :cond_0

    const-string v1, "vcn_network_selection_wifi_exit_rssi_threshold"

    invoke-virtual {p0, v1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    return v0
.end method

.method private getWifiExitRssiThresholdNetworkRequest()Landroid/net/NetworkRequest;
    .locals 3

    invoke-direct {p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->getBaseNetworkRequestBuilder()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v2, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->setSubscriptionIds(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    invoke-static {v1}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->getWifiExitRssiThreshold(Landroid/os/PersistableBundle;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->setSignalStrength(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    return-object v0
.end method

.method private getWifiNetworkRequest()Landroid/net/NetworkRequest;
    .locals 3

    invoke-direct {p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->getBaseNetworkRequestBuilder()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v2, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->setSubscriptionIds(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    return-object v0
.end method

.method private static isOpportunistic(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Ljava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string v1, "Got null snapshot"

    invoke-static {v1}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->logWtf(Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->isOpportunistic(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    goto :goto_0

    :cond_2
    return v0
.end method

.method private static logWtf(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " WTF: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v1, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " WTF: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private reevaluateNetworks()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mIsQuitting:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mRouteSelectionCallback:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    nop

    invoke-static {v0}, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;->access$200(Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;)Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    :goto_0
    iget-object v2, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mCurrentRecord:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    iput-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mCurrentRecord:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    iget-object v2, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mCb:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkTrackerCallback;

    invoke-interface {v2, v1}, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkTrackerCallback;->onSelectedUnderlyingNetworkChanged(Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;)V

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private registerOrUpdateNetworkRequests()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mRouteSelectionCallback:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;

    iget-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mWifiBringupCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v2, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mWifiEntryRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v3, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mWifiExitRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mCellBringupCallbacks:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mCellBringupCallbacks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    iget-boolean v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mIsQuitting:Z

    if-nez v5, :cond_1

    new-instance v5, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;

    invoke-direct {v5, p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;-><init>(Lcom/android/server/vcn/UnderlyingNetworkTracker;)V

    iput-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mRouteSelectionCallback:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;

    iget-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->getRouteSelectionRequest()Landroid/net/NetworkRequest;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mRouteSelectionCallback:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;

    iget-object v8, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v7, v8}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    new-instance v5, Lcom/android/server/vcn/UnderlyingNetworkTracker$NetworkBringupCallback;

    invoke-direct {v5, p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker$NetworkBringupCallback;-><init>(Lcom/android/server/vcn/UnderlyingNetworkTracker;)V

    iput-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mWifiEntryRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->getWifiEntryRssiThresholdNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mWifiEntryRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v8, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v7, v8}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    new-instance v5, Lcom/android/server/vcn/UnderlyingNetworkTracker$NetworkBringupCallback;

    invoke-direct {v5, p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker$NetworkBringupCallback;-><init>(Lcom/android/server/vcn/UnderlyingNetworkTracker;)V

    iput-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mWifiExitRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->getWifiExitRssiThresholdNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mWifiExitRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v8, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v7, v8}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    new-instance v5, Lcom/android/server/vcn/UnderlyingNetworkTracker$NetworkBringupCallback;

    invoke-direct {v5, p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker$NetworkBringupCallback;-><init>(Lcom/android/server/vcn/UnderlyingNetworkTracker;)V

    iput-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mWifiBringupCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->getWifiNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mWifiBringupCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v8, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v7, v8}, Landroid/net/ConnectivityManager;->requestBackgroundNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    iget-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v6, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    invoke-virtual {v5, v6}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    new-instance v7, Lcom/android/server/vcn/UnderlyingNetworkTracker$NetworkBringupCallback;

    invoke-direct {v7, p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker$NetworkBringupCallback;-><init>(Lcom/android/server/vcn/UnderlyingNetworkTracker;)V

    iget-object v8, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mCellBringupCallbacks:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {p0, v6}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->getCellNetworkRequestForSubId(I)Landroid/net/NetworkRequest;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9, v7, v10}, Landroid/net/ConnectivityManager;->requestBackgroundNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mRouteSelectionCallback:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;

    iput-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mWifiBringupCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iput-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mWifiEntryRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iput-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mWifiExitRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    :goto_1
    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_2
    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_3
    if-eqz v2, :cond_4

    iget-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_4
    if-eqz v3, :cond_5

    iget-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_5
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v7, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v7, v6}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_2

    :cond_6
    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 8

    const-string v0, "UnderlyingNetworkTracker:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Carrier WiFi Entry Threshold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    invoke-static {v1}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->getWifiEntryRssiThreshold(Landroid/os/PersistableBundle;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Carrier WiFi Exit Threshold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    invoke-static {v1}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->getWifiExitRssiThreshold(Landroid/os/PersistableBundle;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Currently selected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mCurrentRecord:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->network:Landroid/net/Network;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Underlying networks:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mRouteSelectionCallback:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;->access$200(Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;)Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    iget-object v4, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    iget-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v6, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mCurrentRecord:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    iget-object v7, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    move-object v2, v1

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->access$2000(Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;Lcom/android/internal/util/IndentingPrintWriter;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;Landroid/os/PersistableBundle;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public teardown()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mIsQuitting:Z

    invoke-direct {p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->registerOrUpdateNetworkRequests()V

    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mActiveDataSubIdListener:Landroid/telephony/TelephonyCallback;

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    return-void
.end method

.method public updateSubscriptionSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V
    .locals 3

    const-string v0, "Missing newSnapshot"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iput-object p1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->registerOrUpdateNetworkRequests()V

    return-void
.end method
