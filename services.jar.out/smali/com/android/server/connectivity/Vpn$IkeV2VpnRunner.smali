.class Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;
.super Lcom/android/server/connectivity/Vpn$VpnRunner;
.source "Vpn.java"

# interfaces
.implements Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IkeV2VpnRunner"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IkeV2VpnRunner"


# instance fields
.field private mActiveNetwork:Landroid/net/Network;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mIpSecManager:Landroid/net/IpSecManager;

.field private mIsRunning:Z

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mProfile:Landroid/net/Ikev2VpnProfile;

.field private mSession:Landroid/net/ipsec/ike/IkeSession;

.field private mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Vpn;Landroid/net/Ikev2VpnProfile;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    const-string v0, "IkeV2VpnRunner"

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Vpn$VpnRunner;-><init>(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIsRunning:Z

    iput-object p2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->access$400(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "ipsec"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/IpSecManager;

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIpSecManager:Landroid/net/IpSecManager;

    new-instance v1, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;

    invoke-direct {v1, v0, p0}, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;-><init>(Ljava/lang/String;Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method private disconnectVpnRunner()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIsRunning:Z

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->resetIkeState()V

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$600(Lcom/android/server/connectivity/Vpn;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method private isActiveNetwork(Landroid/net/Network;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIsRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private markFailedAndDisconnect(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->disconnectVpnRunner()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private resetIkeState()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/IpSecManager$IpSecTunnelInterface;->close()V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSession:Landroid/net/ipsec/ike/IkeSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeSession;->kill()V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSession:Landroid/net/ipsec/ike/IkeSession;

    :cond_1
    return-void
.end method


# virtual methods
.method public exitVpnRunner()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public synthetic lambda$exitVpnRunner$1$Vpn$IkeV2VpnRunner()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->disconnectVpnRunner()V

    return-void
.end method

.method public synthetic lambda$onDefaultNetworkChanged$0$Vpn$IkeV2VpnRunner(Landroid/net/Network;)V
    .locals 10

    const-string v0, "IkeV2VpnRunner"

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIsRunning:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "onDefaultNetworkChanged after exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->resetIkeState()V

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$400(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    invoke-static {v1, v2, p1}, Lcom/android/server/connectivity/VpnIkev2Utils;->buildIkeSessionParams(Landroid/content/Context;Landroid/net/Ikev2VpnProfile;Landroid/net/Network;)Landroid/net/ipsec/ike/IkeSessionParams;

    move-result-object v5

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    invoke-virtual {v1}, Landroid/net/Ikev2VpnProfile;->getAllowedAlgorithms()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/connectivity/VpnIkev2Utils;->buildChildSessionParams(Ljava/util/List;)Landroid/net/ipsec/ike/ChildSessionParams;

    move-result-object v6

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIpSecManager:Landroid/net/IpSecManager;

    invoke-virtual {v2, v1, v1, p1}, Landroid/net/IpSecManager;->createIpSecTunnelInterface(Ljava/net/InetAddress;Ljava/net/InetAddress;Landroid/net/Network;)Landroid/net/IpSecManager$IpSecTunnelInterface;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Landroid/net/INetd;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    invoke-virtual {v3}, Landroid/net/IpSecManager$IpSecTunnelInterface;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/net/module/util/NetdUtils;->setInterfaceUp(Landroid/net/INetd;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;

    move-result-object v3

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$400(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v4

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;

    invoke-direct {v8, v0, p0, p1}, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;-><init>(Ljava/lang/String;Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;Landroid/net/Network;)V

    new-instance v9, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;

    invoke-direct {v9, v0, p0, p1}, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;-><init>(Ljava/lang/String;Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;Landroid/net/Network;)V

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;->createIkeSession(Landroid/content/Context;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/ipsec/ike/ChildSessionParams;Ljava/util/concurrent/Executor;Landroid/net/ipsec/ike/IkeSessionCallback;Landroid/net/ipsec/ike/ChildSessionCallback;)Landroid/net/ipsec/ike/IkeSession;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSession:Landroid/net/ipsec/ike/IkeSession;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ike Session started for network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setup failed for network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Aborting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, p1, v1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->onSessionLost(Landroid/net/Network;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public onChildOpened(Landroid/net/Network;Landroid/net/ipsec/ike/ChildSessionConfiguration;)V
    .locals 10

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->isActiveNetwork(Landroid/net/Network;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IkeV2VpnRunner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOpened called for obsolete network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    invoke-virtual {v0}, Landroid/net/IpSecManager$IpSecTunnelInterface;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    invoke-virtual {v1}, Landroid/net/Ikev2VpnProfile;->getMaxMtu()I

    move-result v1

    invoke-virtual {p2}, Landroid/net/ipsec/ike/ChildSessionConfiguration;->getInternalAddresses()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    nop

    invoke-virtual {p2}, Landroid/net/ipsec/ike/ChildSessionConfiguration;->getOutboundTrafficSelectors()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/connectivity/VpnIkev2Utils;->getRoutesFromTrafficSelectors(Ljava/util/List;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/LinkAddress;

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/net/IpSecManager$IpSecTunnelInterface;->addAddress(Ljava/net/InetAddress;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/net/ipsec/ike/ChildSessionConfiguration;->getInternalDnsServers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iput-object v0, v6, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput v1, v6, Lcom/android/internal/net/VpnConfig;->mtu:I

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v7, v7, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    :cond_3
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/net/Network;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    iput-object v7, v6, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-nez v6, :cond_5

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v7}, Lcom/android/server/connectivity/Vpn;->access$700(Lcom/android/server/connectivity/Vpn;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v7}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)V

    :cond_4
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v7}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)V

    monitor-exit v5

    return-void

    :cond_5
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/NetworkAgent;->setUnderlyingNetworks(Ljava/util/List;)V

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v7}, Lcom/android/server/connectivity/Vpn;->access$1000(Lcom/android/server/connectivity/Vpn;)Landroid/net/LinkProperties;

    move-result-object v7

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v6, v7}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "IkeV2VpnRunner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in ChildOpened for network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->onSessionLost(Landroid/net/Network;Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method public onChildTransformCreated(Landroid/net/Network;Landroid/net/IpSecTransform;I)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->isActiveNetwork(Landroid/net/Network;)Z

    move-result v0

    const-string v1, "IkeV2VpnRunner"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChildTransformCreated for obsolete network "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIpSecManager:Landroid/net/IpSecManager;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    invoke-virtual {v0, v2, p3, p2}, Landroid/net/IpSecManager;->applyTunnelModeTransform(Landroid/net/IpSecManager$IpSecTunnelInterface;ILandroid/net/IpSecTransform;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transform application failed for network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->onSessionLost(Landroid/net/Network;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public onDefaultNetworkChanged(Landroid/net/Network;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting IKEv2/IPsec session on new network: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IkeV2VpnRunner"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;Landroid/net/Network;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSessionLost(Landroid/net/Network;Ljava/lang/Exception;)V
    .locals 9

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->isActiveNetwork(Landroid/net/Network;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IkeV2VpnRunner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSessionLost() called for obsolete network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    instance-of v0, p2, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    invoke-virtual {v0}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;->getErrorType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->markFailedAndDisconnect(Ljava/lang/Exception;)V

    return-void

    :cond_1
    instance-of v0, p2, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->markFailedAndDisconnect(Ljava/lang/Exception;)V

    return-void

    :cond_2
    :goto_0
    nop

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    const-string v1, "IkeV2VpnRunner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resetting state for network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iput-object v0, v2, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v2, v2, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v2, v2, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-object v0, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v2, v2, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    if-eqz v2, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v3, v3, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v3, v3, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v5, v5, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v5, v5, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    new-instance v6, Landroid/net/RouteInfo;

    invoke-virtual {v4}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v7

    const/4 v8, 0x7

    invoke-direct {v6, v7, v0, v0, v8}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->access$1000(Lcom/android/server/connectivity/Vpn;)Landroid/net/LinkProperties;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->resetIkeState()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x18 -> :sswitch_0
        0x22 -> :sswitch_0
        0x25 -> :sswitch_0
        0x26 -> :sswitch_0
    .end sparse-switch
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    invoke-virtual {v0}, Landroid/net/Ikev2VpnProfile;->isRestrictedToTestNetworks()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$600(Lcom/android/server/connectivity/Vpn;)Landroid/net/ConnectivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method
