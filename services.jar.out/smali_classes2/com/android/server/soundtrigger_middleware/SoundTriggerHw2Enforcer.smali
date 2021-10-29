.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
.super Ljava/lang/Object;
.source "SoundTriggerHw2Enforcer.java"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "SoundTriggerHw2Enforcer"


# instance fields
.field mModelStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    invoke-static {}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->rebootHal()V

    return-void
.end method

.method private static handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroid/os/DeadObjectException;

    const-string v1, "SoundTriggerHw2Enforcer"

    if-eqz v0, :cond_0

    const-string v0, "HAL died"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(I)V

    throw v0

    :cond_0
    const-string v0, "Exception caught from HAL, rebooting HAL"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->rebootHal()V

    throw p0
.end method

.method private static rebootHal()V
    .locals 2

    const-string v0, "sys.audio.restart.hal"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getModelParameter(II)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->getModelParameter(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getModelState(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->getModelState(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getProperties()Landroid/hardware/soundtrigger/V2_3/Properties;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->getProperties()Landroid/hardware/soundtrigger/V2_3/Properties;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v0

    return v0
.end method

.method public loadPhraseSoundModel(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)I
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$1;)V

    invoke-interface {v0, p1, v1, p3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->loadPhraseSoundModel(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public loadSoundModel(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)I
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$1;)V

    invoke-interface {v0, p1, v1, p3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->loadSoundModel(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public queryParameter(II)Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->queryParameter(II)Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setModelParameter(III)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->setModelParameter(III)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startRecognition(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p3, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$1;)V

    invoke-interface {v0, p1, p2, v1, p4}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->startRecognition(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public stopAllRecognitions()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->stopAllRecognitions()V

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    nop

    goto :goto_0

    :cond_0
    monitor-exit v0

    nop

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public stopRecognition(I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->stopRecognition(I)V

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    nop

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result v0

    return v0
.end method

.method public unloadSoundModel(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->unloadSoundModel(I)V

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    nop

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
