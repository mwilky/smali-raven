.class Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetdEventListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetdEventListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransportForNetIdNetworkCallback"
.end annotation


# instance fields
.field private final mCapabilities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/NetworkCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/connectivity/NetdEventListenerService;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetdEventListenerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;->this$0:Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;->mCapabilities:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetdEventListenerService;Lcom/android/server/connectivity/NetdEventListenerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;-><init>(Lcom/android/server/connectivity/NetdEventListenerService;)V

    return-void
.end method


# virtual methods
.method public getNetworkCapabilities(I)Landroid/net/NetworkCapabilities;
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;->mCapabilities:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;->mCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkCapabilities;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;->mCapabilities:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;->mCapabilities:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;->mCapabilities:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;->mCapabilities:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
