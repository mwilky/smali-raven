.class public Lcom/android/server/audio/AudioSystemAdapter;
.super Ljava/lang/Object;
.source "AudioSystemAdapter.java"

# interfaces
.implements Landroid/media/AudioSystem$RoutingUpdateCallback;


# static fields
.field private static final DEBUG_CACHE:Z = false

.field private static final ENABLE_GETDEVICES_STATS:Z = false

.field private static final METHOD_GETDEVICESFORATTRIBUTES:I = 0x1

.field private static final METHOD_GETDEVICESFORSTREAM:I = 0x0

.field private static final NB_MEASUREMENTS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AudioSystemAdapter"

.field private static final USE_CACHE_FOR_GETDEVICES:Z = true

.field private static sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;


# instance fields
.field private mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/media/AudioAttributes;",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDevicesForStreamCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMethodCacheHit:[I

.field private mMethodCallCounter:[I

.field private mMethodNames:[Ljava/lang/String;

.field private mMethodTimeNs:[J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "getDevicesForStream"

    const-string v1, "getDevicesForAttributes"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mMethodNames:[Ljava/lang/String;

    return-void
.end method

.method private static attrDeviceToDebugString(Landroid/media/AudioAttributes;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioAttributes;",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " attrUsage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " dev=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static final declared-synchronized getDefaultAdapter()Lcom/android/server/audio/AudioSystemAdapter;
    .locals 4

    const-class v0, Lcom/android/server/audio/AudioSystemAdapter;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/audio/AudioSystemAdapter;

    invoke-direct {v1}, Lcom/android/server/audio/AudioSystemAdapter;-><init>()V

    sput-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-static {v1}, Landroid/media/AudioSystem;->setRoutingCallback(Landroid/media/AudioSystem$RoutingUpdateCallback;)V

    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v2, v1, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForStreamCache:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v2, v1, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/android/server/audio/AudioSystemAdapter;->mMethodCacheHit:[I

    :cond_0
    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getDevicesForAttributesImpl(Landroid/media/AudioAttributes;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioAttributes;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/media/AudioSystem;->getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/ArrayList;

    move-result-object v2

    move-object v1, v2

    iget-object v2, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioSystemAdapter;->mMethodCacheHit:[I

    const/4 v3, 0x1

    aget v4, v2, v3

    add-int/2addr v4, v3

    aput v4, v2, v3

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getDevicesForStreamImpl(I)I
    .locals 5

    iget-object v0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForStreamCache:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForStreamCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v1, v2

    iget-object v2, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForStreamCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    monitor-exit v0

    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioSystemAdapter;->mMethodCacheHit:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private invalidateRoutingCache()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForStreamCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForStreamCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method private static streamDeviceToDebugString(II)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dev=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearDevicesRoleForCapturePreset(II)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    invoke-static {p1, p2}, Landroid/media/AudioSystem;->clearDevicesRoleForCapturePreset(II)I

    move-result v0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method public getDeviceConnectionState(ILjava/lang/String;)I
    .locals 1

    invoke-static {p1, p2}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioAttributes;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioSystemAdapter;->getDevicesForAttributesImpl(Landroid/media/AudioAttributes;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getDevicesForStream(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioSystemAdapter;->getDevicesForStreamImpl(I)I

    move-result v0

    return v0
.end method

.method public getForceUse(I)I
    .locals 1

    invoke-static {p1}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v0

    return v0
.end method

.method public handleDeviceConfigChange(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    invoke-static {p1, p2, p3, p4}, Landroid/media/AudioSystem;->handleDeviceConfigChange(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isMicrophoneMuted()Z
    .locals 1

    invoke-static {}, Landroid/media/AudioSystem;->isMicrophoneMuted()Z

    move-result v0

    return v0
.end method

.method public isStreamActive(II)Z
    .locals 1

    invoke-static {p1, p2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    return v0
.end method

.method public isStreamActiveRemotely(II)Z
    .locals 1

    invoke-static {p1, p2}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v0

    return v0
.end method

.method public muteMicrophone(Z)I
    .locals 1

    invoke-static {p1}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    move-result v0

    return v0
.end method

.method public onRoutingUpdated()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    return-void
.end method

.method public registerPolicyMixes(Ljava/util/ArrayList;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/audiopolicy/AudioMix;",
            ">;Z)I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    invoke-static {p1, p2}, Landroid/media/AudioSystem;->registerPolicyMixes(Ljava/util/ArrayList;Z)I

    move-result v0

    return v0
.end method

.method public removeDevicesRoleForCapturePreset(IILjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->removeDevicesRoleForCapturePreset(IILjava/util/List;)I

    move-result v0

    return v0
.end method

.method public removeDevicesRoleForStrategy(II)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    invoke-static {p1, p2}, Landroid/media/AudioSystem;->removeDevicesRoleForStrategy(II)I

    move-result v0

    return v0
.end method

.method public removeUidDeviceAffinities(I)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    invoke-static {p1}, Landroid/media/AudioSystem;->removeUidDeviceAffinities(I)I

    move-result v0

    return v0
.end method

.method public removeUserIdDeviceAffinities(I)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    invoke-static {p1}, Landroid/media/AudioSystem;->removeUserIdDeviceAffinities(I)I

    move-result v0

    return v0
.end method

.method public setAllowedCapturePolicy(II)I
    .locals 1

    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setAllowedCapturePolicy(II)I

    move-result v0

    return v0
.end method

.method public setCurrentImeUid(I)I
    .locals 1

    invoke-static {p1}, Landroid/media/AudioSystem;->setCurrentImeUid(I)I

    move-result v0

    return v0
.end method

.method public setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    invoke-static {p1, p2, p3, p4, p5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setDevicesRoleForCapturePreset(IILjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->setDevicesRoleForCapturePreset(IILjava/util/List;)I

    move-result v0

    return v0
.end method

.method public setDevicesRoleForStrategy(IILjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->setDevicesRoleForStrategy(IILjava/util/List;)I

    move-result v0

    return v0
.end method

.method public setForceUse(II)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setForceUse(II)I

    move-result v0

    return v0
.end method

.method public setHotwordDetectionServiceUid(I)I
    .locals 1

    invoke-static {p1}, Landroid/media/AudioSystem;->setHotwordDetectionServiceUid(I)I

    move-result v0

    return v0
.end method

.method public setParameters(Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setPhoneState(II)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setPhoneState(II)I

    move-result v0

    return v0
.end method

.method public setUidDeviceAffinities(I[I[Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->setUidDeviceAffinities(I[I[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setUserIdDeviceAffinities(I[I[Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->setUserIdDeviceAffinities(I[I[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
