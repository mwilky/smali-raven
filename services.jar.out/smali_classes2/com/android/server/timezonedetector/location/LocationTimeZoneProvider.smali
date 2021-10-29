.class abstract Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;
.super Ljava/lang/Object;
.source "LocationTimeZoneProvider.java"

# interfaces
.implements Lcom/android/server/timezonedetector/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;,
        Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderMetricsLogger;,
        Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderListener;
    }
.end annotation


# instance fields
.field final mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/timezonedetector/ReferenceWithHistory<",
            "Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;",
            ">;"
        }
    .end annotation
.end field

.field private final mInitializationTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

.field mProviderListener:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderListener;

.field private final mProviderMetricsLogger:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderMetricsLogger;

.field final mProviderName:Ljava/lang/String;

.field private final mRecordedStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;",
            ">;"
        }
    .end annotation
.end field

.field final mSharedLock:Ljava/lang/Object;

.field private mStateChangeRecording:Z

.field final mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

.field private final mTimeZoneProviderEventPreProcessor:Lcom/android/server/timezonedetector/location/TimeZoneProviderEventPreProcessor;


# direct methods
.method public static synthetic $r8$lambda$qbR8AtKpHfNrxEQ1exygjQponDA(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->handleInitializationTimeout()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderMetricsLogger;Lcom/android/server/timezonedetector/location/ThreadingDomain;Ljava/lang/String;Lcom/android/server/timezonedetector/location/TimeZoneProviderEventPreProcessor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mRecordedStates:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lcom/android/server/timezonedetector/location/ThreadingDomain;

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderMetricsLogger;

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderMetricsLogger:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderMetricsLogger;

    invoke-virtual {p2}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->createSingleRunnableQueue()Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mInitializationTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    invoke-virtual {p2}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderName:Ljava/lang/String;

    nop

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p4

    check-cast v0, Lcom/android/server/timezonedetector/location/TimeZoneProviderEventPreProcessor;

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mTimeZoneProviderEventPreProcessor:Lcom/android/server/timezonedetector/location/TimeZoneProviderEventPreProcessor;

    return-void
.end method

.method private assertCurrentState(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    iget v1, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Required stateEnum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private assertIsStarted()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Required a started state, but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private handleInitializationTimeout()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    iget v2, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x3

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->currentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    const-string v6, "initialization timeout"

    invoke-virtual {v1, v2, v4, v5, v6}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->newState(ILcom/android/server/timezonedetector/location/TimeZoneProviderEvent;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->setCurrentState(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;Z)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleInitializationTimeout: Initialization timeout triggered when in an unexpected state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;)V

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


# virtual methods
.method final destroy()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->isTerminated()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x6

    const-string v3, "destroy() called"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->newState(ILcom/android/server/timezonedetector/location/TimeZoneProviderEvent;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->setCurrentState(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;Z)V

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->onDestroy()V

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

.method final getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    .locals 2

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getInitializationTimeoutDelay()Ljava/time/Duration;
    .locals 3

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mInitializationTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->getQueuedDelayMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderName:Ljava/lang/String;

    return-object v0
.end method

.method final getRecordedStates()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mRecordedStates:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method handleTestCommand(Lcom/android/server/timezonedetector/location/TestCommand;Landroid/os/RemoteCallback;)V
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "ERROR"

    const-string v2, "Not implemented"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method final handleTimeZoneProviderEvent(Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mTimeZoneProviderEventPreProcessor:Lcom/android/server/timezonedetector/location/TimeZoneProviderEventPreProcessor;

    invoke-interface {v0, p1}, Lcom/android/server/timezonedetector/location/TimeZoneProviderEventPreProcessor;->preProcess(Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;)Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTimeZoneProviderEvent: mProviderName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", timeZoneProviderEvent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;->getType()I

    move-result v2

    iget v3, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v3, :pswitch_data_0

    new-instance v3, Ljava/lang/IllegalStateException;

    goto/16 :goto_3

    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleTimeZoneProviderEvent: Event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " received for provider="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " when in terminated state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :pswitch_1
    packed-switch v2, :pswitch_data_1

    new-instance v3, Ljava/lang/IllegalStateException;

    goto :goto_0

    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleTimeZoneProviderEvent: event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " received for stopped provider="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :pswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleTimeZoneProviderEvent: Failure event="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " received for stopped provider="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", entering permanently failed state"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v6, v6, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->newState(ILcom/android/server/timezonedetector/location/TimeZoneProviderEvent;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v4

    invoke-virtual {p0, v4, v5}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->setCurrentState(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;Z)V

    iget-object v5, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mInitializationTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    invoke-virtual {v5}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->hasQueued()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mInitializationTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    invoke-virtual {v5}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->cancel()V

    :cond_0
    monitor-exit v0

    return-void

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown eventType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_4
    packed-switch v2, :pswitch_data_2

    new-instance v3, Ljava/lang/IllegalStateException;

    goto :goto_2

    :pswitch_5
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    :goto_1
    iget-object v4, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->currentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    const-string v6, "handleTimeZoneProviderEvent() when started"

    invoke-virtual {v1, v3, p1, v4, v6}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->newState(ILcom/android/server/timezonedetector/location/TimeZoneProviderEvent;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v4

    invoke-virtual {p0, v4, v5}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->setCurrentState(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;Z)V

    iget-object v5, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mInitializationTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    invoke-virtual {v5}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->hasQueued()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mInitializationTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    invoke-virtual {v5}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->cancel()V

    :cond_2
    monitor-exit v0

    return-void

    :pswitch_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleTimeZoneProviderEvent: Failure event="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " received for provider="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", entering permanently failed state"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v6, v6, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->newState(ILcom/android/server/timezonedetector/location/TimeZoneProviderEvent;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v4

    invoke-virtual {p0, v4, v5}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->setCurrentState(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;Z)V

    iget-object v5, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mInitializationTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    invoke-virtual {v5}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->hasQueued()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mInitializationTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    invoke-virtual {v5}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->cancel()V

    :cond_3
    monitor-exit v0

    return-void

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown eventType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown providerType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method final initialize(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderListener;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderListener:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderListener;

    if-nez v1, :cond_0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderListener;

    iput-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderListener:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderListener;

    invoke-static {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->createStartingState(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;)Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v1

    const/4 v2, 0x4

    const-string v3, "initialize() called"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->newState(ILcom/android/server/timezonedetector/location/TimeZoneProviderEvent;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v2

    move-object v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->setCurrentState(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->onInitialize()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "Unable to initialize the provider"

    invoke-static {v3, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, 0x5

    const-string v5, "Provider failed to initialize"

    invoke-virtual {v1, v3, v4, v4, v5}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->newState(ILcom/android/server/timezonedetector/location/TimeZoneProviderEvent;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v3

    move-object v1, v3

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->setCurrentState(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;Z)V

    :goto_0
    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "initialize already called"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method isInitializationTimeoutSet()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mInitializationTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->hasQueued()Z

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

.method abstract onDestroy()V
.end method

.method abstract onInitialize()V
.end method

.method onSetCurrentState(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;)V
    .locals 0

    return-void
.end method

.method abstract onStartUpdates(Ljava/time/Duration;)V
.end method

.method abstract onStopUpdates()V
.end method

.method final setCurrentState(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v2, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->onSetCurrentState(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;)V

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderMetricsLogger:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderMetricsLogger;

    iget v3, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    invoke-interface {v2, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderMetricsLogger;->onProviderStateChanged(I)V

    iget-boolean v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mStateChangeRecording:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mRecordedStates:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderListener:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderListener;

    invoke-interface {v2, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderListener;->onProviderStateChange(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;)V

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

.method final setStateChangeRecordingEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mStateChangeRecording:Z

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mRecordedStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mRecordedStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final startUpdates(Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/time/Duration;Ljava/time/Duration;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x4

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->assertCurrentState(I)V

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "startUpdates() called"

    invoke-virtual {v1, v2, v3, p1, v4}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->newState(ILcom/android/server/timezonedetector/location/TimeZoneProviderEvent;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->setCurrentState(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;Z)V

    invoke-virtual {p2, p3}, Ljava/time/Duration;->plus(Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mInitializationTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    new-instance v5, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;)V

    invoke-virtual {v3}, Ljava/time/Duration;->toMillis()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->runDelayed(Ljava/lang/Runnable;J)V

    invoke-virtual {p0, p2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->onStartUpdates(Ljava/time/Duration;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final stopUpdates()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->assertIsStarted()V

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    const/4 v2, 0x4

    const-string v3, "stopUpdates() called"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->newState(ILcom/android/server/timezonedetector/location/TimeZoneProviderEvent;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->setCurrentState(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;Z)V

    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mInitializationTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    invoke-virtual {v3}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->hasQueued()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mInitializationTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    invoke-virtual {v3}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->onStopUpdates()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
