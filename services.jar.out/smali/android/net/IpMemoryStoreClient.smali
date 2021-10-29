.class public abstract Landroid/net/IpMemoryStoreClient;
.super Ljava/lang/Object;
.source "IpMemoryStoreClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IpMemoryStoreClient$ThrowingRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/net/IpMemoryStoreClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/IpMemoryStoreClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/net/IpMemoryStoreClient;->mContext:Landroid/content/Context;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "missing context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V
    .locals 1

    const-string v0, "Failed to execute remote procedure call"

    invoke-direct {p0, v0, p1}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method private ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V
    .locals 2

    :try_start_0
    invoke-interface {p2}, Landroid/net/IpMemoryStoreClient$ThrowingRunnable;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/net/IpMemoryStoreClient;->TAG:Ljava/lang/String;

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic lambda$delete$18(Landroid/net/IIpMemoryStore;Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p3}, Landroid/net/ipmemorystore/OnDeleteStatusListener;->toAIDL(Landroid/net/ipmemorystore/OnDeleteStatusListener;)Landroid/net/ipmemorystore/IOnStatusAndCountListener;

    move-result-object v0

    invoke-interface {p0, p1, p2, v0}, Landroid/net/IIpMemoryStore;->delete(Ljava/lang/String;ZLandroid/net/ipmemorystore/IOnStatusAndCountListener;)V

    return-void
.end method

.method static synthetic lambda$delete$20(Landroid/net/ipmemorystore/OnDeleteStatusListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/net/ipmemorystore/Status;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Landroid/net/ipmemorystore/Status;-><init>(I)V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/net/ipmemorystore/OnDeleteStatusListener;->onComplete(Landroid/net/ipmemorystore/Status;I)V

    return-void
.end method

.method static synthetic lambda$deleteCluster$21(Landroid/net/IIpMemoryStore;Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    nop

    invoke-static {p3}, Landroid/net/ipmemorystore/OnDeleteStatusListener;->toAIDL(Landroid/net/ipmemorystore/OnDeleteStatusListener;)Landroid/net/ipmemorystore/IOnStatusAndCountListener;

    move-result-object v0

    invoke-interface {p0, p1, p2, v0}, Landroid/net/IIpMemoryStore;->deleteCluster(Ljava/lang/String;ZLandroid/net/ipmemorystore/IOnStatusAndCountListener;)V

    return-void
.end method

.method static synthetic lambda$deleteCluster$23(Landroid/net/ipmemorystore/OnDeleteStatusListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/net/ipmemorystore/Status;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Landroid/net/ipmemorystore/Status;-><init>(I)V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/net/ipmemorystore/OnDeleteStatusListener;->onComplete(Landroid/net/ipmemorystore/Status;I)V

    return-void
.end method

.method static synthetic lambda$factoryReset$24(Landroid/net/IIpMemoryStore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p0}, Landroid/net/IIpMemoryStore;->factoryReset()V

    return-void
.end method

.method static synthetic lambda$findL2Key$6(Landroid/net/IIpMemoryStore;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnL2KeyResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/net/ipmemorystore/NetworkAttributes;->toParcelable()Landroid/net/ipmemorystore/NetworkAttributesParcelable;

    move-result-object v0

    invoke-static {p2}, Landroid/net/ipmemorystore/OnL2KeyResponseListener;->toAIDL(Landroid/net/ipmemorystore/OnL2KeyResponseListener;)Landroid/net/ipmemorystore/IOnL2KeyResponseListener;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/net/IIpMemoryStore;->findL2Key(Landroid/net/ipmemorystore/NetworkAttributesParcelable;Landroid/net/ipmemorystore/IOnL2KeyResponseListener;)V

    return-void
.end method

.method static synthetic lambda$findL2Key$8(Landroid/net/ipmemorystore/OnL2KeyResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/net/ipmemorystore/Status;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Landroid/net/ipmemorystore/Status;-><init>(I)V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/net/ipmemorystore/OnL2KeyResponseListener;->onL2KeyResponse(Landroid/net/ipmemorystore/Status;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$isSameNetwork$11(Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/net/ipmemorystore/Status;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Landroid/net/ipmemorystore/Status;-><init>(I)V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;->onSameL3NetworkResponse(Landroid/net/ipmemorystore/Status;Landroid/net/ipmemorystore/SameL3NetworkResponse;)V

    return-void
.end method

.method static synthetic lambda$isSameNetwork$9(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    nop

    invoke-static {p3}, Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;->toAIDL(Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;

    move-result-object v0

    invoke-interface {p0, p1, p2, v0}, Landroid/net/IIpMemoryStore;->isSameNetwork(Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;)V

    return-void
.end method

.method static synthetic lambda$retrieveBlob$15(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    nop

    invoke-static {p4}, Landroid/net/ipmemorystore/OnBlobRetrievedListener;->toAIDL(Landroid/net/ipmemorystore/OnBlobRetrievedListener;)Landroid/net/ipmemorystore/IOnBlobRetrievedListener;

    move-result-object v0

    invoke-interface {p0, p1, p2, p3, v0}, Landroid/net/IIpMemoryStore;->retrieveBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/IOnBlobRetrievedListener;)V

    return-void
.end method

.method static synthetic lambda$retrieveBlob$17(Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/net/ipmemorystore/Status;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Landroid/net/ipmemorystore/Status;-><init>(I)V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, v1, v1}, Landroid/net/ipmemorystore/OnBlobRetrievedListener;->onBlobRetrieved(Landroid/net/ipmemorystore/Status;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;)V

    return-void
.end method

.method static synthetic lambda$retrieveNetworkAttributes$12(Landroid/net/IIpMemoryStore;Ljava/lang/String;Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    nop

    invoke-static {p2}, Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;->toAIDL(Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Landroid/net/IIpMemoryStore;->retrieveNetworkAttributes(Ljava/lang/String;Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;)V

    return-void
.end method

.method static synthetic lambda$retrieveNetworkAttributes$14(Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/net/ipmemorystore/Status;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Landroid/net/ipmemorystore/Status;-><init>(I)V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, v1}, Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;->onNetworkAttributesRetrieved(Landroid/net/ipmemorystore/Status;Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributes;)V

    return-void
.end method

.method static synthetic lambda$storeBlob$3(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/OnStatusListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    nop

    invoke-static {p5}, Landroid/net/ipmemorystore/OnStatusListener;->toAIDL(Landroid/net/ipmemorystore/OnStatusListener;)Landroid/net/ipmemorystore/IOnStatusListener;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/net/IIpMemoryStore;->storeBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/IOnStatusListener;)V

    return-void
.end method

.method static synthetic lambda$storeBlob$5(Landroid/net/ipmemorystore/OnStatusListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/net/ipmemorystore/Status;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Landroid/net/ipmemorystore/Status;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/net/ipmemorystore/OnStatusListener;->onComplete(Landroid/net/ipmemorystore/Status;)V

    return-void
.end method

.method static synthetic lambda$storeNetworkAttributes$0(Landroid/net/IIpMemoryStore;Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnStatusListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p2}, Landroid/net/ipmemorystore/NetworkAttributes;->toParcelable()Landroid/net/ipmemorystore/NetworkAttributesParcelable;

    move-result-object v0

    invoke-static {p3}, Landroid/net/ipmemorystore/OnStatusListener;->toAIDL(Landroid/net/ipmemorystore/OnStatusListener;)Landroid/net/ipmemorystore/IOnStatusListener;

    move-result-object v1

    invoke-interface {p0, p1, v0, v1}, Landroid/net/IIpMemoryStore;->storeNetworkAttributes(Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributesParcelable;Landroid/net/ipmemorystore/IOnStatusListener;)V

    return-void
.end method

.method static synthetic lambda$storeNetworkAttributes$2(Landroid/net/ipmemorystore/OnStatusListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/net/ipmemorystore/Status;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Landroid/net/ipmemorystore/Status;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/net/ipmemorystore/OnStatusListener;->onComplete(Landroid/net/ipmemorystore/Status;)V

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda24;-><init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;)V

    invoke-virtual {p0, v0}, Landroid/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-nez p3, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda10;

    invoke-direct {v1, p3}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda10;-><init>(Landroid/net/ipmemorystore/OnDeleteStatusListener;)V

    const-string v2, "Error deleting from the memory store"

    invoke-direct {p0, v2, v1}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    :goto_0
    return-void
.end method

.method public deleteCluster(Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda25;-><init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;)V

    invoke-virtual {p0, v0}, Landroid/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-nez p3, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda11;

    invoke-direct {v1, p3}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda11;-><init>(Landroid/net/ipmemorystore/OnDeleteStatusListener;)V

    const-string v2, "Error deleting from the memory store"

    invoke-direct {p0, v2, v1}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    :goto_0
    return-void
.end method

.method public factoryReset()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda17;-><init>(Landroid/net/IpMemoryStoreClient;)V

    invoke-virtual {p0, v0}, Landroid/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/net/IpMemoryStoreClient;->TAG:Ljava/lang/String;

    const-string v2, "Error executing factory reset"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public findL2Key(Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnL2KeyResponseListener;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda18;-><init>(Landroid/net/IpMemoryStoreClient;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnL2KeyResponseListener;)V

    invoke-virtual {p0, v0}, Landroid/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda12;

    invoke-direct {v1, p2}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda12;-><init>(Landroid/net/ipmemorystore/OnL2KeyResponseListener;)V

    const-string v2, "Error finding L2 Key"

    invoke-direct {p0, v2, v1}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    :goto_0
    return-void
.end method

.method public isSameNetwork(Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda21;-><init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)V

    invoke-virtual {p0, v0}, Landroid/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda14;

    invoke-direct {v1, p3}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda14;-><init>(Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)V

    const-string v2, "Error checking for network sameness"

    invoke-direct {p0, v2, v1}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$delete$19$IpMemoryStoreClient(Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;Landroid/net/IIpMemoryStore;)V
    .locals 1

    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda7;

    invoke-direct {v0, p4, p1, p2, p3}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda7;-><init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;)V

    invoke-direct {p0, v0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method public synthetic lambda$deleteCluster$22$IpMemoryStoreClient(Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;Landroid/net/IIpMemoryStore;)V
    .locals 1

    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda8;

    invoke-direct {v0, p4, p1, p2, p3}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda8;-><init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;)V

    invoke-direct {p0, v0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method public synthetic lambda$factoryReset$25$IpMemoryStoreClient(Landroid/net/IIpMemoryStore;)V
    .locals 1

    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda0;-><init>(Landroid/net/IIpMemoryStore;)V

    invoke-direct {p0, v0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method public synthetic lambda$findL2Key$7$IpMemoryStoreClient(Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnL2KeyResponseListener;Landroid/net/IIpMemoryStore;)V
    .locals 1

    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda1;

    invoke-direct {v0, p3, p1, p2}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda1;-><init>(Landroid/net/IIpMemoryStore;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnL2KeyResponseListener;)V

    invoke-direct {p0, v0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method public synthetic lambda$isSameNetwork$10$IpMemoryStoreClient(Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;Landroid/net/IIpMemoryStore;)V
    .locals 1

    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda4;

    invoke-direct {v0, p4, p1, p2, p3}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda4;-><init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)V

    invoke-direct {p0, v0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method public synthetic lambda$retrieveBlob$16$IpMemoryStoreClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnBlobRetrievedListener;Landroid/net/IIpMemoryStore;)V
    .locals 7

    new-instance v6, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda6;

    move-object v0, v6

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda6;-><init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V

    invoke-direct {p0, v6}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method public synthetic lambda$retrieveNetworkAttributes$13$IpMemoryStoreClient(Ljava/lang/String;Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;Landroid/net/IIpMemoryStore;)V
    .locals 1

    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda3;

    invoke-direct {v0, p3, p1, p2}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda3;-><init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V

    invoke-direct {p0, v0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method public synthetic lambda$storeBlob$4$IpMemoryStoreClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/OnStatusListener;Landroid/net/IIpMemoryStore;)V
    .locals 8

    new-instance v7, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda5;

    move-object v0, v7

    move-object v1, p6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda5;-><init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/OnStatusListener;)V

    invoke-direct {p0, v7}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method public synthetic lambda$storeNetworkAttributes$1$IpMemoryStoreClient(Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnStatusListener;Landroid/net/IIpMemoryStore;)V
    .locals 1

    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda2;

    invoke-direct {v0, p4, p1, p2, p3}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda2;-><init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnStatusListener;)V

    invoke-direct {p0, v0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method public retrieveBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V
    .locals 7

    :try_start_0
    new-instance v6, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda23;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda23;-><init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V

    invoke-virtual {p0, v6}, Landroid/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda9;

    invoke-direct {v1, p4}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda9;-><init>(Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V

    const-string v2, "Error retrieving blob"

    invoke-direct {p0, v2, v1}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    :goto_0
    return-void
.end method

.method public retrieveNetworkAttributes(Ljava/lang/String;Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda20;-><init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V

    invoke-virtual {p0, v0}, Landroid/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda13;

    invoke-direct {v1, p2}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda13;-><init>(Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V

    const-string v2, "Error retrieving network attributes"

    invoke-direct {p0, v2, v1}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    :goto_0
    return-void
.end method

.method protected abstract runWhenServiceReady(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/IIpMemoryStore;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation
.end method

.method public storeBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/OnStatusListener;)V
    .locals 8

    :try_start_0
    new-instance v7, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda22;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda22;-><init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/OnStatusListener;)V

    invoke-virtual {p0, v7}, Landroid/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-nez p5, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda15;

    invoke-direct {v1, p5}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda15;-><init>(Landroid/net/ipmemorystore/OnStatusListener;)V

    const-string v2, "Error storing blob"

    invoke-direct {p0, v2, v1}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    :goto_0
    return-void
.end method

.method public storeNetworkAttributes(Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnStatusListener;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda19;-><init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnStatusListener;)V

    invoke-virtual {p0, v0}, Landroid/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-nez p3, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda16;

    invoke-direct {v1, p3}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda16;-><init>(Landroid/net/ipmemorystore/OnStatusListener;)V

    const-string v2, "Error storing network attributes"

    invoke-direct {p0, v2, v1}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    :goto_0
    return-void
.end method
