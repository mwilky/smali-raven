.class Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;
.super Ljava/lang/Object;
.source "SoundTriggerMiddlewareLogging.java"

# interfaces
.implements Landroid/media/soundtrigger_middleware/ISoundTriggerModule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModuleLogging"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging$CallbackLogging;
    }
.end annotation


# instance fields
.field private final mCallbackWrapper:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging$CallbackLogging;

.field private mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

.field private final mOriginatorIdentity:Landroid/media/permission/Identity;

.field final synthetic this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;


# direct methods
.method constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging$CallbackLogging;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging$CallbackLogging;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$1;)V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mCallbackWrapper:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging$CallbackLogging;

    invoke-static {}, Landroid/media/permission/IdentityContext;->getNonNull()Landroid/media/permission/Identity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mOriginatorIdentity:Landroid/media/permission/Identity;

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;)Landroid/media/permission/Identity;
    .locals 1

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mOriginatorIdentity:Landroid/media/permission/Identity;

    return-object v0
.end method

.method private varargs logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;

    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mOriginatorIdentity:Landroid/media/permission/Identity;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->access$100(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Ljava/lang/Object;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method

.method private varargs logReturn(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;

    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mOriginatorIdentity:Landroid/media/permission/Identity;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->access$200(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Ljava/lang/Object;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method private varargs logVoidReturn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mOriginatorIdentity:Landroid/media/permission/Identity;

    invoke-static {v0, p0, v1, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->access$300(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Ljava/lang/Object;Landroid/media/permission/Identity;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method attach(Landroid/media/soundtrigger_middleware/ISoundTriggerModule;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    return-void
.end method

.method public detach()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "detach"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->detach()V

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logVoidReturn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    throw v2
.end method

.method public forceRecognitionEvent(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "forceRecognitionEvent"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v3, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->forceRecognitionEvent(I)V

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-direct {p0, v0, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logVoidReturn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-direct {p0, v0, v3, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    throw v3
.end method

.method getCallbackWrapper()Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mCallbackWrapper:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging$CallbackLogging;

    return-object v0
.end method

.method public getModelParameter(II)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "getModelParameter"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v4, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->getModelParameter(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logReturn(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-direct {p0, v0, v4, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    throw v4
.end method

.method public loadModel(Landroid/media/soundtrigger_middleware/SoundModel;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "loadModel"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v3, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->loadModel(Landroid/media/soundtrigger_middleware/SoundModel;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-direct {p0, v0, v4, v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logReturn(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-direct {p0, v0, v3, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    throw v3
.end method

.method public loadPhraseModel(Landroid/media/soundtrigger_middleware/PhraseSoundModel;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "loadPhraseModel"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v3, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->loadPhraseModel(Landroid/media/soundtrigger_middleware/PhraseSoundModel;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-direct {p0, v0, v4, v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logReturn(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-direct {p0, v0, v3, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    throw v3
.end method

.method public queryModelParameterSupport(II)Landroid/media/soundtrigger_middleware/ModelParameterRange;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "queryModelParameterSupport"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v4, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->queryModelParameterSupport(II)Landroid/media/soundtrigger_middleware/ModelParameterRange;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-direct {p0, v0, v4, v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logReturn(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-direct {p0, v0, v4, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    throw v4
.end method

.method public setModelParameter(III)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "setModelParameter"

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    :try_start_0
    iget-object v5, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v5, p1, p2, p3}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->setModelParameter(III)V

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-direct {p0, v0, v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logVoidReturn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-direct {p0, v0, v5, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    throw v5
.end method

.method public startRecognition(ILandroid/media/soundtrigger_middleware/RecognitionConfig;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "startRecognition"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v4, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->startRecognition(ILandroid/media/soundtrigger_middleware/RecognitionConfig;)V

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p2, v4, v1

    invoke-direct {p0, v0, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logVoidReturn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    aput-object p2, v3, v1

    invoke-direct {p0, v0, v4, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    throw v4
.end method

.method public stopRecognition(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "stopRecognition"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v3, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->stopRecognition(I)V

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-direct {p0, v0, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logVoidReturn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-direct {p0, v0, v3, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unloadModel(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "unloadModel"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v3, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->unloadModel(I)V

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-direct {p0, v0, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logVoidReturn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-direct {p0, v0, v3, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    throw v3
.end method
