.class public abstract Lcom/android/server/location/listeners/ListenerMultiplexer;
.super Ljava/lang/Object;
.source "ListenerMultiplexer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceLock;,
        Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;,
        Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TKey:",
        "Ljava/lang/Object;",
        "T",
        "Listener:Ljava/lang/Object;",
        "TRegistration:",
        "Lcom/android/server/location/listeners/ListenerRegistration<",
        "TT",
        "Listener;",
        ">;TMergedRegistration:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mActiveRegistrationsCount:I

.field private mMerged:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTMergedRegistration;"
        }
    .end annotation
.end field

.field private final mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/location/listeners/ListenerMultiplexer<",
            "TTKey;TT",
            "Listener;",
            "TTRegistration;TTMergedRegistration;>.ReentrancyGuard;"
        }
    .end annotation
.end field

.field private final mRegistrations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "TTKey;TTRegistration;>;"
        }
    .end annotation
.end field

.field private mServiceRegistered:Z

.field private final mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/location/listeners/ListenerMultiplexer<",
            "TTKey;TT",
            "Listener;",
            "TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-direct {v0, p0}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;-><init>(Lcom/android/server/location/listeners/ListenerMultiplexer;)V

    iput-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    new-instance v0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-direct {v0, p0}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;-><init>(Lcom/android/server/location/listeners/ListenerMultiplexer;)V

    iput-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mActiveRegistrationsCount:I

    iput-boolean v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/listeners/ListenerMultiplexer;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/location/listeners/ListenerMultiplexer;)Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    return-object v0
.end method

.method private onRegistrationActiveChanged(Lcom/android/server/location/listeners/ListenerRegistration;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRegistration;)V"
        }
    .end annotation

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/location/listeners/ListenerRegistration;->isRegistered()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->isActive(Lcom/android/server/location/listeners/ListenerRegistration;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/server/location/listeners/ListenerRegistration;->setActive(Z)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v0, :cond_3

    iget v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mActiveRegistrationsCount:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mActiveRegistrationsCount:I

    if-ne v3, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onActive()V

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/location/listeners/ListenerRegistration;->onActive()V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/location/listeners/ListenerRegistration;->onInactive()V

    iget v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mActiveRegistrationsCount:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mActiveRegistrationsCount:I

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onInactive()V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateService()V

    :cond_5
    return-void
.end method

.method private removeRegistration(IZ)Lcom/android/server/location/listeners/ListenerRegistration;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TTRegistration;"
        }
    .end annotation

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/listeners/ListenerRegistration;

    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v3}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->unregister(Lcom/android/server/location/listeners/ListenerRegistration;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerRegistration;->onUnregister()V

    if-eqz p2, :cond_1

    iget-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onUnregister()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    :cond_3
    return-object v1

    :catchall_0
    move-exception v4

    if-eqz v3, :cond_4

    :try_start_3
    invoke-virtual {v3}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v3

    if-eqz v2, :cond_5

    :try_start_5
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw v3
.end method

.method private unregister(Lcom/android/server/location/listeners/ListenerRegistration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRegistration;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/server/location/listeners/ListenerRegistration;->unregisterInternal()V

    invoke-direct {p0, p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationActiveChanged(Lcom/android/server/location/listeners/ListenerRegistration;)V

    return-void
.end method


# virtual methods
.method protected final deliverToListeners(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
            "TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/listeners/ListenerRegistration;

    invoke-virtual {v4}, Lcom/android/server/location/listeners/ListenerRegistration;->isActive()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, p1}, Lcom/android/server/location/listeners/ListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V

    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v2

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method protected final deliverToListeners(Ljava/util/function/Function;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "TTRegistration;",
            "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
            "TT",
            "Listener;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/listeners/ListenerRegistration;

    invoke-virtual {v4}, Lcom/android/server/location/listeners/ListenerRegistration;->isActive()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p1, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    if-eqz v5, :cond_0

    invoke-virtual {v4, v5}, Lcom/android/server/location/listeners/ListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V

    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v2

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    const-string/jumbo v1, "service: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->getServiceState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "listeners:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/listeners/ListenerRegistration;

    const-string v4, "  "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/android/server/location/listeners/ListenerRegistration;->isActive()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, " (inactive)"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getServiceState()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMerged:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "registered"

    return-object v0

    :cond_1
    const-string/jumbo v0, "unregistered"

    return-object v0
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method protected abstract isActive(Lcom/android/server/location/listeners/ListenerRegistration;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRegistration;)Z"
        }
    .end annotation
.end method

.method protected abstract mergeRegistrations(Ljava/util/Collection;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TTRegistration;>;)TTMergedRegistration;"
        }
    .end annotation
.end method

.method public newUpdateServiceLock()Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceLock;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/location/listeners/ListenerMultiplexer<",
            "TTKey;TT",
            "Listener;",
            "TTRegistration;TTMergedRegistration;>.UpdateService",
            "Lock;"
        }
    .end annotation

    new-instance v0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceLock;

    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceLock;-><init>(Lcom/android/server/location/listeners/ListenerMultiplexer;Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;)V

    return-object v0
.end method

.method protected onActive()V
    .locals 0

    return-void
.end method

.method protected onInactive()V
    .locals 0

    return-void
.end method

.method protected onRegister()V
    .locals 0

    return-void
.end method

.method protected onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;TTRegistration;)V"
        }
    .end annotation

    return-void
.end method

.method protected onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;TTRegistration;)V"
        }
    .end annotation

    return-void
.end method

.method protected onRegistrationReplaced(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;TTRegistration;TTRegistration;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    return-void
.end method

.method protected onUnregister()V
    .locals 0

    return-void
.end method

.method protected final putRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;TTRegistration;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p1, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->replaceRegistration(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    return-void
.end method

.method protected abstract registerWithService(Ljava/lang/Object;Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTMergedRegistration;",
            "Ljava/util/Collection<",
            "TTRegistration;>;)Z"
        }
    .end annotation
.end method

.method protected final removeRegistration(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->isReentrant()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(IZ)Lcom/android/server/location/listeners/ListenerRegistration;

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected final removeRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/android/server/location/listeners/ListenerRegistration<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/listeners/ListenerRegistration;

    if-eq v2, p2, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v3}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->isReentrant()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->unregister(Lcom/android/server/location/listeners/ListenerRegistration;)V

    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v3, p1, v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->markForRemoval(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(IZ)Lcom/android/server/location/listeners/ListenerRegistration;

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected final removeRegistrationIf(Ljava/util/function/Predicate;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "TTKey;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->isReentrant()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    iget-object v5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/location/listeners/ListenerRegistration;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_3
    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    :cond_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    return-void

    :catchall_0
    move-exception v3

    if-eqz v2, :cond_5

    :try_start_5
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    :try_start_6
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v2

    if-eqz v1, :cond_6

    :try_start_7
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v3

    :try_start_8
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw v2

    :catchall_4
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v1
.end method

.method protected final replaceRegistration(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;TTKey;TTRegistration;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->isReentrant()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    if-eq p1, p2, :cond_2

    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v2

    :goto_2
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    iget-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v4}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v7, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v7

    if-ltz v7, :cond_4

    if-eq p1, p2, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-direct {p0, v7, v2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(IZ)Lcom/android/server/location/listeners/ListenerRegistration;

    move-result-object v2

    move-object v6, v2

    :cond_4
    if-ne p1, p2, :cond_5

    if-ltz v7, :cond_5

    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v2, v7, p3}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegister()V

    :cond_6
    invoke-virtual {p3, p2}, Lcom/android/server/location/listeners/ListenerRegistration;->onRegister(Ljava/lang/Object;)V

    if-nez v6, :cond_7

    invoke-virtual {p0, p2, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    goto :goto_5

    :cond_7
    invoke-virtual {p0, p2, v6, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationReplaced(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;Lcom/android/server/location/listeners/ListenerRegistration;)V

    :goto_5
    invoke-direct {p0, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationActiveChanged(Lcom/android/server/location/listeners/ListenerRegistration;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_8

    :try_start_3
    invoke-virtual {v4}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_8
    if-eqz v1, :cond_9

    :try_start_4
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    :cond_9
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    return-void

    :catchall_0
    move-exception v2

    if-eqz v4, :cond_a

    :try_start_5
    invoke-virtual {v4}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v3

    :try_start_6
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v2

    if-eqz v1, :cond_b

    :try_start_7
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v3

    :try_start_8
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_7
    throw v2

    :catchall_4
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v1
.end method

.method protected reregisterWithService(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTMergedRegistration;TTMergedRegistration;",
            "Ljava/util/Collection<",
            "TTRegistration;>;)Z"
        }
    .end annotation

    invoke-virtual {p0, p2, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->registerWithService(Ljava/lang/Object;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected final resetService()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMerged:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->unregisterWithService()V

    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateService()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract unregisterWithService()V
.end method

.method protected final updateRegistration(Ljava/lang/Object;Ljava/util/function/Predicate;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/function/Predicate<",
            "TTRegistration;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-gez v3, :cond_2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_0
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    :cond_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    return v4

    :cond_2
    :try_start_5
    iget-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/listeners/ListenerRegistration;

    invoke-interface {p2, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, v4}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationActiveChanged(Lcom/android/server/location/listeners/ListenerRegistration;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_3
    const/4 v5, 0x1

    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_4
    if-eqz v1, :cond_5

    :try_start_7
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    :cond_5
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    return v5

    :catchall_0
    move-exception v3

    if-eqz v2, :cond_6

    :try_start_8
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_9
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_0
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v2

    if-eqz v1, :cond_7

    :try_start_a
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v3

    :try_start_b
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw v2

    :catchall_4
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v1
.end method

.method protected final updateRegistrations(Ljava/util/function/Predicate;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "TTRegistration;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    iget-object v5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/listeners/ListenerRegistration;

    invoke-interface {p1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0, v5}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationActiveChanged(Lcom/android/server/location/listeners/ListenerRegistration;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_2
    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    :cond_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    return-void

    :catchall_0
    move-exception v3

    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_6
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v2

    if-eqz v1, :cond_5

    :try_start_7
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v3

    :try_start_8
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw v2

    :catchall_4
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v1
.end method

.method protected final updateService()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->isBuffered()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->markUpdateServiceRequired()V

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/listeners/ListenerRegistration;

    invoke-virtual {v4}, Lcom/android/server/location/listeners/ListenerRegistration;->isActive()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    if-eqz v3, :cond_3

    iput-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMerged:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->unregisterWithService()V

    :cond_3
    monitor-exit v0

    return-void

    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->mergeRegistrations(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMerged:Ljava/lang/Object;

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_5
    iget-boolean v5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMerged:Ljava/lang/Object;

    invoke-virtual {p0, v5, v3, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->reregisterWithService(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v3, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->registerWithService(Ljava/lang/Object;Ljava/util/Collection;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    :goto_1
    iget-boolean v5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    if-eqz v5, :cond_7

    move-object v4, v3

    :cond_7
    iput-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMerged:Ljava/lang/Object;

    :cond_8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
