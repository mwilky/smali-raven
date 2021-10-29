.class public Lcom/android/server/vcn/VcnGatewayConnection;
.super Lcom/android/internal/util/StateMachine;
.source "VcnGatewayConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;,
        Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;,
        Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;,
        Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;,
        Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;,
        Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;,
        Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;,
        Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;,
        Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;,
        Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;,
        Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;,
        Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;,
        Lcom/android/server/vcn/VcnGatewayConnection$ActiveBaseState;,
        Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;,
        Lcom/android/server/vcn/VcnGatewayConnection$BaseState;,
        Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkTrackerCallback;,
        Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;,
        Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;,
        Lcom/android/server/vcn/VcnGatewayConnection$EventSetupCompletedInfo;,
        Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;,
        Lcom/android/server/vcn/VcnGatewayConnection$EventSessionLostInfo;,
        Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;,
        Lcom/android/server/vcn/VcnGatewayConnection$EventInfo;
    }
.end annotation


# static fields
.field private static final ARG_NOT_PRESENT:I = -0x80000000

.field private static final DISCONNECT_REASON_INTERNAL_ERROR:Ljava/lang/String; = "Uncaught exception: "

.field private static final DISCONNECT_REASON_NETWORK_AGENT_UNWANTED:Ljava/lang/String; = "NetworkAgent was unwanted"

.field private static final DISCONNECT_REASON_TEARDOWN:Ljava/lang/String; = "teardown() called on VcnTunnel"

.field private static final DISCONNECT_REASON_UNDERLYING_NETWORK_LOST:Ljava/lang/String; = "Underlying Network lost"

.field static final DISCONNECT_REQUEST_ALARM:Ljava/lang/String;

.field static final DUMMY_ADDR:Ljava/net/InetAddress;

.field private static final EVENT_DISCONNECT_REQUESTED:I = 0x7

.field private static final EVENT_MIGRATION_COMPLETED:I = 0xb

.field private static final EVENT_RETRY_TIMEOUT_EXPIRED:I = 0x2

.field private static final EVENT_SAFE_MODE_TIMEOUT_EXCEEDED:I = 0xa

.field private static final EVENT_SESSION_CLOSED:I = 0x4

.field private static final EVENT_SESSION_LOST:I = 0x3

.field private static final EVENT_SETUP_COMPLETED:I = 0x6

.field private static final EVENT_SUBSCRIPTIONS_CHANGED:I = 0x9

.field private static final EVENT_TEARDOWN_TIMEOUT_EXPIRED:I = 0x8

.field private static final EVENT_TRANSFORM_CREATED:I = 0x5

.field private static final EVENT_UNDERLYING_NETWORK_CHANGED:I = 0x1

.field private static final MERGED_CAPABILITIES:[I

.field static final NETWORK_LOSS_DISCONNECT_TIMEOUT_SECONDS:I = 0x1e

.field static final RETRY_TIMEOUT_ALARM:Ljava/lang/String;

.field static final SAFEMODE_TIMEOUT_ALARM:Ljava/lang/String;

.field static final SAFEMODE_TIMEOUT_SECONDS:I = 0x1e

.field private static final SAFEMODE_TIMEOUT_SECONDS_TEST_MODE:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field static final TEARDOWN_TIMEOUT_ALARM:Ljava/lang/String;

.field static final TEARDOWN_TIMEOUT_SECONDS:I = 0x5

.field private static final TOKEN_ALL:I = -0x80000000


# instance fields
.field private mChildConfig:Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

.field final mConnectedState:Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;

.field final mConnectingState:Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;

.field private final mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

.field private mCurrentToken:I

.field private final mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

.field private mDisconnectRequestAlarm:Lcom/android/internal/util/WakeupMessage;

.field final mDisconnectedState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;

.field final mDisconnectingState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

.field private mFailedAttempts:I

.field private final mGatewayStatusCallback:Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

.field private mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

.field private final mIpSecManager:Landroid/net/IpSecManager;

.field private mIsInSafeMode:Z

.field private final mIsMobileDataEnabled:Z

.field private mIsQuitting:Lcom/android/server/vcn/util/OneWayBoolean;

.field private mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

.field private mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

.field private mRetryTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

.field final mRetryTimeoutState:Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;

.field private mSafeModeTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

.field private final mSubscriptionGroup:Landroid/os/ParcelUuid;

.field private mTeardownTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

.field private mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

.field private mUnderlying:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

.field private final mUnderlyingNetworkTracker:Lcom/android/server/vcn/UnderlyingNetworkTracker;

.field private final mUnderlyingNetworkTrackerCallback:Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkTrackerCallback;

.field private final mVcnContext:Lcom/android/server/vcn/VcnContext;

.field private final mWakeLock:Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    const-string v1, "192.0.2.0"

    invoke-static {v1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    sput-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->DUMMY_ADDR:Ljava/net/InetAddress;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_TEARDOWN_TIMEOUT_ALARM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->TEARDOWN_TIMEOUT_ALARM:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_DISCONNECT_REQUEST_ALARM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->DISCONNECT_REQUEST_ALARM:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_RETRY_TIMEOUT_ALARM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->RETRY_TIMEOUT_ALARM:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_SAFEMODE_TIMEOUT_ALARM"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->SAFEMODE_TIMEOUT_ALARM:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->MERGED_CAPABILITIES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xb
        0x12
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;Z)V
    .locals 8

    new-instance v7, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    invoke-direct {v7}, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/vcn/VcnGatewayConnection;-><init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;ZLcom/android/server/vcn/VcnGatewayConnection$Dependencies;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;ZLcom/android/server/vcn/VcnGatewayConnection$Dependencies;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    sget-object v7, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    const-string v8, "Missing vcnContext"

    invoke-static {v1, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v8}, Lcom/android/server/vcn/VcnContext;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    new-instance v8, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9}, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$1;)V

    iput-object v8, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectedState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;

    new-instance v10, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

    invoke-direct {v10, v0, v9}, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$1;)V

    iput-object v10, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectingState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

    new-instance v11, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;

    invoke-direct {v11, v0, v9}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$1;)V

    iput-object v11, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectingState:Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;

    new-instance v12, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;

    invoke-direct {v12, v0}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;)V

    iput-object v12, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectedState:Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;

    new-instance v13, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;

    invoke-direct {v13, v0}, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;)V

    iput-object v13, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mRetryTimeoutState:Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;

    iput-object v9, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    new-instance v14, Lcom/android/server/vcn/util/OneWayBoolean;

    invoke-direct {v14}, Lcom/android/server/vcn/util/OneWayBoolean;-><init>()V

    iput-object v14, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Lcom/android/server/vcn/util/OneWayBoolean;

    const/4 v14, 0x0

    iput-boolean v14, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsInSafeMode:Z

    const/4 v15, -0x1

    iput v15, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    iput v14, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mFailedAttempts:I

    iput-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    const-string v15, "Missing subscriptionGroup"

    invoke-static {v2, v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v15, v2

    check-cast v15, Landroid/os/ParcelUuid;

    iput-object v15, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    const-string v15, "Missing connectionConfig"

    invoke-static {v4, v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v15, v4

    check-cast v15, Landroid/net/vcn/VcnGatewayConnectionConfig;

    iput-object v15, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    nop

    const-string v15, "Missing gatewayStatusCallback"

    invoke-static {v5, v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v15, v5

    check-cast v15, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

    iput-object v15, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mGatewayStatusCallback:Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

    move/from16 v15, p6

    iput-boolean v15, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsMobileDataEnabled:Z

    const-string v14, "Missing deps"

    invoke-static {v6, v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v14, v6

    check-cast v14, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    iput-object v14, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    const-string v9, "Missing snapshot"

    invoke-static {v3, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v9, v3

    check-cast v9, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iput-object v9, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    new-instance v9, Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkTrackerCallback;

    const/4 v3, 0x0

    invoke-direct {v9, v0, v3}, Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkTrackerCallback;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$1;)V

    iput-object v9, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlyingNetworkTrackerCallback:Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkTrackerCallback;

    nop

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v14, v3, v4, v7}, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;->newWakeLock(Landroid/content/Context;ILjava/lang/String;)Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mWakeLock:Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    iget-object v3, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    invoke-virtual {v14, v1, v2, v3, v9}, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;->newUnderlyingNetworkTracker(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkTrackerCallback;)Lcom/android/server/vcn/UnderlyingNetworkTracker;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlyingNetworkTracker:Lcom/android/server/vcn/UnderlyingNetworkTracker;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/net/IpSecManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/IpSecManager;

    iput-object v3, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIpSecManager:Landroid/net/IpSecManager;

    invoke-virtual {v0, v8}, Lcom/android/server/vcn/VcnGatewayConnection;->addState(Lcom/android/internal/util/State;)V

    invoke-virtual {v0, v10}, Lcom/android/server/vcn/VcnGatewayConnection;->addState(Lcom/android/internal/util/State;)V

    invoke-virtual {v0, v11}, Lcom/android/server/vcn/VcnGatewayConnection;->addState(Lcom/android/internal/util/State;)V

    invoke-virtual {v0, v12}, Lcom/android/server/vcn/VcnGatewayConnection;->addState(Lcom/android/internal/util/State;)V

    invoke-virtual {v0, v13}, Lcom/android/server/vcn/VcnGatewayConnection;->addState(Lcom/android/internal/util/State;)V

    invoke-virtual {v0, v8}, Lcom/android/server/vcn/VcnGatewayConnection;->setInitialState(Lcom/android/internal/util/State;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/server/vcn/VcnGatewayConnection;->setDbg(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vcn/VcnGatewayConnection;->start()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->maybeReleaseWakeLock()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;
    .locals 0

    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/util/OneWayBoolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Lcom/android/server/vcn/util/OneWayBoolean;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;
    .locals 0

    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/internal/util/WakeupMessage;)Lcom/android/internal/util/WakeupMessage;
    .locals 0

    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mSafeModeTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/vcn/VcnGatewayConnection;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsInSafeMode:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/vcn/VcnGatewayConnection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsInSafeMode:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mGatewayStatusCallback:Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelSafeModeAlarm()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;
    .locals 0

    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/vcn/VcnGatewayConnection;)I
    .locals 1

    iget v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/vcn/VcnGatewayConnection;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(II)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->setTeardownTimeoutAlarm()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelTeardownTimeoutAlarm()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/vcn/VcnGatewayConnectionConfig;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/vcn/VcnGatewayConnection;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsMobileDataEnabled:Z

    return v0
.end method

.method static synthetic access$2800(Landroid/net/vcn/VcnGatewayConnectionConfig;Landroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;)Landroid/net/LinkProperties;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/vcn/VcnGatewayConnection;->buildConnectedLinkProperties(Landroid/net/vcn/VcnGatewayConnectionConfig;Landroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/vcn/VcnGatewayConnection;)I
    .locals 1

    iget v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mFailedAttempts:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/server/vcn/VcnGatewayConnection;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mFailedAttempts:I

    return p1
.end method

.method static synthetic access$3108(Lcom/android/server/vcn/VcnGatewayConnection;)I
    .locals 2

    iget v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mFailedAttempts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mFailedAttempts:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/IpSecManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIpSecManager:Landroid/net/IpSecManager;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->logDbg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/vcn/VcnGatewayConnection;ILjava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->sessionLost(ILjava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/IpSecManager$IpSecTunnelInterface;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/server/vcn/VcnGatewayConnection;Landroid/net/IpSecManager$IpSecTunnelInterface;)Landroid/net/IpSecManager$IpSecTunnelInterface;
    .locals 0

    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mChildConfig:Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;
    .locals 0

    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mChildConfig:Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/server/vcn/VcnGatewayConnection;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->setRetryTimeoutAlarm(J)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelRetryTimeoutAlarm()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnContext;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/vcn/VcnGatewayConnection;ILjava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->sessionClosed(ILjava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/vcn/VcnGatewayConnection;ILcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->childOpened(ILcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/vcn/VcnGatewayConnection;ILandroid/net/IpSecTransform;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vcn/VcnGatewayConnection;->childTransformCreated(ILandroid/net/IpSecTransform;I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/vcn/VcnGatewayConnection;ILandroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vcn/VcnGatewayConnection;->migrationCompleted(ILandroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->logDbg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->setDisconnectRequestAlarm()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelDisconnectRequestAlarm()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/vcn/VcnGatewayConnection;IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Lcom/android/server/vcn/util/OneWayBoolean;

    invoke-virtual {v0}, Lcom/android/server/vcn/util/OneWayBoolean;->getValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mWakeLock:Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;->acquire()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wakelock acquired: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mWakeLock:Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private buildChildParams()Landroid/net/ipsec/ike/ChildSessionParams;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    invoke-virtual {v0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getTunnelModeChildSessionParams()Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    move-result-object v0

    return-object v0
.end method

.method private static buildConnectedLinkProperties(Landroid/net/vcn/VcnGatewayConnectionConfig;Landroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;)Landroid/net/LinkProperties;
    .locals 8

    nop

    invoke-virtual {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-result-object v0

    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    invoke-virtual {p1}, Landroid/net/IpSecManager$IpSecTunnelInterface;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;->getInternalAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkAddress;

    invoke-virtual {v1, v3}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;->getInternalDnsServers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v1, v3}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    goto :goto_1

    :cond_1
    new-instance v2, Landroid/net/RouteInfo;

    new-instance v3, Landroid/net/IpPrefix;

    sget-object v4, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v4, v6}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    new-instance v2, Landroid/net/RouteInfo;

    new-instance v3, Landroid/net/IpPrefix;

    sget-object v7, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {v3, v7, v5}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v2, v3, v4, v4, v6}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    iget-object v3, p3, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getTcpBufferSizes()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/LinkProperties;->setTcpBufferSizes(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getMtu()I

    move-result v2

    goto :goto_2

    :cond_2
    sget-object v3, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v5, "No underlying network while building link properties"

    invoke-static {v3, v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    nop

    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getTunnelModeChildSessionParams()Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams;->getSaProposals()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getMaxMtu()I

    move-result v4

    invoke-static {v3, v4, v2}, Lcom/android/server/vcn/util/MtuUtils;->getMtu(Ljava/util/List;II)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/LinkProperties;->setMtu(I)V

    return-object v1
.end method

.method private buildIkeParams(Landroid/net/Network;)Landroid/net/ipsec/ike/IkeSessionParams;
    .locals 3

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    invoke-virtual {v0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-result-object v0

    new-instance v1, Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getIkeSessionParams()Landroid/net/ipsec/ike/IkeSessionParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;-><init>(Landroid/net/ipsec/ike/IkeSessionParams;)V

    invoke-virtual {v1, p1}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setNetwork(Landroid/net/Network;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    invoke-virtual {v1}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->build()Landroid/net/ipsec/ike/IkeSessionParams;

    move-result-object v2

    return-object v2
.end method

.method static buildNetworkCapabilities(Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;Z)Landroid/net/NetworkCapabilities;
    .locals 8

    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addTransportType(I)Landroid/net/NetworkCapabilities$Builder;

    const/16 v2, 0x1c

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    invoke-virtual {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getAllExposedCapabilities()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez p2, :cond_1

    const/16 v4, 0xc

    if-eq v3, v4, :cond_0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_8

    iget-object v2, p1, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    sget-object v3, Lcom/android/server/vcn/VcnGatewayConnection;->MERGED_CAPABILITIES:[I

    array-length v4, v3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_4

    aget v6, v3, v5

    invoke-virtual {v2, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getAdministratorUids()[I

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->sort([I)V

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getOwnerUid()I

    move-result v4

    const/4 v5, 0x1

    if-lez v4, :cond_5

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getOwnerUid()I

    move-result v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v4

    if-gez v4, :cond_5

    array-length v4, v3

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    array-length v6, v4

    sub-int/2addr v6, v5

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getOwnerUid()I

    move-result v7

    aput v7, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->sort([I)V

    goto :goto_2

    :cond_5
    move-object v4, v3

    :goto_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities$Builder;->setOwnerUid(I)Landroid/net/NetworkCapabilities$Builder;

    array-length v6, v4

    add-int/2addr v6, v5

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    array-length v6, v4

    sub-int/2addr v6, v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    aput v7, v4, v6

    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities$Builder;->setAdministratorUids([I)Landroid/net/NetworkCapabilities$Builder;

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities$Builder;->setLinkUpstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities$Builder;

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities$Builder;->setLinkDownstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities$Builder;

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object v5

    instance-of v5, v5, Landroid/net/wifi/WifiInfo;

    if-eqz v5, :cond_6

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiInfo;

    new-instance v5, Landroid/net/vcn/VcnTransportInfo;

    invoke-direct {v5, v1}, Landroid/net/vcn/VcnTransportInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    invoke-virtual {v0, v5}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_3

    :cond_6
    invoke-virtual {v2, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v1

    instance-of v1, v1, Landroid/net/TelephonyNetworkSpecifier;

    if-eqz v1, :cond_7

    nop

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v1

    check-cast v1, Landroid/net/TelephonyNetworkSpecifier;

    new-instance v5, Landroid/net/vcn/VcnTransportInfo;

    invoke-virtual {v1}, Landroid/net/TelephonyNetworkSpecifier;->getSubscriptionId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/net/vcn/VcnTransportInfo;-><init>(I)V

    invoke-virtual {v0, v5}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_3

    :cond_7
    sget-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    const-string v5, "Unknown transport type or missing TransportInfo/NetworkSpecifier for non-null underlying network"

    invoke-static {v1, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    goto :goto_4

    :cond_8
    sget-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v3, "No underlying network while building network capabilities"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v1

    return-object v1
.end method

.method private cancelDisconnectRequestAlarm()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancelling alarm to disconnect due to underlying network loss; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectRequestAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectRequestAlarm:Lcom/android/internal/util/WakeupMessage;

    :cond_0
    const/4 v0, 0x7

    new-instance v1, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;

    const/4 v2, 0x0

    const-string v3, "Underlying Network lost"

    invoke-direct {v1, v3, v2}, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0, v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->removeEqualMessages(ILjava/lang/Object;)V

    return-void
.end method

.method private cancelRetryTimeoutAlarm()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancel retry alarm; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mRetryTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mRetryTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->removeEqualMessages(I)V

    return-void
.end method

.method private cancelSafeModeAlarm()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancel safe mode alarm; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mSafeModeTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mSafeModeTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    :cond_0
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->removeEqualMessages(I)V

    return-void
.end method

.method private cancelTeardownTimeoutAlarm()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancelling teardown timeout alarm; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTeardownTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTeardownTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    :cond_0
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->removeEqualMessages(I)V

    return-void
.end method

.method private childOpened(ILcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V
    .locals 2

    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$EventSetupCompletedInfo;

    invoke-direct {v0, p2}, Lcom/android/server/vcn/VcnGatewayConnection$EventSetupCompletedInfo;-><init>(Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V

    const/4 v1, 0x6

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    return-void
.end method

.method private childTransformCreated(ILandroid/net/IpSecTransform;I)V
    .locals 2

    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;

    invoke-direct {v0, p3, p2}, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;-><init>(ILandroid/net/IpSecTransform;)V

    const/4 v1, 0x5

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    return-void
.end method

.method private createScheduledAlarm(Ljava/lang/String;Landroid/os/Message;J)Lcom/android/internal/util/WakeupMessage;
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v2, "Attempted to schedule alarm after StateMachine has quit"

    invoke-direct {p0, v2, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->logWarn(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    new-instance v3, Lcom/android/server/vcn/VcnGatewayConnection$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p2}, Lcom/android/server/vcn/VcnGatewayConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Landroid/os/Message;)V

    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;->newWakeupMessage(Lcom/android/server/vcn/VcnContext;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    invoke-virtual {v2}, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;->getElapsedRealTime()J

    move-result-wide v2

    add-long/2addr v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    return-object v1
.end method

.method private getLogPrefix()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    invoke-static {v1}, Lcom/android/server/vcn/util/LogUtils;->getHashedSubscriptionGroup(Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    invoke-virtual {v2}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getGatewayConnectionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isIkeAuthFailure(Ljava/lang/Exception;)Z
    .locals 3

    instance-of v0, p0, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    invoke-virtual {v0}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;->getErrorType()I

    move-result v0

    const/16 v2, 0x18

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private logDbg(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logDbg(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private logErr(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ERR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private logErr(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ERR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private logVdbg(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private logWarn(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WARN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private logWarn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WARN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private logWtf(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WTF: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WTF: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private maybeReleaseWakeLock()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->hasMessagesOrCallbacks()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->releaseWakeLock()V

    :cond_1
    return-void
.end method

.method private migrationCompleted(ILandroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V
    .locals 2

    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;

    invoke-direct {v0, p2, p3}, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;-><init>(Landroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V

    const/16 v1, 0xb

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    return-void
.end method

.method private notifyStatusCallbackForSessionClosed(Ljava/lang/Exception;)V
    .locals 5

    invoke-static {p1}, Lcom/android/server/vcn/VcnGatewayConnection;->isIkeAuthFailure(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/net/ipsec/ike/exceptions/IkeInternalException;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    const-class v1, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const-class v1, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered error; code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", exceptionClass="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", exceptionMessage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/vcn/VcnGatewayConnection;->logDbg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mGatewayStatusCallback:Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

    iget-object v4, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    invoke-virtual {v4}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getGatewayConnectionName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0, v1, v2}, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;->onGatewayConnectionError(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private releaseWakeLock()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mWakeLock:Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;->release()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wakelock released: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mWakeLock:Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    return-void
.end method

.method private removeEqualMessages(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->removeEqualMessages(ILjava/lang/Object;)V

    return-void
.end method

.method private removeEqualMessages(ILjava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->maybeReleaseWakeLock()V

    return-void
.end method

.method private sendMessageAndAcquireWakeLock(II)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->acquireWakeLock()V

    invoke-super {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    return-void
.end method

.method private sendMessageAndAcquireWakeLock(IIILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->acquireWakeLock()V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method private sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->acquireWakeLock()V

    const/high16 v0, -0x80000000

    invoke-super {p0, p1, p2, v0, p3}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method private sendMessageAndAcquireWakeLock(Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->acquireWakeLock()V

    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method private sessionClosed(ILjava/lang/Exception;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->notifyStatusCallbackForSessionClosed(Ljava/lang/Exception;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->sessionLostWithoutCallback(ILjava/lang/Exception;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(II)V

    return-void
.end method

.method private sessionLost(ILjava/lang/Exception;)V
    .locals 6

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mGatewayStatusCallback:Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    invoke-virtual {v1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getGatewayConnectionName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-class v3, Ljava/lang/RuntimeException;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " with message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;->onGatewayConnectionError(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->sessionLostWithoutCallback(ILjava/lang/Exception;)V

    return-void
.end method

.method private sessionLostWithoutCallback(ILjava/lang/Exception;)V
    .locals 2

    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$EventSessionLostInfo;

    invoke-direct {v0, p2}, Lcom/android/server/vcn/VcnGatewayConnection$EventSessionLostInfo;-><init>(Ljava/lang/Exception;)V

    const/4 v1, 0x3

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    return-void
.end method

.method private setDisconnectRequestAlarm()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting alarm to disconnect due to underlying network loss; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectRequestAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x7

    const/high16 v1, -0x80000000

    new-instance v2, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;

    const-string v3, "Underlying Network lost"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0, v1, v4, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->DISCONNECT_REQUEST_ALARM:Ljava/lang/String;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1e

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/server/vcn/VcnGatewayConnection;->createScheduledAlarm(Ljava/lang/String;Landroid/os/Message;J)Lcom/android/internal/util/WakeupMessage;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectRequestAlarm:Lcom/android/internal/util/WakeupMessage;

    return-void
.end method

.method private setRetryTimeoutAlarm(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting retry alarm; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mRetryTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRetryTimeoutAlarm should be null before being set; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->RETRY_TIMEOUT_ALARM:Ljava/lang/String;

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->createScheduledAlarm(Ljava/lang/String;Landroid/os/Message;J)Lcom/android/internal/util/WakeupMessage;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mRetryTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    return-void
.end method

.method private setTeardownTimeoutAlarm()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting teardown timeout alarm; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTeardownTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTeardownTimeoutAlarm should be null before being set; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x8

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->TEARDOWN_TIMEOUT_ALARM:Ljava/lang/String;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/server/vcn/VcnGatewayConnection;->createScheduledAlarm(Ljava/lang/String;Landroid/os/Message;J)Lcom/android/internal/util/WakeupMessage;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTeardownTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    return-void
.end method


# virtual methods
.method buildIkeSession(Landroid/net/Network;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;
    .locals 7

    iget v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-direct {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->buildIkeParams(Landroid/net/Network;)Landroid/net/ipsec/ike/IkeSessionParams;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->buildChildParams()Landroid/net/ipsec/ike/ChildSessionParams;

    move-result-object v4

    new-instance v5, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;

    invoke-direct {v5, p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;I)V

    new-instance v6, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;

    invoke-direct {v6, p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;I)V

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;->newIkeSession(Lcom/android/server/vcn/VcnContext;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/ipsec/ike/ChildSessionParams;Landroid/net/ipsec/ike/IkeSessionCallback;Landroid/net/ipsec/ike/ChildSessionCallback;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    move-result-object v1

    return-object v1
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VcnGatewayConnection ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    invoke-virtual {v1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getGatewayConnectionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsQuitting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Lcom/android/server/vcn/util/OneWayBoolean;

    invoke-virtual {v1}, Lcom/android/server/vcn/util/OneWayBoolean;->getValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsInSafeMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsInSafeMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFailedAttempts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mFailedAttempts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkAgent.getNetwork(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->getNetwork()Landroid/net/Network;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlyingNetworkTracker:Lcom/android/server/vcn/UnderlyingNetworkTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method getIkeSession()Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    return-object v0
.end method

.method getNetworkAgent()Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    return-object v0
.end method

.method getUnderlyingNetwork()Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    return-object v0
.end method

.method getUnderlyingNetworkTrackerCallback()Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkTrackerCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlyingNetworkTrackerCallback:Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkTrackerCallback;

    return-object v0
.end method

.method public isInSafeMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    iget-boolean v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsInSafeMode:Z

    return v0
.end method

.method isQuitting()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Lcom/android/server/vcn/util/OneWayBoolean;

    invoke-virtual {v0}, Lcom/android/server/vcn/util/OneWayBoolean;->getValue()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$createScheduledAlarm$0$VcnGatewayConnection(Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(Landroid/os/Message;)V

    return-void
.end method

.method protected onQuitting()V
    .locals 2

    const-string v0, "Quitting VcnGatewayConnection"

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logDbg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "NetworkAgent was non-null in onQuitting"

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->unregister()V

    iput-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    :cond_0
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    if-eqz v0, :cond_1

    const-string v0, "IkeSession was non-null in onQuitting"

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;->kill()V

    iput-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    :cond_1
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/IpSecManager$IpSecTunnelInterface;->close()V

    :cond_2
    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->releaseWakeLock()V

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelTeardownTimeoutAlarm()V

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelDisconnectRequestAlarm()V

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelRetryTimeoutAlarm()V

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelSafeModeAlarm()V

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlyingNetworkTracker:Lcom/android/server/vcn/UnderlyingNetworkTracker;

    invoke-virtual {v0}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->teardown()V

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mGatewayStatusCallback:Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

    invoke-interface {v0}, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;->onQuit()V

    return-void
.end method

.method sendDisconnectRequestedAndAcquireWakelock(Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;-><init>(Ljava/lang/String;Z)V

    const/4 v1, 0x7

    const/high16 v2, -0x80000000

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    return-void
.end method

.method public sendMessage(I)V
    .locals 1

    const-string v0, "sendMessage should not be used in VcnGatewayConnection. See sendMessageAndAcquireWakeLock()"

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public sendMessage(II)V
    .locals 1

    const-string v0, "sendMessage should not be used in VcnGatewayConnection. See sendMessageAndAcquireWakeLock()"

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    return-void
.end method

.method public sendMessage(III)V
    .locals 1

    const-string v0, "sendMessage should not be used in VcnGatewayConnection. See sendMessageAndAcquireWakeLock()"

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->sendMessage(III)V

    return-void
.end method

.method public sendMessage(IIILjava/lang/Object;)V
    .locals 1

    const-string v0, "sendMessage should not be used in VcnGatewayConnection. See sendMessageAndAcquireWakeLock()"

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .locals 1

    const-string v0, "sendMessage should not be used in VcnGatewayConnection. See sendMessageAndAcquireWakeLock()"

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 1

    const-string v0, "sendMessage should not be used in VcnGatewayConnection. See sendMessageAndAcquireWakeLock()"

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method setIkeSession(Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    return-void
.end method

.method setNetworkAgent(Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    return-void
.end method

.method setQuitting()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Lcom/android/server/vcn/util/OneWayBoolean;

    invoke-virtual {v0}, Lcom/android/server/vcn/util/OneWayBoolean;->setTrue()V

    return-void
.end method

.method setSafeModeAlarm()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting safe mode alarm; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mSafeModeTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xa

    const/high16 v1, -0x80000000

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->SAFEMODE_TIMEOUT_ALARM:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v2}, Lcom/android/server/vcn/VcnContext;->isInTestMode()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1e

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    :goto_0
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/server/vcn/VcnGatewayConnection;->createScheduledAlarm(Ljava/lang/String;Landroid/os/Message;J)Lcom/android/internal/util/WakeupMessage;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mSafeModeTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    return-void
.end method

.method setTunnelInterface(Landroid/net/IpSecManager$IpSecTunnelInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    return-void
.end method

.method setUnderlyingNetwork(Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    return-void
.end method

.method public teardownAsynchronously()V
    .locals 2

    const-string v0, "Triggering async teardown"

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logDbg(Ljava/lang/String;)V

    const-string v0, "teardown() called on VcnTunnel"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->sendDisconnectRequestedAndAcquireWakelock(Ljava/lang/String;Z)V

    return-void
.end method

.method public updateSubscriptionSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V
    .locals 2

    const-string v0, "Missing snapshot"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlyingNetworkTracker:Lcom/android/server/vcn/UnderlyingNetworkTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->updateSubscriptionSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V

    const/16 v0, 0x9

    const/high16 v1, -0x80000000

    invoke-direct {p0, v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(II)V

    return-void
.end method
