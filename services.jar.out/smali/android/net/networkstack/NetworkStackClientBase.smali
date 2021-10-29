.class public abstract Landroid/net/networkstack/NetworkStackClientBase;
.super Ljava/lang/Object;
.source "NetworkStackClientBase.java"


# instance fields
.field private mConnector:Landroid/net/INetworkStackConnector;

.field private final mPendingNetStackRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/function/Consumer<",
            "Landroid/net/INetworkStackConnector;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic lambda$fetchIpMemoryStore$3(Landroid/net/IIpMemoryStoreCallbacks;Landroid/net/INetworkStackConnector;)V
    .locals 3

    :try_start_0
    invoke-interface {p1, p0}, Landroid/net/INetworkStackConnector;->fetchIpMemoryStore(Landroid/net/IIpMemoryStoreCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not fetch IpMemoryStore"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic lambda$makeDhcpServer$0(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;Landroid/net/INetworkStackConnector;)V
    .locals 3

    :try_start_0
    invoke-interface {p3, p0, p1, p2}, Landroid/net/INetworkStackConnector;->makeDhcpServer(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not create DhcpServer"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic lambda$makeIpClient$1(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;Landroid/net/INetworkStackConnector;)V
    .locals 3

    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkStackConnector;->makeIpClient(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not create IpClient"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic lambda$makeNetworkMonitor$2(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;Landroid/net/INetworkStackConnector;)V
    .locals 3

    :try_start_0
    invoke-interface {p3, p0, p1, p2}, Landroid/net/INetworkStackConnector;->makeNetworkMonitor(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not create NetworkMonitor"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public fetchIpMemoryStore(Landroid/net/IIpMemoryStoreCallbacks;)V
    .locals 1

    new-instance v0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda0;-><init>(Landroid/net/IIpMemoryStoreCallbacks;)V

    invoke-virtual {p0, v0}, Landroid/net/networkstack/NetworkStackClientBase;->requestConnector(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected getQueueLength()I
    .locals 2

    iget-object v0, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

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

.method public makeDhcpServer(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V
    .locals 1

    new-instance v0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V

    invoke-virtual {p0, v0}, Landroid/net/networkstack/NetworkStackClientBase;->requestConnector(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public makeIpClient(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V
    .locals 1

    new-instance v0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V

    invoke-virtual {p0, v0}, Landroid/net/networkstack/NetworkStackClientBase;->requestConnector(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public makeNetworkMonitor(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V
    .locals 1

    new-instance v0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda1;-><init>(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V

    invoke-virtual {p0, v0}, Landroid/net/networkstack/NetworkStackClientBase;->requestConnector(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected onNetworkStackConnected(Landroid/net/INetworkStackConnector;)V
    .locals 3

    :goto_0
    iget-object v0, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/Consumer;

    invoke-interface {v2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_1
    iget-object v0, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Landroid/net/networkstack/NetworkStackClientBase;->mConnector:Landroid/net/INetworkStackConnector;

    monitor-exit v2

    return-void

    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method protected requestConnector(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/INetworkStackConnector;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/net/networkstack/NetworkStackClientBase;->mConnector:Landroid/net/INetworkStackConnector;

    if-nez v1, :cond_0

    iget-object v2, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
