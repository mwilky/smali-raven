.class Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;
.super Ljava/lang/Object;
.source "SoundTriggerModule.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;,
        Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "SoundTriggerModule"


# instance fields
.field private final mActiveSessions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioSessionProvider:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;

.field private mHalFactory:Lcom/android/server/soundtrigger_middleware/HalFactory;

.field private mHalService:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

.field private mNumLoadedModels:I

.field private mProperties:Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;

.field private mRecognitionAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/android/server/soundtrigger_middleware/HalFactory;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mActiveSessions:Ljava/util/Set;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mNumLoadedModels:I

    nop

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mHalFactory:Lcom/android/server/soundtrigger_middleware/HalFactory;

    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mAudioSessionProvider:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;

    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->attachToHal()V

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mHalService:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->getProperties()Landroid/hardware/soundtrigger/V2_3/Properties;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlProperties(Landroid/hardware/soundtrigger/V2_3/Properties;)Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mProperties:Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;

    iget-boolean v0, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->concurrentCapture:Z

    iput-boolean v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mRecognitionAvailable:Z

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mRecognitionAvailable:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;
    .locals 1

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mHalService:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    return-object v0
.end method

.method static synthetic access$2200()Landroid/media/soundtrigger_middleware/RecognitionEvent;
    .locals 1

    invoke-static {}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->newEmptyRecognitionEvent()Landroid/media/soundtrigger_middleware/RecognitionEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400()Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;
    .locals 1

    invoke-static {}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->newEmptyPhraseRecognitionEvent()Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->removeSession(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mAudioSessionProvider:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)I
    .locals 1

    iget v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mNumLoadedModels:I

    return v0
.end method

.method static synthetic access$604(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)I
    .locals 1

    iget v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mNumLoadedModels:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mNumLoadedModels:I

    return v0
.end method

.method static synthetic access$606(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)I
    .locals 1

    iget v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mNumLoadedModels:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mNumLoadedModels:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;
    .locals 1

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mProperties:Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;

    return-object v0
.end method

.method private attachToHal()V
    .locals 4

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;

    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;

    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mHalFactory:Lcom/android/server/soundtrigger_middleware/HalFactory;

    invoke-interface {v3}, Lcom/android/server/soundtrigger_middleware/HalFactory;->create()Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;-><init>(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;)V

    invoke-direct {v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;)V

    invoke-direct {v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;)V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mHalService:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    return-void
.end method

.method private static newEmptyPhraseRecognitionEvent()Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;
    .locals 2

    new-instance v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;

    invoke-direct {v0}, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;-><init>()V

    invoke-static {}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->newEmptyRecognitionEvent()Landroid/media/soundtrigger_middleware/RecognitionEvent;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger_middleware/RecognitionEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;

    iput-object v1, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;

    return-object v0
.end method

.method private static newEmptyRecognitionEvent()Landroid/media/soundtrigger_middleware/RecognitionEvent;
    .locals 2

    new-instance v0, Landroid/media/soundtrigger_middleware/RecognitionEvent;

    invoke-direct {v0}, Landroid/media/soundtrigger_middleware/RecognitionEvent;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [B

    iput-object v1, v0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->data:[B

    return-object v0
.end method

.method private removeSession(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mActiveSessions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private reset()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->attachToHal()V

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mProperties:Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;

    iget-boolean v0, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->concurrentCapture:Z

    iput-boolean v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mRecognitionAvailable:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mNumLoadedModels:I

    return-void
.end method


# virtual methods
.method declared-synchronized attach(Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$1;)V

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mActiveSessions:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getProperties()Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mProperties:Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public serviceDied(J)V
    .locals 4

    const-string v0, "SoundTriggerModule"

    const-string v1, "Underlying HAL driver died."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mActiveSessions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mActiveSessions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->access$300(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mActiveSessions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->reset()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    :try_start_1
    invoke-interface {v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onModuleDied()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method setExternalCaptureState(Z)V
    .locals 3

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mProperties:Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;

    iget-boolean v1, v1, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->concurrentCapture:Z

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mRecognitionAvailable:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mActiveSessions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    invoke-static {v2, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->access$100(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;Ljava/util/List;)V

    goto :goto_1

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mActiveSessions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->access$200(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)V

    goto :goto_3

    :cond_4
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
