.class public final Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "MusicRecognitionManagerPerUserService.java"

# interfaces
.implements Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;",
        "Lcom/android/server/musicrecognition/MusicRecognitionManagerService;",
        ">;",
        "Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$Callbacks;"
    }
.end annotation


# static fields
.field private static final BYTES_PER_SAMPLE:I = 0x2

.field private static final KEY_MUSIC_RECOGNITION_SERVICE_ATTRIBUTION_TAG:Ljava/lang/String; = "android.media.musicrecognition.attributiontag"

.field private static final MAX_STREAMING_SECONDS:I = 0x18

.field private static final MUSIC_RECOGNITION_MANAGER_ATTRIBUTION_TAG:Ljava/lang/String; = "MusicRecognitionManagerService"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mAttributionMessage:Ljava/lang/String;

.field private mAttributionTagFuture:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteService:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

.field private mServiceInfo:Landroid/content/pm/ServiceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/musicrecognition/MusicRecognitionManagerService;Ljava/lang/Object;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    invoke-virtual {p0}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "MusicRecognitionManagerService"

    invoke-virtual {v0, v1}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "MusicRecognitionManager.invokedByUid.%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mAttributionMessage:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mAttributionTagFuture:Ljava/util/concurrent/CompletableFuture;

    iput-object v0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    return-void
.end method

.method static synthetic access$100(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->sanitizeBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->destroyService()V

    return-void
.end method

.method private static createAudioRecord(Landroid/media/musicrecognition/RecognitionRequest;I)Landroid/media/AudioRecord;
    .locals 6

    invoke-virtual {p0}, Landroid/media/musicrecognition/RecognitionRequest;->getAudioFormat()Landroid/media/AudioFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->getBufferSizeInBytes(II)I

    move-result v1

    new-instance v2, Landroid/media/AudioRecord;

    invoke-virtual {p0}, Landroid/media/musicrecognition/RecognitionRequest;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {p0}, Landroid/media/musicrecognition/RecognitionRequest;->getAudioFormat()Landroid/media/AudioFormat;

    move-result-object v4

    invoke-virtual {p0}, Landroid/media/musicrecognition/RecognitionRequest;->getCaptureSession()I

    move-result v5

    invoke-direct {v2, v3, v4, v1, v5}, Landroid/media/AudioRecord;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)V

    return-object v2
.end method

.method private static createPipe()Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    array-length v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v3, "Failed to create audio stream pipe, unexpected number of file descriptors"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->valid()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->valid()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    aget-object v0, v1, v2

    aget-object v2, v1, v3

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    sget-object v2, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v3, "Failed to create audio stream pipe, didn\'t receive a pair of valid file descriptors."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v3, "Failed to create audio stream pipe"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private destroyService()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mRemoteService:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;->destroy()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mRemoteService:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

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

.method private ensureRemoteServiceLocked(Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;)Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;
    .locals 12

    iget-object v0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mRemoteService:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->getComponentNameLocked()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v2, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;

    iget-boolean v2, v2, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;->verbose:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v3, "ensureRemoteServiceLocked(): not set"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1

    :cond_1
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    new-instance v3, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    invoke-virtual {p0}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v7, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mUserId:I

    new-instance v9, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;

    invoke-direct {v9, p0, p1, v1}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;-><init>(Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$1;)V

    iget-object v1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;

    invoke-virtual {v1}, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;->isBindInstantServiceAllowed()Z

    move-result v10

    iget-object v1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;

    iget-boolean v11, v1, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;->verbose:Z

    move-object v4, v3

    move-object v6, v2

    move-object v8, p0

    invoke-direct/range {v4 .. v11}, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;ZZ)V

    iput-object v3, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mRemoteService:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    nop

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mRemoteService:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    invoke-virtual {v3}, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mRemoteService:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    invoke-virtual {v1}, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;->getAttributionTag()Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mAttributionTagFuture:Ljava/util/concurrent/CompletableFuture;

    sget-object v1, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote service bound: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mRemoteService:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    invoke-virtual {v4}, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v3, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v4, "Service was not found."

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mRemoteService:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    return-object v0
.end method

.method private finishRecordAudioOp(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/app/AppOpsManager;->finishProxyOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static getBufferSizeInBytes(II)I
    .locals 1

    mul-int/lit8 v0, p0, 0x2

    mul-int/2addr v0, p1

    return v0
.end method

.method private static sanitizeBundle(Landroid/os/Bundle;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Landroid/os/Bundle;

    invoke-static {v3}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->sanitizeBundle(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    instance-of v3, v2, Landroid/os/IBinder;

    if-nez v3, :cond_2

    instance-of v3, v2, Landroid/os/ParcelFileDescriptor;

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_3
    :goto_1
    goto :goto_0

    :cond_4
    return-void
.end method

.method private startRecordAudioOp(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mAttributionMessage:Ljava/lang/String;

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->startProxyOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    sget-object v4, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->TAG:Ljava/lang/String;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    aput-object v6, v5, v3

    iget-object v3, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    aput-object p1, v5, v1

    const-string v1, "Starting audio streaming. Attributing to %s (%d) with tag \'%s\'"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v4, Ljava/lang/SecurityException;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    iget-object v3, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v3}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Failed to obtain RECORD_AUDIO permission (status: %d) for receiving service: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private streamAudio(Landroid/media/musicrecognition/RecognitionRequest;ILandroid/media/AudioRecord;Ljava/io/OutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    nop

    invoke-virtual {p3}, Landroid/media/AudioRecord;->getBufferSizeInFrames()I

    move-result v0

    div-int/2addr v0, p2

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    nop

    invoke-virtual {p1}, Landroid/media/musicrecognition/RecognitionRequest;->getIgnoreBeginningFrames()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {p3}, Landroid/media/AudioRecord;->startRecording()V

    :cond_0
    :goto_0
    const/4 v5, 0x0

    if-ltz v2, :cond_2

    invoke-virtual {p3}, Landroid/media/AudioRecord;->getBufferSizeInFrames()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    if-ge v3, v6, :cond_2

    iget-object v6, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mRemoteService:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    if-eqz v6, :cond_2

    array-length v6, v1

    invoke-virtual {p3, v1, v5, v6}, Landroid/media/AudioRecord;->read([BII)I

    move-result v2

    if-lez v2, :cond_0

    add-int/2addr v3, v2

    if-lez v4, :cond_1

    sub-int/2addr v4, v2

    if-gez v4, :cond_0

    add-int v5, v2, v4

    neg-int v6, v4

    invoke-virtual {p4, v1, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p4, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_2
    sget-object v6, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->TAG:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    const-string v5, "Streamed %s bytes from audio record"

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private streamAudio(Ljava/lang/String;Landroid/media/musicrecognition/RecognitionRequest;Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;Landroid/os/ParcelFileDescriptor;)V
    .locals 5

    invoke-virtual {p2}, Landroid/media/musicrecognition/RecognitionRequest;->getMaxAudioLengthSeconds()I

    move-result v0

    const/16 v1, 0x18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v1, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v2, "No audio requested. Closing stream."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->close()V

    invoke-interface {p3}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;->onAudioStreamClosed()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    sget-object v2, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v3, "Problem closing stream."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    nop

    :goto_1
    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->startRecordAudioOp(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_5

    nop

    invoke-static {p2, v0}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->createAudioRecord(Landroid/media/musicrecognition/RecognitionRequest;I)Landroid/media/AudioRecord;

    move-result-object v1

    :try_start_2
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, p4}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-direct {p0, p2, v0, v1, v2}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->streamAudio(Landroid/media/musicrecognition/RecognitionRequest;ILandroid/media/AudioRecord;Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    invoke-direct {p0, p1}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->finishRecordAudioOp(Ljava/lang/String;)V

    :try_start_5
    invoke-interface {p3}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;->onAudioStreamClosed()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catchall_0
    move-exception v3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    :try_start_7
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v2

    goto :goto_5

    :catch_2
    move-exception v2

    :try_start_8
    sget-object v3, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v4, "Audio streaming stopped."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    nop

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    invoke-direct {p0, p1}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->finishRecordAudioOp(Ljava/lang/String;)V

    :try_start_9
    invoke-interface {p3}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;->onAudioStreamClosed()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3

    :goto_3
    goto :goto_4

    :catch_3
    move-exception v2

    nop

    :goto_4
    return-void

    :goto_5
    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    invoke-direct {p0, p1}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->finishRecordAudioOp(Ljava/lang/String;)V

    :try_start_a
    invoke-interface {p3}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;->onAudioStreamClosed()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_6

    :catch_4
    move-exception v3

    :goto_6
    throw v2

    :catch_5
    move-exception v1

    sget-object v2, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RECORD_AUDIO op not permitted on behalf of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v4}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x7

    :try_start_b
    invoke-interface {p3, v2}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;->onRecognitionFailed(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_7

    :catch_6
    move-exception v2

    :goto_7
    return-void
.end method


# virtual methods
.method public beginRecognitionLocked(Landroid/media/musicrecognition/RecognitionRequest;Landroid/os/IBinder;)V
    .locals 7

    nop

    invoke-static {p2}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->ensureRemoteServiceLocked(Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;)Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mRemoteService:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    if-nez v1, :cond_0

    const/4 v1, 0x3

    :try_start_0
    invoke-interface {v0, v1}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;->onRecognitionFailed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->createPipe()Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v2, 0x7

    :try_start_1
    invoke-interface {v0, v2}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;->onRecognitionFailed(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    return-void

    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    iget-object v4, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mAttributionTagFuture:Ljava/util/concurrent/CompletableFuture;

    new-instance v5, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, p1, v0, v2}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;Landroid/media/musicrecognition/RecognitionRequest;Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;Landroid/os/ParcelFileDescriptor;)V

    iget-object v6, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v6, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;

    iget-object v6, v6, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    iget-object v4, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mRemoteService:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    invoke-virtual {p1}, Landroid/media/musicrecognition/RecognitionRequest;->getAudioFormat()Landroid/media/AudioFormat;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;->onAudioStreamStarted(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;)V

    return-void
.end method

.method public synthetic lambda$beginRecognitionLocked$0$MusicRecognitionManagerPerUserService(Landroid/media/musicrecognition/RecognitionRequest;Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p4, p1, p2, p3}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->streamAudio(Ljava/lang/String;Landroid/media/musicrecognition/RecognitionRequest;Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method protected newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v1, 0x80

    iget v2, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mUserId:I

    invoke-interface {v0, p1, v1, v2}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v2, "android.permission.BIND_MUSIC_RECOGNITION_SERVICE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MusicRecognitionService from \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' does not require permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Service does not require permission android.permission.BIND_MUSIC_RECOGNITION_SERVICE"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get service for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onServiceDied(Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;->getServerCallback()Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;->access$300(Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;)Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;->onRecognitionFailed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    sget-object v0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remote service died: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->destroyService()V

    return-void
.end method

.method public bridge synthetic onServiceDied(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    invoke-virtual {p0, p1}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->onServiceDied(Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;)V

    return-void
.end method
