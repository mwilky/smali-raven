.class public Lcom/android/server/net/NetworkPolicyManagerService;
.super Landroid/net/INetworkPolicyManager$Stub;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;,
        Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;,
        Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;,
        Lcom/android/server/net/NetworkPolicyManagerService$ChainToggleType;,
        Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;,
        Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;,
        Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;,
        Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;,
        Lcom/android/server/net/NetworkPolicyManagerService$Stats;
    }
.end annotation


# static fields
.field private static final ACTION_ALLOW_BACKGROUND:Ljava/lang/String; = "com.android.server.net.action.ALLOW_BACKGROUND"

.field private static final ACTION_SNOOZE_RAPID:Ljava/lang/String; = "com.android.server.net.action.SNOOZE_RAPID"

.field private static final ACTION_SNOOZE_WARNING:Ljava/lang/String; = "com.android.server.net.action.SNOOZE_WARNING"

.field private static final ATTR_APP_ID:Ljava/lang/String; = "appId"

.field private static final ATTR_CYCLE_DAY:Ljava/lang/String; = "cycleDay"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_CYCLE_END:Ljava/lang/String; = "cycleEnd"

.field private static final ATTR_CYCLE_PERIOD:Ljava/lang/String; = "cyclePeriod"

.field private static final ATTR_CYCLE_START:Ljava/lang/String; = "cycleStart"

.field private static final ATTR_CYCLE_TIMEZONE:Ljava/lang/String; = "cycleTimezone"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_INFERRED:Ljava/lang/String; = "inferred"

.field private static final ATTR_LAST_LIMIT_SNOOZE:Ljava/lang/String; = "lastLimitSnooze"

.field private static final ATTR_LAST_SNOOZE:Ljava/lang/String; = "lastSnooze"

.field private static final ATTR_LAST_WARNING_SNOOZE:Ljava/lang/String; = "lastWarningSnooze"

.field private static final ATTR_LIMIT_BEHAVIOR:Ljava/lang/String; = "limitBehavior"

.field private static final ATTR_LIMIT_BYTES:Ljava/lang/String; = "limitBytes"

.field private static final ATTR_METERED:Ljava/lang/String; = "metered"

.field private static final ATTR_NETWORK_ID:Ljava/lang/String; = "networkId"

.field private static final ATTR_NETWORK_TEMPLATE:Ljava/lang/String; = "networkTemplate"

.field private static final ATTR_NETWORK_TYPES:Ljava/lang/String; = "networkTypes"

.field private static final ATTR_OWNER_PACKAGE:Ljava/lang/String; = "ownerPackage"

.field private static final ATTR_POLICY:Ljava/lang/String; = "policy"

.field private static final ATTR_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrictBackground"

.field private static final ATTR_SUBSCRIBER_ID:Ljava/lang/String; = "subscriberId"

.field private static final ATTR_SUBSCRIBER_ID_MATCH_RULE:Ljava/lang/String; = "subscriberIdMatchRule"

.field private static final ATTR_SUB_ID:Ljava/lang/String; = "subId"

.field private static final ATTR_SUMMARY:Ljava/lang/String; = "summary"

.field private static final ATTR_TEMPLATE_METERED:Ljava/lang/String; = "templateMetered"

.field private static final ATTR_TITLE:Ljava/lang/String; = "title"

.field private static final ATTR_UID:Ljava/lang/String; = "uid"

.field private static final ATTR_USAGE_BYTES:Ljava/lang/String; = "usageBytes"

.field private static final ATTR_USAGE_TIME:Ljava/lang/String; = "usageTime"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_WARNING_BYTES:Ljava/lang/String; = "warningBytes"

.field private static final ATTR_XML_UTILS_NAME:Ljava/lang/String; = "name"

.field private static final CHAIN_TOGGLE_DISABLE:I = 0x2

.field private static final CHAIN_TOGGLE_ENABLE:I = 0x1

.field private static final CHAIN_TOGGLE_NONE:I = 0x0

.field private static final LOGD:Z

.field private static final LOGV:Z

.field private static final MSG_ADVISE_PERSIST_THRESHOLD:I = 0x7

.field private static final MSG_BLOCKED_REASON_CHANGED:I = 0x15

.field private static final MSG_LIMIT_REACHED:I = 0x5

.field private static final MSG_METERED_IFACES_CHANGED:I = 0x2

.field private static final MSG_METERED_RESTRICTED_PACKAGES_CHANGED:I = 0x11

.field private static final MSG_POLICIES_CHANGED:I = 0xd

.field private static final MSG_REMOVE_INTERFACE_QUOTAS:I = 0xb

.field private static final MSG_RESET_FIREWALL_RULES_BY_UID:I = 0xf

.field private static final MSG_RESTRICT_BACKGROUND_CHANGED:I = 0x6

.field private static final MSG_RULES_CHANGED:I = 0x1

.field private static final MSG_SET_NETWORK_TEMPLATE_ENABLED:I = 0x12

.field private static final MSG_STATS_PROVIDER_WARNING_OR_LIMIT_REACHED:I = 0x14

.field private static final MSG_SUBSCRIPTION_OVERRIDE:I = 0x10

.field private static final MSG_SUBSCRIPTION_PLANS_CHANGED:I = 0x13

.field private static final MSG_UPDATE_INTERFACE_QUOTAS:I = 0xa

.field public static final OPPORTUNISTIC_QUOTA_UNKNOWN:I = -0x1

.field private static final PROP_SUB_PLAN_OWNER:Ljava/lang/String; = "persist.sys.sub_plan_owner"

.field private static final QUOTA_FRAC_JOBS_DEFAULT:F = 0.5f

.field private static final QUOTA_FRAC_MULTIPATH_DEFAULT:F = 0.5f

.field private static final QUOTA_LIMITED_DEFAULT:F = 0.1f

.field private static final QUOTA_UNLIMITED_DEFAULT:J

.field static final TAG:Ljava/lang/String; = "NetworkPolicy"

.field private static final TAG_APP_POLICY:Ljava/lang/String; = "app-policy"

.field private static final TAG_NETWORK_POLICY:Ljava/lang/String; = "network-policy"

.field private static final TAG_POLICY_LIST:Ljava/lang/String; = "policy-list"

.field private static final TAG_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrict-background"

.field private static final TAG_REVOKED_RESTRICT_BACKGROUND:Ljava/lang/String; = "revoked-restrict-background"

.field private static final TAG_SUBSCRIPTION_PLAN:Ljava/lang/String; = "subscription-plan"

.field private static final TAG_UID_POLICY:Ljava/lang/String; = "uid-policy"

.field private static final TAG_WHITELIST:Ljava/lang/String; = "whitelist"

.field private static final TAG_XML_UTILS_INT_ARRAY:Ljava/lang/String; = "int-array"

.field public static final TYPE_LIMIT:I = 0x23

.field public static final TYPE_LIMIT_SNOOZED:I = 0x24

.field public static final TYPE_RAPID:I = 0x2d

.field public static final TYPE_WARNING:I = 0x22

.field private static final UID_MSG_GONE:I = 0x65

.field private static final UID_MSG_STATE_CHANGED:I = 0x64

.field private static final VERSION_ADDED_CYCLE:I = 0xb

.field private static final VERSION_ADDED_INFERRED:I = 0x7

.field private static final VERSION_ADDED_METERED:I = 0x4

.field private static final VERSION_ADDED_NETWORK_ID:I = 0x9

.field private static final VERSION_ADDED_NETWORK_TYPES:I = 0xc

.field private static final VERSION_ADDED_RESTRICT_BACKGROUND:I = 0x3

.field private static final VERSION_ADDED_SNOOZE:I = 0x2

.field private static final VERSION_ADDED_TIMEZONE:I = 0x6

.field private static final VERSION_INIT:I = 0x1

.field private static final VERSION_LATEST:I = 0xd

.field private static final VERSION_SPLIT_SNOOZE:I = 0x5

.field private static final VERSION_SUPPORTED_CARRIER_USAGE:I = 0xd

.field private static final VERSION_SWITCH_APP_ID:I = 0x8

.field private static final VERSION_SWITCH_UID:I = 0xa

.field private static final WAIT_FOR_ADMIN_DATA_TIMEOUT_MS:J = 0x2710L


# instance fields
.field private final mActiveNotifs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityManager:Landroid/app/IActivityManager;

.field private mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field private final mAllowReceiver:Landroid/content/BroadcastReceiver;

.field private final mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

.field private final mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mCarrierConfigReceiver:Landroid/content/BroadcastReceiver;

.field private final mClock:Ljava/time/Clock;

.field private mConnManager:Landroid/net/ConnectivityManager;

.field private mConnReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultRestrictBackgroundAllowlistUids:Landroid/util/SparseBooleanArray;

.field volatile mDeviceIdleMode:Z

.field final mFirewallChainStates:Landroid/util/SparseBooleanArray;

.field final mHandler:Landroid/os/Handler;

.field private final mHandlerCallback:Landroid/os/Handler$Callback;

.field private final mIPm:Landroid/content/pm/IPackageManager;

.field private final mInternetPermissionMap:Landroid/util/SparseBooleanArray;

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/net/INetworkPolicyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadedRestrictBackground:Z

.field private final mLogger:Lcom/android/server/net/NetworkPolicyLogger;

.field private mMergedSubscriberIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteredIfaces:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mMeteredIfacesLock:Ljava/lang/Object;

.field private final mMeteredRestrictedUids:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;

.field private final mNetIdToSubId:Landroid/util/SparseIntArray;

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field private volatile mNetworkManagerReady:Z

.field private final mNetworkMetered:Landroid/util/SparseBooleanArray;

.field final mNetworkPoliciesSecondLock:Ljava/lang/Object;

.field final mNetworkPolicy:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/NetworkTemplate;",
            "Landroid/net/NetworkPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkRoaming:Landroid/util/SparseBooleanArray;

.field private mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;

.field private final mOverLimitNotified:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/NetworkTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private final mPolicyFile:Landroid/util/AtomicFile;

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

.field private mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

.field volatile mRestrictBackground:Z

.field private final mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

.field private mRestrictBackgroundBeforeBsm:Z

.field volatile mRestrictBackgroundChangedInBsm:Z

.field private mRestrictBackgroundLowPowerMode:Z

.field volatile mRestrictPower:Z

.field private mRestrictedModeObserver:Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;

.field volatile mRestrictedNetworkingMode:Z

.field private final mSnoozeReceiver:Landroid/content/BroadcastReceiver;

.field public final mStatLogger:Lcom/android/internal/util/StatLogger;

.field private final mStatsReceiver:Landroid/content/BroadcastReceiver;

.field private final mSubIdToCarrierConfig:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubIdToSubscriberId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;

.field final mSubscriptionPlans:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Landroid/telephony/SubscriptionPlan;",
            ">;"
        }
    .end annotation
.end field

.field final mSubscriptionPlansOwner:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuppressDefaultPolicy:Z

.field volatile mSystemReady:Z

.field private final mUidBlockedState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;",
            ">;"
        }
    .end annotation
.end field

.field final mUidEventHandler:Landroid/os/Handler;

.field private final mUidEventHandlerCallback:Landroid/os/Handler$Callback;

.field private final mUidEventThread:Lcom/android/server/ServiceThread;

.field final mUidFirewallDozableRules:Landroid/util/SparseIntArray;

.field final mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

.field final mUidFirewallRestrictedModeRules:Landroid/util/SparseIntArray;

.field final mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

.field private final mUidObserver:Landroid/app/IUidObserver;

.field final mUidPolicy:Landroid/util/SparseIntArray;

.field private final mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

.field final mUidRules:Landroid/util/SparseIntArray;

.field final mUidRulesFirstLock:Ljava/lang/Object;

.field private final mUidState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/NetworkPolicyManager$UidState;",
            ">;"
        }
    .end annotation
.end field

.field private final mUidStateCallbackInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserReceiver:Landroid/content/BroadcastReceiver;

.field private final mWifiReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyLogger;->LOGV:Z

    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/net/NetworkPolicyManagerService;->QUOTA_UNLIMITED_DEFAULT:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;)V
    .locals 8

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->getDefaultClock()Ljava/time/Clock;

    move-result-object v5

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->getDefaultSystemDir()Ljava/io/File;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;Landroid/content/pm/IPackageManager;Ljava/time/Clock;Ljava/io/File;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;Landroid/content/pm/IPackageManager;Ljava/time/Clock;Ljava/io/File;Z)V
    .locals 8

    invoke-direct {p0}, Landroid/net/INetworkPolicyManager$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallRestrictedModeRules:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundAllowlistUids:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfacesLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkMetered:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRoaming:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToCarrierConfig:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/android/server/net/NetworkPolicyLogger;

    invoke-direct {v0}, Lcom/android/server/net/NetworkPolicyLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mInternetPermissionMap:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidStateCallbackInfos:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/internal/util/StatLogger;

    const-string/jumbo v1, "updateNetworkEnabledNL()"

    const-string/jumbo v2, "isUidNetworkingBlocked()"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/StatLogger;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$4;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$5;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$6;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$7;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$7;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$8;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$8;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$9;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$9;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$10;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$10;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$11;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$11;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$12;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$12;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$13;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$13;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$14;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$14;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$15;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$15;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$16;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$16;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$17;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$17;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$18;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$18;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventHandlerCallback:Landroid/os/Handler$Callback;

    const-string/jumbo v2, "missing context"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Landroid/content/Context;

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "missing activityManager"

    invoke-static {p2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, p2

    check-cast v3, Landroid/app/IActivityManager;

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const-string/jumbo v3, "missing networkManagement"

    invoke-static {p3, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, p3

    check-cast v3, Landroid/os/INetworkManagementService;

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const-class v3, Landroid/os/PowerWhitelistManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerWhitelistManager;

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

    const-string/jumbo v3, "missing Clock"

    invoke-static {p5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, p5

    check-cast v3, Ljava/time/Clock;

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-class v3, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CarrierConfigManager;

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iput-object p4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "NetworkPolicy"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    new-instance v4, Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v5, "NetworkPolicy.uid"

    const/4 v6, -0x2

    const/4 v7, 0x0

    invoke-direct {v0, v5, v6, v7}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    new-instance v5, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventHandler:Landroid/os/Handler;

    iput-boolean p7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string/jumbo v5, "netpolicy.xml"

    invoke-direct {v1, p6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v5, "net-policy"

    invoke-direct {v0, v1, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    new-instance v0, Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-direct {v0, v2, v4}, Lcom/android/server/connectivity/MultipathPolicyTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;

    const-class v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$1;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictionRulesForUidUL(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->onUidDeletedUL(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/net/NetworkPolicyManagerService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundAllowlistUidsUL(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/net/NetworkPolicyManagerService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->upgradeWifiMeteredOverride()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkMetered:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateCapabilityChange(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRoaming:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkPolicyLogger;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveCarrierPolicyAL(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeUpdateCarrierPolicyCycleAL(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleParoleUL()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchUidRulesChanged(Landroid/net/INetworkPolicyListener;II)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchMeteredIfacesChanged(Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkStatsManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchRestrictBackgroundChanged(Landroid/net/INetworkPolicyListener;Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchUidPoliciesChanged(Landroid/net/INetworkPolicyListener;II)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->broadcastRestrictBackgroundChanged(ILjava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceLimit(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceLimit(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->resetUidFirewallRules(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;III[I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchSubscriptionOverride(Landroid/net/INetworkPolicyListener;III[I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/Set;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredRestrictedPackagesInternal(Ljava/util/Set;I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkTemplate;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabledInner(Landroid/net/NetworkTemplate;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworksInternal()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;I[Landroid/telephony/SubscriptionPlan;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchSubscriptionPlansChanged(Landroid/net/INetworkPolicyListener;I[Landroid/telephony/SubscriptionPlan;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchBlockedReasonChanged(Landroid/net/INetworkPolicyListener;III)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForTempWhitelistChangeUL(I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/Network;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getSubIdLocked(Landroid/net/Network;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/net/NetworkPolicyManagerService;I)Landroid/telephony/SubscriptionPlan;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkTemplate;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->findRelevantSubIdNL(Landroid/net/NetworkTemplate;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidStateCallbackInfos:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveWhitelistUL()V

    return-void
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mInternetPermissionMap:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method private static varargs addAll(Landroid/util/ArraySet;[I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;[I)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v2

    and-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private addDefaultRestrictBackgroundAllowlistUidsUL(I)Z
    .locals 12

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getAllowInDataUsageSave()Landroid/util/ArraySet;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-boolean v6, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    const-string v7, "NetworkPolicy"

    if-eqz v6, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checking restricted background exemption for package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " and user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/high16 v8, 0x100000

    :try_start_0
    invoke-virtual {v1, v5, v8, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v9

    if-nez v9, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addDefaultRestrictBackgroundAllowlistUidsUL(): skipping non-privileged app  "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1
    iget v9, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1, v9}, Landroid/os/UserHandle;->getUid(II)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundAllowlistUids:Landroid/util/SparseBooleanArray;

    const/4 v11, 0x1

    invoke-virtual {v10, v9, v11}, Landroid/util/SparseBooleanArray;->append(IZ)V

    if-eqz v6, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Adding uid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " (user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") to default restricted background allowlist. Revoked status: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    if-nez v10, :cond_5

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "adding default package "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " (uid "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " for user "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") to restrict background allowlist"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-direct {p0, v9, v6, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    const/4 v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v6

    sget-boolean v8, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No ApplicationInfo for package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    nop

    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_6
    return v3
.end method

.method private broadcastRestrictBackgroundChanged(ILjava/lang/Boolean;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static buildAllowBackgroundDataIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.ALLOW_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static buildNetworkOverLimitIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    nop

    const v1, 0x104025d

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method private static buildSnoozeRapidIntent(Landroid/net/NetworkTemplate;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.SNOOZE_RAPID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    nop

    const v1, 0x104020d

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method private cancelNotification(Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method private varargs checkAnyPermissionOf([Ljava/lang/String;)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static collectIfaces(Landroid/util/ArraySet;Landroid/net/NetworkStateSnapshot;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/NetworkStateSnapshot;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/net/NetworkStateSnapshot;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private static collectKeys(Landroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/net/NetworkPolicyManager$UidState;",
            ">;",
            "Landroid/util/SparseBooleanArray;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V
    .locals 4

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchBlockedReasonChanged(Landroid/net/INetworkPolicyListener;III)V
    .locals 1

    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Landroid/net/INetworkPolicyListener;->onBlockedReasonChanged(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private dispatchMeteredIfacesChanged(Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-interface {p1, p2}, Landroid/net/INetworkPolicyListener;->onMeteredIfacesChanged([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private dispatchRestrictBackgroundChanged(Landroid/net/INetworkPolicyListener;Z)V
    .locals 1

    :try_start_0
    invoke-interface {p1, p2}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private dispatchSubscriptionOverride(Landroid/net/INetworkPolicyListener;III[I)V
    .locals 1

    :try_start_0
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/net/INetworkPolicyListener;->onSubscriptionOverride(III[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private dispatchSubscriptionPlansChanged(Landroid/net/INetworkPolicyListener;I[Landroid/telephony/SubscriptionPlan;)V
    .locals 1

    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/net/INetworkPolicyListener;->onSubscriptionPlansChanged(I[Landroid/telephony/SubscriptionPlan;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private dispatchUidPoliciesChanged(Landroid/net/INetworkPolicyListener;II)V
    .locals 1

    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/net/INetworkPolicyListener;->onUidPoliciesChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private dispatchUidRulesChanged(Landroid/net/INetworkPolicyListener;II)V
    .locals 1

    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/net/INetworkPolicyListener;->onUidRulesChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private enableFirewallChainUL(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2}, Landroid/os/INetworkManagementService;->setFirewallChainEnabled(IZ)V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->firewallChainEnabled(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "problem enable firewall chain"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    nop

    :goto_1
    return-void
.end method

.method private varargs enforceAnyPermissionOf([Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->checkAnyPermissionOf([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requires one of the following permissions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-static {v2, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceSubscriptionPlanAccess(IILjava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p2, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v2, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Landroid/telephony/TelephonyManager;->hasCarrierPrivileges(I)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x0

    if-eqz v2, :cond_1

    nop

    const-string v5, "config_plans_package_override_string"

    invoke-virtual {v2, v5, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v5}, Landroid/telephony/CarrierConfigManager;->getDefaultCarrierServicePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    return-void

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "persist.sys.sub_plan_owner."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v6, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    return-void

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fw.sub_plan_owner."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v4, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    return-void

    :cond_4
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.MANAGE_SUBSCRIPTION_PLANS"

    const-string v9, "NetworkPolicy"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private enforceSubscriptionPlanValidity([Landroid/telephony/SubscriptionPlan;)V
    .locals 11

    array-length v0, p1

    if-nez v0, :cond_0

    const-string v0, "NetworkPolicy"

    const-string v1, "Received empty plans list. Clearing existing SubscriptionPlans."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v0

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-static {v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->addAll(Landroid/util/ArraySet;[I)Z

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_6

    aget-object v5, p1, v4

    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan;->getNetworkTypes()[I

    move-result-object v5

    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    const/4 v7, 0x0

    :goto_1
    array-length v8, v5

    if-ge v7, v8, :cond_3

    aget v8, v5, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    aget v8, v5, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Subscription plan contains duplicate network types."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid network type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v5, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_3
    array-length v7, v5

    array-length v8, v0

    if-ne v7, v8, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    invoke-static {v2, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->addAll(Landroid/util/ArraySet;[I)Z

    move-result v7

    if-eqz v7, :cond_5

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Multiple subscription plans defined for a single network type."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_6
    if-eqz v3, :cond_7

    return-void

    :cond_7
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "No generic subscription plan that applies to all network types."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private enqueueNotification(Landroid/net/NetworkPolicy;IJLandroid/content/pm/ApplicationInfo;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    new-instance v6, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;

    invoke-direct {v6, v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkPolicy;I)V

    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v8, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    const-wide/16 v9, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    iget-object v9, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const v10, 0x106001c

    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    iget-object v9, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/16 v10, 0x8

    const v11, 0x1080078

    const/high16 v12, 0xc000000

    const/4 v13, 0x0

    sparse-switch v2, :sswitch_data_0

    return-void

    :sswitch_0
    const v10, 0x10402b5

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    if-eqz v5, :cond_0

    const v14, 0x10402b3

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual {v5, v15}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    aput-object v15, v8, v13

    invoke-virtual {v9, v14, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_0
    const v8, 0x10402b4

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_0
    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    iget-object v11, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->buildSnoozeRapidIntent(Landroid/net/NetworkTemplate;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v14, v13, v11, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    iget-object v14, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v9, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v14

    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v15

    if-eqz v15, :cond_1

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/16 v16, 0x0

    const/high16 v18, 0xc000000

    const/16 v19, 0x0

    sget-object v20, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v17, v14

    invoke-static/range {v15 .. v20}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_5

    :cond_1
    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v15, v13, v14, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_5

    :sswitch_1
    iget-object v14, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v14}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v14

    sparse-switch v14, :sswitch_data_1

    return-void

    :sswitch_2
    const v14, 0x10402ba

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    goto :goto_1

    :sswitch_3
    const v14, 0x10402b1

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    nop

    :goto_1
    iget-wide v11, v1, Landroid/net/NetworkPolicy;->limitBytes:J

    sub-long v11, v3, v11

    new-array v15, v8, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8, v11, v12, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v15, v13

    const v8, 0x10402b0

    invoke-virtual {v9, v8, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    const v10, 0x1080078

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    sget-object v10, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_STATUS:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    iget-object v10, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v9, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v10

    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v15

    if-eqz v15, :cond_2

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/16 v18, 0x0

    const/high16 v20, 0xc000000

    const/16 v21, 0x0

    sget-object v22, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v17, v13

    move-object/from16 v19, v10

    invoke-static/range {v17 .. v22}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_2

    :cond_2
    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v2, 0xc000000

    invoke-static {v15, v13, v10, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    nop

    :goto_2
    move-object v10, v14

    goto/16 :goto_5

    :sswitch_4
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    sparse-switch v2, :sswitch_data_2

    return-void

    :sswitch_5
    const v2, 0x10402bb

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v10, v2

    goto :goto_3

    :sswitch_6
    const v2, 0x10402b2

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v10, v2

    :goto_3
    const v2, 0x10402af

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    const v2, 0x1080804

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v9, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/16 v18, 0x0

    const/high16 v20, 0xc000000

    const/16 v21, 0x0

    sget-object v22, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v17, v11

    move-object/from16 v19, v2

    invoke-static/range {v17 .. v22}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_5

    :cond_3
    iget-object v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v12, 0xc000000

    invoke-static {v11, v13, v2, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_5

    :sswitch_7
    const v2, 0x10402b9

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v8, 0x10402b8

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    iget-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v12, v3, v4, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v11, v13

    invoke-virtual {v9, v8, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const v10, 0x1080078

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    iget-object v10, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    iget-object v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    iget-object v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v12, 0xc000000

    invoke-static {v11, v13, v10, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    iget-object v11, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v9, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v11

    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/16 v18, 0x0

    const/high16 v20, 0xc000000

    const/16 v21, 0x0

    sget-object v22, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v17, v12

    move-object/from16 v19, v11

    invoke-static/range {v17 .. v22}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_4

    :cond_4
    iget-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v14, 0xc000000

    invoke-static {v12, v13, v11, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    nop

    :goto_4
    move-object v10, v2

    :goto_5
    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v2, v8}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v11, Landroid/app/NotificationManager;

    invoke-virtual {v2, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {v6}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->getTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->getId()I

    move-result v12

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v11, v12, v13, v14}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_7
        0x23 -> :sswitch_4
        0x24 -> :sswitch_1
        0x2d -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3
        0x4 -> :sswitch_2
        0xa -> :sswitch_3
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_6
        0x4 -> :sswitch_5
        0xa -> :sswitch_6
    .end sparse-switch
.end method

.method private ensureActiveCarrierPolicyAL()V
    .locals 3

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkPolicy"

    const-string v1, "ensureActiveCarrierPolicyAL()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveCarrierPolicyAL(ILjava/lang/String;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private ensureActiveCarrierPolicyAL(ILjava/lang/String;)Z
    .locals 10

    new-instance v9, Landroid/net/NetworkIdentity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, v9

    move-object v3, p2

    invoke-direct/range {v0 .. v8}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZI)V

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    const-string v3, "NetworkPolicy"

    if-ltz v1, :cond_2

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    invoke-virtual {v4, v0}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-boolean v2, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found template "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " which matches subscriber "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/net/module/util/NetworkIdentityUtils;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No policy for subscriber "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/net/module/util/NetworkIdentityUtils;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; generating default policy"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildDefaultCarrierPolicy(ILjava/lang/String;)Landroid/net/NetworkPolicy;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->addNetworkPolicyAL(Landroid/net/NetworkPolicy;)V

    return v2
.end method

.method private findRapidBlame(Landroid/net/NetworkTemplate;JJ)Landroid/content/pm/ApplicationInfo;
    .locals 17

    move-object/from16 v1, p0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v13, v2

    move v2, v0

    move v0, v8

    move-wide v15, v4

    move-object v5, v7

    move-wide v3, v13

    move-wide v7, v15

    :goto_0
    invoke-virtual {v6}, Landroid/net/NetworkStats;->size()I

    move-result v9

    if-ge v0, v9, :cond_1

    invoke-virtual {v6, v0, v5}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v5

    iget-wide v9, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v11, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v9, v11

    add-long/2addr v3, v9

    cmp-long v11, v9, v7

    if-lez v11, :cond_0

    move-wide v7, v9

    iget v2, v5, Landroid/net/NetworkStats$Entry;->uid:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-lez v0, :cond_2

    const-wide/16 v9, 0x2

    div-long v9, v3, v9

    cmp-long v0, v7, v9

    if-lez v0, :cond_2

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    array-length v0, v9

    const/4 v10, 0x1

    if-ne v0, v10, :cond_2

    :try_start_0
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v10, 0x0

    aget-object v10, v9, v10

    const v11, 0x4c2200

    invoke-virtual {v0, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private findRelevantSubIdNL(Landroid/net/NetworkTemplate;)I
    .locals 13

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v12, Landroid/net/NetworkIdentity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v3, v12

    move-object v6, v2

    invoke-direct/range {v3 .. v11}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZI)V

    invoke-virtual {p1, v3}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private forEachUid(Ljava/lang/String;Ljava/util/function/IntConsumer;)V
    .locals 13

    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forEachUid-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "list-users"

    invoke-static {v0, v1, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    const-string/jumbo v4, "list-uids"

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const v4, 0x4c0200

    :try_start_3
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_2

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v6, :cond_1

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    iget v12, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11, v12}, Landroid/os/UserHandle;->getUid(II)I

    move-result v11

    invoke-interface {p2, v11}, Ljava/util/function/IntConsumer;->accept(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v4

    :try_start_5
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    throw v4

    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private static getBooleanDefeatingNullable(Landroid/os/PersistableBundle;Ljava/lang/String;Z)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    return v0
.end method

.method private static getDefaultClock()Ljava/time/Clock;
    .locals 5

    new-instance v0, Landroid/os/BestClock;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/time/Clock;

    invoke-static {}, Landroid/os/SystemClock;->currentNetworkTimeClock()Ljava/time/Clock;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Landroid/os/BestClock;-><init>(Ljava/time/ZoneId;[Ljava/time/Clock;)V

    return-object v0
.end method

.method private static getDefaultSystemDir()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsManagerInternal;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read network stats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkPolicy"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsManagerInternal;->getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read network stats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkPolicy"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    return-object v1
.end method

.method private getNewRestrictedModeUidRule(II)I
    .locals 2

    move v0, p2

    and-int/lit16 v0, v0, -0xf01

    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictedNetworkingMode:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRestrictedModeAccess(I)Z

    move-result v1

    if-nez v1, :cond_0

    or-int/lit16 v0, v0, 0x400

    :cond_0
    return v0
.end method

.method private getPlatformDefaultLimitBytes()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private getPlatformDefaultWarningBytes()J
    .locals 5

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v1, v0

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    return-wide v3

    :cond_0
    int-to-long v1, v0

    const-wide/32 v3, 0x100000

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method private getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;
    .locals 6

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/SubscriptionPlan;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/telephony/SubscriptionPlan;->getCycleRule()Landroid/util/RecurrenceRule;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/RecurrenceRule;->isRecurring()Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v3}, Landroid/telephony/SubscriptionPlan;->cycleIterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Range;

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    invoke-static {v5}, Ljava/time/ZonedDateTime;->now(Ljava/time/Clock;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private getRestrictBackgroundStatusInternal(I)I
    .locals 7

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidPolicy(I)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    monitor-exit v0

    return v4

    :cond_0
    iget-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-nez v6, :cond_1

    monitor-exit v0

    return v5

    :cond_1
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    const/4 v4, 0x2

    goto :goto_0

    :cond_2
    nop

    :goto_0
    monitor-exit v0

    return v4

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private static getRestrictedModeFirewallRule(I)I
    .locals 1

    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private getSubIdLocked(Landroid/net/Network;)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method private getTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getUidForPackage(Ljava/lang/String;I)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x402000

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    return v1
.end method

.method private handleRestrictedPackagesChangeUL(Ljava/util/Set;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManagerReady:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

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

    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    :cond_3
    goto :goto_1

    :cond_4
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    :cond_5
    goto :goto_2

    :cond_6
    return-void
.end method

.method private hasInternetPermissionUL(I)Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mInternetPermissionMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    const-string v2, "android.permission.INTERNET"

    invoke-interface {v1, v2, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mInternetPermissionMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    return v0
.end method

.method private hasRestrictedModeAccess(I)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    const-string v2, "android.permission.CONNECTIVITY_USE_RESTRICTED_NETWORKS"

    invoke-interface {v1, v2, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    const-string v2, "android.permission.NETWORK_STACK"

    invoke-interface {v1, v2, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    const-string v2, "android.permission.MAINLINE_NETWORK_STACK"

    invoke-interface {v1, v2, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method private static hasRule(II)Z
    .locals 1

    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initService(Ljava/util/concurrent/CountDownLatch;)V
    .locals 16

    move-object/from16 v1, p0

    const-string/jumbo v0, "systemReady"

    const-wide/32 v2, 0x200000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v4

    const/4 v0, -0x2

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isBandwidthControlEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NetworkPolicy"

    const-string v5, "bandwidth controls disabled, unable to enforce policy"

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_0
    :try_start_1
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    const-class v0, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppStandbyInternal;

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    const-class v0, Lcom/android/server/net/NetworkStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsManagerInternal;

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;

    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveWhitelistUL()V

    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v7, Lcom/android/server/net/NetworkPolicyManagerService$1;

    invoke-direct {v7, v1}, Lcom/android/server/net/NetworkPolicyManagerService$1;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-virtual {v0, v7}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v7, 0x6

    invoke-virtual {v0, v7}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;

    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v8, v1}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-direct {v0, v7, v8}, Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;-><init>(Landroid/content/Context;Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver$RestrictedModeListener;)V

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictedModeObserver:Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;->isRestrictedModeEnabled()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictedNetworkingMode:Z

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->waitForAdminData()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->readPolicyAL()V

    iget-boolean v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    iput-boolean v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundBeforeBsm:Z

    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v7

    iget-boolean v7, v7, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundLowPowerMode:Z

    if-eqz v7, :cond_1

    iget-boolean v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    if-nez v7, :cond_1

    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    :cond_1
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v7, Lcom/android/server/net/NetworkPolicyManagerService$2;

    invoke-direct {v7, v1}, Lcom/android/server/net/NetworkPolicyManagerService$2;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-virtual {v0, v7}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundAllowlistUidsUL()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    :cond_2
    iget-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    const-string v7, "init_service"

    invoke-direct {v1, v0, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundUL(ZLjava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const/16 v0, 0x23

    :try_start_6
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    const/16 v7, 0x23

    const/4 v8, 0x5

    const-string v9, "android"

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_7
    new-instance v0, Landroid/content/IntentFilter;

    const-string v5, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v5, v8, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    const-string v9, "android.permission.NETWORK_STACK"

    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7, v6, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v7, v0

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9, v7, v8, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.UID_REMOVED"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9, v10, v8, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v9, v0

    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10, v9, v8, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v10, "com.android.server.action.NETWORK_STATS_UPDATED"

    invoke-direct {v0, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    const-string v12, "android.permission.READ_NETWORK_USAGE_HISTORY"

    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11, v10, v12, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v11, "com.android.server.net.action.ALLOW_BACKGROUND"

    invoke-direct {v0, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    const-string v13, "android.permission.MANAGE_NETWORK_POLICY"

    iget-object v14, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12, v11, v13, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v13, Landroid/content/IntentFilter;

    const-string v14, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-direct {v13, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v14, "android.permission.MANAGE_NETWORK_POLICY"

    iget-object v15, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v13, Landroid/content/IntentFilter;

    const-string v14, "com.android.server.net.action.SNOOZE_RAPID"

    invoke-direct {v13, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v14, "android.permission.MANAGE_NETWORK_POLICY"

    iget-object v15, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v12, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v0, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    iget-object v14, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v13, v12, v8, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v13, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v0, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v13, v0

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v14, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigReceiver:Landroid/content/BroadcastReceiver;

    iget-object v15, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v14, v13, v8, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/ConnectivityManager;

    new-instance v14, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v14}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v14}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v14

    iget-object v15, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v14, v15}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    new-instance v14, Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;

    invoke-direct {v14, v1, v8}, Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$1;)V

    invoke-interface {v0, v14}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleParoleUL()V

    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v8, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    new-instance v8, Landroid/os/HandlerExecutor;

    iget-object v14, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v8, v14}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v14, Lcom/android/server/net/NetworkPolicyManagerService$3;

    invoke-direct {v14, v1}, Lcom/android/server/net/NetworkPolicyManagerService$3;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-virtual {v0, v8, v14}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    :try_start_a
    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_1
    move-exception v0

    :try_start_c
    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3
.end method

.method private isRestrictedByAdminUL(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isSystem(I)Z
    .locals 1

    const/16 v0, 0x2710

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isUidForegroundOnRestrictBackgroundUL(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager$UidState;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(Landroid/net/NetworkPolicyManager$UidState;)Z

    move-result v1

    return v1
.end method

.method private isUidForegroundOnRestrictPowerUL(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager$UidState;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(Landroid/net/NetworkPolicyManager$UidState;)Z

    move-result v1

    return v1
.end method

.method static isUidNetworkingBlockedInternal(IIZZLcom/android/server/net/NetworkPolicyLogger;)Z
    .locals 2

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isSystem(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/16 v0, 0x400

    invoke-static {p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/16 v0, 0x40

    invoke-static {p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x4

    goto :goto_0

    :cond_6
    if-eqz p3, :cond_7

    const/4 v0, 0x5

    goto :goto_0

    :cond_7
    const/4 v0, 0x6

    :goto_0
    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :pswitch_0
    const/4 v1, 0x0

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x1

    nop

    :goto_1
    if-eqz p4, :cond_8

    invoke-virtual {p4, p0, v0}, Lcom/android/server/net/NetworkPolicyLogger;->networkBlocked(II)V

    :cond_8
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isUidValidForAllowlistRulesUL(I)Z
    .locals 1

    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissionUL(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isUidValidForDenylistRulesUL(I)Z
    .locals 1

    const/16 v0, 0x3f5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3fb

    if-eq p1, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForAllowlistRulesUL(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isWhitelistedFromPowerSaveExceptIdleUL(I)Z
    .locals 2

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    return v1
.end method

.method private isWhitelistedFromPowerSaveUL(IZ)Z
    .locals 5

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    if-nez p2, :cond_4

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isWhitelistedFromPowerSaveExceptIdleUL(I)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method static synthetic lambda$updateNetworks$2(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private maybeUpdateCarrierPolicyCycleAL(ILjava/lang/String;)Z
    .locals 11

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkPolicy"

    const-string/jumbo v1, "maybeUpdateCarrierPolicyCycleAL()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    new-instance v10, Landroid/net/NetworkIdentity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, v10

    move-object v4, p2

    invoke-direct/range {v1 .. v9}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZI)V

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkTemplate;

    invoke-virtual {v3, v1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicy;

    invoke-direct {p0, p1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateDefaultCarrierPolicyAL(ILandroid/net/NetworkPolicy;)Z

    move-result v5

    or-int/2addr v0, v5

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private normalizePoliciesNL()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL([Landroid/net/NetworkPolicy;)V

    return-void
.end method

.method private normalizePoliciesNL([Landroid/net/NetworkPolicy;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:Ljava/util/List;

    invoke-static {v3, v4}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;Ljava/util/List;)Landroid/net/NetworkTemplate;

    move-result-object v3

    iput-object v3, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkPolicy;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Landroid/net/NetworkPolicy;->compareTo(Landroid/net/NetworkPolicy;)I

    move-result v4

    if-lez v4, :cond_3

    :cond_1
    if-eqz v3, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Normalization replaced "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NetworkPolicy"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    iget-object v5, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v4, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private notifyOverLimitNL(Landroid/net/NetworkTemplate;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private notifyUnderLimitNL(Landroid/net/NetworkTemplate;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private onUidDeletedUL(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallRestrictedModeRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidStateCallbackInfos:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidStateCallbackInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private parseSubId(Landroid/net/NetworkStateSnapshot;)I
    .locals 3

    const/4 v0, -0x1

    invoke-virtual {p1}, Landroid/net/NetworkStateSnapshot;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkStateSnapshot;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v1

    instance-of v2, v1, Landroid/net/TelephonyNetworkSpecifier;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/net/TelephonyNetworkSpecifier;

    invoke-virtual {v2}, Landroid/net/TelephonyNetworkSpecifier;->getSubscriptionId()I

    move-result v0

    :cond_0
    return v0
.end method

.method private readPolicyAL()V
    .locals 52

    move-object/from16 v1, p0

    const-string v2, "int-array"

    sget-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    const-string v4, "NetworkPolicy"

    if-eqz v3, :cond_0

    const-string/jumbo v3, "readPolicyAL()"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    const/4 v3, 0x0

    :try_start_0
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v3, v5

    :try_start_1
    invoke-static {v3}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v5

    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    const/4 v7, 0x1

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v9

    move v10, v9

    const/4 v12, 0x1

    if-eq v9, v12, :cond_20

    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string/jumbo v13, "whitelist"

    const/4 v14, 0x3

    const/4 v15, 0x2

    if-ne v10, v15, :cond_1e

    :try_start_2
    const-string/jumbo v11, "policy-list"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v11, :cond_2

    :try_start_3
    iget-boolean v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    const-string/jumbo v13, "version"

    invoke-static {v5, v13}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v13

    move v7, v13

    if-lt v7, v14, :cond_1

    const-string/jumbo v13, "restrictBackground"

    invoke-static {v5, v13}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    iput-boolean v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v14, v2

    move-object/from16 v19, v3

    move-object v3, v6

    move v2, v8

    move-object v8, v4

    move v4, v10

    goto/16 :goto_12

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v8, v4

    goto/16 :goto_17

    :cond_2
    :try_start_4
    const-string/jumbo v11, "network-policy"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string/jumbo v14, "limitBytes"

    const-string v15, "cyclePeriod"

    const-string v12, "cycleEnd"

    move-object/from16 v19, v3

    const-string v3, "cycleStart"

    move/from16 v20, v10

    const/4 v10, 0x0

    if-eqz v11, :cond_e

    :try_start_5
    const-string/jumbo v11, "networkTemplate"

    invoke-static {v5, v11}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v13, "subscriberId"

    invoke-interface {v5, v10, v13}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/16 v10, 0x9

    if-lt v7, v10, :cond_3

    const-string/jumbo v10, "networkId"

    move-object/from16 v32, v6

    const/4 v6, 0x0

    invoke-interface {v5, v6, v10}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    goto :goto_2

    :cond_3
    move-object/from16 v32, v6

    const/4 v6, 0x0

    :goto_2
    const/16 v10, 0xd

    if-lt v7, v10, :cond_4

    const-string/jumbo v10, "subscriberIdMatchRule"

    invoke-static {v5, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v10

    move/from16 v22, v10

    const-string/jumbo v10, "templateMetered"

    invoke-static {v5, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v10

    move/from16 v33, v11

    move/from16 v11, v22

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    move/from16 v22, v10

    const/4 v10, 0x1

    if-ne v11, v10, :cond_5

    const-string v10, "Update template match rule from mobile to carrier and force to metered"

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v11, 0xa

    const/4 v10, 0x1

    move/from16 v33, v11

    move/from16 v11, v22

    goto :goto_3

    :cond_5
    const/4 v10, -0x1

    move/from16 v33, v11

    move/from16 v11, v22

    :goto_3
    move/from16 v34, v8

    const/16 v8, 0xb

    if-lt v7, v8, :cond_6

    invoke-static {v5, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v12}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v15}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v15, Landroid/util/RecurrenceRule;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v35, v4

    :try_start_6
    invoke-static {v3}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v4

    move-object/from16 v21, v3

    invoke-static {v8}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v3

    move-object/from16 v22, v8

    invoke-static {v12}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/lang/String;)Ljava/time/Period;

    move-result-object v8

    invoke-direct {v15, v4, v3, v8}, Landroid/util/RecurrenceRule;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    move-object v3, v15

    goto :goto_5

    :cond_6
    move-object/from16 v35, v4

    const-string v3, "cycleDay"

    invoke-static {v5, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x6

    if-lt v7, v4, :cond_7

    const-string v4, "cycleTimezone"

    const/4 v8, 0x0

    invoke-interface {v5, v8, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_7
    const-string v4, "UTC"

    :goto_4
    invoke-static {v4}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/net/NetworkPolicy;->buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object v8

    move-object v3, v8

    :goto_5
    const-string/jumbo v4, "warningBytes"

    invoke-static {v5, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v39

    invoke-static {v5, v14}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v41

    const/4 v4, 0x5

    if-lt v7, v4, :cond_8

    const-string/jumbo v8, "lastLimitSnooze"

    invoke-static {v5, v8}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v14

    goto :goto_6

    :cond_8
    const/4 v8, 0x2

    if-lt v7, v8, :cond_9

    const-string/jumbo v8, "lastSnooze"

    invoke-static {v5, v8}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v14

    goto :goto_6

    :cond_9
    const-wide/16 v14, -0x1

    :goto_6
    const/4 v8, 0x4

    if-lt v7, v8, :cond_a

    const-string/jumbo v8, "metered"

    invoke-static {v5, v8}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    goto :goto_7

    :cond_a
    packed-switch v33, :pswitch_data_0

    const/4 v8, 0x0

    goto :goto_7

    :pswitch_0
    const/4 v8, 0x1

    nop

    :goto_7
    if-lt v7, v4, :cond_b

    const-string/jumbo v4, "lastWarningSnooze"

    invoke-static {v5, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v21

    move-wide/from16 v49, v21

    goto :goto_8

    :cond_b
    const-wide/16 v21, -0x1

    move-wide/from16 v49, v21

    :goto_8
    const/4 v4, 0x7

    if-lt v7, v4, :cond_c

    const-string v4, "inferred"

    invoke-static {v5, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    goto :goto_9

    :cond_c
    const/4 v4, 0x0

    :goto_9
    new-instance v12, Landroid/net/NetworkTemplate;

    move-object/from16 v17, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v13, v2, v16

    const/16 v27, -0x1

    const/16 v28, -0x1

    const/16 v29, -0x1

    const/16 v30, -0x1

    move-object/from16 v21, v12

    move/from16 v22, v33

    move-object/from16 v23, v13

    move-object/from16 v24, v2

    move-object/from16 v25, v6

    move/from16 v26, v10

    move/from16 v31, v11

    invoke-direct/range {v21 .. v31}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;IIIIII)V

    move-object v2, v12

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->isPersistable()Z

    move-result v12

    if-eqz v12, :cond_d

    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move-object/from16 v16, v6

    new-instance v6, Landroid/net/NetworkPolicy;

    move-object/from16 v36, v6

    move-object/from16 v37, v2

    move-object/from16 v38, v3

    move-wide/from16 v43, v49

    move-wide/from16 v45, v14

    move/from16 v47, v8

    move/from16 v48, v4

    invoke-direct/range {v36 .. v48}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;Landroid/util/RecurrenceRule;JJJJZZ)V

    invoke-virtual {v12, v2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_a

    :cond_d
    move-object/from16 v16, v6

    :goto_a
    move/from16 v23, v7

    move-object/from16 v14, v17

    move/from16 v4, v20

    move-object/from16 v3, v32

    move-object/from16 v8, v35

    goto/16 :goto_11

    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v8, v4

    goto/16 :goto_16

    :cond_e
    move-object/from16 v17, v2

    move-object/from16 v35, v4

    move-object/from16 v32, v6

    move/from16 v34, v8

    :try_start_7
    const-string/jumbo v2, "subscription-plan"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v2, :cond_16

    :try_start_8
    invoke-static {v5, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v12}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v15}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Landroid/telephony/SubscriptionPlan$Builder;

    invoke-static {v2}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-static {v3}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v10

    invoke-static {v4}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/lang/String;)Ljava/time/Period;

    move-result-object v11

    invoke-direct {v6, v8, v10, v11}, Landroid/telephony/SubscriptionPlan$Builder;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    const-string/jumbo v8, "title"

    invoke-static {v5, v8}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    const-string/jumbo v8, "summary"

    invoke-static {v5, v8}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/telephony/SubscriptionPlan$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    const-wide/16 v10, -0x1

    invoke-static {v5, v14, v10, v11}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v12

    const-string/jumbo v8, "limitBehavior"

    const/4 v14, -0x1

    invoke-static {v5, v8, v14}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    cmp-long v15, v12, v10

    if-eqz v15, :cond_f

    if-eq v8, v14, :cond_f

    invoke-virtual {v6, v12, v13, v8}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    :cond_f
    const-string/jumbo v14, "usageBytes"

    invoke-static {v5, v14, v10, v11}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v14

    const-string/jumbo v10, "usageTime"

    move-object v11, v2

    move-object/from16 v16, v3

    const-wide/16 v2, -0x1

    invoke-static {v5, v10, v2, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v22

    move-wide/from16 v24, v22

    cmp-long v10, v14, v2

    if-eqz v10, :cond_10

    move-object/from16 v18, v11

    move-wide/from16 v10, v24

    cmp-long v2, v10, v2

    if-eqz v2, :cond_11

    invoke-virtual {v6, v14, v15, v10, v11}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    goto :goto_b

    :cond_10
    move-object/from16 v18, v11

    move-wide/from16 v10, v24

    :cond_11
    :goto_b
    const-string/jumbo v2, "subId"

    invoke-static {v5, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "ownerPackage"

    invoke-static {v5, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v22, v4

    const/16 v4, 0xc

    if-lt v7, v4, :cond_15

    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    :goto_c
    invoke-static {v5, v4}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v23

    if-eqz v23, :cond_14

    move/from16 v23, v4

    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v24, v14

    move-object/from16 v14, v17

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    const-string/jumbo v4, "networkTypes"

    const-string/jumbo v15, "name"

    invoke-static {v5, v15}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    nop

    const/4 v4, 0x0

    invoke-static {v5, v14, v4}, Lcom/android/internal/util/XmlUtils;->readThisIntArrayXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/telephony/SubscriptionPlan$Builder;->setNetworkTypes([I)Landroid/telephony/SubscriptionPlan$Builder;

    move-object/from16 v17, v14

    move/from16 v4, v23

    move-wide/from16 v14, v24

    goto :goto_c

    :cond_12
    const/4 v4, 0x0

    move-object/from16 v17, v14

    move/from16 v4, v23

    move-wide/from16 v14, v24

    goto :goto_c

    :cond_13
    const/4 v4, 0x0

    move-object/from16 v17, v14

    move/from16 v4, v23

    move-wide/from16 v14, v24

    goto :goto_c

    :cond_14
    move/from16 v23, v4

    move-wide/from16 v24, v14

    move-object/from16 v14, v17

    goto :goto_d

    :cond_15
    move-wide/from16 v24, v14

    move-object/from16 v14, v17

    :goto_d
    invoke-virtual {v6}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v4

    iget-object v15, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    move-object/from16 v17, v6

    const-class v6, Landroid/telephony/SubscriptionPlan;

    invoke-virtual {v15, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    move/from16 v23, v7

    move-object/from16 v7, v21

    check-cast v7, [Landroid/telephony/SubscriptionPlan;

    invoke-static {v6, v7, v4}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/telephony/SubscriptionPlan;

    invoke-virtual {v15, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v6, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move/from16 v4, v20

    move-object/from16 v3, v32

    move-object/from16 v8, v35

    goto/16 :goto_11

    :catch_2
    move-exception v0

    move-object v2, v0

    move-object/from16 v3, v19

    move-object/from16 v8, v35

    goto/16 :goto_17

    :cond_16
    move/from16 v23, v7

    move-object/from16 v14, v17

    :try_start_9
    const-string/jumbo v2, "uid-policy"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const-string v3, "; ignoring"

    const-string/jumbo v4, "unable to apply policy to UID "

    const-string/jumbo v6, "policy"

    const-string/jumbo v7, "uid"

    if-eqz v2, :cond_18

    :try_start_a
    invoke-static {v5, v7}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    invoke-static {v5, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    invoke-static {v2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v7
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v7, :cond_17

    const/4 v3, 0x0

    :try_start_b
    invoke-direct {v1, v2, v6, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-object/from16 v8, v35

    goto :goto_e

    :cond_17
    :try_start_c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-object/from16 v8, v35

    :try_start_d
    invoke-static {v8, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    move/from16 v4, v20

    move-object/from16 v3, v32

    goto/16 :goto_11

    :cond_18
    move-object/from16 v8, v35

    const-string v2, "app-policy"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "appId"

    invoke-static {v5, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    invoke-static {v5, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v7, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v10

    invoke-static {v10}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v11

    if-eqz v11, :cond_19

    invoke-direct {v1, v10, v6, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    goto :goto_f

    :cond_19
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    move/from16 v4, v20

    move-object/from16 v3, v32

    goto/16 :goto_11

    :cond_1a
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    move/from16 v4, v20

    move/from16 v7, v23

    move-object/from16 v3, v32

    goto :goto_12

    :cond_1b
    const-string/jumbo v2, "restrict-background"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    if-eqz v34, :cond_1c

    invoke-static {v5, v7}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v3, v32

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseBooleanArray;->append(IZ)V

    goto :goto_10

    :cond_1c
    move-object/from16 v3, v32

    const-string/jumbo v2, "revoked-restrict-background"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    if-eqz v34, :cond_1d

    invoke-static {v5, v7}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x1

    invoke-virtual {v4, v2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move/from16 v4, v20

    goto :goto_11

    :cond_1d
    :goto_10
    move/from16 v4, v20

    goto :goto_11

    :catch_3
    move-exception v0

    move-object/from16 v8, v35

    goto/16 :goto_15

    :cond_1e
    move-object/from16 v19, v3

    move-object v3, v6

    move/from16 v23, v7

    move/from16 v34, v8

    move/from16 v20, v10

    move-object v8, v4

    move/from16 v51, v14

    move-object v14, v2

    move/from16 v2, v51

    move/from16 v4, v20

    if-ne v4, v2, :cond_1f

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x0

    move/from16 v7, v23

    goto :goto_12

    :cond_1f
    :goto_11
    move/from16 v7, v23

    move/from16 v2, v34

    :goto_12
    move-object v6, v3

    move-object v4, v8

    move-object/from16 v3, v19

    move v8, v2

    move-object v2, v14

    goto/16 :goto_0

    :cond_20
    move-object/from16 v19, v3

    move-object v3, v6

    move/from16 v23, v7

    move/from16 v34, v8

    move-object v8, v4

    move v4, v10

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    const/4 v6, 0x0

    :goto_13
    if-ge v6, v2, :cond_24

    invoke-virtual {v3, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    and-int/lit8 v10, v9, 0x1

    if-eqz v10, :cond_21

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ignoring restrict-background-allowlist for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " because its policy is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Landroid/net/NetworkPolicyManager;->uidPoliciesToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto :goto_14

    :cond_21
    invoke-static {v7}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v10

    if-eqz v10, :cond_23

    or-int/lit8 v10, v9, 0x4

    sget-boolean v11, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v11, :cond_22

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "new policy for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->uidPoliciesToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const/4 v11, 0x0

    invoke-direct {v1, v7, v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    goto :goto_14

    :cond_23
    const/4 v11, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unable to update policy on UID "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :goto_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_24
    invoke-static/range {v19 .. v19}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v3, v19

    goto :goto_1a

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v3, v19

    goto :goto_1b

    :catch_4
    move-exception v0

    :goto_15
    move-object v2, v0

    :goto_16
    move-object/from16 v3, v19

    goto :goto_17

    :catch_5
    move-exception v0

    move-object v2, v0

    move-object/from16 v3, v19

    goto :goto_18

    :catchall_1
    move-exception v0

    move-object/from16 v19, v3

    move-object v2, v0

    goto :goto_1b

    :catch_6
    move-exception v0

    move-object/from16 v19, v3

    move-object v8, v4

    move-object v2, v0

    goto :goto_17

    :catch_7
    move-exception v0

    move-object/from16 v19, v3

    move-object v2, v0

    goto :goto_18

    :catchall_2
    move-exception v0

    move-object v2, v0

    goto :goto_1b

    :catch_8
    move-exception v0

    move-object v8, v4

    move-object v2, v0

    :goto_17
    :try_start_e
    const-string/jumbo v4, "problem reading network policy"

    invoke-static {v8, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    goto :goto_19

    :catch_9
    move-exception v0

    move-object v2, v0

    :goto_18
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->upgradeDefaultBackgroundDataUL()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    nop

    :goto_19
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    :goto_1a
    return-void

    :goto_1b
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private removeInterfaceLimit(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->removeInterfaceQuota(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "problem removing interface quota"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    nop

    :goto_1
    return-void
.end method

.method private removeInterfaceQuotasAsync(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private removeUidStateUL(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicyManager$UidState;

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictBackgroundRulesOnUidStatusChangedUL(ILandroid/net/NetworkPolicyManager$UidState;Landroid/net/NetworkPolicyManager$UidState;)V

    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    const/4 v2, 0x1

    return v2

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private resetUidFirewallRules(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x3

    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, v2}, Landroid/os/INetworkManagementService;->setUidOnMeteredNetworkAllowlist(IZ)V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, v2}, Landroid/os/INetworkManagementService;->setUidOnMeteredNetworkDenylist(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "problem resetting firewall uid rules for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkPolicy"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    nop

    :goto_1
    return-void
.end method

.method private sendRestrictBackgroundChangedMsg()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private setInterfaceLimit(Ljava/lang/String;J)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/INetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "problem setting interface quota"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    nop

    :goto_1
    return-void
.end method

.method private setInterfaceQuotasAsync(Ljava/lang/String;JJ)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;-><init>(Ljava/lang/String;JJLcom/android/server/net/NetworkPolicyManagerService$1;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private setMeteredNetworkAllowlist(IZ)V
    .locals 4

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    const-string v1, "NetworkPolicy"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMeteredNetworkAllowlist "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2}, Landroid/os/INetworkManagementService;->setUidOnMeteredNetworkAllowlist(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "problem setting allowlist ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") rules for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    nop

    :goto_1
    return-void
.end method

.method private setMeteredNetworkDenylist(IZ)V
    .locals 4

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    const-string v1, "NetworkPolicy"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMeteredNetworkDenylist "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2}, Landroid/os/INetworkManagementService;->setUidOnMeteredNetworkDenylist(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "problem setting denylist ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") rules for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    nop

    :goto_1
    return-void
.end method

.method private setMeteredRestrictedPackagesInternal(Ljava/util/Set;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidForPackage(Ljava/lang/String;I)I

    move-result v4

    if-ltz v4, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0, v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->handleRestrictedPackagesChangeUL(Ljava/util/Set;Ljava/util/Set;)V

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v3, v1}, Lcom/android/server/net/NetworkPolicyLogger;->meteredRestrictedPkgsChanged(Ljava/util/Set;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/16 v2, 0x12

    invoke-virtual {v0, v2, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private setNetworkTemplateEnabledInner(Landroid/net/NetworkTemplate;Z)V
    .locals 15

    move-object v1, p0

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v6, p1

    move/from16 v7, p2

    goto :goto_3

    :cond_1
    :goto_0
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    move-object v2, v0

    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    :goto_1
    :try_start_0
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Ljava/lang/String;

    new-instance v5, Landroid/net/NetworkIdentity;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v14}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v6, p1

    :try_start_1
    invoke-virtual {v6, v5}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v2, v4}, Landroid/util/IntArray;->add(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v6, p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-virtual {v2, v3}, Landroid/util/IntArray;->get(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v5

    move/from16 v7, p2

    invoke-virtual {v5, v7}, Landroid/telephony/TelephonyManager;->setPolicyDataEnabled(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    move/from16 v7, p2

    :goto_3
    return-void

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v6, p1

    :goto_4
    move/from16 v7, p2

    :goto_5
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_5
.end method

.method private setRestrictBackgroundUL(ZLjava/lang/String;)V
    .locals 6

    const-string/jumbo v0, "setRestrictBackgroundUL"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-ne p1, v0, :cond_0

    const-string v0, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRestrictBackgroundUL: already "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_0
    :try_start_1
    const-string v0, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRestrictBackgroundUL(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "; reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundUL()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->setDataSaverModeEnabled(Z)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not change Data Saver Mode on NMS to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v3

    :goto_0
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->sendRestrictBackgroundChangedMsg()V

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    iget-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {v3, v0, v4}, Lcom/android/server/net/NetworkPolicyLogger;->restrictBackgroundChanged(ZZ)V

    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundLowPowerMode:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    :cond_2
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v4

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private setUidFirewallRule(III)V
    .locals 5

    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUidFirewallRule: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallRestrictedModeRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, p2, p3}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyLogger;->uidFirewallRuleChanged(III)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_2
    const-string v3, "NetworkPolicy"

    const-string/jumbo v4, "problem setting firewall uid rules"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private setUidFirewallRulesUL(ILandroid/util/SparseIntArray;)V
    .locals 5

    :try_start_0
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    new-array v1, v0, [I

    new-array v2, v0, [I

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-ltz v3, :cond_0

    invoke-virtual {p2, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    aput v4, v1, v3

    invoke-virtual {p2, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p1, v1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRules(I[I[I)V

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v3, p1, v1, v2}, Lcom/android/server/net/NetworkPolicyLogger;->firewallRulesChanged(I[I[I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "problem setting firewall uid rules"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    nop

    :goto_2
    return-void
.end method

.method private setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;)V

    :cond_0
    if-eqz p3, :cond_2

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainUL(IZ)V

    :cond_2
    return-void
.end method

.method private setUidPolicyUncheckedUL(IIIZ)V
    .locals 11

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForAllowlistRulesUL(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_8

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    if-ne p3, v1, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    const/4 v4, 0x4

    if-ne p2, v4, :cond_3

    move v5, v1

    goto :goto_2

    :cond_3
    move v5, v0

    :goto_2
    if-ne p3, v4, :cond_4

    move v4, v1

    goto :goto_3

    :cond_4
    move v4, v0

    :goto_3
    if-nez v2, :cond_6

    iget-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v6, :cond_5

    if-nez v5, :cond_5

    goto :goto_4

    :cond_5
    move v6, v0

    goto :goto_5

    :cond_6
    :goto_4
    move v6, v1

    :goto_5
    if-nez v3, :cond_8

    iget-boolean v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v7, :cond_7

    if-nez v4, :cond_7

    goto :goto_6

    :cond_7
    move v7, v0

    goto :goto_7

    :cond_8
    :goto_6
    move v7, v1

    :goto_7
    if-eqz v5, :cond_b

    if-eqz v4, :cond_9

    if-eqz v3, :cond_b

    :cond_9
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundAllowlistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-nez v8, :cond_b

    sget-boolean v8, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v8, :cond_a

    const-string v8, "NetworkPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Adding uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " to revoked restrict background allowlist"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    :cond_b
    if-eq v6, v7, :cond_c

    move v0, v1

    :cond_c
    :goto_8
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, p1, p3, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    if-eqz p4, :cond_d

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    monitor-exit v1

    goto :goto_9

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_d
    :goto_9
    return-void
.end method

.method private setUidPolicyUncheckedUL(IIZ)V
    .locals 2

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method private updateBlockedReasonsForRestrictedModeUL(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    invoke-direct {v1}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    iget v1, v0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictedNetworkingMode:Z

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    goto :goto_0

    :cond_1
    iget v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    and-int/lit8 v2, v2, -0x9

    iput v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRestrictedModeAccess(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    goto :goto_1

    :cond_2
    iget v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    and-int/lit8 v2, v2, 0x10

    iput v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    :goto_1
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->updateEffectiveBlockedReasons()V

    iget v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    if-eq v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x15

    iget v4, v0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, p1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    return-void
.end method

.method private static updateCapabilityChange(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/net/Network;->getNetId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p2}, Landroid/net/Network;->getNetId()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/net/Network;->getNetId()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_2
    return v1
.end method

.method private updateDefaultCarrierPolicyAL(ILandroid/net/NetworkPolicy;)Z
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v2, Landroid/net/NetworkPolicy;->inferred:Z

    const-string v4, "NetworkPolicy"

    const/4 v5, 0x0

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring user-defined policy "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v5

    :cond_1
    new-instance v3, Landroid/net/NetworkPolicy;

    iget-object v7, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    iget-object v8, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-wide v9, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    iget-wide v11, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    iget-wide v13, v2, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    iget-wide v5, v2, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    iget-boolean v15, v2, Landroid/net/NetworkPolicy;->metered:Z

    move-wide/from16 v16, v5

    iget-boolean v5, v2, Landroid/net/NetworkPolicy;->inferred:Z

    move-object v6, v3

    move/from16 v18, v15

    move-wide/from16 v15, v16

    move/from16 v17, v18

    move/from16 v18, v5

    invoke-direct/range {v6 .. v18}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;Landroid/util/RecurrenceRule;JJJJZZ)V

    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/telephony/SubscriptionPlan;

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x0

    aget-object v7, v5, v6

    invoke-virtual {v7}, Landroid/telephony/SubscriptionPlan;->getCycleRule()Landroid/util/RecurrenceRule;

    move-result-object v6

    iput-object v6, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v6, v8, v10

    if-nez v6, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultWarningBytes()J

    move-result-wide v10

    iput-wide v10, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultLimitBytes()J

    move-result-wide v10

    iput-wide v10, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_0

    :cond_2
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v6, v8, v12

    if-nez v6, :cond_3

    iput-wide v10, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    iput-wide v10, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_0

    :cond_3
    const-wide/16 v12, 0x9

    mul-long/2addr v12, v8

    const-wide/16 v14, 0xa

    div-long/2addr v12, v14

    iput-wide v12, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {v7}, Landroid/telephony/SubscriptionPlan;->getDataLimitBehavior()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    iput-wide v10, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_0

    :pswitch_0
    iput-wide v8, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    nop

    :goto_0
    goto :goto_2

    :cond_4
    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToCarrierConfig:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PersistableBundle;

    iget-object v7, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    invoke-virtual {v7}, Landroid/util/RecurrenceRule;->isMonthly()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v7, v7, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-virtual {v7}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v7

    goto :goto_1

    :cond_5
    const/4 v7, -0x1

    :goto_1
    invoke-virtual {v0, v6, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getCycleDayFromCarrierConfig(Landroid/os/PersistableBundle;I)I

    move-result v8

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/net/NetworkPolicy;->buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object v9

    iput-object v9, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-wide v9, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {v0, v6, v9, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->getWarningBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J

    move-result-wide v9

    iput-wide v9, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    iget-wide v9, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {v0, v6, v9, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->getLimitBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J

    move-result-wide v9

    iput-wide v9, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    :goto_2
    invoke-virtual {v2, v3}, Landroid/net/NetworkPolicy;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v4, 0x0

    return v4

    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updated "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateNetworkStats(IZ)V
    .locals 4

    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateNetworkStats: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v3, "F"

    goto :goto_0

    :cond_0
    const-string v3, "B"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/net/NetworkStatsManagerInternal;->setUidForeground(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private updateNetworksInternal()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateSubscriptions()V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveCarrierPolicyAL()V

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL()V

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

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
.end method

.method private updatePowerSaveWhitelistUL()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerWhitelistManager;->getWhitelistedAppIds(Z)[I

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    array-length v2, v0

    move v3, v1

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_0

    aget v5, v0, v3

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

    invoke-virtual {v2, v4}, Landroid/os/PowerWhitelistManager;->getWhitelistedAppIds(Z)[I

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private updateRestrictBackgroundRulesOnUidStatusChangedUL(ILandroid/net/NetworkPolicyManager$UidState;Landroid/net/NetworkPolicyManager$UidState;)V
    .locals 2

    nop

    invoke-static {p2}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(Landroid/net/NetworkPolicyManager$UidState;)Z

    move-result v0

    nop

    invoke-static {p3}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(Landroid/net/NetworkPolicyManager$UidState;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    :cond_0
    return-void
.end method

.method private updateRestrictionRulesForUidUL(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictedModeForUidUL(I)V

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    return-void
.end method

.method private updateRulesForAppIdleParoleUL()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0}, Lcom/android/server/usage/AppStandbyInternal;->isInParole()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v4, v2, :cond_6

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForDenylistRulesUL(I)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_4

    :cond_0
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    if-eqz v1, :cond_1

    and-int/lit8 v8, v8, 0xf

    goto :goto_1

    :cond_1
    and-int/lit16 v9, v8, 0xf0

    if-nez v9, :cond_2

    goto :goto_4

    :cond_2
    :goto_1
    const/4 v9, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_2

    :cond_3
    move v6, v9

    :goto_2
    if-eqz v6, :cond_4

    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-direct {p0, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7, v5}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v3, v7, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_3

    :cond_4
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v7, v9}, Landroid/util/SparseIntArray;->put(II)V

    :goto_3
    invoke-direct {p0, v7, v8, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(IIZ)I

    move-result v5

    if-nez v5, :cond_5

    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_4

    :cond_5
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7, v5}, Landroid/util/SparseIntArray;->put(II)V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    nop

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    move v6, v5

    :goto_5
    invoke-direct {p0, v5, v3, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V

    return-void
.end method

.method private updateRulesForDataUsageRestrictionsUL(I)V
    .locals 4

    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRulesForDataUsageRestrictionsUL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsULInner(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private updateRulesForDataUsageRestrictionsULInner(I)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForAllowlistRulesUL(I)Z

    move-result v2

    const-string v3, "NetworkPolicy"

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no need to update restrict data rules for uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictBackgroundUL(I)Z

    move-result v6

    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isRestrictedByAdminUL(I)Z

    move-result v7

    iget-object v8, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    if-nez v8, :cond_2

    new-instance v9, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    invoke-direct {v9}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;-><init>()V

    move-object v8, v9

    iget-object v9, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    invoke-virtual {v9, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    and-int/lit8 v9, v2, 0x1

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_0

    :cond_3
    move v9, v4

    :goto_0
    and-int/lit8 v11, v2, 0x4

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    goto :goto_1

    :cond_4
    move v11, v4

    :goto_1
    and-int/lit8 v12, v5, -0x10

    if-eqz v7, :cond_5

    or-int/lit8 v12, v12, 0x4

    goto :goto_3

    :cond_5
    if-eqz v6, :cond_8

    if-nez v9, :cond_7

    iget-boolean v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v13, :cond_6

    if-nez v11, :cond_6

    goto :goto_2

    :cond_6
    if-eqz v11, :cond_a

    or-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_7
    :goto_2
    or-int/lit8 v12, v12, 0x2

    goto :goto_3

    :cond_8
    if-eqz v9, :cond_9

    or-int/lit8 v12, v12, 0x4

    goto :goto_3

    :cond_9
    iget-boolean v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v13, :cond_a

    if-eqz v11, :cond_a

    or-int/lit8 v12, v12, 0x1

    :cond_a
    :goto_3
    const/4 v13, 0x0

    const/4 v14, 0x0

    if-eqz v7, :cond_b

    const/high16 v16, 0x40000

    goto :goto_4

    :cond_b
    move/from16 v16, v4

    :goto_4
    or-int v13, v13, v16

    iget-boolean v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    const/high16 v17, 0x10000

    if-eqz v15, :cond_c

    move/from16 v15, v17

    goto :goto_5

    :cond_c
    move v15, v4

    :goto_5
    or-int/2addr v13, v15

    const/high16 v15, 0x20000

    if-eqz v9, :cond_d

    move/from16 v18, v15

    goto :goto_6

    :cond_d
    move/from16 v18, v4

    :goto_6
    or-int v13, v13, v18

    invoke-static/range {p1 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isSystem(I)Z

    move-result v18

    if-eqz v18, :cond_e

    goto :goto_7

    :cond_e
    move v15, v4

    :goto_7
    or-int/2addr v14, v15

    if-eqz v6, :cond_f

    const/high16 v15, 0x40000

    goto :goto_8

    :cond_f
    move v15, v4

    :goto_8
    or-int/2addr v14, v15

    if-eqz v11, :cond_10

    goto :goto_9

    :cond_10
    move/from16 v17, v4

    :goto_9
    or-int v14, v14, v17

    sget-boolean v15, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    const-string v4, ", newRule="

    const-string v10, ", oldRule="

    move/from16 v18, v2

    const-string v2, ", isRestrictedByAdmin="

    if-eqz v15, :cond_11

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v14

    const-string/jumbo v14, "updateRuleForRestrictBackgroundUL("

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "): isForeground="

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", isDenied="

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", isAllowed="

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v14, v5, 0xf

    invoke-static {v14}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v14, v12, 0xf

    invoke-static {v14}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", newUidRules="

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", oldUidRules="

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", oldBlockedMeteredReasons="

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v8, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    const/high16 v20, -0x10000

    and-int v14, v14, v20

    invoke-static {v14}, Landroid/net/NetworkPolicyManager;->blockedReasonsToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", oldBlockedMeteredEffectiveReasons="

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v8, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    and-int v14, v14, v20

    invoke-static {v14}, Landroid/net/NetworkPolicyManager;->blockedReasonsToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", oldAllowedMeteredReasons="

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v8, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    and-int v14, v14, v20

    invoke-static {v14}, Landroid/net/NetworkPolicyManager;->blockedReasonsToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_11
    move/from16 v19, v14

    :goto_a
    if-nez v12, :cond_12

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_b

    :cond_12
    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v1, v12}, Landroid/util/SparseIntArray;->put(II)V

    :goto_b
    if-eq v12, v5, :cond_1e

    const/4 v14, 0x2

    invoke-static {v12, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v15

    if-eqz v15, :cond_13

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkAllowlist(IZ)V

    if-eqz v9, :cond_1d

    const/4 v15, 0x0

    invoke-direct {v0, v1, v15}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkDenylist(IZ)V

    goto/16 :goto_10

    :cond_13
    const/4 v15, 0x0

    invoke-static {v5, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v14

    if-eqz v14, :cond_16

    if-nez v11, :cond_14

    invoke-direct {v0, v1, v15}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkAllowlist(IZ)V

    :cond_14
    if-nez v9, :cond_15

    if-eqz v7, :cond_1d

    :cond_15
    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkDenylist(IZ)V

    goto/16 :goto_10

    :cond_16
    const/4 v14, 0x4

    invoke-static {v12, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v16

    if-nez v16, :cond_1a

    invoke-static {v5, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v16

    if-eqz v16, :cond_17

    goto :goto_d

    :cond_17
    const/4 v14, 0x1

    invoke-static {v12, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v15

    if-nez v15, :cond_19

    invoke-static {v5, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v15

    if-eqz v15, :cond_18

    goto :goto_c

    :cond_18
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unexpected change of metered UID state for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ": foreground="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", allowlisted="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", denylisted="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_19
    :goto_c
    invoke-direct {v0, v1, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkAllowlist(IZ)V

    goto :goto_10

    :cond_1a
    :goto_d
    if-nez v9, :cond_1c

    if-eqz v7, :cond_1b

    goto :goto_e

    :cond_1b
    move v4, v15

    goto :goto_f

    :cond_1c
    :goto_e
    const/4 v4, 0x1

    :goto_f
    invoke-direct {v0, v1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkDenylist(IZ)V

    invoke-static {v5, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v2

    if-eqz v2, :cond_1d

    if-eqz v11, :cond_1d

    invoke-direct {v0, v1, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkAllowlist(IZ)V

    :cond_1d
    :goto_10
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_1e
    iget v2, v8, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    iget v3, v8, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    const v4, 0xffff

    and-int/2addr v3, v4

    or-int/2addr v3, v13

    iput v3, v8, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    iget v3, v8, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    and-int/2addr v3, v4

    or-int v3, v3, v19

    iput v3, v8, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    invoke-virtual {v8}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->updateEffectiveBlockedReasons()V

    iget v3, v8, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    if-eq v2, v3, :cond_1f

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x15

    iget v10, v8, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v4, v1, v10, v14}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :cond_1f
    return-void
.end method

.method private updateRulesForGlobalChangeAL(Z)V
    .locals 4

    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRulesForGlobalChangeAL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v3, "R"

    goto :goto_0

    :cond_0
    const-string v3, "-"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleUL()V

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundUL()V

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictedModeAllowlistUL()V

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL()V

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private updateRulesForPowerRestrictionsUL(IIZ)I
    .locals 4

    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRulesForPowerRestrictionsUL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const-string v3, "I"

    goto :goto_0

    :cond_0
    const-string v3, "-"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsULInner(IIZ)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private updateRulesForPowerRestrictionsUL(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    nop

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(IIZ)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    :goto_0
    return-void
.end method

.method private updateRulesForPowerRestrictionsULInner(IIZ)I
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForDenylistRulesUL(I)Z

    move-result v4

    const-string v5, "NetworkPolicy"

    const/4 v6, 0x0

    if-nez v4, :cond_1

    sget-boolean v4, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "no need to update restrict power rules for uid "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v6

    :cond_1
    const/4 v4, 0x1

    if-nez v3, :cond_3

    iget-boolean v7, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-nez v7, :cond_3

    iget-boolean v7, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    move v7, v6

    goto :goto_1

    :cond_3
    :goto_0
    move v7, v4

    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v8

    iget-boolean v9, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-direct {v0, v1, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->isWhitelistedFromPowerSaveUL(IZ)Z

    move-result v9

    and-int/lit16 v10, v2, -0xf1

    iget-object v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    invoke-virtual {v11, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    if-nez v11, :cond_4

    new-instance v12, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    invoke-direct {v12}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;-><init>()V

    move-object v11, v12

    iget-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    invoke-virtual {v12, v1, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    if-eqz v8, :cond_5

    if-eqz v7, :cond_7

    or-int/lit8 v10, v10, 0x20

    goto :goto_3

    :cond_5
    if-eqz v7, :cond_7

    if-eqz v9, :cond_6

    const/16 v14, 0x20

    goto :goto_2

    :cond_6
    const/16 v14, 0x40

    :goto_2
    or-int/2addr v10, v14

    :cond_7
    :goto_3
    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-boolean v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    or-int/2addr v6, v14

    iget-boolean v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    const/16 v17, 0x2

    if-eqz v14, :cond_8

    move/from16 v14, v17

    goto :goto_4

    :cond_8
    const/4 v14, 0x0

    :goto_4
    or-int/2addr v6, v14

    if-eqz v3, :cond_9

    const/16 v18, 0x4

    goto :goto_5

    :cond_9
    const/16 v18, 0x0

    :goto_5
    or-int v6, v6, v18

    iget v14, v11, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    const/16 v19, 0x8

    and-int/lit8 v14, v14, 0x8

    or-int/2addr v6, v14

    invoke-static/range {p1 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isSystem(I)Z

    move-result v14

    or-int/2addr v14, v15

    if-eqz v8, :cond_a

    goto :goto_6

    :cond_a
    const/16 v17, 0x0

    :goto_6
    or-int v14, v14, v17

    invoke-direct {v0, v1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->isWhitelistedFromPowerSaveUL(IZ)Z

    move-result v15

    if-eqz v15, :cond_b

    const/16 v18, 0x4

    goto :goto_7

    :cond_b
    const/16 v18, 0x0

    :goto_7
    or-int v14, v14, v18

    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isWhitelistedFromPowerSaveExceptIdleUL(I)Z

    move-result v15

    if-eqz v15, :cond_c

    move/from16 v16, v19

    goto :goto_8

    :cond_c
    const/16 v16, 0x0

    :goto_8
    or-int v14, v14, v16

    sget-boolean v15, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    const-string v4, ", newRule="

    const-string v12, ", oldRule="

    if-eqz v15, :cond_d

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v7

    const-string/jumbo v7, "updateRulesForPowerRestrictionsUL("

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "), isIdle: "

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mRestrictPower: "

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mDeviceIdleMode: "

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isForeground="

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isWhitelisted="

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v7, v2, 0xf0

    invoke-static {v7}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v7, v10, 0xf0

    invoke-static {v7}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", newUidRules="

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", oldUidRules="

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_d
    move/from16 v19, v7

    :goto_9
    if-eq v10, v2, :cond_12

    and-int/lit16 v7, v10, 0xf0

    if-eqz v7, :cond_10

    const/16 v7, 0x20

    invoke-static {v10, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v7

    if-eqz v7, :cond_e

    goto :goto_a

    :cond_e
    const/16 v7, 0x40

    invoke-static {v10, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v7

    if-eqz v7, :cond_f

    if-eqz v15, :cond_11

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rejecting non-metered access for UID "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unexpected change of non-metered UID state for "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ": foreground="

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", whitelisted="

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_10
    :goto_a
    if-eqz v15, :cond_11

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Allowing non-metered access for UID "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_b
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v1, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    :cond_12
    iget v4, v11, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    iget v5, v11, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    const/high16 v7, -0x10000

    and-int/2addr v5, v7

    or-int/2addr v5, v6

    iput v5, v11, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    iget v5, v11, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    and-int/2addr v5, v7

    or-int/2addr v5, v14

    iput v5, v11, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    invoke-virtual {v11}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->updateEffectiveBlockedReasons()V

    iget v5, v11, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    if-eq v4, v5, :cond_13

    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x15

    iget v12, v11, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v5, v7, v1, v12, v13}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :cond_13
    return v10
.end method

.method private updateRulesForRestrictBackgroundUL()V
    .locals 4

    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateRulesForRestrictBackgroundUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    const-string/jumbo v2, "updateRulesForRestrictBackground"

    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-direct {p0, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->forEachUid(Ljava/lang/String;Ljava/util/function/IntConsumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private updateRulesForRestrictPowerUL()V
    .locals 4

    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateRulesForRestrictPowerUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDeviceIdleUL()V

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerSaveUL()V

    const-string/jumbo v2, "updateRulesForRestrictPower"

    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-direct {p0, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->forEachUid(Ljava/lang/String;Ljava/util/function/IntConsumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private updateRulesForTempWhitelistChangeUL(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(I)V

    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    invoke-direct {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateRulesForWhitelistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V
    .locals 4

    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-static {p3, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    invoke-virtual {p1, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateRulesForWhitelistedPowerSaveUL(IZI)V
    .locals 4

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-direct {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->isWhitelistedFromPowerSaveUL(IZ)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p3, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-direct {p0, p3, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    :cond_3
    :goto_2
    return-void
.end method

.method private updateRulesForWhitelistedPowerSaveUL(ZILandroid/util/SparseIntArray;)V
    .locals 7

    if-eqz p1, :cond_4

    move-object v0, p3

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V

    const/4 v5, 0x3

    if-ne p2, v5, :cond_0

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_1
    if-ltz v2, :cond_3

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicyManager$UidState;

    invoke-static {v4}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(Landroid/net/NetworkPolicyManager$UidState;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0, p2, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V

    :goto_2
    return-void
.end method

.method private updateUidStateUL(III)Z
    .locals 6

    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateUidStateUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkPolicyManager$UidState;

    if-eqz v2, :cond_1

    iget v3, v2, Landroid/net/NetworkPolicyManager$UidState;->procState:I

    if-ne v3, p2, :cond_1

    iget v3, v2, Landroid/net/NetworkPolicyManager$UidState;->capability:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v3, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    :try_start_1
    new-instance v3, Landroid/net/NetworkPolicyManager$UidState;

    invoke-direct {v3, p1, p2, p3}, Landroid/net/NetworkPolicyManager$UidState;-><init>(III)V

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictBackgroundRulesOnUidStatusChangedUL(ILandroid/net/NetworkPolicyManager$UidState;Landroid/net/NetworkPolicyManager$UidState;)V

    invoke-static {v2}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(Landroid/net/NetworkPolicyManager$UidState;)Z

    move-result v4

    invoke-static {v3}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(Landroid/net/NetworkPolicyManager$UidState;)Z

    move-result v5

    if-eq v4, v5, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(I)V

    iget-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    :cond_2
    iget-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    const/4 v4, 0x1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private upgradeDefaultBackgroundDataUL()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_restrict_background_data"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    return-void
.end method

.method private upgradeWifiMeteredOverride()V
    .locals 10

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkPolicy;

    iget-object v4, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v4}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    iget-boolean v4, v3, Landroid/net/NetworkPolicy;->inferred:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    iget-object v4, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v4}, Landroid/net/NetworkTemplate;->getNetworkId()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, v3, Landroid/net/NetworkPolicy;->metered:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    :goto_1
    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    const/4 v1, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    invoke-static {v4}, Landroid/net/NetworkPolicyManager;->resolveNetworkId(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    if-eqz v6, :cond_4

    const-string v7, "NetworkPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found network "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "; upgrading metered hint"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x2

    :goto_3
    iput v7, v4, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v5

    :catchall_1
    move-exception v1

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2
.end method

.method private waitForAdminData()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.device_admin"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x2710

    const-string v3, "Wait for admin data"

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/ConcurrentUtils;->waitForCountDownNoInterrupt(Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method addDefaultRestrictBackgroundAllowlistUidsUL()Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundAllowlistUidsUL(I)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v5, 0x1

    :goto_2
    move v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method addNetworkPolicyAL(Landroid/net/NetworkPolicy;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    const-class v1, Landroid/net/NetworkPolicy;

    invoke-static {v1, v0, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Landroid/net/NetworkPolicy;

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    return-void
.end method

.method public addUidPolicy(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    or-int/2addr p2, v1

    if-eq v1, p2, :cond_0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIIZ)V

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v2, p1, v1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->uidPolicyChanged(III)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot apply policy to UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bindConnectivityManager()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const-string/jumbo v1, "missing ConnectivityManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method buildDefaultCarrierPolicy(ILjava/lang/String;)Landroid/net/NetworkPolicy;
    .locals 17

    move-object/from16 v1, p0

    invoke-static/range {p2 .. p2}, Landroid/net/NetworkTemplate;->buildTemplateCarrierMetered(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v15

    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/NetworkPolicy;->buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object v16

    new-instance v0, Landroid/net/NetworkPolicy;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultWarningBytes()J

    move-result-wide v5

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultLimitBytes()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    const-wide/16 v11, -0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object v2, v0

    move-object v3, v15

    move-object/from16 v4, v16

    invoke-direct/range {v2 .. v14}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;Landroid/util/RecurrenceRule;JJJJZZ)V

    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v5, p1

    :try_start_1
    invoke-direct {v1, v5, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateDefaultCarrierPolicyAL(ILandroid/net/NetworkPolicy;)Z

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object v2

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    move/from16 v5, p1

    :goto_0
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "NetworkPolicy"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    new-instance v1, Landroid/util/ArraySet;

    array-length v2, p3

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    array-length v2, p3

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p3, v4

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v5, "--unsnooze"

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    :goto_1
    if-ltz v3, :cond_2

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkPolicy;

    invoke-virtual {v6}, Landroid/net/NetworkPolicy;->clearSnooze()V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    const-string v3, "Cleared snooze timestamps"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :cond_3
    :try_start_3
    const-string v5, "System ready: "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    const-string v5, "Restrict background: "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    const-string v5, "Restrict power: "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    const-string v5, "Device idle: "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    const-string v5, "Restricted networking mode: "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictedNetworkingMode:Z

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfacesLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    const-string v6, "Metered ifaces: "

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mRestrictBackgroundLowPowerMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundLowPowerMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mRestrictBackgroundBeforeBsm: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundBeforeBsm:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mLoadedRestrictBackground: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mRestrictBackgroundChangedInBsm: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v5, "Network policies:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v5, 0x0

    :goto_2
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkPolicy;

    invoke-virtual {v6}, Landroid/net/NetworkPolicy;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v5, "Subscription plans:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v5, 0x0

    :goto_3
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Subscriber ID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/telephony/SubscriptionPlan;

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    array-length v8, v7

    move v9, v3

    :goto_4
    if-ge v9, v8, :cond_5

    aget-object v10, v7, v9

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    nop

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v5, "Active subscriptions:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v5, 0x0

    :goto_5
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/net/module/util/NetworkIdentityUtils;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Merged subscriptions: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/net/module/util/NetworkIdentityUtils;->scrubSubscriberIds([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v5, "Policy for UIDs:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v5, :cond_9

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    const-string v9, "UID="

    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v9, " policy="

    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/net/NetworkPolicyManager;->uidPoliciesToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_9
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    if-lez v5, :cond_b

    const-string v6, "Power save whitelist (except idle) app ids:"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v6, 0x0

    :goto_8
    if-ge v6, v5, :cond_a

    const-string v7, "UID="

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_a
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_b
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    if-lez v5, :cond_d

    const-string v6, "Power save whitelist app ids:"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v6, 0x0

    :goto_9
    if-ge v6, v5, :cond_c

    const-string v7, "UID="

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_c
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_d
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    if-lez v5, :cond_f

    const-string v6, "App idle whitelist app ids:"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v6, 0x0

    :goto_a
    if-ge v6, v5, :cond_e

    const-string v7, "UID="

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_e
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_f
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundAllowlistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    if-lez v5, :cond_11

    const-string v6, "Default restrict background allowlist uids:"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v5, :cond_10

    const-string v7, "UID="

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundAllowlistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_10
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_11
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    if-lez v5, :cond_13

    const-string v6, "Default restrict background allowlist uids revoked by users:"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v5, :cond_12

    const-string v7, "UID="

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_12
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_13
    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-static {v7, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-static {v7, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    const-string v7, "Status for all known UIDs:"

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    move v5, v7

    const/4 v7, 0x0

    :goto_d
    if-ge v7, v5, :cond_15

    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    const-string v9, "UID="

    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/NetworkPolicyManager$UidState;

    if-nez v9, :cond_14

    const-string v10, " state={null}"

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_e

    :cond_14
    const-string v10, " state="

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/net/NetworkPolicyManager$UidState;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_e
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v8, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    const-string v11, " rules="

    invoke-virtual {v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_15
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v7, "Status for just UIDs with rules:"

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    move v5, v7

    const/4 v7, 0x0

    :goto_f
    if-ge v7, v5, :cond_16

    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    const-string v9, "UID="

    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v8, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    const-string v10, " rules="

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    :cond_16
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "Admin restricted uids for metered data:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v3, :cond_17

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "u"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_17
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v5, v0}, Lcom/android/internal/util/StatLogger;->dump(Landroid/util/IndentingPrintWriter;)V

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v5, v0}, Lcom/android/server/net/NetworkPolicyLogger;->dumpLogs(Lcom/android/internal/util/IndentingPrintWriter;)V

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-virtual {v2, v0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void

    :catchall_0
    move-exception v3

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v3

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v3

    :catchall_2
    move-exception v3

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v3
.end method

.method public factoryReset(Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "no_network_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/net/NetworkTemplate;->buildTemplateCarrierMetered(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_4

    aget-object v6, v0, v5

    iget-object v7, v6, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v7, v1}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, v6, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v7, v2}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    const-wide/16 v7, -0x1

    iput-wide v7, v6, Landroid/net/NetworkPolicy;->limitBytes:J

    iput-boolean v4, v6, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-virtual {v6}, Landroid/net/NetworkPolicy;->clearSnooze()V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v5, "no_control_apps"

    invoke-virtual {v3, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidsWithPolicy(I)[I

    move-result-object v3

    array-length v5, v3

    move v6, v4

    :goto_2
    if-ge v6, v5, :cond_5

    aget v7, v3, v6

    invoke-virtual {p0, v7, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicy(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method getAppIdleWhitelist()[I
    .locals 5

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getCycleDayFromCarrierConfig(Landroid/os/PersistableBundle;I)I
    .locals 4

    if-nez p1, :cond_0

    return p2

    :cond_0
    nop

    const-string/jumbo v0, "monthly_data_cycle_day_int"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return p2

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v3

    if-lt v0, v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v2

    if-le v0, v2, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid date in CarrierConfigManager.KEY_MONTHLY_DATA_CYCLE_DAY_INT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetworkPolicy"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method getHandlerForTesting()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getLimitBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J
    .locals 5

    if-nez p1, :cond_0

    return-wide p2

    :cond_0
    nop

    const-string v0, "data_limit_threshold_bytes_long"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    const-wide/16 v3, -0x1

    if-nez v2, :cond_1

    return-wide v3

    :cond_1
    cmp-long v2, v0, v3

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultLimitBytes()J

    move-result-wide v2

    return-wide v2

    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid value in CarrierConfigManager.KEY_DATA_LIMIT_THRESHOLD_BYTES_LONG; expected a non-negative value but got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetworkPolicy"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p2

    :cond_3
    return-wide v0
.end method

.method public getMultipathPreference(Landroid/net/Network;)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/MultipathPolicyTracker;->getMultipathPreference(Landroid/net/Network;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;
    .locals 5

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x33

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v2, v3, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/net/NetworkPolicy;

    return-object v1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    new-array v2, v1, [Landroid/net/NetworkPolicy;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicy;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getRestrictBackground()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRestrictBackgroundByCaller()I
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictBackgroundStatusInternal(I)I

    move-result v0

    return v0
.end method

.method public getRestrictBackgroundStatus(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictBackgroundStatusInternal(I)I

    move-result v0

    return v0
.end method

.method public getSubscriptionPlans(ILjava/lang/String;)[Landroid/telephony/SubscriptionPlan;
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceSubscriptionPlanAccess(IILjava/lang/String;)V

    const-string v0, "fw.fake_plan"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v5, "month_hard"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide v6, 0x7fffffffffffffffL

    const-wide/32 v8, 0x40000000

    const-wide v10, 0x140000000L

    if-eqz v5, :cond_0

    const-string v5, "2007-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v12, "G-Mobile"

    invoke-virtual {v5, v12}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const/4 v12, 0x1

    invoke-virtual {v5, v10, v11, v12}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v13

    const-wide/16 v14, 0x24

    invoke-virtual {v13, v14, v15}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v13

    invoke-virtual {v13}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v13

    invoke-virtual {v13}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v10

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "2017-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v8, "G-Mobile Happy"

    invoke-virtual {v5, v8}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    invoke-virtual {v5, v6, v7, v12}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    const-wide v8, 0x140000000L

    invoke-virtual {v5, v8, v9, v6, v7}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "2017-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile, Charged after limit"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v12}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v14, v15}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    const-string/jumbo v5, "month_soft"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v10, 0x0

    const-wide/16 v11, 0x1

    const/4 v13, 0x2

    if-eqz v5, :cond_1

    const-string v5, "2007-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile is the carriers name who this plan belongs to"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "Crazy unlimited bandwidth plan with incredibly long title that should be cut off to prevent UI from looking terrible"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v13}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    invoke-virtual {v5, v8, v9, v6, v7}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "2017-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile, Throttled after limit"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v13}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "2017-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile, No data connection after limit"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v5, "month_over"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "2007-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile is the carriers name who this plan belongs to"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v13}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-wide v6, 0x180000000L

    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "2017-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile, Throttled after limit"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v13}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "2017-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile, No data connection after limit"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v5, "month_none"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "2007-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v5, "prepaid"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide/32 v6, 0x20000000

    const-wide/16 v11, 0x3

    const-wide/16 v8, 0xa

    const-wide/16 v13, 0x14

    if-eqz v5, :cond_4

    nop

    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v8, "G-Mobile"

    invoke-virtual {v5, v8}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    invoke-virtual {v5, v6, v7, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    const-wide/32 v8, 0x6400000

    invoke-virtual {v5, v8, v9, v6, v7}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v5, "prepaid_crazy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    nop

    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v15

    invoke-virtual {v15, v8, v9}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v15

    invoke-static {v5, v15}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v15, "G-Mobile Anytime"

    invoke-virtual {v5, v15}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    invoke-virtual {v5, v6, v7, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    const-wide/32 v10, 0x6400000

    invoke-virtual {v5, v10, v11, v6, v7}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v13, v14}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile Nickel Nights"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "5\u00a2/GB between 1-5AM"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const/4 v6, 0x2

    const-wide v10, 0x140000000L

    invoke-virtual {v5, v10, v11, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-wide/32 v6, 0xf00000

    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v10

    const-wide/16 v11, 0x1e

    invoke-virtual {v10, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v10

    invoke-virtual {v5, v6, v7, v10, v11}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v13, v14}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile Bonus 3G"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "Unlimited 3G data"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-wide/32 v6, 0x40000000

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v7, v8}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-wide/32 v6, 0x12c00000

    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    const-wide/16 v9, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const-string/jumbo v5, "unlimited"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    nop

    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile Awesome"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-wide v6, 0x7fffffffffffffffL

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v7, v8}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-wide/32 v6, 0x3200000

    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/telephony/SubscriptionPlan;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/telephony/SubscriptionPlan;

    return-object v5

    :cond_7
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v6

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_9

    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v6

    const/16 v7, 0x3e9

    if-ne v6, v7, :cond_8

    goto :goto_1

    :cond_8
    const-string v6, "NetworkPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not returning plans because caller "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " doesn\'t match owner "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    monitor-exit v5

    return-object v6

    :cond_9
    :goto_1
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/telephony/SubscriptionPlan;

    monitor-exit v5

    return-object v6

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSubscriptionPlansOwner(I)Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0
.end method

.method public getUidPolicy(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUidsWithPolicy(I)[I
    .locals 6

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    if-nez p1, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    and-int v5, v4, p1

    if-eqz v5, :cond_2

    :cond_1
    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    move-object v0, v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getWarningBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J
    .locals 5

    if-nez p1, :cond_0

    return-wide p2

    :cond_0
    nop

    const-string v0, "data_warning_threshold_bytes_long"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    const-wide/16 v3, -0x1

    if-nez v2, :cond_1

    return-wide v3

    :cond_1
    cmp-long v2, v0, v3

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultWarningBytes()J

    move-result-wide v2

    return-wide v2

    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid value in CarrierConfigManager.KEY_DATA_WARNING_THRESHOLD_BYTES_LONG; expected a non-negative value but got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetworkPolicy"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p2

    :cond_3
    return-wide v0
.end method

.method handleNetworkPoliciesUpdateAL(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    return-void
.end method

.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .locals 6

    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;-><init>(Landroid/content/Context;Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object v1, p0

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method handleUidChanged(IIJI)V
    .locals 9

    const-string/jumbo v0, "onUidStateChanged"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    move v4, p1

    move v5, p2

    move-wide v6, p3

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/net/NetworkPolicyLogger;->uidStateChanged(IIJI)V

    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/net/NetworkPolicyManagerService;->updateUidStateUL(III)Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v4, p1, p3, p4}, Landroid/app/ActivityManagerInternal;->notifyNetworkPolicyRulesUpdated(IJ)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    :try_start_2
    invoke-static {p2}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkStats(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method handleUidGone(I)V
    .locals 4

    const-string/jumbo v0, "onUidGone"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeUidStateUL(I)Z

    move-result v3

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkStats(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method isRestrictedModeEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictedNetworkingMode:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isUidForeground(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicyManager$UidState;

    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(Landroid/net/NetworkPolicyManager$UidState;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isUidIdle(I)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eqz v0, :cond_2

    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v6, v5, p1, v1}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdle(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_1

    return v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    return v2

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isUidNetworkingBlocked(IZ)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.OBSERVE_NETWORK_POLICY"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    iget-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-static {p1, v3, p2, v4, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidNetworkingBlockedInternal(IIZZLcom/android/server/net/NetworkPolicyLogger;)Z

    move-result v2

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v0, v1}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    return v2

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public isUidRestrictedOnMeteredNetworks(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.OBSERVE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/16 v2, 0x20

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-eqz v2, :cond_0

    invoke-static {v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public synthetic lambda$initService$0$NetworkPolicyManagerService(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictedNetworkingMode:Z

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictedModeAllowlistUL()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$networkScoreAndNetworkManagementServiceReady$1$NetworkPolicyManagerService(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->initService(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public synthetic lambda$updateRestrictedModeAllowlistUL$3$NetworkPolicyManagerService(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNewRestrictedModeUidRule(II)I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictedModeFirewallRule(I)I

    move-result v4

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallRestrictedModeRules:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseIntArray;->append(II)V

    :cond_1
    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateBlockedReasonsForRestrictedModeUL(I)V

    return-void
.end method

.method public synthetic lambda$updateRulesForRestrictBackgroundUL$5$NetworkPolicyManagerService(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    return-void
.end method

.method public synthetic lambda$updateRulesForRestrictPowerUL$4$NetworkPolicyManagerService(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    return-void
.end method

.method public networkScoreAndNetworkManagementServiceReady()Ljava/util/concurrent/CountDownLatch;
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManagerReady:Z

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method performSnooze(Landroid/net/NetworkTemplate;I)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicy;

    if-eqz v4, :cond_0

    sparse-switch p2, :sswitch_data_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    goto :goto_1

    :sswitch_0
    iput-wide v0, v4, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    goto :goto_0

    :sswitch_1
    iput-wide v0, v4, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    goto :goto_0

    :sswitch_2
    iput-wide v0, v4, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    nop

    :goto_0
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :goto_1
    :try_start_3
    const-string/jumbo v6, "unexpected type"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unable to find policy for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4

    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x23 -> :sswitch_1
        0x2d -> :sswitch_0
    .end sparse-switch
.end method

.method public registerListener(Landroid/net/INetworkPolicyListener;)V
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v1, "android.permission.OBSERVE_NETWORK_POLICY"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceAnyPermissionOf([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public removeUidPolicy(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    not-int v2, p2

    and-int p2, v1, v2

    if-eq v1, p2, :cond_0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIIZ)V

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v2, p1, v1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->uidPolicyChanged(III)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot apply policy to UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeUserStateUL(IZZ)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->removingUserState(I)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_0

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    new-array v3, v1, [I

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p1, :cond_2

    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    array-length v4, v3

    if-lez v4, :cond_5

    array-length v4, v3

    :goto_2
    if-ge v1, v4, :cond_4

    aget v5, v3, v1

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->delete(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    :cond_5
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p3, :cond_6

    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    goto :goto_3

    :catchall_0
    move-exception v2

    goto :goto_4

    :cond_6
    :goto_3
    if-eqz p2, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    :cond_7
    monitor-exit v1

    return v0

    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method setAppIdleWhitelist(IZ)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-ne v1, p2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->appIdleWlChanged(IZ)V

    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(I)V

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method setDebugUid(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->setDebugUid(I)V

    return-void
.end method

.method public setDeviceIdleMode(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "setDeviceIdleMode"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-ne v3, p1, :cond_0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_0
    :try_start_2
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v3, p1}, Lcom/android/server/net/NetworkPolicyLogger;->deviceIdleModeEnabled(Z)V

    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V

    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_2

    :try_start_3
    const-string/jumbo v0, "net"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnPhase(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "net"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffPhase(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL([Landroid/net/NetworkPolicy;)V

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4

    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setRestrictBackground(Z)V
    .locals 8

    const-string/jumbo v0, "setRestrictBackground"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundUL(ZLjava/lang/String;)V

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    nop

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v5

    :try_start_6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public setSubscriptionOverride(III[IJLjava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-wide/from16 v3, p5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move/from16 v5, p1

    move-object/from16 v6, p7

    invoke-direct {v1, v5, v0, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceSubscriptionPlanAccess(IILjava/lang/String;)V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v7, v0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->addAll(Landroid/util/ArraySet;[I)Z

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    move-object v8, v0

    array-length v0, v2

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v0, :cond_1

    aget v11, v2, v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v8, v11}, Landroid/util/IntArray;->add(I)V

    goto :goto_1

    :cond_0
    const-string v12, "NetworkPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setSubscriptionOverride removing invalid network type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v11, 0x1

    move/from16 v12, p2

    if-eq v12, v11, :cond_2

    if-eqz v0, :cond_6

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/telephony/SubscriptionPlan;->getDataLimitBehavior()I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_6

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v10, "netpolicy_override_enabled"

    invoke-static {v0, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v11, v9

    :goto_2
    move v0, v11

    if-nez v0, :cond_4

    if-nez p3, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v10, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v10, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v10, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    invoke-virtual {v8}, Landroid/util/IntArray;->toArray()[I

    move-result-object v11

    iput-object v11, v10, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v13, 0x10

    invoke-virtual {v11, v13, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-wide/16 v14, 0x0

    cmp-long v11, v3, v14

    if-lez v11, :cond_5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v10, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v13, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v9, v11, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5
    return-void

    :cond_6
    :try_start_2
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v11, "Must provide valid SubscriptionPlan to enable overriding"

    invoke-direct {v9, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    :catchall_0
    move-exception v0

    move/from16 v12, p2

    :goto_3
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method public setSubscriptionPlans(I[Landroid/telephony/SubscriptionPlan;Ljava/lang/String;)V
    .locals 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceSubscriptionPlanAccess(IILjava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceSubscriptionPlanValidity([Landroid/telephony/SubscriptionPlan;)V

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p2, v2

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_1

    invoke-direct {p0, p1, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveCarrierPolicyAL(ILjava/lang/String;)Z

    invoke-direct {p0, p1, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeUpdateCarrierPolicyCycleAL(ILjava/lang/String;)Z

    goto :goto_1

    :cond_1
    const-string v6, "NetworkPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Missing subscriberId for subId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.telephony.action.SUBSCRIPTION_PLANS_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.MANAGE_SUBSCRIPTION_PLANS"

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x13

    invoke-virtual {v4, v5, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    nop

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method setSubscriptionPlansOwner(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.sys.sub_plan_owner."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUidPolicy(II)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-eq v3, p2, :cond_0

    const/4 v4, 0x1

    invoke-direct {p0, p1, v3, p2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIIZ)V

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v4, p1, v3, p2}, Lcom/android/server/net/NetworkPolicyLogger;->uidPolicyChanged(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot apply policy to UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWifiMeteredOverride(Ljava/lang/String;I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    invoke-static {v5}, Landroid/net/NetworkPolicyManager;->resolveNetworkId(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iput p2, v5, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public snoozeLimit(Landroid/net/NetworkTemplate;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/16 v2, 0x23

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->performSnooze(Landroid/net/NetworkTemplate;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public systemReady(Ljava/util/concurrent/CountDownLatch;)V
    .locals 3

    const-wide/16 v0, 0x1e

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-virtual {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->start()V

    nop

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Service NetworkPolicy init timeout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Service NetworkPolicy init interrupted"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unregisterListener(Landroid/net/INetworkPolicyListener;)V
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v1, "android.permission.OBSERVE_NETWORK_POLICY"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceAnyPermissionOf([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method updateNetworkEnabledNL()V
    .locals 20

    move-object/from16 v6, p0

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkPolicy"

    const-string/jumbo v1, "updateNetworkEnabledNL()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/32 v7, 0x200000

    const-string/jumbo v0, "updateNetworkEnabledNL"

    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v9

    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v11, 0x1

    sub-int/2addr v0, v11

    move v12, v0

    :goto_0
    const/4 v13, 0x0

    if-ltz v12, :cond_5

    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/net/NetworkPolicy;

    iget-wide v0, v14, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    invoke-virtual {v14}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    nop

    invoke-static {v14}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/util/Pair;

    iget-object v0, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/time/ZonedDateTime;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v16

    iget-object v0, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/time/ZonedDateTime;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v18

    iget-object v1, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    move-wide/from16 v2, v16

    move-wide/from16 v4, v18

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v0

    invoke-virtual {v14, v0, v1}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, v14, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v2, v2, v16

    if-gez v2, :cond_2

    move v2, v11

    goto :goto_1

    :cond_2
    move v2, v13

    :goto_1
    if-nez v2, :cond_3

    move v13, v11

    :cond_3
    move v3, v13

    iget-object v4, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {v6, v4, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v0, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {v6, v0, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V

    nop

    :goto_3
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    :cond_5
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0, v13, v9, v10}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method updateNetworkRulesNL()V
    .locals 43

    move-object/from16 v7, p0

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkPolicy"

    const-string/jumbo v1, "updateNetworkRulesNL()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "updateNetworkRulesNL"

    const-wide/32 v8, 0x200000

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkStateSnapshots()Ljava/util/List;

    move-result-object v10

    iget-object v0, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v11, v0

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStateSnapshot;

    iget-object v2, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/net/NetworkStateSnapshot;->getNetwork()Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Network;->getNetId()I

    move-result v3

    invoke-direct {v7, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->parseSubId(Landroid/net/NetworkStateSnapshot;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v2, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v13, v12}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkStateSnapshot;ZI)Landroid/net/NetworkIdentity;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v14, v0

    const-wide v0, 0x7fffffffffffffffL

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v15, v2

    iget-object v2, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v13

    move-wide/from16 v16, v0

    move v0, v2

    :goto_1
    const-wide/16 v18, -0x1

    const-wide/16 v5, 0x1

    if-ltz v0, :cond_11

    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/net/NetworkPolicy;

    invoke-virtual {v15}, Landroid/util/ArraySet;->clear()V

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v13

    :goto_2
    if-ltz v1, :cond_3

    iget-object v2, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v11, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkIdentity;

    invoke-virtual {v2, v4}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v11, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStateSnapshot;

    invoke-static {v15, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->collectIfaces(Landroid/util/ArraySet;Landroid/net/NetworkStateSnapshot;)V

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v1, :cond_4

    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Applying "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to ifaces "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-wide v1, v3, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v1, v1, v18

    if-eqz v1, :cond_5

    move v1, v13

    goto :goto_3

    :cond_5
    move v1, v12

    :goto_3
    move/from16 v20, v1

    iget-wide v1, v3, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v1, v1, v18

    if-eqz v1, :cond_6

    move v1, v13

    goto :goto_4

    :cond_6
    move v1, v12

    :goto_4
    move/from16 v18, v1

    const-wide v21, 0x7fffffffffffffffL

    const-wide v23, 0x7fffffffffffffffL

    if-nez v18, :cond_8

    if-eqz v20, :cond_7

    goto :goto_5

    :cond_7
    move-object v12, v3

    goto :goto_6

    :cond_8
    :goto_5
    invoke-virtual {v3}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v1

    if-eqz v1, :cond_a

    nop

    invoke-static {v3}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/util/Pair;

    iget-object v1, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v25

    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v27

    iget-object v2, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v1, p0

    move-object v12, v3

    move-object/from16 v19, v4

    move-wide/from16 v3, v25

    move-wide v8, v5

    move-wide/from16 v5, v27

    invoke-direct/range {v1 .. v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v1

    if-eqz v18, :cond_9

    iget-wide v3, v12, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v3, v3, v25

    if-gez v3, :cond_9

    iget-wide v3, v12, Landroid/net/NetworkPolicy;->limitBytes:J

    sub-long/2addr v3, v1

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v21

    :cond_9
    if-eqz v20, :cond_b

    iget-wide v3, v12, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    cmp-long v3, v3, v25

    if-gez v3, :cond_b

    invoke-virtual {v12, v1, v2}, Landroid/net/NetworkPolicy;->isOverWarning(J)Z

    move-result v3

    if-nez v3, :cond_b

    iget-wide v3, v12, Landroid/net/NetworkPolicy;->warningBytes:J

    sub-long/2addr v3, v1

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v23

    goto :goto_6

    :cond_a
    move-object v12, v3

    :cond_b
    :goto_6
    if-nez v20, :cond_c

    if-nez v18, :cond_c

    iget-boolean v1, v12, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v1, :cond_e

    :cond_c
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-le v1, v13, :cond_d

    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "shared quota unsupported; generating rule for each iface"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v13

    move v8, v1

    :goto_7
    if-ltz v8, :cond_e

    invoke-virtual {v15, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide/from16 v3, v23

    move-wide/from16 v5, v21

    invoke-direct/range {v1 .. v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuotasAsync(Ljava/lang/String;JJ)V

    invoke-virtual {v14, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, -0x1

    goto :goto_7

    :cond_e
    if-eqz v20, :cond_f

    iget-wide v1, v12, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v1, v1, v16

    if-gez v1, :cond_f

    iget-wide v1, v12, Landroid/net/NetworkPolicy;->warningBytes:J

    move-wide/from16 v16, v1

    :cond_f
    if-eqz v18, :cond_10

    iget-wide v1, v12, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v1, v1, v16

    if-gez v1, :cond_10

    iget-wide v1, v12, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v16, v1

    :cond_10
    add-int/lit8 v0, v0, -0x1

    const-wide/32 v8, 0x200000

    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_11
    move-wide v8, v5

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/net/NetworkStateSnapshot;

    invoke-virtual {v12}, Landroid/net/NetworkStateSnapshot;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v15}, Landroid/util/ArraySet;->clear()V

    invoke-static {v15, v12}, Lcom/android/server/net/NetworkPolicyManagerService;->collectIfaces(Landroid/util/ArraySet;Landroid/net/NetworkStateSnapshot;)V

    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v13

    move v5, v1

    :goto_9
    if-ltz v5, :cond_13

    invoke-virtual {v15, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v14, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-wide v3, 0x7fffffffffffffffL

    const-wide v20, 0x7fffffffffffffffL

    move-object/from16 v1, p0

    move-object v2, v6

    move/from16 v22, v5

    move-object v8, v6

    move-wide/from16 v5, v20

    invoke-direct/range {v1 .. v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuotasAsync(Ljava/lang/String;JJ)V

    invoke-virtual {v14, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_12
    move/from16 v22, v5

    move-object v8, v6

    :goto_a
    add-int/lit8 v5, v22, -0x1

    const-wide/16 v8, 0x1

    goto :goto_9

    :cond_13
    move/from16 v22, v5

    :cond_14
    const-wide/16 v8, 0x1

    goto :goto_8

    :cond_15
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfacesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v13

    :goto_b
    if-ltz v0, :cond_17

    iget-object v2, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    invoke-direct {v7, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuotasAsync(Ljava/lang/String;)V

    :cond_16
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_17
    iput-object v14, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v0, "netpolicy_quota_enabled"

    invoke-static {v8, v0, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_18

    move v12, v13

    goto :goto_c

    :cond_18
    const/4 v12, 0x0

    :goto_c
    move v9, v12

    const-string/jumbo v0, "netpolicy_quota_unlimited"

    sget-wide v1, Lcom/android/server/net/NetworkPolicyManagerService;->QUOTA_UNLIMITED_DEFAULT:J

    invoke-static {v8, v0, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v12

    const-string/jumbo v0, "netpolicy_quota_limited"

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v20

    iget-object v0, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->clear()V

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Landroid/net/NetworkStateSnapshot;

    if-nez v9, :cond_19

    goto :goto_d

    :cond_19
    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkStateSnapshot;->getNetwork()Landroid/net/Network;

    move-result-object v1

    if-nez v1, :cond_1a

    goto :goto_d

    :cond_1a
    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkStateSnapshot;->getNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getSubIdLocked(Landroid/net/Network;)I

    move-result v5

    const/4 v1, -0x1

    if-ne v5, v1, :cond_1b

    goto :goto_d

    :cond_1b
    invoke-direct {v7, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;

    move-result-object v22

    if-nez v22, :cond_1c

    goto :goto_d

    :cond_1c
    invoke-virtual/range {v22 .. v22}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v25

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkStateSnapshot;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_1d

    const-wide/16 v1, 0x0

    move-object/from16 v23, v0

    move/from16 v37, v5

    move-object/from16 v35, v8

    move/from16 v36, v9

    goto/16 :goto_f

    :cond_1d
    cmp-long v1, v25, v18

    if-nez v1, :cond_1e

    const-wide/16 v1, -0x1

    move-object/from16 v23, v0

    move/from16 v37, v5

    move-object/from16 v35, v8

    move/from16 v36, v9

    goto/16 :goto_f

    :cond_1e
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, v25, v1

    if-nez v1, :cond_1f

    move-wide v1, v12

    move-object/from16 v23, v0

    move/from16 v37, v5

    move-object/from16 v35, v8

    move/from16 v36, v9

    goto/16 :goto_f

    :cond_1f
    invoke-virtual/range {v22 .. v22}, Landroid/telephony/SubscriptionPlan;->cycleIterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v27, v1

    check-cast v27, Landroid/util/Range;

    invoke-virtual/range {v27 .. v27}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v28

    invoke-virtual/range {v27 .. v27}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v30

    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual/range {v27 .. v27}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v6, v1}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1, v2}, Ljava/time/ZonedDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v32

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkStateSnapshot;->getSubscriberId()Ljava/lang/String;

    move-result-object v34

    const-wide/16 v3, 0x0

    if-nez v34, :cond_20

    move/from16 v37, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v8

    move/from16 v36, v9

    move-wide v8, v3

    goto :goto_e

    :cond_20
    invoke-static/range {v34 .. v34}, Landroid/net/NetworkTemplate;->buildTemplateCarrierMetered(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    move-object/from16 v1, p0

    move-object/from16 v35, v8

    move/from16 v36, v9

    move-wide v8, v3

    move-wide/from16 v3, v28

    move/from16 v37, v5

    move-object/from16 v38, v6

    move-wide/from16 v5, v32

    invoke-direct/range {v1 .. v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v3

    :goto_e
    move-wide v1, v3

    sub-long v3, v25, v1

    nop

    invoke-virtual/range {v38 .. v38}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v5

    sub-long v5, v30, v5

    const-wide/16 v8, 0x1

    sub-long/2addr v5, v8

    move-object/from16 v23, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v39

    div-long v5, v5, v39

    add-long/2addr v5, v8

    div-long v8, v3, v5

    long-to-float v0, v8

    mul-float v0, v0, v20

    float-to-long v8, v0

    move-wide/from16 v41, v1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :goto_f
    iget-object v0, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;

    move/from16 v3, v37

    invoke-virtual {v0, v3, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    move-object/from16 v0, v23

    move-object/from16 v8, v35

    move/from16 v9, v36

    goto/16 :goto_d

    :cond_21
    move-object/from16 v35, v8

    move/from16 v36, v9

    iget-object v2, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfacesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v0, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method updateNetworks()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworksInternal()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    return-void
.end method

.method updateNotificationsNL()V
    .locals 43

    move-object/from16 v12, p0

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    const-string v13, "NetworkPolicy"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "updateNotificationsNL()"

    invoke-static {v13, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/32 v14, 0x200000

    const-string/jumbo v0, "updateNotificationsNL"

    invoke-static {v14, v15, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, v12, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    move-object v10, v0

    iget-object v0, v12, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v0, v12, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v16

    iget-object v0, v12, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v11, 0x1

    sub-int/2addr v0, v11

    move v8, v0

    :goto_0
    if-ltz v8, :cond_11

    iget-object v0, v12, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/net/NetworkPolicy;

    iget-object v0, v9, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {v12, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->findRelevantSubIdNL(Landroid/net/NetworkTemplate;)I

    move-result v7

    const/4 v0, -0x1

    if-ne v7, v0, :cond_1

    move v3, v8

    move-object v12, v10

    move/from16 v26, v11

    goto/16 :goto_7

    :cond_1
    invoke-virtual {v9}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v0

    if-nez v0, :cond_2

    move v3, v8

    move-object v12, v10

    move/from16 v26, v11

    goto/16 :goto_7

    :cond_2
    nop

    invoke-static {v9}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/util/Pair;

    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/time/ZonedDateTime;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v18

    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/time/ZonedDateTime;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v20

    iget-object v1, v9, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    move-wide/from16 v2, v18

    move-wide/from16 v4, v20

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v3

    iget-object v0, v12, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToCarrierConfig:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/PersistableBundle;

    invoke-static {v5}, Landroid/telephony/CarrierConfigManager;->isConfigForIdentifiedCarrier(Landroid/os/PersistableBundle;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_3

    const-string v0, "isConfigForIdentifiedCarrier returned false"

    invoke-static {v13, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v3, v8

    move-object v12, v10

    move/from16 v26, v11

    goto/16 :goto_7

    :cond_4
    const-string v0, "data_warning_notification_bool"

    invoke-static {v5, v0, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->getBooleanDefeatingNullable(Landroid/os/PersistableBundle;Ljava/lang/String;Z)Z

    move-result v22

    const-string v0, "data_limit_notification_bool"

    invoke-static {v5, v0, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->getBooleanDefeatingNullable(Landroid/os/PersistableBundle;Ljava/lang/String;Z)Z

    move-result v23

    const-string v0, "data_rapid_notification_bool"

    invoke-static {v5, v0, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->getBooleanDefeatingNullable(Landroid/os/PersistableBundle;Ljava/lang/String;Z)Z

    move-result v24

    const/16 v25, 0x0

    if-eqz v22, :cond_8

    invoke-virtual {v9, v3, v4}, Landroid/net/NetworkPolicy;->isOverWarning(J)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v9, v3, v4}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v0

    if-nez v0, :cond_7

    iget-wide v0, v9, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    cmp-long v0, v0, v18

    if-ltz v0, :cond_5

    move v0, v11

    goto :goto_1

    :cond_5
    move/from16 v0, v25

    :goto_1
    move/from16 v26, v0

    if-nez v26, :cond_6

    const/16 v2, 0x22

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    move-wide/from16 v28, v3

    move-object/from16 v30, v5

    move-object/from16 v5, v27

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJLandroid/content/pm/ApplicationInfo;)V

    goto :goto_2

    :cond_6
    move-wide/from16 v28, v3

    move-object/from16 v30, v5

    goto :goto_2

    :cond_7
    move-wide/from16 v28, v3

    move-object/from16 v30, v5

    goto :goto_2

    :cond_8
    move-wide/from16 v28, v3

    move-object/from16 v30, v5

    :goto_2
    if-eqz v23, :cond_c

    move-wide/from16 v3, v28

    invoke-virtual {v9, v3, v4}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-wide v0, v9, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v0, v0, v18

    if-ltz v0, :cond_9

    move v0, v11

    goto :goto_3

    :cond_9
    move/from16 v0, v25

    :goto_3
    move/from16 v26, v0

    if-eqz v26, :cond_a

    const/16 v2, 0x24

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    move-wide/from16 v27, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJLandroid/content/pm/ApplicationInfo;)V

    goto :goto_4

    :cond_a
    move-wide/from16 v27, v3

    const/16 v2, 0x23

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJLandroid/content/pm/ApplicationInfo;)V

    iget-object v0, v9, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {v12, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyOverLimitNL(Landroid/net/NetworkTemplate;)V

    :goto_4
    goto :goto_5

    :cond_b
    move-wide/from16 v27, v3

    iget-object v0, v9, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {v12, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyUnderLimitNL(Landroid/net/NetworkTemplate;)V

    goto :goto_5

    :cond_c
    move-wide/from16 v27, v28

    :goto_5
    if-eqz v24, :cond_10

    iget-wide v0, v9, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v31

    sub-long v33, v16, v31

    move-wide/from16 v4, v16

    iget-object v1, v9, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    move-wide/from16 v2, v33

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v0

    sub-long v2, v20, v18

    mul-long v35, v0, v2

    div-long v14, v35, v31

    iget-wide v11, v9, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v35, 0x3

    mul-long v11, v11, v35

    const-wide/16 v35, 0x2

    div-long v11, v11, v35

    sget-boolean v29, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v29, :cond_d

    move-wide/from16 v35, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rapid usage considering recent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " projected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " alert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_d
    move-wide/from16 v35, v2

    :goto_6
    iget-wide v2, v9, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    const-wide/32 v37, 0x5265c00

    sub-long v37, v16, v37

    cmp-long v2, v2, v37

    if-ltz v2, :cond_e

    const/16 v25, 0x1

    :cond_e
    move/from16 v2, v25

    cmp-long v3, v14, v11

    if-lez v3, :cond_f

    if-nez v2, :cond_f

    const-wide/16 v37, 0x0

    iget-object v3, v9, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v29, v6

    move-object/from16 v6, p0

    move/from16 v39, v7

    move-object v7, v3

    move v3, v8

    move-object/from16 v40, v9

    move-wide/from16 v8, v33

    move-wide/from16 v41, v11

    const/16 v26, 0x1

    move-object v12, v10

    move-wide v10, v4

    invoke-direct/range {v6 .. v11}, Lcom/android/server/net/NetworkPolicyManagerService;->findRapidBlame(Landroid/net/NetworkTemplate;JJ)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    move-object/from16 v7, v40

    const/16 v8, 0x2d

    move-wide/from16 v9, v37

    invoke-direct/range {v6 .. v11}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJLandroid/content/pm/ApplicationInfo;)V

    goto :goto_7

    :cond_f
    move-object/from16 v29, v6

    move/from16 v39, v7

    move v3, v8

    move-object/from16 v40, v9

    move-wide/from16 v41, v11

    const/16 v26, 0x1

    move-object v12, v10

    goto :goto_7

    :cond_10
    move-object/from16 v29, v6

    move/from16 v39, v7

    move v3, v8

    move-object/from16 v40, v9

    move-object v12, v10

    move/from16 v26, v11

    :goto_7
    add-int/lit8 v8, v3, -0x1

    const-wide/32 v14, 0x200000

    move-object v10, v12

    move/from16 v11, v26

    move-object/from16 v12, p0

    goto/16 :goto_0

    :cond_11
    move v3, v8

    move-object v12, v10

    move/from16 v26, v11

    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_13

    invoke-virtual {v12, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;

    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    invoke-direct {v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->cancelNotification(Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;)V

    :cond_12
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_13
    move-object/from16 v2, p0

    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method updateRestrictBackgroundByLowPowerModeUL(Landroid/os/PowerSaveState;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundLowPowerMode:Z

    iget-boolean v1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundLowPowerMode:Z

    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundLowPowerMode:Z

    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundLowPowerMode:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    xor-int/lit8 v2, v2, 0x1

    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    iput-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundBeforeBsm:Z

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    xor-int/lit8 v2, v2, 0x1

    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundBeforeBsm:Z

    :goto_0
    if-eqz v2, :cond_2

    const-string/jumbo v3, "low_power"

    invoke-direct {p0, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundUL(ZLjava/lang/String;)V

    :cond_2
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    return-void
.end method

.method updateRestrictedModeAllowlistUL()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallRestrictedModeRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    const-string/jumbo v1, "updateRestrictedModeAllowlist"

    invoke-direct {p0, v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->forEachUid(Ljava/lang/String;Ljava/util/function/IntConsumer;)V

    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictedNetworkingMode:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallRestrictedModeRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictedNetworkingMode:Z

    invoke-direct {p0, v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainUL(IZ)V

    return-void
.end method

.method updateRestrictedModeForUidUL(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNewRestrictedModeUidRule(II)I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateBlockedReasonsForRestrictedModeUL(I)V

    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictedNetworkingMode:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictedModeFirewallRule(I)I

    move-result v4

    invoke-direct {p0, v2, p1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    :cond_2
    return-void
.end method

.method updateRuleForAppIdleUL(I)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForDenylistRulesUL(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRuleForAppIdleUL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "NetworkPolicy"

    const/4 v5, 0x2

    if-nez v3, :cond_2

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v5, p1, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    sget-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateRuleForAppIdleUL DENY "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0, v5, p1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    sget-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateRuleForAppIdleUL "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to DEFAULT"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method updateRuleForDeviceIdleUL(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(IZI)V

    return-void
.end method

.method updateRuleForRestrictPowerUL(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(IZI)V

    return-void
.end method

.method updateRulesForAppIdleUL()V
    .locals 14

    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateRulesForAppIdleUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_0
    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ltz v4, :cond_2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Landroid/app/usage/UsageStatsManagerInternal;->getIdleUidsForUser(I)[I

    move-result-object v8

    array-length v9, v8

    move v10, v6

    :goto_1
    if-ge v10, v9, :cond_1

    aget v11, v8, v10

    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v13

    invoke-virtual {v12, v13, v6}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-direct {p0, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissionUL(I)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-direct {p0, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v2, v11, v5}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v5, v2, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method updateRulesForDeviceIdleUL()V
    .locals 5

    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateRulesForDeviceIdleUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(ZILandroid/util/SparseIntArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method updateRulesForPowerSaveUL()V
    .locals 5

    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateRulesForPowerSaveUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(ZILandroid/util/SparseIntArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method updateSubscriptions()V
    .locals 17

    move-object/from16 v1, p0

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkPolicy"

    const-string/jumbo v2, "updateSubscriptions()"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "updateSubscriptions"

    const-wide/32 v2, 0x200000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/telephony/TelephonyManager;

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/telephony/SubscriptionManager;

    nop

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    new-instance v0, Landroid/util/SparseArray;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v0, v8}, Landroid/util/SparseArray;-><init>(I)V

    move-object v8, v0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v9, v0

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v11

    invoke-virtual {v4, v11}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSubscriptionId()I

    move-result v14

    invoke-virtual {v8, v14, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string v14, "NetworkPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing subscriberId for subId "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    nop

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getMergedImsisFromGroup()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v3, v11}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v9, v11, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v16, v0

    goto :goto_2

    :cond_2
    const-string v14, "NetworkPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string v0, "Missing CarrierConfig for subId "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object/from16 v0, v16

    const-wide/32 v2, 0x200000

    goto :goto_0

    :cond_3
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    iput-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:Ljava/util/List;

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToCarrierConfig:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToCarrierConfig:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PersistableBundle;

    invoke-virtual {v3, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v2, 0x200000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method writePolicyAL()V
    .locals 23

    move-object/from16 v1, p0

    const-string/jumbo v2, "subscription-plan"

    const-string/jumbo v3, "revoked-restrict-background"

    const-string/jumbo v4, "uid-policy"

    const-string/jumbo v5, "whitelist"

    const-string/jumbo v0, "network-policy"

    const-string/jumbo v6, "policy-list"

    sget-boolean v7, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v7, :cond_0

    const-string v7, "NetworkPolicy"

    const-string/jumbo v8, "writePolicyAL()"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v7, 0x0

    :try_start_0
    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    move-object v7, v8

    :try_start_1
    invoke-static {v7}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v8, v10, v9}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v8, v10, v6}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "version"

    const/16 v11, 0xd

    invoke-static {v8, v9, v11}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const-string/jumbo v9, "restrictBackground"

    iget-boolean v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-static {v8, v9, v11}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const/4 v9, 0x0

    :goto_0
    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    const-string/jumbo v12, "limitBytes"

    const-string v13, "cyclePeriod"

    const-string v14, "cycleEnd"

    const-string v15, "cycleStart"

    if-ge v9, v11, :cond_4

    :try_start_2
    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v11, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/NetworkPolicy;

    iget-object v10, v11, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v10}, Landroid/net/NetworkTemplate;->isPersistable()Z

    move-result v16
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v16, :cond_1

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    move-object/from16 v16, v7

    goto/16 :goto_3

    :cond_1
    move-object/from16 v16, v7

    const/4 v7, 0x0

    :try_start_3
    invoke-interface {v8, v7, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "networkTemplate"

    move-object/from16 v17, v3

    invoke-virtual {v10}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v3

    invoke-static {v8, v7, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    invoke-virtual {v10}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string/jumbo v7, "subscriberId"

    move-object/from16 v18, v5

    const/4 v5, 0x0

    invoke-interface {v8, v5, v7, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    :cond_2
    move-object/from16 v18, v5

    :goto_1
    const-string/jumbo v5, "subscriberIdMatchRule"

    invoke-virtual {v10}, Landroid/net/NetworkTemplate;->getSubscriberIdMatchRule()I

    move-result v7

    invoke-static {v8, v5, v7}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    invoke-virtual {v10}, Landroid/net/NetworkTemplate;->getNetworkId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string/jumbo v7, "networkId"

    move-object/from16 v19, v3

    const/4 v3, 0x0

    invoke-interface {v8, v3, v7, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    :cond_3
    move-object/from16 v19, v3

    :goto_2
    const-string/jumbo v3, "templateMetered"

    invoke-virtual {v10}, Landroid/net/NetworkTemplate;->getMeteredness()I

    move-result v7

    invoke-static {v8, v3, v7}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    iget-object v3, v11, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v3, v3, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-static {v3}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v15, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v3, v11, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v3, v3, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    invoke-static {v3}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v14, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v3, v11, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v3, v3, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    invoke-static {v3}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/time/Period;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v13, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v3, "warningBytes"

    iget-wide v13, v11, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v8, v3, v13, v14}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    iget-wide v13, v11, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-static {v8, v12, v13, v14}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v3, "lastWarningSnooze"

    iget-wide v12, v11, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    invoke-static {v8, v3, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v3, "lastLimitSnooze"

    iget-wide v12, v11, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    invoke-static {v8, v3, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v3, "metered"

    iget-boolean v7, v11, Landroid/net/NetworkPolicy;->metered:Z

    invoke-static {v8, v3, v7}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const-string v3, "inferred"

    iget-boolean v7, v11, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-static {v8, v3, v7}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const/4 v3, 0x0

    invoke-interface {v8, v3, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, v16

    move-object/from16 v3, v17

    move-object/from16 v5, v18

    const/4 v10, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v16, v7

    goto/16 :goto_b

    :cond_4
    move-object/from16 v17, v3

    move-object/from16 v18, v5

    move-object/from16 v16, v7

    const/4 v0, 0x0

    move v3, v0

    :goto_4
    :try_start_4
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    if-ge v3, v0, :cond_8

    :try_start_5
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    move v5, v0

    const/4 v0, -0x1

    if-ne v5, v0, :cond_5

    goto/16 :goto_7

    :cond_5
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/SubscriptionPlan;

    move-object v9, v0

    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_7

    :cond_6
    array-length v10, v9

    const/4 v0, 0x0

    move v11, v0

    :goto_5
    if-ge v11, v10, :cond_7

    aget-object v0, v9, v11

    move-object/from16 v19, v0

    move-object/from16 v20, v9

    const/4 v9, 0x0

    invoke-interface {v8, v9, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "subId"

    invoke-static {v8, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const-string/jumbo v0, "ownerPackage"

    invoke-static {v8, v0, v7}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/SubscriptionPlan;->getCycleRule()Landroid/util/RecurrenceRule;

    move-result-object v0

    move-object v9, v0

    iget-object v0, v9, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v15, v0}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v0, v9, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v14, v0}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v0, v9, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/time/Period;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v13, v0}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "title"

    move/from16 v21, v5

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/SubscriptionPlan;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v8, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "summary"

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/SubscriptionPlan;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v8, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    move-object/from16 v22, v9

    move v5, v10

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v9

    invoke-static {v8, v12, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v0, "limitBehavior"

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/SubscriptionPlan;->getDataLimitBehavior()I

    move-result v9

    invoke-static {v8, v0, v9}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const-string/jumbo v0, "usageBytes"

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/SubscriptionPlan;->getDataUsageBytes()J

    move-result-wide v9

    invoke-static {v8, v0, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v0, "usageTime"

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/SubscriptionPlan;->getDataUsageTime()J

    move-result-wide v9

    invoke-static {v8, v0, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :try_start_6
    invoke-virtual/range {v19 .. v19}, Landroid/telephony/SubscriptionPlan;->getNetworkTypes()[I

    move-result-object v0

    const-string/jumbo v9, "networkTypes"

    invoke-static {v0, v9, v8}, Lcom/android/internal/util/XmlUtils;->writeIntArrayXml([ILjava/lang/String;Landroid/util/TypedXmlSerializer;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_6

    :catch_1
    move-exception v0

    :goto_6
    nop

    const/4 v9, 0x0

    :try_start_7
    invoke-interface {v8, v9, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    nop

    add-int/lit8 v11, v11, 0x1

    move v10, v5

    move-object/from16 v9, v20

    move/from16 v5, v21

    goto/16 :goto_5

    :cond_7
    move/from16 v21, v5

    move-object/from16 v20, v9

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v7, v16

    goto/16 :goto_b

    :cond_8
    const/4 v0, 0x0

    :goto_8
    :try_start_8
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    const-string/jumbo v3, "uid"

    if-ge v0, v2, :cond_a

    :try_start_9
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    if-nez v5, :cond_9

    goto :goto_9

    :cond_9
    const/4 v7, 0x0

    invoke-interface {v8, v7, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v8, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const-string/jumbo v3, "policy"

    invoke-static {v8, v3, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const/4 v3, 0x0

    invoke-interface {v8, v3, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_a
    const/4 v2, 0x0

    :try_start_a
    invoke-interface {v8, v2, v6}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v4, v18

    invoke-interface {v8, v2, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_b

    :try_start_b
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    move-object/from16 v6, v17

    const/4 v7, 0x0

    invoke-interface {v8, v7, v6}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v8, v3, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    invoke-interface {v8, v7, v6}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    nop

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v17, v6

    goto :goto_a

    :cond_b
    const/4 v2, 0x0

    :try_start_c
    invoke-interface {v8, v2, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v8}, Landroid/util/TypedXmlSerializer;->endDocument()V

    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    move-object/from16 v3, v16

    :try_start_d
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    move-object v7, v3

    goto :goto_c

    :catch_3
    move-exception v0

    move-object v7, v3

    goto :goto_b

    :catch_4
    move-exception v0

    move-object/from16 v3, v16

    move-object v7, v3

    goto :goto_b

    :catch_5
    move-exception v0

    move-object v3, v7

    goto :goto_b

    :catch_6
    move-exception v0

    :goto_b
    if-eqz v7, :cond_c

    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v7}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_c
    :goto_c
    return-void
.end method
