.class public Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;
.super Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;
.source "SoundTriggerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RemoteSoundTriggerDetectionService"
.end annotation


# instance fields
.field public final mClient:Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;

.field public mDestroyOnceRunningOpsDone:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRemoteServiceLock"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public mIsBound:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRemoteServiceLock"
        }
    .end annotation
.end field

.field public mIsDestroyed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRemoteServiceLock"
        }
    .end annotation
.end field

.field public final mNumOps:Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;

.field public mNumTotalOpsPerformed:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRemoteServiceLock"
        }
    .end annotation
.end field

.field public final mParams:Landroid/os/Bundle;

.field public final mPendingOps:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRemoteServiceLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/soundtrigger/SoundTriggerService$Operation;",
            ">;"
        }
    .end annotation
.end field

.field public final mPuuid:Landroid/os/ParcelUuid;

.field public final mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

.field public final mRemoteServiceLock:Ljava/lang/Object;

.field public final mRemoteServiceWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mRunningOpIds:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRemoteServiceLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mService:Landroid/media/soundtrigger/ISoundTriggerDetectionService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRemoteServiceLock"
        }
    .end annotation
.end field

.field public final mServiceName:Landroid/content/ComponentName;

.field public final mUser:Landroid/os/UserHandle;

.field public final synthetic this$1:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;


# direct methods
.method public static synthetic $r8$lambda$IDLL6W27fDiZOyN93WCCRWKPu54(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;ILandroid/media/soundtrigger/ISoundTriggerDetectionService;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->lambda$onGenericSoundTriggerDetected$1(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;ILandroid/media/soundtrigger/ISoundTriggerDetectionService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NQ9vXL7Jlhvm5kL7TVyHFRpBVaE(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->lambda$onGenericSoundTriggerDetected$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$aGSC4GyruNpkWwEOV0Q9usJDHaY(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->lambda$onGenericSoundTriggerDetected$2(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fghJp6lJ2tIdNpV2BpLIABdozBE(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->stopAllPendingOperations()V

    return-void
.end method

.method public static synthetic $r8$lambda$hlE2jJZGnOP9HzyCyXLiJjgF5-c(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->lambda$onError$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$jSgQonqW1uf9kDLdncYj9RRDzsU(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;IILandroid/media/soundtrigger/ISoundTriggerDetectionService;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->lambda$onError$4(IILandroid/media/soundtrigger/ISoundTriggerDetectionService;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmDestroyOnceRunningOpsDone(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mDestroyOnceRunningOpsDone:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingOps(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPendingOps:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRemoteServiceLock(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mRemoteServiceLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRunningOpIds(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;)Landroid/util/ArraySet;
    .locals 0

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mRunningOpIds:Landroid/util/ArraySet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdestroy(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->destroy()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdisconnectLocked(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->disconnectLocked()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;Ljava/util/UUID;Landroid/os/Bundle;Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->this$1:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;

    invoke-direct {p0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mRemoteServiceLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPendingOps:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mRunningOpIds:Landroid/util/ArraySet;

    new-instance v0, Landroid/os/ParcelUuid;

    invoke-direct {v0, p2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    iput-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mParams:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    iput-object p5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mUser:Landroid/os/UserHandle;

    iput-object p6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mHandler:Landroid/os/Handler;

    iget-object p2, p1, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object p2, p2, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    const-string p3, "power"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "RemoteSoundTriggerDetectionService "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ":"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p5, 0x1

    invoke-virtual {p2, p5, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mRemoteServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object p2, p1, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {p2}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    :try_start_0
    iget-object p3, p1, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {p3}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmNumOpsPerPackage(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/util/ArrayMap;

    move-result-object p3

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;

    if-nez p3, :cond_0

    new-instance p3, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;

    const/4 p5, 0x0

    invoke-direct {p3, p5}, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$NumOps-IA;)V

    iget-object p5, p1, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {p5}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmNumOpsPerPackage(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/util/ArrayMap;

    move-result-object p5

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p5, p4, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mNumOps:Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p2, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService$1;

    invoke-direct {p2, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService$1;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;)V

    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mClient:Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private synthetic lambda$onError$3()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->this$1:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->-$$Nest$fgetmCallbacksLock(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->this$1:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->-$$Nest$fgetmCallbacks(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;)Ljava/util/TreeMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mDestroyOnceRunningOpsDone:Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private synthetic lambda$onError$4(IILandroid/media/soundtrigger/ISoundTriggerDetectionService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-interface {p3, p0, p2, p1}, Landroid/media/soundtrigger/ISoundTriggerDetectionService;->onError(Landroid/os/ParcelUuid;II)V

    return-void
.end method

.method private synthetic lambda$onGenericSoundTriggerDetected$0()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    iget-boolean v0, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->this$1:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->-$$Nest$fgetmCallbacksLock(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->this$1:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->-$$Nest$fgetmCallbacks(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;)Ljava/util/TreeMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mDestroyOnceRunningOpsDone:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$onGenericSoundTriggerDetected$1(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;ILandroid/media/soundtrigger/ISoundTriggerDetectionService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-interface {p3, p0, p2, p1}, Landroid/media/soundtrigger/ISoundTriggerDetectionService;->onGenericRecognitionEvent(Landroid/os/ParcelUuid;ILandroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V

    return-void
.end method

.method private synthetic lambda$onGenericSoundTriggerDetected$2(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->isCaptureAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->createAudioRecordForEvent(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": createAudioRecordForEvent("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "), failed to create AudioRecord"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SoundTriggerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final bind()V
    .locals 10

    const-string v0, ": Could not bind to "

    const-string v1, " does not require "

    const-string v2, " not found"

    const-string v3, "android.permission.BIND_SOUND_TRIGGER_DETECTION_SERVICE"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    iget-object v7, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->this$1:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;

    iget-object v7, v7, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v7, v7, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const v8, 0x10000084

    iget-object v9, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-virtual {v7, v6, v8, v9}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "SoundTriggerService"

    const-string v9, ": "

    if-nez v7, :cond_0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_2
    iget-object v2, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->this$1:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;

    iget-object v1, v1, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v1, v1, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    const v2, 0x4001001

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1, v6, p0, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mIsBound:Z

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mRemoteServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final createAudioRecordForEvent(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)Landroid/media/AudioRecord;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    new-instance p0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v0, 0x7cf

    invoke-virtual {p0, v0}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    invoke-virtual {p0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p0

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->getCaptureFormat()Landroid/media/AudioFormat;

    move-result-object v0

    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    const-string v3, "createAudioRecordForEvent"

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    new-instance v1, Landroid/media/AudioRecord$Builder;

    invoke-direct {v1}, Landroid/media/AudioRecord$Builder;-><init>()V

    invoke-virtual {v1, p0}, Landroid/media/AudioRecord$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioRecord$Builder;

    move-result-object p0

    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/AudioRecord$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->getCaptureSession()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/AudioRecord$Builder;->setSessionId(I)Landroid/media/AudioRecord$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioRecord$Builder;->build()Landroid/media/AudioRecord;

    move-result-object p0

    return-object p0
.end method

.method public final destroy()V
    .locals 4

    const-string v0, "SoundTriggerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": destroy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": destroy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mRemoteServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->disconnectLocked()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mIsDestroyed:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mDestroyOnceRunningOpsDone:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->this$1:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->-$$Nest$fgetmCallbacksLock(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->this$1:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->-$$Nest$fgetmCallbacks(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;)Ljava/util/TreeMap;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final disconnectLocked()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRemoteServiceLock"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mService:Landroid/media/soundtrigger/ISoundTriggerDetectionService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-interface {v0, v1}, Landroid/media/soundtrigger/ISoundTriggerDetectionService;->removeClient(Landroid/os/ParcelUuid;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SoundTriggerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": Cannot remove client"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": Cannot remove client"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mService:Landroid/media/soundtrigger/ISoundTriggerDetectionService;

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mIsBound:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->this$1:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;

    iget-object v0, v0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v0, v0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mIsBound:Z

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->this$1:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->-$$Nest$fgetmCallbacksLock(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mRemoteServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 3

    const-string p1, "SoundTriggerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": onBindingDied"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p1

    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": onBindingDied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mRemoteServiceLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->destroy()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onError(I)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SoundTriggerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;)V

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;I)V

    const/4 p1, 0x0

    invoke-direct {v0, v1, v2, p1, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;-><init>(Ljava/lang/Runnable;Lcom/android/server/soundtrigger/SoundTriggerService$Operation$ExecuteOp;Ljava/lang/Runnable;Lcom/android/server/soundtrigger/SoundTriggerService$Operation-IA;)V

    invoke-virtual {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->runOrAddOperation(Lcom/android/server/soundtrigger/SoundTriggerService$Operation;)V

    return-void
.end method

.method public onGenericSoundTriggerDetected(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Generic sound trigger event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SoundTriggerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;)V

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V

    const/4 p1, 0x0

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;-><init>(Ljava/lang/Runnable;Lcom/android/server/soundtrigger/SoundTriggerService$Operation$ExecuteOp;Ljava/lang/Runnable;Lcom/android/server/soundtrigger/SoundTriggerService$Operation-IA;)V

    invoke-virtual {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->runOrAddOperation(Lcom/android/server/soundtrigger/SoundTriggerService$Operation;)V

    return-void
.end method

.method public onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": IGNORED onKeyphraseDetected("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "SoundTriggerService"

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v4, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "SoundTriggerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for model "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " returned a null binding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for model "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " returned a null binding"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mRemoteServiceLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->disconnectLocked()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onRecognitionPaused()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": IGNORED onRecognitionPaused"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SoundTriggerService"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    return-void
.end method

.method public onRecognitionResumed()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": IGNORED onRecognitionResumed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SoundTriggerService"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string p1, "SoundTriggerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": onServiceConnected("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p1

    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": onServiceConnected("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mRemoteServiceLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-static {p2}, Landroid/media/soundtrigger/ISoundTriggerDetectionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger/ISoundTriggerDetectionService;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mService:Landroid/media/soundtrigger/ISoundTriggerDetectionService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mParams:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mClient:Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;

    invoke-interface {p2, v0, v1, v2}, Landroid/media/soundtrigger/ISoundTriggerDetectionService;->setClient(Landroid/os/ParcelUuid;Landroid/os/Bundle;Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPendingOps:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPendingOps:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;

    invoke-virtual {p0, p2}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->runOrAddOperation(Lcom/android/server/soundtrigger/SoundTriggerService$Operation;)V

    goto :goto_0

    :cond_0
    monitor-exit p1

    return-void

    :catch_0
    move-exception p2

    const-string v0, "SoundTriggerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Could not init "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string p1, "SoundTriggerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": onServiceDisconnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p1

    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": onServiceDisconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mRemoteServiceLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mService:Landroid/media/soundtrigger/ISoundTriggerDetectionService;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public pingBinder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mIsDestroyed:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mDestroyOnceRunningOpsDone:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final runOrAddOperation(Lcom/android/server/soundtrigger/SoundTriggerService$Operation;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mRemoteServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mIsDestroyed:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mDestroyOnceRunningOpsDone:Z

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mService:Landroid/media/soundtrigger/ISoundTriggerDetectionService;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPendingOps:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mIsBound:Z

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->bind()V

    goto/16 :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mNumOps:Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->clearOldOps(J)V

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->this$1:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;

    iget-object v3, v3, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v3, v3, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "max_sound_trigger_detection_service_ops_per_day"

    const v5, 0x7fffffff

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mNumOps:Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;

    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->getOpsAdded()I

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mNumOps:Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->addOp(J)V

    iget v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mNumTotalOpsPerformed:I

    :cond_2
    iget v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mNumTotalOpsPerformed:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mNumTotalOpsPerformed:I

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mRunningOpIds:Landroid/util/ArraySet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    :try_start_1
    const-string v2, "SoundTriggerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": runOp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v2

    new-instance v4, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": runOp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mService:Landroid/media/soundtrigger/ISoundTriggerDetectionService;

    invoke-virtual {p1, v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;->run(ILandroid/media/soundtrigger/ISoundTriggerDetectionService;)V

    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mRunningOpIds:Landroid/util/ArraySet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v2, "SoundTriggerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": Could not run operation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p1

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": Could not run operation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    :goto_0
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPendingOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mRunningOpIds:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mDestroyOnceRunningOpsDone:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->destroy()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->disconnectLocked()V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Message;->setWhat(I)Landroid/os/Message;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->this$1:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "sound_trigger_detection_service_op_timeout"

    const-wide v3, 0x7fffffffffffffffL

    invoke-static {p0, v2, v3, v4}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5
    :goto_1
    monitor-exit v0

    return-void

    :cond_6
    :goto_2
    const-string v1, "SoundTriggerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": Dropped operation as already destroyed or marked for destruction"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ":Dropped operation as already destroyed or marked for destruction"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;->drop()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final stopAllPendingOperations()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mRemoteServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mIsDestroyed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mService:Landroid/media/soundtrigger/ISoundTriggerDetectionService;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mRunningOpIds:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mService:Landroid/media/soundtrigger/ISoundTriggerDetectionService;

    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mRunningOpIds:Landroid/util/ArraySet;

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/media/soundtrigger/ISoundTriggerDetectionService;->onStopOperation(Landroid/os/ParcelUuid;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "SoundTriggerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": Could not stop operation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mRunningOpIds:Landroid/util/ArraySet;

    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$sfgetsEventLogger()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v3

    new-instance v4, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": Could not stop operation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mRunningOpIds:Landroid/util/ArraySet;

    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->mRunningOpIds:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;->disconnectLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
