.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;
.super Ljava/lang/Object;
.source "SoundTriggerHw2Watchdog.java"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SoundTriggerHw2Watchdog"

.field private static final TIMEOUT_MS:J = 0xbb8L


# instance fields
.field private final mTimer:Lcom/android/server/soundtrigger_middleware/UptimeTimer;

.field private final mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    new-instance v0, Lcom/android/server/soundtrigger_middleware/UptimeTimer;

    const-string v1, "SoundTriggerHw2Watchdog"

    invoke-direct {v0, v1}, Lcom/android/server/soundtrigger_middleware/UptimeTimer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->mTimer:Lcom/android/server/soundtrigger_middleware/UptimeTimer;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;)Lcom/android/server/soundtrigger_middleware/UptimeTimer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->mTimer:Lcom/android/server/soundtrigger_middleware/UptimeTimer;

    return-object v0
.end method

.method static synthetic access$100()V
    .locals 0

    invoke-static {}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->rebootHal()V

    return-void
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
    .locals 3

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v1, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->getModelParameter(II)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public getModelState(I)V
    .locals 3

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v1, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->getModelState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public getProperties()Landroid/hardware/soundtrigger/V2_3/Properties;
    .locals 3

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->getProperties()Landroid/hardware/soundtrigger/V2_3/Properties;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v0

    return v0
.end method

.method public loadPhraseSoundModel(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)I
    .locals 3

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->loadPhraseSoundModel(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public loadSoundModel(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)I
    .locals 3

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->loadSoundModel(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public queryParameter(II)Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;
    .locals 3

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v1, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->queryParameter(II)Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public setModelParameter(III)V
    .locals 3

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->setModelParameter(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public startRecognition(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)V
    .locals 3

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->startRecognition(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public stopAllRecognitions()V
    .locals 3

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->stopAllRecognitions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public stopRecognition(I)V
    .locals 3

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v1, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->stopRecognition(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result v0

    return v0
.end method

.method public unloadSoundModel(I)V
    .locals 3

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v1, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->unloadSoundModel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method
