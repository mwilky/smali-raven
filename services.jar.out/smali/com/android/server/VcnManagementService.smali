.class public Lcom/android/server/VcnManagementService;
.super Landroid/net/vcn/IVcnManagementService$Stub;
.source "VcnManagementService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VcnManagementService$VcnCallbackImpl;,
        Lcom/android/server/VcnManagementService$TrackingNetworkCallback;,
        Lcom/android/server/VcnManagementService$VcnCallback;,
        Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;,
        Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;,
        Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;,
        Lcom/android/server/VcnManagementService$Dependencies;
    }
.end annotation


# static fields
.field static final CARRIER_PRIVILEGES_LOST_TEARDOWN_DELAY_MS:J

.field private static final DUMP_TIMEOUT_MILLIS:J

.field public static final LOCAL_LOG:Landroid/util/LocalLog;

.field private static final LOCAL_LOG_LINE_COUNT:I = 0x80

.field private static final TAG:Ljava/lang/String;

.field static final VCN_CONFIG_FILE:Ljava/lang/String; = "/data/system/vcn/configs.xml"

.field public static final VDBG:Z = false


# instance fields
.field private final mConfigDiskRwHelper:Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;

.field private final mConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "Landroid/net/vcn/VcnConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDeps:Lcom/android/server/VcnManagementService$Dependencies;

.field private final mHandler:Landroid/os/Handler;

.field private mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

.field private final mLock:Ljava/lang/Object;

.field private final mLooper:Landroid/os/Looper;

.field private final mNetworkProvider:Lcom/android/server/vcn/VcnNetworkProvider;

.field private final mPkgChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final mRegisteredPolicyListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;",
            ">;"
        }
    .end annotation
.end field

.field private final mRegisteredStatusCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTelephonySubscriptionTracker:Lcom/android/server/vcn/TelephonySubscriptionTracker;

.field private final mTelephonySubscriptionTrackerCb:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;

.field private final mTrackingNetworkCallback:Lcom/android/server/VcnManagementService$TrackingNetworkCallback;

.field private final mVcns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "Lcom/android/server/vcn/Vcn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/android/server/VcnManagementService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/VcnManagementService;->DUMP_TIMEOUT_MILLIS:J

    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    sput-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/VcnManagementService;->CARRIER_PRIVILEGES_LOST_TEARDOWN_DELAY_MS:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/VcnManagementService$Dependencies;)V
    .locals 6

    invoke-direct {p0}, Landroid/net/vcn/IVcnManagementService$Stub;-><init>()V

    new-instance v0, Lcom/android/server/VcnManagementService$TrackingNetworkCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/VcnManagementService$TrackingNetworkCallback;-><init>(Lcom/android/server/VcnManagementService;Lcom/android/server/VcnManagementService$1;)V

    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mTrackingNetworkCallback:Lcom/android/server/VcnManagementService$TrackingNetworkCallback;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    sget-object v0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->EMPTY_SNAPSHOT:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mRegisteredPolicyListeners:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mRegisteredStatusCallbacks:Ljava/util/Map;

    const-string v0, "Missing context"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-string v2, "Missing dependencies"

    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v2, p2

    check-cast v2, Lcom/android/server/VcnManagementService$Dependencies;

    iput-object v2, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    invoke-virtual {v2}, Lcom/android/server/VcnManagementService$Dependencies;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/VcnManagementService;->mLooper:Landroid/os/Looper;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/VcnManagementService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/vcn/VcnNetworkProvider;

    invoke-direct {v5, v0, v3}, Lcom/android/server/vcn/VcnNetworkProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/server/VcnManagementService;->mNetworkProvider:Lcom/android/server/vcn/VcnNetworkProvider;

    new-instance v5, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;

    invoke-direct {v5, p0, v1}, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;-><init>(Lcom/android/server/VcnManagementService;Lcom/android/server/VcnManagementService$1;)V

    iput-object v5, p0, Lcom/android/server/VcnManagementService;->mTelephonySubscriptionTrackerCb:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;

    invoke-virtual {v2, v0, v3, v5}, Lcom/android/server/VcnManagementService$Dependencies;->newTelephonySubscriptionTracker(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;)Lcom/android/server/vcn/TelephonySubscriptionTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/VcnManagementService;->mTelephonySubscriptionTracker:Lcom/android/server/vcn/TelephonySubscriptionTracker;

    const-string v3, "/data/system/vcn/configs.xml"

    invoke-virtual {v2, v3}, Lcom/android/server/VcnManagementService$Dependencies;->newPersistableBundleLockingReadWriteHelper(Ljava/lang/String;)Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/VcnManagementService;->mConfigDiskRwHelper:Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;

    new-instance v2, Lcom/android/server/VcnManagementService$1;

    invoke-direct {v2, p0}, Lcom/android/server/VcnManagementService$1;-><init>(Lcom/android/server/VcnManagementService;)V

    iput-object v2, p0, Lcom/android/server/VcnManagementService;->mPkgChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v5, "package"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/VcnManagementService;)V

    invoke-virtual {v4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/VcnManagementService;->startVcnLocked(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/VcnManagementService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/VcnManagementService;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Ljava/util/Map;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/VcnManagementService;->getSubGroupToSubIdMappings(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/VcnManagementService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/VcnManagementService;->notifyAllPolicyListenersLocked()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/VcnManagementService;->stopVcnLocked(Landroid/os/ParcelUuid;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/VcnManagementService;->notifyAllPermissionedStatusCallbacksLocked(Landroid/os/ParcelUuid;I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/VcnManagementService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mRegisteredStatusCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/VcnManagementService;Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;Landroid/os/ParcelUuid;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/VcnManagementService;->isCallbackPermissioned(Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;Landroid/os/ParcelUuid;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/VcnManagementService;)Lcom/android/server/vcn/TelephonySubscriptionTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mTelephonySubscriptionTracker:Lcom/android/server/vcn/TelephonySubscriptionTracker;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/VcnManagementService;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/VcnManagementService;->logDbg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/VcnManagementService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/VcnManagementService;)Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/VcnManagementService;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .locals 0

    iput-object p1, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/VcnManagementService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/VcnManagementService;->logDbg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/VcnManagementService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/VcnManagementService;->isActiveSubGroup(Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/VcnManagementService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    return-object v0
.end method

.method static create(Landroid/content/Context;)Lcom/android/server/VcnManagementService;
    .locals 2

    new-instance v0, Lcom/android/server/VcnManagementService;

    new-instance v1, Lcom/android/server/VcnManagementService$Dependencies;

    invoke-direct {v1}, Lcom/android/server/VcnManagementService$Dependencies;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/VcnManagementService;-><init>(Landroid/content/Context;Lcom/android/server/VcnManagementService$Dependencies;)V

    return-object v0
.end method

.method private enforceCallingUserAndCarrierPrivilege(Landroid/os/ParcelUuid;Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Lcom/android/server/VcnManagementService;->enforcePrimaryUser()V

    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1, v0, p1}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda6;-><init>(Ljava/util/List;Landroid/telephony/SubscriptionManager;Landroid/os/ParcelUuid;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    iget-object v4, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, p2}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    return-void

    :cond_0
    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Carrier privilege required for subscription group to set VCN Config"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private enforceManageTestNetworksForTestMode(Landroid/net/vcn/VcnConfig;)V
    .locals 3

    invoke-virtual {p1}, Landroid/net/vcn/VcnConfig;->isTestModeProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_TEST_NETWORKS"

    const-string v2, "Test-mode require the MANAGE_TEST_NETWORKS permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private enforcePrimaryUser()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/VcnManagementService$Dependencies;->getBinderCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "VcnManagementService can only be used by callers running as the primary user"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Calling identity was System Server. Was Binder calling identity cleared?"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getSubGroupForNetworkCapabilities(Landroid/net/NetworkCapabilities;)Landroid/os/ParcelUuid;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v0, :cond_0

    invoke-virtual {v2, v3}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getGroupForSubId(I)Landroid/os/ParcelUuid;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Got multiple subscription groups for a single network"

    invoke-direct {p0, v4}, Lcom/android/server/VcnManagementService;->logWtf(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2, v3}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getGroupForSubId(I)Landroid/os/ParcelUuid;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private getSubGroupToSubIdMappings(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;",
            ")",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    invoke-virtual {p1, v2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private isActiveSubGroup(Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Z
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getActiveDataSubscriptionGroup()Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private isCallbackPermissioned(Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;Landroid/os/ParcelUuid;)Z
    .locals 3

    iget-object v0, p1, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->mSubGroup:Landroid/os/ParcelUuid;

    invoke-virtual {p2, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v2, p1, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, p2, v2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->packageHasPermissionsForSubscriptionGroup(Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$enforceCallingUserAndCarrierPrivilege$1(Ljava/util/List;Landroid/telephony/SubscriptionManager;Landroid/os/ParcelUuid;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1, p2}, Landroid/telephony/SubscriptionManager;->getSubscriptionsInGroup(Landroid/os/ParcelUuid;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private logDbg(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logDbg(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private logErr(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ERR: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private logErr(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v1, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ERR: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private logVdbg(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private logWtf(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " WTF: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v1, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " WTF: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private notifyAllPermissionedStatusCallbacksLocked(Landroid/os/ParcelUuid;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mRegisteredStatusCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;

    invoke-direct {p0, v1, p1}, Lcom/android/server/VcnManagementService;->isCallbackPermissioned(Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;Landroid/os/ParcelUuid;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v1, p2}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/VcnManagementService;Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;I)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyAllPolicyListenersLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mRegisteredPolicyListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;

    new-instance v2, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v1}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/VcnManagementService;Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private startOrUpdateVcnLocked(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting or updating VCN config for subGrp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/VcnManagementService;->logDbg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vcn/Vcn;

    invoke-virtual {v0, p2}, Lcom/android/server/vcn/Vcn;->updateConfig(Landroid/net/vcn/VcnConfig;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    invoke-direct {p0, p1, v0}, Lcom/android/server/VcnManagementService;->isActiveSubGroup(Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/server/VcnManagementService;->startVcnLocked(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private startVcnLocked(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting VCN config for subGrp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/VcnManagementService;->logDbg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    invoke-direct {p0, v1}, Lcom/android/server/VcnManagementService;->stopVcnLocked(Landroid/os/ParcelUuid;)V

    goto :goto_0

    :cond_0
    new-instance v7, Lcom/android/server/VcnManagementService$VcnCallbackImpl;

    const/4 v0, 0x0

    invoke-direct {v7, p0, p1, v0}, Lcom/android/server/VcnManagementService$VcnCallbackImpl;-><init>(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Lcom/android/server/VcnManagementService$1;)V

    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mLooper:Landroid/os/Looper;

    iget-object v3, p0, Lcom/android/server/VcnManagementService;->mNetworkProvider:Lcom/android/server/vcn/VcnNetworkProvider;

    invoke-virtual {p2}, Landroid/net/vcn/VcnConfig;->isTestModeProfile()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/VcnManagementService$Dependencies;->newVcnContext(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/vcn/VcnNetworkProvider;Z)Lcom/android/server/vcn/VcnContext;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    iget-object v6, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/VcnManagementService$Dependencies;->newVcn(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/VcnManagementService$VcnCallback;)Lcom/android/server/vcn/Vcn;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/VcnManagementService;->notifyAllPolicyListenersLocked()V

    const/4 v2, 0x2

    invoke-direct {p0, p1, v2}, Lcom/android/server/VcnManagementService;->notifyAllPermissionedStatusCallbacksLocked(Landroid/os/ParcelUuid;I)V

    return-void
.end method

.method private stopVcnLocked(Landroid/os/ParcelUuid;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vcn/Vcn;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/vcn/Vcn;->teardownAsynchronously()V

    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/VcnManagementService;->notifyAllPolicyListenersLocked()V

    return-void
.end method

.method private writeConfigsToDiskLocked()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    sget-object v1, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda11;->INSTANCE:Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda11;

    sget-object v2, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;->INSTANCE:Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;

    invoke-static {v0, v1, v2}, Lcom/android/server/vcn/util/PersistableBundleUtils;->fromMap(Ljava/util/Map;Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer;Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mConfigDiskRwHelper:Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;->writeToDisk(Landroid/os/PersistableBundle;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to save configs to disk"

    invoke-direct {p0, v1, v0}, Lcom/android/server/VcnManagementService;->logErr(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Landroid/os/ServiceSpecificException;

    const/4 v2, 0x0

    const-string v3, "Failed to save configs"

    invoke-direct {v1, v2, v3}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addVcnUnderlyingNetworkPolicyListener(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V
    .locals 3

    const-string/jumbo v0, "listener was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_FACTORY"

    const-string v2, "android.permission.MANAGE_TEST_NETWORKS"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/net/module/util/PermissionUtils;->enforceAnyPermissionOf(Landroid/content/Context;[Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/VcnManagementService;Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public clearVcnConfig(Landroid/os/ParcelUuid;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "subscriptionGroup was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "opPkgName was null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VCN config cleared for subGrp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/VcnManagementService;->logDbg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    invoke-virtual {v1}, Lcom/android/server/VcnManagementService$Dependencies;->getBinderCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/VcnManagementService;->enforceCallingUserAndCarrierPrivilege(Landroid/os/ParcelUuid;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v1, "| "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0, v0}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/VcnManagementService;Lcom/android/internal/util/IndentingPrintWriter;)V

    sget-wide v3, Lcom/android/server/VcnManagementService;->DUMP_TIMEOUT_MILLIS:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getAllStatusCallbacks()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mRegisteredStatusCallbacks:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllVcns()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "Lcom/android/server/vcn/Vcn;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getConfigs()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "Landroid/net/vcn/VcnConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConfiguredSubscriptionGroups(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "opPkgName was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    invoke-virtual {v1}, Lcom/android/server/VcnManagementService$Dependencies;->getBinderCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/VcnManagementService;->enforcePrimaryUser()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    iget-object v4, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    invoke-virtual {v4, v3, p1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->packageHasPermissionsForSubscriptionGroup(Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getUnderlyingNetworkPolicy(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnUnderlyingNetworkPolicy;
    .locals 3

    const-string/jumbo v0, "networkCapabilities was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "linkProperties was null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_FACTORY"

    const-string v2, "android.permission.MANAGE_TEST_NETWORKS"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/net/module/util/PermissionUtils;->enforceAnyPermissionOf(Landroid/content/Context;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "NetworkCapabilities must be for Test Network if using permission MANAGE_TEST_NETWORKS"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_1
    new-instance v1, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/VcnManagementService;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;

    return-object v1
.end method

.method public synthetic lambda$addVcnUnderlyingNetworkPolicyListener$6$VcnManagementService(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;

    invoke-direct {v0, p0, p1}, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;-><init>(Lcom/android/server/VcnManagementService;Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V

    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mRegisteredPolicyListeners:Ljava/util/Map;

    invoke-interface {p1}, Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1}, Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;->binderDied()V

    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public synthetic lambda$clearVcnConfig$5$VcnManagementService(Landroid/os/ParcelUuid;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, p1}, Lcom/android/server/VcnManagementService;->stopVcnLocked(Landroid/os/ParcelUuid;)V

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/server/VcnManagementService;->notifyAllPermissionedStatusCallbacksLocked(Landroid/os/ParcelUuid;I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/VcnManagementService;->writeConfigsToDiskLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$dump$9$VcnManagementService(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mNetworkProvider:Lcom/android/server/vcn/VcnNetworkProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/vcn/VcnNetworkProvider;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mTrackingNetworkCallback:Lcom/android/server/VcnManagementService$TrackingNetworkCallback;

    invoke-virtual {v0, p1}, Lcom/android/server/VcnManagementService$TrackingNetworkCallback;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    invoke-virtual {v1, p1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "mConfigs:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/vcn/VcnConfig;

    invoke-virtual {v4}, Landroid/net/vcn/VcnConfig;->getProvisioningPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "mVcns:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/vcn/Vcn;

    invoke-virtual {v2, p1}, Lcom/android/server/vcn/Vcn;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "Local log:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public synthetic lambda$getUnderlyingNetworkPolicy$8$VcnManagementService(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnUnderlyingNetworkPolicy;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    invoke-direct {p0, v0}, Lcom/android/server/VcnManagementService;->getSubGroupForNetworkCapabilities(Landroid/net/NetworkCapabilities;)Landroid/os/ParcelUuid;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/vcn/Vcn;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/android/server/vcn/Vcn;->getStatus()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    const/4 v2, 0x1

    :cond_0
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x1

    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v4, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {v4, v0}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    const/16 v5, 0x1c

    if-eqz v2, :cond_2

    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    :goto_0
    if-eqz v3, :cond_3

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    :cond_3
    invoke-virtual {v4}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v5

    new-instance v6, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;

    iget-object v7, p0, Lcom/android/server/VcnManagementService;->mTrackingNetworkCallback:Lcom/android/server/VcnManagementService$TrackingNetworkCallback;

    invoke-static {v7, v5}, Lcom/android/server/VcnManagementService$TrackingNetworkCallback;->access$2100(Lcom/android/server/VcnManagementService$TrackingNetworkCallback;Landroid/net/NetworkCapabilities;)Z

    move-result v7

    invoke-direct {v6, v7, v5}, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;-><init>(ZLandroid/net/NetworkCapabilities;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getUnderlyingNetworkPolicy() called for caps: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "; and lp: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "; result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/VcnManagementService;->logVdbg(Ljava/lang/String;)V

    return-object v6

    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public synthetic lambda$new$0$VcnManagementService()V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mConfigDiskRwHelper:Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;

    invoke-virtual {v1}, Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;->readFromDisk()Landroid/os/PersistableBundle;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Failed to read configs from disk; retrying"

    invoke-direct {p0, v2, v1}, Lcom/android/server/VcnManagementService;->logErr(Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_1
    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mConfigDiskRwHelper:Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;

    invoke-virtual {v2}, Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;->readFromDisk()Landroid/os/PersistableBundle;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    nop

    :goto_0
    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda8;->INSTANCE:Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda8;

    sget-object v2, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda9;->INSTANCE:Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda9;

    invoke-static {v0, v1, v2}, Lcom/android/server/vcn/util/PersistableBundleUtils;->toMap(Landroid/os/PersistableBundle;Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer;Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/LinkedHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    iget-object v5, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/vcn/VcnConfig;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/server/VcnManagementService;->mTelephonySubscriptionTrackerCb:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;

    iget-object v4, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    invoke-interface {v3, v4}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;->onNewSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V

    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_2
    :goto_2
    return-void

    :catch_1
    move-exception v2

    const-string v3, "Failed to read configs from disk"

    invoke-direct {p0, v3, v2}, Lcom/android/server/VcnManagementService;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic lambda$notifyAllPermissionedStatusCallbacksLocked$3$VcnManagementService(Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v0, p1, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->mCallback:Landroid/net/vcn/IVcnStatusCallback;

    invoke-interface {v0, p2}, Landroid/net/vcn/IVcnStatusCallback;->onVcnStatusChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "VcnStatusCallback threw on VCN status change"

    invoke-direct {p0, v1, v0}, Lcom/android/server/VcnManagementService;->logDbg(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$notifyAllPolicyListenersLocked$2$VcnManagementService(Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;->access$2200(Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;)Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;->onPolicyChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "VcnStatusCallback threw on VCN status change"

    invoke-direct {p0, v1, v0}, Lcom/android/server/VcnManagementService;->logDbg(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$removeVcnUnderlyingNetworkPolicyListener$7$VcnManagementService(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mRegisteredPolicyListeners:Ljava/util/Map;

    invoke-interface {p1}, Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;

    if-eqz v1, :cond_0

    invoke-interface {p1}, Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$setVcnConfig$4$VcnManagementService(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/android/server/VcnManagementService;->startOrUpdateVcnLocked(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V

    invoke-direct {p0}, Lcom/android/server/VcnManagementService;->writeConfigsToDiskLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerVcnStatusCallback(Landroid/os/ParcelUuid;Landroid/net/vcn/IVcnStatusCallback;Ljava/lang/String;)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/VcnManagementService$Dependencies;->getBinderCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_0
    const-string/jumbo v1, "subGroup must not be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "callback must not be null"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v1, "opPkgName must not be null"

    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    invoke-interface {p2}, Landroid/net/vcn/IVcnStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    move-object v10, v1

    new-instance v11, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;

    const/4 v7, 0x0

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;-><init>(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Landroid/net/vcn/IVcnStatusCallback;Ljava/lang/String;ILcom/android/server/VcnManagementService$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, v11

    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v10, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    nop

    :try_start_2
    iget-object v3, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v4, p0, Lcom/android/server/VcnManagementService;->mRegisteredStatusCallbacks:Ljava/util/Map;

    invoke-interface {v4, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/server/VcnManagementService;->mRegisteredStatusCallbacks:Ljava/util/Map;

    invoke-interface {v4, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/vcn/VcnConfig;

    iget-object v5, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/vcn/Vcn;

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Lcom/android/server/vcn/Vcn;->getStatus()I

    move-result v2

    :goto_0
    if-eqz v4, :cond_5

    invoke-direct {p0, v1, p1}, Lcom/android/server/VcnManagementService;->isCallbackPermissioned(Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;Landroid/os/ParcelUuid;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    if-nez v5, :cond_2

    const/4 v6, 0x1

    goto :goto_3

    :cond_2
    const/4 v6, 0x2

    if-eq v2, v6, :cond_4

    const/4 v6, 0x3

    if-ne v2, v6, :cond_3

    goto :goto_1

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown VCN status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/VcnManagementService;->logWtf(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    :goto_1
    move v6, v2

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v6, 0x0

    :goto_3
    :try_start_4
    iget-object v7, v1, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->mCallback:Landroid/net/vcn/IVcnStatusCallback;

    invoke-interface {v7, v6}, Landroid/net/vcn/IVcnStatusCallback;->onVcnStatusChanged(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v7

    :try_start_5
    const-string v11, "VcnStatusCallback threw on VCN status change"

    invoke-direct {p0, v11, v7}, Lcom/android/server/VcnManagementService;->logDbg(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :cond_6
    :try_start_6
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Attempting to register a callback that is already in use"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_1
    move-exception v2

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception v1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public removeVcnUnderlyingNetworkPolicyListener(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V
    .locals 3

    const-string/jumbo v0, "listener was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_FACTORY"

    const-string v2, "android.permission.MANAGE_TEST_NETWORKS"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/net/module/util/PermissionUtils;->enforceAnyPermissionOf(Landroid/content/Context;[Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/VcnManagementService;Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method setLastSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    return-void
.end method

.method public setVcnConfig(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "subscriptionGroup was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "config was null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "opPkgName was null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/net/vcn/VcnConfig;->getProvisioningPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VCN config updated for subGrp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/VcnManagementService;->logDbg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    invoke-virtual {v1}, Lcom/android/server/VcnManagementService$Dependencies;->getBinderCallingUid()I

    move-result v1

    invoke-virtual {p2}, Landroid/net/vcn/VcnConfig;->getProvisioningPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/server/VcnManagementService;->enforceManageTestNetworksForTestMode(Landroid/net/vcn/VcnConfig;)V

    invoke-direct {p0, p1, p3}, Lcom/android/server/VcnManagementService;->enforceCallingUserAndCarrierPrivilege(Landroid/os/ParcelUuid;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mismatched caller and VcnConfig creator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public systemReady()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mNetworkProvider:Lcom/android/server/vcn/VcnNetworkProvider;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnNetworkProvider;->register()V

    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mTrackingNetworkCallback:Lcom/android/server/VcnManagementService$TrackingNetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mTelephonySubscriptionTracker:Lcom/android/server/vcn/TelephonySubscriptionTracker;

    invoke-virtual {v0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->register()V

    return-void
.end method

.method public unregisterVcnStatusCallback(Landroid/net/vcn/IVcnStatusCallback;)V
    .locals 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    const-string v2, "callback must not be null"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Landroid/net/vcn/IVcnStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/android/server/VcnManagementService;->mRegisteredStatusCallbacks:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
