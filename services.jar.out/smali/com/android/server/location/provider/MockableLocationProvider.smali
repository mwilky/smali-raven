.class public Lcom/android/server/location/provider/MockableLocationProvider;
.super Lcom/android/server/location/provider/AbstractLocationProvider;
.source "MockableLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;
    }
.end annotation


# instance fields
.field private mMockProvider:Lcom/android/server/location/provider/MockLocationProvider;

.field final mOwnerLock:Ljava/lang/Object;

.field private mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

.field private mRealProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

.field private mRequest:Landroid/location/provider/ProviderRequest;

.field private mStarted:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/android/server/location/provider/AbstractLocationProvider;-><init>(Ljava/util/concurrent/Executor;Landroid/location/util/identity/CallerIdentity;Landroid/location/provider/ProviderProperties;Ljava/util/Set;)V

    iput-object p1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    sget-object v0, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    iput-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/provider/MockableLocationProvider;)Lcom/android/server/location/provider/AbstractLocationProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    return-object v0
.end method

.method static synthetic lambda$setProviderLocked$0(Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .locals 0

    return-object p0
.end method

.method private setProviderLocked(Lcom/android/server/location/provider/AbstractLocationProvider;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    iput-object p1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/server/location/provider/LocationProviderController;->setListener(Lcom/android/server/location/provider/AbstractLocationProvider$Listener;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    invoke-virtual {v0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/location/provider/LocationProviderController;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v1

    sget-object v2, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    invoke-interface {v1, v2}, Lcom/android/server/location/provider/LocationProviderController;->setRequest(Landroid/location/provider/ProviderRequest;)V

    invoke-virtual {v0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/location/provider/LocationProviderController;->stop()V

    :cond_1
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v1

    new-instance v2, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;

    iget-object v3, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-direct {v2, p0, v3}, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;-><init>(Lcom/android/server/location/provider/MockableLocationProvider;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    invoke-interface {v1, v2}, Lcom/android/server/location/provider/LocationProviderController;->setListener(Lcom/android/server/location/provider/AbstractLocationProvider$Listener;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mStarted:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {v2}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/location/provider/LocationProviderController;->isStarted()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {v2}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/location/provider/LocationProviderController;->start()V

    :cond_2
    iget-object v2, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {v2}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    invoke-interface {v2, v3}, Lcom/android/server/location/provider/LocationProviderController;->setRequest(Landroid/location/provider/ProviderRequest;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {v2}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/location/provider/LocationProviderController;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {v2}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v2

    sget-object v3, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    invoke-interface {v2, v3}, Lcom/android/server/location/provider/LocationProviderController;->setRequest(Landroid/location/provider/ProviderRequest;)V

    iget-object v2, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {v2}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/location/provider/LocationProviderController;->stop()V

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->EMPTY_STATE:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    :cond_5
    :goto_0
    new-instance v2, Lcom/android/server/location/provider/MockableLocationProvider$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/server/location/provider/MockableLocationProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/provider/AbstractLocationProvider$State;)V

    invoke-virtual {p0, v2}, Lcom/android/server/location/provider/MockableLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {p0}, Lcom/android/server/location/provider/MockableLocationProvider;->getState()Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowed="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->allowed:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "identity="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extra attribution tags="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v0, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "properties="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/location/provider/AbstractLocationProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getCurrentRequest()Landroid/location/provider/ProviderRequest;
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProvider()Lcom/android/server/location/provider/AbstractLocationProvider;
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isMock()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mMockProvider:Lcom/android/server/location/provider/MockLocationProvider;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    if-ne v2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/server/location/provider/LocationProviderController;->sendExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V

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

.method protected onFlush(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/server/location/provider/LocationProviderController;->flush(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

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

.method protected onSetRequest(Landroid/location/provider/ProviderRequest;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    if-ne p1, v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/server/location/provider/LocationProviderController;->setRequest(Landroid/location/provider/ProviderRequest;)V

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

.method protected onStart()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mStarted:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iput-boolean v2, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mStarted:Z

    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/location/provider/LocationProviderController;->start()V

    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    sget-object v2, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v1, v2}, Landroid/location/provider/ProviderRequest;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {v1}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    invoke-interface {v1, v2}, Lcom/android/server/location/provider/LocationProviderController;->setRequest(Landroid/location/provider/ProviderRequest;)V

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

.method protected onStop()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mStarted:Z

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mStarted:Z

    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    sget-object v2, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v1, v2}, Landroid/location/provider/ProviderRequest;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {v1}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v1

    sget-object v2, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    invoke-interface {v1, v2}, Lcom/android/server/location/provider/LocationProviderController;->setRequest(Landroid/location/provider/ProviderRequest;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {v1}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/location/provider/LocationProviderController;->stop()V

    :cond_1
    sget-object v1, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    iput-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMockProvider(Lcom/android/server/location/provider/MockLocationProvider;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mMockProvider:Lcom/android/server/location/provider/MockLocationProvider;

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mMockProvider:Lcom/android/server/location/provider/MockLocationProvider;

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/location/provider/MockableLocationProvider;->setProviderLocked(Lcom/android/server/location/provider/AbstractLocationProvider;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRealProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-direct {p0, v1}, Lcom/android/server/location/provider/MockableLocationProvider;->setProviderLocked(Lcom/android/server/location/provider/AbstractLocationProvider;)V

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

.method public setMockProviderAllowed(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/provider/MockableLocationProvider;->isMock()Z

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mMockProvider:Lcom/android/server/location/provider/MockLocationProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/location/provider/MockLocationProvider;->setProviderAllowed(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMockProviderLocation(Landroid/location/Location;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/provider/MockableLocationProvider;->isMock()Z

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mMockProvider:Lcom/android/server/location/provider/MockLocationProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/location/provider/MockLocationProvider;->setProviderLocation(Landroid/location/Location;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setRealProvider(Lcom/android/server/location/provider/AbstractLocationProvider;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRealProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRealProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {p0}, Lcom/android/server/location/provider/MockableLocationProvider;->isMock()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRealProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-direct {p0, v1}, Lcom/android/server/location/provider/MockableLocationProvider;->setProviderLocked(Lcom/android/server/location/provider/AbstractLocationProvider;)V

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
