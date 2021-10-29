.class public Lcom/android/server/location/eventlog/LocationEventLog;
.super Lcom/android/server/location/eventlog/LocalEventLog;
.source "LocationEventLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;,
        Lcom/android/server/location/eventlog/LocationEventLog$LocationAdasEnabledEvent;,
        Lcom/android/server/location/eventlog/LocationEventLog$LocationEnabledEvent;,
        Lcom/android/server/location/eventlog/LocationEventLog$UserSwitchedEvent;,
        Lcom/android/server/location/eventlog/LocationEventLog$LocationPowerSaveModeEvent;,
        Lcom/android/server/location/eventlog/LocationEventLog$ProviderStationaryThrottledEvent;,
        Lcom/android/server/location/eventlog/LocationEventLog$ProviderDeliverLocationEvent;,
        Lcom/android/server/location/eventlog/LocationEventLog$ProviderReceiveLocationEvent;,
        Lcom/android/server/location/eventlog/LocationEventLog$ProviderUpdateEvent;,
        Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;,
        Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientForegroundEvent;,
        Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;,
        Lcom/android/server/location/eventlog/LocationEventLog$ProviderMockedEvent;,
        Lcom/android/server/location/eventlog/LocationEventLog$ProviderEnabledEvent;,
        Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;
    }
.end annotation


# static fields
.field private static final EVENT_ADAS_LOCATION_ENABLED:I = 0x3

.field private static final EVENT_LOCATION_ENABLED:I = 0x2

.field private static final EVENT_LOCATION_POWER_SAVE_MODE_CHANGE:I = 0x10

.field public static final EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

.field private static final EVENT_PROVIDER_CLIENT_BACKGROUND:I = 0x9

.field private static final EVENT_PROVIDER_CLIENT_FOREGROUND:I = 0x8

.field private static final EVENT_PROVIDER_CLIENT_PERMITTED:I = 0xa

.field private static final EVENT_PROVIDER_CLIENT_REGISTER:I = 0x6

.field private static final EVENT_PROVIDER_CLIENT_UNPERMITTED:I = 0xb

.field private static final EVENT_PROVIDER_CLIENT_UNREGISTER:I = 0x7

.field private static final EVENT_PROVIDER_DELIVER_LOCATION:I = 0xe

.field private static final EVENT_PROVIDER_ENABLED:I = 0x4

.field private static final EVENT_PROVIDER_MOCKED:I = 0x5

.field private static final EVENT_PROVIDER_RECEIVE_LOCATION:I = 0xd

.field private static final EVENT_PROVIDER_STATIONARY_THROTTLED:I = 0xf

.field private static final EVENT_PROVIDER_UPDATE_REQUEST:I = 0xc

.field private static final EVENT_USER_SWITCHED:I = 0x1


# instance fields
.field private final mAggregateStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Landroid/location/util/identity/CallerIdentity;",
            "Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog;

    invoke-direct {v0}, Lcom/android/server/location/eventlog/LocationEventLog;-><init>()V

    sput-object v0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lcom/android/server/location/eventlog/LocationEventLog;->getLogSize()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/location/eventlog/LocalEventLog;-><init>(I)V

    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mAggregateStats:Landroid/util/ArrayMap;

    return-void
.end method

.method private getAggregateStats(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;
    .locals 5

    iget-object v0, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mAggregateStats:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mAggregateStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    new-instance v2, Landroid/util/ArrayMap;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v1, v2

    iget-object v2, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mAggregateStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p2}, Landroid/location/util/identity/CallerIdentity;->forAggregation(Landroid/location/util/identity/CallerIdentity;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    if-nez v3, :cond_1

    new-instance v4, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    invoke-direct {v4}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;-><init>()V

    move-object v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getLogSize()I
    .locals 1

    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x258

    return v0

    :cond_0
    const/16 v0, 0xc8

    return v0
.end method


# virtual methods
.method public copyAggregateStats()Landroid/util/ArrayMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Landroid/location/util/identity/CallerIdentity;",
            "Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mAggregateStats:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mAggregateStats:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    new-instance v3, Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected varargs createLogEvent(JI[Ljava/lang/Object;)Lcom/android/server/location/eventlog/LocalEventLog$LogEvent;
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p3, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$LocationPowerSaveModeEvent;

    aget-object v1, p4, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/location/eventlog/LocationEventLog$LocationPowerSaveModeEvent;-><init>(JI)V

    return-object v0

    :pswitch_1
    new-instance v6, Lcom/android/server/location/eventlog/LocationEventLog$ProviderStationaryThrottledEvent;

    aget-object v2, p4, v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    aget-object v1, p4, v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    aget-object v0, p4, v0

    move-object v5, v0

    check-cast v5, Landroid/location/provider/ProviderRequest;

    move-object v0, v6

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderStationaryThrottledEvent;-><init>(JLjava/lang/String;ZLandroid/location/provider/ProviderRequest;)V

    return-object v6

    :pswitch_2
    new-instance v6, Lcom/android/server/location/eventlog/LocationEventLog$ProviderDeliverLocationEvent;

    aget-object v2, p4, v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    aget-object v1, p4, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v0, p4, v0

    move-object v5, v0

    check-cast v5, Landroid/location/util/identity/CallerIdentity;

    move-object v0, v6

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderDeliverLocationEvent;-><init>(JLjava/lang/String;ILandroid/location/util/identity/CallerIdentity;)V

    return-object v6

    :pswitch_3
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderReceiveLocationEvent;

    aget-object v2, p4, v2

    check-cast v2, Ljava/lang/String;

    aget-object v1, p4, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, p1, p2, v2, v1}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderReceiveLocationEvent;-><init>(JLjava/lang/String;I)V

    return-object v0

    :pswitch_4
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderUpdateEvent;

    aget-object v2, p4, v2

    check-cast v2, Ljava/lang/String;

    aget-object v1, p4, v1

    check-cast v1, Landroid/location/provider/ProviderRequest;

    invoke-direct {v0, p1, p2, v2, v1}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderUpdateEvent;-><init>(JLjava/lang/String;Landroid/location/provider/ProviderRequest;)V

    return-object v0

    :pswitch_5
    new-instance v6, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;

    aget-object v0, p4, v2

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v0, p4, v1

    move-object v5, v0

    check-cast v5, Landroid/location/util/identity/CallerIdentity;

    move-object v0, v6

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;-><init>(JLjava/lang/String;ZLandroid/location/util/identity/CallerIdentity;)V

    return-object v6

    :pswitch_6
    new-instance v6, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;

    aget-object v0, p4, v2

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v0, p4, v1

    move-object v5, v0

    check-cast v5, Landroid/location/util/identity/CallerIdentity;

    move-object v0, v6

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;-><init>(JLjava/lang/String;ZLandroid/location/util/identity/CallerIdentity;)V

    return-object v6

    :pswitch_7
    new-instance v6, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientForegroundEvent;

    aget-object v0, p4, v2

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v0, p4, v1

    move-object v5, v0

    check-cast v5, Landroid/location/util/identity/CallerIdentity;

    move-object v0, v6

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientForegroundEvent;-><init>(JLjava/lang/String;ZLandroid/location/util/identity/CallerIdentity;)V

    return-object v6

    :pswitch_8
    new-instance v6, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientForegroundEvent;

    aget-object v0, p4, v2

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v0, p4, v1

    move-object v5, v0

    check-cast v5, Landroid/location/util/identity/CallerIdentity;

    move-object v0, v6

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientForegroundEvent;-><init>(JLjava/lang/String;ZLandroid/location/util/identity/CallerIdentity;)V

    return-object v6

    :pswitch_9
    new-instance v7, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;

    aget-object v0, p4, v2

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v0, p4, v1

    move-object v5, v0

    check-cast v5, Landroid/location/util/identity/CallerIdentity;

    const/4 v6, 0x0

    move-object v0, v7

    move-wide v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;-><init>(JLjava/lang/String;ZLandroid/location/util/identity/CallerIdentity;Landroid/location/LocationRequest;)V

    return-object v7

    :pswitch_a
    new-instance v7, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;

    aget-object v2, p4, v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v1, p4, v1

    move-object v5, v1

    check-cast v5, Landroid/location/util/identity/CallerIdentity;

    aget-object v0, p4, v0

    move-object v6, v0

    check-cast v6, Landroid/location/LocationRequest;

    move-object v0, v7

    move-wide v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;-><init>(JLjava/lang/String;ZLandroid/location/util/identity/CallerIdentity;Landroid/location/LocationRequest;)V

    return-object v7

    :pswitch_b
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderMockedEvent;

    aget-object v2, p4, v2

    check-cast v2, Ljava/lang/String;

    aget-object v1, p4, v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v0, p1, p2, v2, v1}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderMockedEvent;-><init>(JLjava/lang/String;Z)V

    return-object v0

    :pswitch_c
    new-instance v6, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEnabledEvent;

    aget-object v2, p4, v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    aget-object v1, p4, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v0, p4, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v0, v6

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEnabledEvent;-><init>(JLjava/lang/String;IZ)V

    return-object v6

    :pswitch_d
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$LocationAdasEnabledEvent;

    aget-object v2, p4, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, p4, v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v0, p1, p2, v2, v1}, Lcom/android/server/location/eventlog/LocationEventLog$LocationAdasEnabledEvent;-><init>(JIZ)V

    return-object v0

    :pswitch_e
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$LocationEnabledEvent;

    aget-object v2, p4, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, p4, v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v0, p1, p2, v2, v1}, Lcom/android/server/location/eventlog/LocationEventLog$LocationEnabledEvent;-><init>(JIZ)V

    return-object v0

    :pswitch_f
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$UserSwitchedEvent;

    aget-object v2, p4, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, p4, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, p1, p2, v2, v1}, Lcom/android/server/location/eventlog/LocationEventLog$UserSwitchedEvent;-><init>(JII)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
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
        :pswitch_0
    .end packed-switch
.end method

.method public logAdasLocationEnabled(IZ)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLogEvent(I[Ljava/lang/Object;)V

    return-void
.end method

.method public logLocationEnabled(IZ)V
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/eventlog/LocationEventLog;->addLogEvent(I[Ljava/lang/Object;)V

    return-void
.end method

.method public logLocationPowerSaveMode(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x10

    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLogEvent(I[Ljava/lang/Object;)V

    return-void
.end method

.method public logProviderClientActive(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog;->getAggregateStats(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->markRequestActive()V

    return-void
.end method

.method public logProviderClientBackground(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/eventlog/LocationEventLog;->addLogEvent(I[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog;->getAggregateStats(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->markRequestBackground()V

    return-void
.end method

.method public logProviderClientForeground(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/eventlog/LocationEventLog;->addLogEvent(I[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog;->getAggregateStats(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->markRequestForeground()V

    return-void
.end method

.method public logProviderClientInactive(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog;->getAggregateStats(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->markRequestInactive()V

    return-void
.end method

.method public logProviderClientPermitted(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/eventlog/LocationEventLog;->addLogEvent(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public logProviderClientRegistered(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;Landroid/location/LocationRequest;)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLogEvent(I[Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog;->getAggregateStats(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    move-result-object v0

    invoke-virtual {p3}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->markRequestAdded(J)V

    return-void
.end method

.method public logProviderClientUnpermitted(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/eventlog/LocationEventLog;->addLogEvent(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public logProviderClientUnregistered(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLogEvent(I[Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog;->getAggregateStats(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->markRequestRemoved()V

    return-void
.end method

.method public logProviderDeliveredLocations(Ljava/lang/String;ILandroid/location/util/identity/CallerIdentity;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/eventlog/LocationEventLog;->addLogEvent(I[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/location/eventlog/LocationEventLog;->getAggregateStats(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->markLocationDelivered()V

    return-void
.end method

.method public logProviderEnabled(Ljava/lang/String;IZ)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLogEvent(I[Ljava/lang/Object;)V

    return-void
.end method

.method public logProviderMocked(Ljava/lang/String;Z)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLogEvent(I[Ljava/lang/Object;)V

    return-void
.end method

.method public logProviderReceivedLocations(Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLogEvent(I[Ljava/lang/Object;)V

    return-void
.end method

.method public logProviderStationaryThrottled(Ljava/lang/String;ZLandroid/location/provider/ProviderRequest;)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/16 v1, 0xf

    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLogEvent(I[Ljava/lang/Object;)V

    return-void
.end method

.method public logProviderUpdateRequest(Ljava/lang/String;Landroid/location/provider/ProviderRequest;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLogEvent(I[Ljava/lang/Object;)V

    return-void
.end method

.method public logUserSwitched(II)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLogEvent(I[Ljava/lang/Object;)V

    return-void
.end method
