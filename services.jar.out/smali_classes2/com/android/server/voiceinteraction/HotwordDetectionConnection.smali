.class final Lcom/android/server/voiceinteraction/HotwordDetectionConnection;
.super Ljava/lang/Object;
.source "HotwordDetectionConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;,
        Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;,
        Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final MAX_UPDATE_TIMEOUT_DURATION:Ljava/time/Duration;

.field private static final MAX_UPDATE_TIMEOUT_MILLIS:J = 0x1770L

.field private static final OP_MESSAGE:Ljava/lang/String; = "Providing hotword detection result to VoiceInteractionService"

.field private static final RESET_DEBUG_HOTWORD_LOGGING_TIMEOUT_MILLIS:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "HotwordDetectionConnection"

.field private static final VALIDATION_TIMEOUT_MILLIS:J = 0xbb8L


# instance fields
.field private final mAudioCopyExecutor:Ljava/util/concurrent/Executor;

.field private mAudioFlinger:Landroid/os/IBinder;

.field private final mAudioServerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

.field private mCancellationTaskFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field private mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

.field private mDebugHotwordLogging:Z

.field private mDebugHotwordLoggingTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field final mDetectionComponentName:Landroid/content/ComponentName;

.field volatile mIdentity:Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

.field private mLastRestartInstant:Ljava/time/Instant;

.field final mLock:Ljava/lang/Object;

.field private mPerformingSoftwareHotwordDetection:Z

.field private mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

.field private final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

.field private mSoftwareCallback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

.field private final mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mUser:I

.field private mValidatingDspTrigger:Z

.field final mVoiceInteractionServiceUid:I

.field private final mVoiceInteractorIdentity:Landroid/media/permission/Identity;


# direct methods
.method public static synthetic $r8$lambda$i8F8xvsj0XTRcMx3FdDlXqkF-FE(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->audioServerDied()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    nop

    const-wide/16 v0, 0x1770

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->MAX_UPDATE_TIMEOUT_DURATION:Ljava/time/Duration;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Landroid/content/Context;ILandroid/media/permission/Identity;Landroid/content/ComponentName;IZLandroid/os/PersistableBundle;Landroid/os/SharedMemory;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p10

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioCopyExecutor:Ljava/util/concurrent/Executor;

    nop

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    iput-object v3, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioServerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLoggingTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    iput-boolean v5, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mValidatingDspTrigger:Z

    iput-boolean v5, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLogging:Z

    if-eqz v2, :cond_0

    move-object/from16 v3, p1

    iput-object v3, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    move-object/from16 v11, p2

    iput-object v11, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mContext:Landroid/content/Context;

    move/from16 v12, p3

    iput v12, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    move-object/from16 v13, p4

    iput-object v13, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    iput-object v1, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectionComponentName:Landroid/content/ComponentName;

    move/from16 v14, p6

    iput v14, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUser:I

    iput-object v2, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.service.voice.HotwordDetectionService"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v15, v5

    invoke-virtual {v15, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->initAudioFlingerLocked()V

    new-instance v5, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    move/from16 v10, p7

    invoke-direct {v5, v0, v15, v10}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/content/Intent;Z)V

    iput-object v5, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    invoke-virtual {v5}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->createLocked()Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLastRestartInstant:Ljava/time/Instant;

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct {v0, v8, v9}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->updateStateAfterProcessStart(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V

    new-instance v5, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda13;

    invoke-direct {v5, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    const-wide/16 v6, 0x1e

    const-wide/16 v16, 0x1e

    sget-object v18, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v8, v16

    move-object/from16 v10, v18

    invoke-interface/range {v4 .. v10}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCancellationTaskFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void

    :cond_0
    move-object/from16 v3, p1

    move-object/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p6

    const-string v4, "HotwordDetectionConnection"

    const-string v5, "Callback is null while creating connection"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method static synthetic access$000(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mPerformingSoftwareHotwordDetection:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mPerformingSoftwareHotwordDetection:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->enforcePermissionsForDataDelivery()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->updateServiceIdentity(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->updateServiceUidForAudioPolicy(I)V

    return-void
.end method

.method static synthetic access$1300(Ljava/io/Closeable;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->bestEffortClose(Ljava/io/Closeable;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mSoftwareCallback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLogging:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mValidatingDspTrigger:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mValidatingDspTrigger:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->detectFromDspSource(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioFlinger:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->updateAudioFlinger(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->updateContentCaptureManager(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V

    return-void
.end method

.method private audioServerDied()V
    .locals 2

    const-string v0, "HotwordDetectionConnection"

    const-string v1, "Audio server died; restarting the HotwordDetectionService."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->initAudioFlingerLocked()V

    invoke-direct {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->restartProcessLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static bestEffortClose(Ljava/io/Closeable;)V
    .locals 1

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private clearDebugHotwordLoggingTimeoutLocked()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLoggingTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLoggingTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method private static createPipe()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "HotwordDetectionConnection"

    const-string v2, "Failed to create audio stream pipe"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private detectFromDspSource(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V
    .locals 4

    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mValidatingDspTrigger:Z

    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    new-instance v3, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda2;

    invoke-direct {v3, p1, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/IDspHotwordDetectionCallback;)V

    invoke-virtual {v2, v3}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private detectFromDspSourceForTest(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V
    .locals 4

    const-string v0, "HotwordDetectionConnection"

    const-string v1, "detectFromDspSourceForTest"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mValidatingDspTrigger:Z

    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    new-instance v3, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda3;

    invoke-direct {v3, p1, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/IDspHotwordDetectionCallback;)V

    invoke-virtual {v2, v3}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static enforcePermissionForDataDelivery(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {p0, p1, p2, p3}, Landroid/media/permission/PermissionUtil;->checkPermissionForDataDelivery(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->toString(Landroid/media/permission/Identity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Failed to obtain permission %s for identity %s"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private enforcePermissionsForDataDelivery()V
    .locals 1

    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method private handleExternalSourceHotwordDetection(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    .locals 16

    move-object/from16 v9, p0

    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    move-object/from16 v10, p1

    invoke-direct {v0, v10}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v11, v0

    invoke-static {}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->createPipe()Landroid/util/Pair;

    move-result-object v12

    if-nez v12, :cond_0

    return-void

    :cond_0
    iget-object v0, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Landroid/os/ParcelFileDescriptor;

    iget-object v0, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Landroid/os/ParcelFileDescriptor;

    iget-object v1, v9, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object v13, v9, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v9, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioCopyExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda15;

    invoke-direct {v1, v9, v11, v13}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, v9, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    new-instance v15, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda9;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object v3, v14

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v13

    move-object v7, v11

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V

    invoke-virtual {v0, v15}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initAudioFlingerLocked()V
    .locals 3

    const-string v0, "media.audio_flinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioFlinger:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioServerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HotwordDetectionConnection"

    const-string v2, "Audio server died before we registered a DeathRecipient; retrying init."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->initAudioFlingerLocked()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Service media.audio_flinger wasn\'t found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isBound()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->isBound()Z

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

.method static synthetic lambda$detectFromDspSource$6(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/IDspHotwordDetectionCallback;Landroid/service/voice/IHotwordDetectionService;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    nop

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->getCaptureFormat()Landroid/media/AudioFormat;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    move-object v0, p2

    move-object v1, p0

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Landroid/service/voice/IHotwordDetectionService;->detectFromDspSource(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/media/AudioFormat;JLandroid/service/voice/IDspHotwordDetectionCallback;)V

    return-void
.end method

.method static synthetic lambda$detectFromDspSourceForTest$5(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/IDspHotwordDetectionCallback;Landroid/service/voice/IHotwordDetectionService;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    nop

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->getCaptureFormat()Landroid/media/AudioFormat;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    move-object v0, p2

    move-object v1, p0

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Landroid/service/voice/IHotwordDetectionService;->detectFromDspSource(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/media/AudioFormat;JLandroid/service/voice/IDspHotwordDetectionCallback;)V

    return-void
.end method

.method static synthetic lambda$startListeningFromMicLocked$4(Landroid/service/voice/IDspHotwordDetectionCallback;Landroid/service/voice/IHotwordDetectionService;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Landroid/service/voice/IHotwordDetectionService;->detectFromMicrophoneSource(Landroid/os/ParcelFileDescriptor;ILandroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IDspHotwordDetectionCallback;)V

    return-void
.end method

.method static synthetic lambda$updateAudioFlinger$10(Landroid/os/IBinder;Landroid/service/voice/IHotwordDetectionService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1, p0}, Landroid/service/voice/IHotwordDetectionService;->updateAudioFlinger(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic lambda$updateContentCaptureManager$11(Landroid/view/contentcapture/IContentCaptureManager;Landroid/service/voice/IHotwordDetectionService;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/content/ContentCaptureOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/ContentCaptureOptions;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {p1, p0, v0}, Landroid/service/voice/IHotwordDetectionService;->updateContentCaptureManager(Landroid/view/contentcapture/IContentCaptureManager;Landroid/content/ContentCaptureOptions;)V

    return-void
.end method

.method static synthetic lambda$updateServiceUidForAudioPolicy$13(I)V
    .locals 1

    const-class v0, Landroid/media/AudioManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/media/AudioManagerInternal;->setHotwordDetectionServiceUid(I)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$updateStateLocked$3(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/service/voice/IHotwordDetectionService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p2, p0, p1, v0}, Landroid/service/voice/IHotwordDetectionService;->updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method private restartProcessLocked()V
    .locals 5

    const-string v0, "HotwordDetectionConnection"

    const-string v1, "Restarting hotword detection process"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    iget-boolean v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mValidatingDspTrigger:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    new-instance v4, Landroid/service/voice/HotwordRejectedResult$Builder;

    invoke-direct {v4}, Landroid/service/voice/HotwordRejectedResult$Builder;-><init>()V

    invoke-virtual {v4}, Landroid/service/voice/HotwordRejectedResult$Builder;->build()Landroid/service/voice/HotwordRejectedResult;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v4, "Failed to call #rejected"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mValidatingDspTrigger:Z

    :cond_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLastRestartInstant:Ljava/time/Instant;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    invoke-virtual {v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->createLocked()Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    const-string v2, "Started the new process, issuing #onProcessRestarted"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {v2}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onProcessRestarted()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "Failed to communicate #onProcessRestarted"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-boolean v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mPerformingSoftwareHotwordDetection:Z

    if-eqz v2, :cond_1

    const-string v2, "Process restarted: calling startRecognition() again"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->startListeningFromMicLocked()V

    :cond_1
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_2

    const-string v2, "Closing external audio stream to hotword detector: process restarted"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->bestEffortClose(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    :cond_2
    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->ignoreConnectionStatusEvents()V

    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->unbind()V

    return-void
.end method

.method private startListeningFromMicLocked()V
    .locals 3

    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    new-instance v2, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda6;-><init>(Landroid/service/voice/IDspHotwordDetectionCallback;)V

    invoke-virtual {v1, v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-void
.end method

.method private stopListeningLocked()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mPerformingSoftwareHotwordDetection:Z

    const-string v1, "HotwordDetectionConnection"

    if-nez v0, :cond_0

    const-string v0, "Hotword detection is not running"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mPerformingSoftwareHotwordDetection:Z

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    sget-object v2, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda10;->INSTANCE:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda10;

    invoke-virtual {v0, v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    const-string v0, "Closing audio stream to hotword detector: stopping requested"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->bestEffortClose(Ljava/io/Closeable;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method private static updateAudioFlinger(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Landroid/os/IBinder;)V
    .locals 1

    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda4;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-void
.end method

.method private static updateContentCaptureManager(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V
    .locals 3

    nop

    const-string v0, "content_capture"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object v1

    new-instance v2, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda7;

    invoke-direct {v2, v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda7;-><init>(Landroid/view/contentcapture/IContentCaptureManager;)V

    invoke-virtual {p0, v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-void
.end method

.method private updateServiceIdentity(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V
    .locals 1

    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    invoke-virtual {p1, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-void
.end method

.method private updateServiceUidForAudioPolicy(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda12;

    invoke-direct {v1, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda12;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateStateAfterProcessStart(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V

    invoke-virtual {v0, v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method


# virtual methods
.method cancelLocked()V
    .locals 3

    const-string v0, "HotwordDetectionConnection"

    const-string v1, "cancelLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->clearDebugHotwordLoggingTimeoutLocked()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLogging:Z

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->isBound()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->unbind()V

    const-class v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->setHotwordDetectionServiceProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;)V

    iput-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mIdentity:Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->updateServiceUidForAudioPolicy(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCancellationTaskFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioFlinger:Landroid/os/IBinder;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioServerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_1
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->isBound()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", mValidatingDspTrigger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mValidatingDspTrigger:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", mPerformingSoftwareHotwordDetection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mPerformingSoftwareHotwordDetection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", mRestartCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->access$600(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", mLastRestartInstant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLastRestartInstant:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method forceRestart()V
    .locals 2

    const-string v0, "HotwordDetectionConnection"

    const-string v1, "Requested to restart the service internally. Performing the restart"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->restartProcessLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$enforcePermissionsForDataDelivery$14$HotwordDetectionConnection()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    const-string v2, "android.permission.RECORD_AUDIO"

    const-string v3, "Providing hotword detection result to VoiceInteractionService"

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->enforcePermissionForDataDelivery(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    const-string v2, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->enforcePermissionForDataDelivery(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$handleExternalSourceHotwordDetection$8$HotwordDetectionConnection(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V
    .locals 7

    move-object v0, p1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/16 v3, 0x400

    :try_start_1
    new-array v4, v3, [B

    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-gez v6, :cond_1

    nop

    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :cond_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iput-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_1
    :try_start_5
    invoke-virtual {v2, v4, v5, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v4

    :try_start_7
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v2

    if-eqz v0, :cond_2

    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v3

    :try_start_9
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_a
    const-string v2, "HotwordDetectionConnection"

    const-string v3, "Failed supplying audio data to validator"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    nop

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    iput-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    monitor-exit v0

    :goto_3
    nop

    return-void

    :catchall_6
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw v1

    :goto_4
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_c
    iput-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    throw v0
.end method

.method public synthetic lambda$handleExternalSourceHotwordDetection$9$HotwordDetectionConnection(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;Landroid/service/voice/IHotwordDetectionService;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v6, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V

    const/4 v2, 0x2

    move-object v0, p7

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-interface/range {v0 .. v5}, Landroid/service/voice/IHotwordDetectionService;->detectFromMicrophoneSource(Landroid/os/ParcelFileDescriptor;ILandroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IDspHotwordDetectionCallback;)V

    return-void
.end method

.method public synthetic lambda$new$0$HotwordDetectionConnection()V
    .locals 2

    const-string v0, "HotwordDetectionConnection"

    const-string v1, "Time to restart the process, TTL has passed"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->restartProcessLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$setDebugHotwordLoggingLocked$7$HotwordDetectionConnection()V
    .locals 2

    const-string v0, "HotwordDetectionConnection"

    const-string v1, "Timeout to reset mDebugHotwordLogging to false"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLogging:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$updateServiceIdentity$12$HotwordDetectionConnection(Landroid/service/voice/IHotwordDetectionService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$6;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$6;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    invoke-interface {p1, v0}, Landroid/service/voice/IHotwordDetectionService;->ping(Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method public synthetic lambda$updateStateAfterProcessStart$1$HotwordDetectionConnection(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/service/voice/IHotwordDetectionService;)Ljava/util/concurrent/CompletableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Lcom/android/internal/infra/AndroidFuture;)V

    :try_start_0
    invoke-interface {p3, p1, p2, v1}, Landroid/service/voice/IHotwordDetectionService;->updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "HotwordDetectionConnection"

    const-string v4, "Failed to updateState for HotwordDetectionService"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public synthetic lambda$updateStateAfterProcessStart$2$HotwordDetectionConnection(Ljava/lang/Void;Ljava/lang/Throwable;)V
    .locals 3

    instance-of v0, p2, Ljava/util/concurrent/TimeoutException;

    const-string v1, "HotwordDetectionConnection"

    if-eqz v0, :cond_1

    const-string v0, "updateState timed out"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    const/16 v2, 0x64

    invoke-interface {v0, v2}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onStatusReported(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Failed to report initialization status UNKNOWN"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to update state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method setDebugHotwordLoggingLocked(Z)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDebugHotwordLoggingLocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HotwordDetectionConnection"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->clearDebugHotwordLoggingTimeoutLocked()V

    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLogging:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    const-wide/32 v2, 0x36ee80

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLoggingTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method public startListeningFromExternalSource(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->handleExternalSourceHotwordDetection(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V

    return-void
.end method

.method startListeningFromMic(Landroid/media/AudioFormat;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    .locals 3

    iput-object p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mSoftwareCallback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mPerformingSoftwareHotwordDetection:Z

    if-eqz v1, :cond_0

    const-string v1, "HotwordDetectionConnection"

    const-string v2, "Hotword validation is already in progress, ignoring."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mPerformingSoftwareHotwordDetection:Z

    invoke-direct {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->startListeningFromMicLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method stopListening()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->stopListeningLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method triggerHardwareRecognitionEventForTestLocked(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->detectFromDspSourceForTest(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V

    return-void
.end method

.method updateStateLocked(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    sget-object v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->MAX_UPDATE_TIMEOUT_DURATION:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/time/Instant;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLastRestartInstant:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HotwordDetectionConnection"

    const-string v1, "call updateStateAfterProcessStart"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->updateStateAfterProcessStart(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda5;-><init>(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V

    invoke-virtual {v0, v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    :goto_0
    return-void
.end method
