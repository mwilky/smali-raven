.class Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;
.super Ljava/lang/Object;
.source "GnssNetworkConnectivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$SubIdPhoneStateListener;,
        Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$GnssNetworkListener;,
        Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;
    }
.end annotation


# static fields
.field private static final AGNSS_NET_CAPABILITY_NOT_METERED:I = 0x1

.field private static final AGNSS_NET_CAPABILITY_NOT_ROAMING:I = 0x2

.field private static final AGPS_DATA_CONNECTION_CLOSED:I = 0x0

.field private static final AGPS_DATA_CONNECTION_OPEN:I = 0x2

.field private static final AGPS_DATA_CONNECTION_OPENING:I = 0x1

.field public static final AGPS_TYPE_C2K:I = 0x2

.field private static final AGPS_TYPE_EIMS:I = 0x3

.field private static final AGPS_TYPE_IMS:I = 0x4

.field public static final AGPS_TYPE_SUPL:I = 0x1

.field private static final APN_INVALID:I = 0x0

.field private static final APN_IPV4:I = 0x1

.field private static final APN_IPV4V6:I = 0x3

.field private static final APN_IPV6:I = 0x2

.field private static final DEBUG:Z

.field private static final GPS_AGPS_DATA_CONNECTED:I = 0x3

.field private static final GPS_AGPS_DATA_CONN_DONE:I = 0x4

.field private static final GPS_AGPS_DATA_CONN_FAILED:I = 0x5

.field private static final GPS_RELEASE_AGPS_DATA_CONN:I = 0x2

.field private static final GPS_REQUEST_AGPS_DATA_CONN:I = 0x1

.field private static final HASH_MAP_INITIAL_CAPACITY_TO_TRACK_CONNECTED_NETWORKS:I = 0x5

.field private static final SUPL_NETWORK_REQUEST_TIMEOUT_MILLIS:I = 0x4e20

.field static final TAG:Ljava/lang/String; = "GnssNetworkConnectivityHandler"

.field private static final VERBOSE:Z

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GnssNetworkConnectivityHandler"

.field private static final WAKELOCK_TIMEOUT_MILLIS:J = 0xea60L


# instance fields
.field private mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

.field private mAGpsDataConnectionState:I

.field private mAGpsType:I

.field private mActiveSubId:I

.field private mAvailableNetworkAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Network;",
            "Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mGnssNetworkListener:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$GnssNetworkListener;

.field private final mHandler:Landroid/os/Handler;

.field private mNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNiHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field private final mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPhoneStateListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$SubIdPhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "GnssNetworkConnectivityHandler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->DEBUG:Z

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->VERBOSE:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$GnssNetworkListener;Landroid/os/Looper;Lcom/android/internal/location/GpsNetInitiatedHandler;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mActiveSubId:I

    new-instance v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$1;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mGnssNetworkListener:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$GnssNetworkListener;

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    :cond_0
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "GnssNetworkConnectivityHandler"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mNiHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->createSuplConnectivityCallback()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)I
    .locals 1

    iget v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mActiveSubId:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mActiveSubId:I

    return p1
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mPhoneStateListeners:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mPhoneStateListeners:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->VERBOSE:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$GnssNetworkListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mGnssNetworkListener:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$GnssNetworkListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Landroid/net/Network;ZLandroid/net/NetworkCapabilities;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->handleUpdateNetworkState(Landroid/net/Network;ZLandroid/net/NetworkCapabilities;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->handleSuplConnectionAvailable(Landroid/net/Network;Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->handleReleaseSuplConnection(I)V

    return-void
.end method

.method private agpsDataConnStateAsString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Unknown>("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "OPEN"

    return-object v0

    :pswitch_1
    const-string v0, "OPENING"

    return-object v0

    :pswitch_2
    const-string v0, "CLOSED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private agpsDataConnStatusAsString(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Unknown>("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "FAILED"

    return-object v0

    :pswitch_1
    const-string v0, "DONE"

    return-object v0

    :pswitch_2
    const-string v0, "CONNECTED"

    return-object v0

    :pswitch_3
    const-string v0, "RELEASE"

    return-object v0

    :pswitch_4
    const-string v0, "REQUEST"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private agpsTypeAsString(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Unknown>("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "IMS"

    return-object v0

    :pswitch_1
    const-string v0, "EIMS"

    return-object v0

    :pswitch_2
    const-string v0, "C2K"

    return-object v0

    :pswitch_3
    const-string v0, "SUPL"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createNetworkConnectivityCallback()Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 1

    new-instance v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)V

    return-object v0
.end method

.method private createSuplConnectivityCallback()Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 1

    new-instance v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)V

    return-object v0
.end method

.method private ensureInHandlerThread()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method must run on the Handler thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getLinkIpType(Landroid/net/LinkProperties;)I
    .locals 8

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->ensureInHandlerThread()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v6, v5, Ljava/net/Inet4Address;

    if-eqz v6, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    instance-of v6, v5, Ljava/net/Inet6Address;

    if-eqz v6, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_1
    sget-boolean v6, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->DEBUG:Z

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LinkAddress : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "GnssNetworkConnectivityHandler"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    const/4 v3, 0x3

    return v3

    :cond_4
    if-eqz v0, :cond_5

    const/4 v3, 0x1

    return v3

    :cond_5
    if-eqz v1, :cond_6

    const/4 v3, 0x2

    return v3

    :cond_6
    const/4 v3, 0x0

    return v3
.end method

.method private getNetworkCapability(I)I
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "agpsType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x4

    return v0

    :pswitch_1
    const/16 v0, 0xa

    return v0

    :pswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleReleaseSuplConnection(I)V
    .locals 5

    sget-boolean v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->DEBUG:Z

    const-string v1, "GnssNetworkConnectivityHandler"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->agpsDataConnStatusAsString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const-string/jumbo v3, "releaseSuplConnection, state=%s, status=%s"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid status to release SUPL connection: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_0
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->native_agps_data_conn_failed()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->native_agps_data_conn_closed()V

    nop

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleRequestSuplConnection(I[B)V
    .locals 7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    iput p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsType:I

    const-string v0, "GnssNetworkConnectivityHandler"

    if-eqz p2, :cond_2

    sget-boolean v1, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->VERBOSE:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received SUPL IP addr[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    sget-boolean v1, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IP address converted to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad IP Address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    sget-boolean v1, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->DEBUG:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->agpsTypeAsString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    aput-object v6, v4, v5

    const-string/jumbo v5, "requestSuplConnection, state=%s, agpsType=%s, address=%s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v4, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    if-eqz v4, :cond_4

    return-void

    :cond_4
    iput v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    iget v4, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsType:I

    invoke-direct {p0, v4}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->getNetworkCapability(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mNiHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v3}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mActiveSubId:I

    if-ltz v3, :cond_6

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding Network Specifier: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mActiveSubId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mActiveSubId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    :cond_6
    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x4e20

    invoke-virtual {v1, v0, v3, v4, v5}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;I)V

    return-void
.end method

.method private handleSuplConnectionAvailable(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    :cond_0
    sget-boolean v2, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->DEBUG:Z

    const-string v3, "GnssNetworkConnectivityHandler"

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    aput-object p1, v7, v6

    aput-object v0, v7, v5

    const-string v8, "handleSuplConnectionAvailable: state=%s, suplNetwork=%s, info=%s"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v7, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    if-ne v7, v6, :cond_5

    if-nez v1, :cond_2

    const-string v1, "dummy-apn"

    :cond_2
    iget-object v7, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    if-eqz v7, :cond_3

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->setRouting()V

    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->getLinkIpType(Landroid/net/LinkProperties;)I

    move-result v7

    if-eqz v2, :cond_4

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    const-string/jumbo v4, "native_agps_data_conn_open: mAgpsApn=%s, mApnIpType=%s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p1}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v1, v7}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->native_agps_data_conn_open(JLjava/lang/String;I)V

    iput v5, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    :cond_5
    return-void
.end method

.method private handleUpdateNetworkState(Landroid/net/Network;ZLandroid/net/NetworkCapabilities;)V
    .locals 19

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    const/4 v0, 0x0

    iget-object v1, v9, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v12, :cond_1

    if-eqz v11, :cond_0

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    move v0, v3

    move v13, v0

    goto :goto_1

    :cond_1
    move v13, v0

    :goto_1
    move-object/from16 v0, p3

    invoke-direct {v9, v11, v10, v0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->updateTrackedNetworksState(ZLandroid/net/Network;Landroid/net/NetworkCapabilities;)Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->access$1000(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->access$1100(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;)I

    move-result v16

    invoke-static {v14}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->access$1200(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;)Landroid/net/NetworkCapabilities;

    move-result-object v8

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object v10, v0, v1

    const/4 v1, 0x3

    aput-object v8, v0, v1

    const/4 v1, 0x4

    iget-object v3, v9, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const-string/jumbo v1, "updateNetworkState, state=%s, connected=%s, network=%s, capabilities=%s, availableNetworkCount: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssNetworkConnectivityHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->native_is_agps_ril_supported()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x12

    invoke-virtual {v8, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    xor-int/lit8 v3, v0, 0x1

    if-eqz v15, :cond_2

    move-object v5, v15

    goto :goto_2

    :cond_2
    const-string v0, ""

    move-object v5, v0

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v6

    invoke-static {v8}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->access$1300(Landroid/net/NetworkCapabilities;)S

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v16

    move v4, v13

    move-object/from16 v18, v8

    move/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->native_update_network_state(ZIZZLjava/lang/String;JS)V

    goto :goto_3

    :cond_3
    move-object/from16 v18, v8

    sget-boolean v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "Skipped network state update because GPS HAL AGPS-RIL is not  supported"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    return-void
.end method

.method private native native_agps_data_conn_closed()V
.end method

.method private native native_agps_data_conn_failed()V
.end method

.method private native native_agps_data_conn_open(JLjava/lang/String;I)V
.end method

.method private static native native_is_agps_ril_supported()Z
.end method

.method private native native_update_network_state(ZIZZLjava/lang/String;JS)V
.end method

.method private runEventAndReleaseWakeLock(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private runOnHandler(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->runEventAndReleaseWakeLock(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method private setRouting()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v0

    const-string v1, "GnssNetworkConnectivityHandler"

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error requesting route to host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-boolean v2, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->DEBUG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully requested route to host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private updateTrackedNetworksState(ZLandroid/net/Network;Landroid/net/NetworkCapabilities;)Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;

    if-eqz v0, :cond_1

    invoke-static {v0, p3}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->access$1202(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    return-object v0

    :cond_1
    new-instance v1, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$1;)V

    move-object v0, v1

    invoke-static {v0, p3}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->access$1202(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->access$1002(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->access$1102(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;I)I

    :cond_2
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method isDataNetworkConnected()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public synthetic lambda$onReportAGpsStatus$0$GnssNetworkConnectivityHandler(I[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->handleRequestSuplConnection(I[B)V

    return-void
.end method

.method public synthetic lambda$onReportAGpsStatus$1$GnssNetworkConnectivityHandler()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->handleReleaseSuplConnection(I)V

    return-void
.end method

.method public synthetic lambda$runEventAndReleaseWakeLock$2$GnssNetworkConnectivityHandler(Ljava/lang/Runnable;)V
    .locals 2

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method onReportAGpsStatus(II[B)V
    .locals 3

    sget-boolean v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->DEBUG:Z

    const-string v1, "GnssNetworkConnectivityHandler"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AGPS_DATA_CONNECTION: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->agpsDataConnStatusAsString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    packed-switch p2, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received unknown AGPS status: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)V

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->runOnHandler(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;I[B)V

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->runOnHandler(Ljava/lang/Runnable;)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method registerNetworkCallbacks()V
    .locals 5

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->createNetworkConnectivityCallback()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1, v2, v4}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    return-void
.end method
