.class public Lcom/android/server/vcn/Vcn;
.super Landroid/os/Handler;
.source "Vcn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vcn/Vcn$VcnContentResolver;,
        Lcom/android/server/vcn/Vcn$Dependencies;,
        Lcom/android/server/vcn/Vcn$VcnUserMobileDataStateListener;,
        Lcom/android/server/vcn/Vcn$VcnMobileDataContentObserver;,
        Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallbackImpl;,
        Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;,
        Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;
    }
.end annotation


# static fields
.field private static final CAPS_REQUIRING_MOBILE_DATA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MSG_CMD_BASE:I = 0x64

.field private static final MSG_CMD_TEARDOWN:I = 0x64

.field private static final MSG_EVENT_BASE:I = 0x0

.field private static final MSG_EVENT_CONFIG_UPDATED:I = 0x0

.field private static final MSG_EVENT_GATEWAY_CONNECTION_QUIT:I = 0x3

.field private static final MSG_EVENT_MOBILE_DATA_TOGGLED:I = 0x5

.field private static final MSG_EVENT_NETWORK_REQUESTED:I = 0x1

.field private static final MSG_EVENT_SAFE_MODE_STATE_CHANGED:I = 0x4

.field private static final MSG_EVENT_SUBSCRIPTIONS_CHANGED:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final VCN_LEGACY_SCORE_INT:I = 0x34


# instance fields
.field private mConfig:Landroid/net/vcn/VcnConfig;

.field private final mContentResolver:Lcom/android/server/vcn/Vcn$VcnContentResolver;

.field private volatile mCurrentStatus:I

.field private final mDeps:Lcom/android/server/vcn/Vcn$Dependencies;

.field private mIsMobileDataEnabled:Z

.field private mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

.field private final mMobileDataSettingsObserver:Landroid/database/ContentObserver;

.field private final mMobileDataStateListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/vcn/Vcn$VcnUserMobileDataStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestListener:Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;

.field private final mSubscriptionGroup:Landroid/os/ParcelUuid;

.field private final mVcnCallback:Lcom/android/server/VcnManagementService$VcnCallback;

.field private final mVcnContext:Lcom/android/server/vcn/VcnContext;

.field private final mVcnGatewayConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/vcn/VcnGatewayConnectionConfig;",
            "Lcom/android/server/vcn/VcnGatewayConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/android/server/vcn/Vcn;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/vcn/Vcn;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Integer;

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/vcn/Vcn;->CAPS_REQUIRING_MOBILE_DATA:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/VcnManagementService$VcnCallback;)V
    .locals 7

    new-instance v6, Lcom/android/server/vcn/Vcn$Dependencies;

    invoke-direct {v6}, Lcom/android/server/vcn/Vcn$Dependencies;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/vcn/Vcn;-><init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/VcnManagementService$VcnCallback;Lcom/android/server/vcn/Vcn$Dependencies;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/VcnManagementService$VcnCallback;Lcom/android/server/vcn/Vcn$Dependencies;)V
    .locals 5

    const-string v0, "Missing vcnContext"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/vcn/Vcn;->mMobileDataStateListeners:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    iput-object p1, p0, Lcom/android/server/vcn/Vcn;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    const-string v0, "Missing subscriptionGroup"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/os/ParcelUuid;

    iput-object v0, p0, Lcom/android/server/vcn/Vcn;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    const-string v0, "Missing vcnCallback"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p5

    check-cast v0, Lcom/android/server/VcnManagementService$VcnCallback;

    iput-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnCallback:Lcom/android/server/VcnManagementService$VcnCallback;

    const-string v0, "Missing deps"

    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p6

    check-cast v0, Lcom/android/server/vcn/Vcn$Dependencies;

    iput-object v0, p0, Lcom/android/server/vcn/Vcn;->mDeps:Lcom/android/server/vcn/Vcn$Dependencies;

    new-instance v1, Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;-><init>(Lcom/android/server/vcn/Vcn;Lcom/android/server/vcn/Vcn$1;)V

    iput-object v1, p0, Lcom/android/server/vcn/Vcn;->mRequestListener:Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;

    invoke-virtual {v0, p1}, Lcom/android/server/vcn/Vcn$Dependencies;->newVcnContentResolver(Lcom/android/server/vcn/VcnContext;)Lcom/android/server/vcn/Vcn$VcnContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vcn/Vcn;->mContentResolver:Lcom/android/server/vcn/Vcn$VcnContentResolver;

    new-instance v3, Lcom/android/server/vcn/Vcn$VcnMobileDataContentObserver;

    invoke-direct {v3, p0, p0, v2}, Lcom/android/server/vcn/Vcn$VcnMobileDataContentObserver;-><init>(Lcom/android/server/vcn/Vcn;Landroid/os/Handler;Lcom/android/server/vcn/Vcn$1;)V

    iput-object v3, p0, Lcom/android/server/vcn/Vcn;->mMobileDataSettingsObserver:Landroid/database/ContentObserver;

    const-string v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4, v3}, Lcom/android/server/vcn/Vcn$VcnContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v0, "Missing config"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p3

    check-cast v0, Landroid/net/vcn/VcnConfig;

    iput-object v0, p0, Lcom/android/server/vcn/Vcn;->mConfig:Landroid/net/vcn/VcnConfig;

    const-string v0, "Missing snapshot"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p4

    check-cast v0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iput-object v0, p0, Lcom/android/server/vcn/Vcn;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getMobileDataStatus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->updateMobileDataStateListeners()V

    invoke-virtual {p1}, Lcom/android/server/vcn/VcnContext;->getVcnNetworkProvider()Lcom/android/server/vcn/VcnNetworkProvider;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnNetworkProvider;->registerListener(Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/vcn/Vcn;)Lcom/android/server/VcnManagementService$VcnCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnCallback:Lcom/android/server/VcnManagementService$VcnCallback;

    return-object v0
.end method

.method private getExposedCapabilitiesForMobileDataState(Landroid/net/vcn/VcnGatewayConnectionConfig;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/vcn/VcnGatewayConnectionConfig;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getAllExposedCapabilities()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getAllExposedCapabilities()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    sget-object v1, Lcom/android/server/vcn/Vcn;->CAPS_REQUIRING_MOBILE_DATA:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private getLogPrefix()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    invoke-static {v1}, Lcom/android/server/vcn/util/LogUtils;->getHashedSubscriptionGroup(Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

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

.method private getMobileDataStatus()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

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

    invoke-direct {p0, v1}, Lcom/android/server/vcn/Vcn;->getTelephonyManagerForSubid(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static getNetworkScore()Landroid/net/NetworkScore;
    .locals 2

    new-instance v0, Landroid/net/NetworkScore$Builder;

    invoke-direct {v0}, Landroid/net/NetworkScore$Builder;-><init>()V

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Landroid/net/NetworkScore$Builder;->setLegacyInt(I)Landroid/net/NetworkScore$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkScore$Builder;->setTransportPrimary(Z)Landroid/net/NetworkScore$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkScore$Builder;->build()Landroid/net/NetworkScore;

    move-result-object v0

    return-object v0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private getTelephonyManagerForSubid(I)Landroid/telephony/TelephonyManager;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    return-object v0
.end method

.method private handleConfigUpdated(Landroid/net/vcn/VcnConfig;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Config updated: old = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mConfig:Landroid/net/vcn/VcnConfig;

    invoke-virtual {v1}, Landroid/net/vcn/VcnConfig;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; new = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/vcn/VcnConfig;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->logDbg(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/vcn/Vcn;->mConfig:Landroid/net/vcn/VcnConfig;

    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

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

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/vcn/VcnGatewayConnectionConfig;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object v4, p0, Lcom/android/server/vcn/Vcn;->mConfig:Landroid/net/vcn/VcnConfig;

    invoke-virtual {v4}, Landroid/net/vcn/VcnConfig;->getGatewayConnectionConfigs()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v3, :cond_0

    const-string v4, "Found gatewayConnectionConfig without GatewayConnection"

    invoke-direct {p0, v4}, Lcom/android/server/vcn/Vcn;->logWtf(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/android/server/vcn/VcnGatewayConnection;->teardownAsynchronously()V

    :cond_1
    :goto_1
    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->getVcnNetworkProvider()Lcom/android/server/vcn/VcnNetworkProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mRequestListener:Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnNetworkProvider;->resendAllRequests(Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;)V

    return-void
.end method

.method private handleGatewayConnectionQuit(Landroid/net/vcn/VcnGatewayConnectionConfig;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VcnGatewayConnection quit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->logDbg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->getVcnNetworkProvider()Lcom/android/server/vcn/VcnNetworkProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mRequestListener:Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnNetworkProvider;->resendAllRequests(Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;)V

    return-void
.end method

.method private handleMobileDataToggled()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getMobileDataStatus()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    if-eq v0, v1, :cond_5

    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/vcn/VcnGatewayConnectionConfig;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/vcn/VcnGatewayConnection;

    nop

    invoke-virtual {v3}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getAllExposedCapabilities()Ljava/util/Set;

    move-result-object v5

    const/16 v6, 0xc

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    if-nez v4, :cond_1

    const-string v6, "Found gatewayConnectionConfig without GatewayConnection"

    invoke-direct {p0, v6}, Lcom/android/server/vcn/Vcn;->logWtf(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lcom/android/server/vcn/VcnGatewayConnection;->teardownAsynchronously()V

    :cond_2
    :goto_1
    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v1}, Lcom/android/server/vcn/VcnContext;->getVcnNetworkProvider()Lcom/android/server/vcn/VcnNetworkProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vcn/Vcn;->mRequestListener:Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;

    invoke-virtual {v1, v2}, Lcom/android/server/vcn/VcnNetworkProvider;->resendAllRequests(Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mobile data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    if-eqz v2, :cond_4

    const-string v2, "enabled"

    goto :goto_2

    :cond_4
    const-string v2, "disabled"

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/vcn/Vcn;->logDbg(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private handleNetworkRequested(Landroid/net/NetworkRequest;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->logVdbg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/vcn/VcnGatewayConnectionConfig;

    invoke-direct {p0, p1, v1}, Lcom/android/server/vcn/Vcn;->isRequestSatisfiedByGatewayConnectionConfig(Landroid/net/NetworkRequest;Landroid/net/vcn/VcnGatewayConnectionConfig;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request already satisfied by existing VcnGatewayConnection: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->logDbg(Ljava/lang/String;)V

    return-void

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mConfig:Landroid/net/vcn/VcnConfig;

    invoke-virtual {v0}, Landroid/net/vcn/VcnConfig;->getGatewayConnectionConfigs()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/vcn/VcnGatewayConnectionConfig;

    invoke-direct {p0, p1, v1}, Lcom/android/server/vcn/Vcn;->isRequestSatisfiedByGatewayConnectionConfig(Landroid/net/NetworkRequest;Landroid/net/vcn/VcnGatewayConnectionConfig;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bringing up new VcnGatewayConnection for request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/vcn/Vcn;->logDbg(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/server/vcn/Vcn;->getExposedCapabilitiesForMobileDataState(Landroid/net/vcn/VcnGatewayConnectionConfig;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Attempted to bring up VcnGatewayConnection for config with existing VcnGatewayConnection"

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->logWtf(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/server/vcn/Vcn;->mDeps:Lcom/android/server/vcn/Vcn$Dependencies;

    iget-object v3, p0, Lcom/android/server/vcn/Vcn;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    iget-object v4, p0, Lcom/android/server/vcn/Vcn;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    iget-object v5, p0, Lcom/android/server/vcn/Vcn;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    new-instance v7, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallbackImpl;

    invoke-direct {v7, p0, v1}, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallbackImpl;-><init>(Lcom/android/server/vcn/Vcn;Landroid/net/vcn/VcnGatewayConnectionConfig;)V

    iget-boolean v8, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    move-object v6, v1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/vcn/Vcn$Dependencies;->newVcnGatewayConnection(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;Z)Lcom/android/server/vcn/VcnGatewayConnection;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request could not be fulfilled by VCN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->logVdbg(Ljava/lang/String;)V

    return-void
.end method

.method private handleSafeModeStatusChanged()V
    .locals 5

    const-string v0, "VcnGatewayConnection safe mode status changed"

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->logVdbg(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-virtual {v2}, Lcom/android/server/vcn/VcnGatewayConnection;->isInSafeMode()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    iget v1, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    nop

    const/4 v2, 0x3

    if-eqz v0, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    const/4 v3, 0x2

    :goto_2
    iput v3, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    iget v3, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    if-eq v1, v3, :cond_4

    iget-object v3, p0, Lcom/android/server/vcn/Vcn;->mVcnCallback:Lcom/android/server/VcnManagementService$VcnCallback;

    invoke-interface {v3, v0}, Lcom/android/server/VcnManagementService$VcnCallback;->onSafeModeStatusChanged(Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Safe mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    if-ne v4, v2, :cond_3

    const-string v2, "entered"

    goto :goto_3

    :cond_3
    const-string v2, "exited"

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/vcn/Vcn;->logInfo(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private handleSubscriptionsChanged(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/vcn/Vcn;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

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

    check-cast v1, Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object v2, p0, Lcom/android/server/vcn/Vcn;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    invoke-virtual {v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->updateSubscriptionSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->updateMobileDataStateListeners()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->handleMobileDataToggled()V

    return-void
.end method

.method private handleTeardown()V
    .locals 3

    const-string v0, "Tearing down"

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->logDbg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->getVcnNetworkProvider()Lcom/android/server/vcn/VcnNetworkProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mRequestListener:Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnNetworkProvider;->unregisterListener(Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;)V

    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

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

    check-cast v1, Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-virtual {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->teardownAsynchronously()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mMobileDataStateListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vcn/Vcn$VcnUserMobileDataStateListener;

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mMobileDataStateListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    return-void
.end method

.method private isRequestSatisfiedByGatewayConnectionConfig(Landroid/net/NetworkRequest;Landroid/net/vcn/VcnGatewayConnectionConfig;)Z
    .locals 3

    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addTransportType(I)Landroid/net/NetworkCapabilities$Builder;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {p0, p2}, Lcom/android/server/vcn/Vcn;->getExposedCapabilitiesForMobileDataState(Landroid/net/vcn/VcnGatewayConnectionConfig;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/NetworkRequest;->canBeSatisfiedBy(Landroid/net/NetworkCapabilities;)Z

    move-result v1

    return v1
.end method

.method private logDbg(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/server/vcn/Vcn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

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

    sget-object v0, Lcom/android/server/vcn/Vcn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

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

    sget-object v0, Lcom/android/server/vcn/Vcn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

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

    sget-object v0, Lcom/android/server/vcn/Vcn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

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

.method private logInfo(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/server/vcn/Vcn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "INFO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private logInfo(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lcom/android/server/vcn/Vcn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "INFO: "

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

.method private logWtf(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/server/vcn/Vcn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

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

    sget-object v0, Lcom/android/server/vcn/Vcn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

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

.method private updateMobileDataStateListeners()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Landroid/os/HandlerExecutor;

    invoke-direct {v1, p0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/vcn/Vcn;->mMobileDataStateListeners:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lcom/android/server/vcn/Vcn$VcnUserMobileDataStateListener;

    invoke-direct {v4, p0}, Lcom/android/server/vcn/Vcn$VcnUserMobileDataStateListener;-><init>(Lcom/android/server/vcn/Vcn;)V

    invoke-direct {p0, v3}, Lcom/android/server/vcn/Vcn;->getTelephonyManagerForSubid(I)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v1, v4}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    iget-object v5, p0, Lcom/android/server/vcn/Vcn;->mMobileDataStateListeners:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/vcn/Vcn;->mMobileDataStateListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyCallback;

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_2
    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vcn ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsMobileDataEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v0, "mVcnGatewayConnections:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

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

    check-cast v1, Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-virtual {v1, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    return v0
.end method

.method public getVcnGatewayConnectionConfigMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/net/vcn/VcnGatewayConnectionConfig;",
            "Lcom/android/server/vcn/VcnGatewayConnection;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getVcnGatewayConnections()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/server/vcn/VcnGatewayConnection;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown msg.what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->logWtf(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_0
    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->handleTeardown()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->handleMobileDataToggled()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->handleSafeModeStatusChanged()V

    goto :goto_0

    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/vcn/VcnGatewayConnectionConfig;

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->handleGatewayConnectionQuit(Landroid/net/vcn/VcnGatewayConnectionConfig;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->handleSubscriptionsChanged(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkRequest;

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->handleNetworkRequested(Landroid/net/NetworkRequest;)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/vcn/VcnConfig;

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->handleConfigUpdated(Landroid/net/vcn/VcnConfig;)V

    nop

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x5 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method public isMobileDataEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    return v0
.end method

.method public setMobileDataEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    return-void
.end method

.method public teardownAsynchronously()V
    .locals 1

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/Vcn;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/Vcn;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public updateConfig(Landroid/net/vcn/VcnConfig;)V
    .locals 1

    const-string v0, "Missing config"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/vcn/Vcn;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/Vcn;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateSubscriptionSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V
    .locals 1

    const-string v0, "Missing snapshot"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/server/vcn/Vcn;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/Vcn;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
