.class final Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;
.super Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;
.source "SoundTriggerMiddlewareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ModuleService"
.end annotation


# instance fields
.field private final mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;


# direct methods
.method private constructor <init>(Landroid/media/soundtrigger_middleware/ISoundTriggerModule;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/soundtrigger_middleware/ISoundTriggerModule;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;-><init>(Landroid/media/soundtrigger_middleware/ISoundTriggerModule;)V

    return-void
.end method


# virtual methods
.method public detach()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->detach()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public forceRecognitionEvent(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->forceRecognitionEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public getModelParameter(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v1, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->getModelParameter(II)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_0
    return v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public loadModel(Landroid/media/soundtrigger_middleware/SoundModel;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->loadModel(Landroid/media/soundtrigger_middleware/SoundModel;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_0
    return v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public loadPhraseModel(Landroid/media/soundtrigger_middleware/PhraseSoundModel;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->loadPhraseModel(Landroid/media/soundtrigger_middleware/PhraseSoundModel;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_0
    return v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public queryModelParameterSupport(II)Landroid/media/soundtrigger_middleware/ModelParameterRange;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v1, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->queryModelParameterSupport(II)Landroid/media/soundtrigger_middleware/ModelParameterRange;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public setModelParameter(III)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->setModelParameter(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public startRecognition(ILandroid/media/soundtrigger_middleware/RecognitionConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v1, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->startRecognition(ILandroid/media/soundtrigger_middleware/RecognitionConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public stopRecognition(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->stopRecognition(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public unloadModel(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->unloadModel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method
