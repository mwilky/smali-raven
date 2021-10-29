.class Lcom/android/server/broadcastradio/hal2/TunerSession;
.super Landroid/hardware/radio/ITuner$Stub;
.source "TunerSession.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BcRadio2Srv.session"

.field private static final kAudioDeviceName:Ljava/lang/String; = "Radio tuner source"


# instance fields
.field final mCallback:Landroid/hardware/radio/ITunerCallback;

.field private mDummyConfig:Landroid/hardware/radio/RadioManager$BandConfig;

.field private final mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

.field private mIsClosed:Z

.field private mIsMuted:Z

.field private final mLock:Ljava/lang/Object;

.field private final mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;

.field private mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;


# direct methods
.method constructor <init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Landroid/hardware/broadcastradio/V2_0/ITunerSession;Landroid/hardware/radio/ITunerCallback;)V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/radio/ITuner$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsClosed:Z

    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsMuted:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mDummyConfig:Landroid/hardware/radio/RadioManager$BandConfig;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/server/broadcastradio/hal2/RadioModule;

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p3

    check-cast v0, Landroid/hardware/radio/ITunerCallback;

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mCallback:Landroid/hardware/radio/ITunerCallback;

    return-void
.end method

.method private checkNotClosedLocked()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsClosed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tuner is closed, no further operations are allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private dispatchClientUpdateChunks(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/radio/ProgramList$Chunk;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/ProgramList$Chunk;

    :try_start_0
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v2, v1}, Landroid/hardware/radio/ITunerCallback;->onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "BcRadio2Srv.session"

    const-string/jumbo v4, "mCallback.onProgramListUpdated() failed: "

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$isConfigFlagSet$2(Landroid/util/MutableInt;Landroid/util/MutableBoolean;IZ)V
    .locals 0

    iput p2, p0, Landroid/util/MutableInt;->value:I

    iput-boolean p3, p1, Landroid/util/MutableBoolean;->value:Z

    return-void
.end method

.method static synthetic lambda$setConfiguration$0(Landroid/hardware/radio/RadioManager$BandConfig;Landroid/hardware/radio/ITunerCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p1, p0}, Landroid/hardware/radio/ITunerCallback;->onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V

    return-void
.end method

.method static synthetic lambda$startBackgroundScan$1(Landroid/hardware/radio/ITunerCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p0}, Landroid/hardware/radio/ITunerCallback;->onBackgroundScanComplete()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/broadcastradio/V2_0/ITunerSession;)V

    invoke-static {v2}, Lcom/android/server/broadcastradio/hal2/Utils;->maybeRethrow(Lcom/android/server/broadcastradio/hal2/Utils$VoidFuncThrowingRemoteException;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public cancelAnnouncement()V
    .locals 2

    const-string v0, "BcRadio2Srv.session"

    const-string v1, "Announcements control doesn\'t involve cancelling at the HAL level in 2.x"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->close(Ljava/lang/Integer;)V

    return-void
.end method

.method public close(Ljava/lang/Integer;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsClosed:Z

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/hardware/radio/ITunerCallback;->onError(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "BcRadio2Srv.session"

    const-string/jumbo v3, "mCallback.onError() failed: "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsClosed:Z

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-virtual {v1, p0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->onTunerSessionClosed(Lcom/android/server/broadcastradio/hal2/TunerSession;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getConfiguration()Landroid/hardware/radio/RadioManager$BandConfig;
    .locals 2

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mDummyConfig:Landroid/hardware/radio/RadioManager$BandConfig;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getImage(I)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-virtual {v0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->getImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getParameters(Ljava/util/List;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    new-instance v1, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/broadcastradio/hal2/TunerSession;Ljava/util/List;)V

    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Utils;->maybeRethrow(Lcom/android/server/broadcastradio/hal2/Utils$FuncThrowingRemoteException;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Convert;->vendorInfoFromHal(Ljava/util/List;)Ljava/util/Map;

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

.method getProgramListFilter()Landroid/hardware/radio/ProgramList$Filter;
    .locals 2

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->getFilter()Landroid/hardware/radio/ProgramList$Filter;

    move-result-object v1

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsClosed:Z

    return v0
.end method

.method public isConfigFlagSet(I)Z
    .locals 7

    const-string v0, "BcRadio2Srv.session"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isConfigFlagSet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/hardware/broadcastradio/V2_0/ConfigFlag;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    new-instance v1, Landroid/util/MutableInt;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/MutableInt;-><init>(I)V

    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    new-instance v4, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v2}, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda0;-><init>(Landroid/util/MutableInt;Landroid/util/MutableBoolean;)V

    invoke-interface {v3, p1, v4}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->isConfigFlagSet(ILandroid/hardware/broadcastradio/V2_0/ITunerSession$isConfigFlagSetCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    const-string v3, "isConfigFlagSet"

    iget v4, v1, Landroid/util/MutableInt;->value:I

    invoke-static {v3, v4}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z

    monitor-exit v0

    return v3

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to check flag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/hardware/broadcastradio/V2_0/ConfigFlag;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public isConfigFlagSupported(I)Z
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal2/TunerSession;->isConfigFlagSet(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1

    :catch_1
    move-exception v1

    return v0
.end method

.method public isMuted()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsMuted:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$getParameters$4$TunerSession(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->listToArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->getParameters(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$setParameters$3$TunerSession(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->vendorInfoToHal(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->setParameters(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method onMergedProgramListUpdateFromHal(Landroid/hardware/radio/ProgramList$Chunk;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    if-nez v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    invoke-virtual {v2, p1}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->filterAndApplyChunk(Landroid/hardware/radio/ProgramList$Chunk;)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->dispatchClientUpdateChunks(Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public scan(ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1, v2, p2}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->scan(ZZ)I

    move-result v1

    const-string/jumbo v2, "step"

    invoke-static {v2, v1}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setConfigFlag(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "BcRadio2Srv.session"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setConfigFlag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/hardware/broadcastradio/V2_0/ConfigFlag;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-interface {v1, p1, p2}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->setConfigFlag(IZ)I

    move-result v1

    const-string/jumbo v2, "setConfigFlag"

    invoke-static {v2, v1}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroid/hardware/radio/RadioManager$BandConfig;

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mDummyConfig:Landroid/hardware/radio/RadioManager$BandConfig;

    const-string v1, "BcRadio2Srv.session"

    const-string v2, "Ignoring setConfiguration - not applicable for broadcastradio HAL 2.x"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v2, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/radio/RadioManager$BandConfig;)V

    invoke-virtual {v1, v2}, Lcom/android/server/broadcastradio/hal2/RadioModule;->fanoutAidlCallback(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMuted(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsMuted:Z

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsMuted:Z

    const-string v1, "BcRadio2Srv.session"

    const-string v2, "Mute via RadioService is not implemented - please handle it via app"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setParameters(Ljava/util/Map;)Ljava/util/Map;
    .locals 2

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    new-instance v1, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/broadcastradio/hal2/TunerSession;Ljava/util/Map;)V

    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Utils;->maybeRethrow(Lcom/android/server/broadcastradio/hal2/Utils$FuncThrowingRemoteException;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Convert;->vendorInfoFromHal(Ljava/util/List;)Ljava/util/Map;

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

.method public startBackgroundScan()Z
    .locals 2

    const-string v0, "BcRadio2Srv.session"

    const-string v1, "Explicit background scan trigger is not supported with HAL 2.x"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;

    sget-object v1, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->fanoutAidlCallback(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public startProgramListUpdates(Landroid/hardware/radio/ProgramList$Filter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Landroid/hardware/radio/ProgramList$Filter;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/hardware/radio/ProgramList$Filter;-><init>(Ljava/util/Set;Ljava/util/Set;ZZ)V

    move-object p1, v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    new-instance v1, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    invoke-direct {v1, p1}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;-><init>(Landroid/hardware/radio/ProgramList$Filter;)V

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-virtual {v0, p0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->onTunerSessionProgramListFilterChanged(Lcom/android/server/broadcastradio/hal2/TunerSession;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public step(ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1, v2}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->step(Z)I

    move-result v1

    const-string/jumbo v2, "step"

    invoke-static {v2, v1}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopProgramListUpdates()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-virtual {v0, p0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->onTunerSessionProgramListFilterChanged(Lcom/android/server/broadcastradio/hal2/TunerSession;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public tune(Landroid/hardware/radio/ProgramSelector;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->programSelectorToHal(Landroid/hardware/radio/ProgramSelector;)Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->tune(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)I

    move-result v1

    const-string/jumbo v2, "tune"

    invoke-static {v2, v1}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateProgramInfoFromHalCache(Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    if-nez v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->filterAndUpdateFrom(Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;Z)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->dispatchClientUpdateChunks(Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
