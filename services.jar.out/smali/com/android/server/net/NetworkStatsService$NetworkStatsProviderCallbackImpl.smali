.class Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;
.super Landroid/net/netstats/provider/INetworkStatsProviderCallback$Stub;
.source "NetworkStatsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkStatsProviderCallbackImpl"
.end annotation


# instance fields
.field final mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field private final mIfaceStats:Landroid/net/NetworkStats;

.field final mProvider:Landroid/net/netstats/provider/INetworkStatsProvider;

.field private final mProviderStatsLock:Ljava/lang/Object;

.field private final mSemaphore:Ljava/util/concurrent/Semaphore;

.field final mStatsProviderCbList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;",
            ">;"
        }
    .end annotation
.end field

.field final mTag:Ljava/lang/String;

.field private final mUidStats:Landroid/net/NetworkStats;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/net/netstats/provider/INetworkStatsProvider;Ljava/util/concurrent/Semaphore;Landroid/net/INetworkManagementEventObserver;Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/netstats/provider/INetworkStatsProvider;",
            "Ljava/util/concurrent/Semaphore;",
            "Landroid/net/INetworkManagementEventObserver;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/net/netstats/provider/INetworkStatsProviderCallback$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mProviderStatsLock:Ljava/lang/Object;

    new-instance v0, Landroid/net/NetworkStats;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mIfaceStats:Landroid/net/NetworkStats;

    new-instance v0, Landroid/net/NetworkStats;

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mUidStats:Landroid/net/NetworkStats;

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mTag:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mProvider:Landroid/net/netstats/provider/INetworkStatsProvider;

    invoke-interface {p2}, Landroid/net/netstats/provider/INetworkStatsProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iput-object p3, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mSemaphore:Ljava/util/concurrent/Semaphore;

    iput-object p4, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    iput-object p5, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mStatsProviderCbList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": binderDied"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkStats"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mStatsProviderCbList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCachedStats(I)Landroid/net/NetworkStats;
    .locals 4

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mProviderStatsLock:Ljava/lang/Object;

    monitor-enter v0

    packed-switch p1, :pswitch_data_0

    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mUidStats:Landroid/net/NetworkStats;

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mIfaceStats:Landroid/net/NetworkStats;

    nop

    :goto_0
    invoke-virtual {v1}, Landroid/net/NetworkStats;->clone()Landroid/net/NetworkStats;

    move-result-object v2

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    goto :goto_2

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public notifyAlertReached()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    const-string v1, "globalAlert"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/net/INetworkManagementEventObserver;->limitReached(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notifyStatsUpdated(ILandroid/net/NetworkStats;Landroid/net/NetworkStats;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mProviderStatsLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mIfaceStats:Landroid/net/NetworkStats;

    invoke-virtual {v1, p2}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mUidStats:Landroid/net/NetworkStats;

    invoke-virtual {v1, p3}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public notifyWarningOrLimitReached()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": notifyWarningOrLimitReached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkStats"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerInternal;->onStatsProviderWarningOrLimitReached(Ljava/lang/String;)V

    return-void
.end method

.method public unregister()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": unregister"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkStats"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mStatsProviderCbList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
