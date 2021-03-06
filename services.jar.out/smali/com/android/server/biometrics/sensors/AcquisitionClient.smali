.class public abstract Lcom/android/server/biometrics/sensors/AcquisitionClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "AcquisitionClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/Interruptable;
.implements Lcom/android/server/biometrics/sensors/ErrorConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/biometrics/sensors/HalClientMonitor<",
        "TT;>;",
        "Lcom/android/server/biometrics/sensors/Interruptable;",
        "Lcom/android/server/biometrics/sensors/ErrorConsumer;"
    }
.end annotation


# static fields
.field private static final ERROR_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

.field private static final SUCCESS_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

.field private static final TAG:Ljava/lang/String; = "Biometrics/AcquisitionClient"

.field private static final VIBRATION_SONIFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field private mAlreadyCancelled:Z

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mShouldSendErrorToClient:Z

.field protected final mShouldVibrate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->VIBRATION_SONIFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    nop

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    sput-object v0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->SUCCESS_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    nop

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    sput-object v0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->ERROR_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IIZIII)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon<",
            "TT;>;",
            "Landroid/os/IBinder;",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "I",
            "Ljava/lang/String;",
            "IIZIII)V"
        }
    .end annotation

    move-object v12, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IIIII)V

    const/4 v0, 0x1

    iput-boolean v0, v12, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mShouldSendErrorToClient:Z

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, v12, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mPowerManager:Landroid/os/PowerManager;

    move/from16 v0, p9

    iput-boolean v0, v12, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mShouldVibrate:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mAlreadyCancelled:Z

    if-eqz v0, :cond_0

    const-string v0, "Biometrics/AcquisitionClient"

    const-string v1, "Cancel was already requested"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->stopHalOperation()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mAlreadyCancelled:Z

    return-void
.end method

.method public cancelWithoutStarting(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelWithoutStarting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Biometrics/AcquisitionClient"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getSensorId()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getCookie()I

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Failed to invoke sendError"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v1, 0x1

    invoke-interface {p1, p0, v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method final notifyUserActivity()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    return-void
.end method

.method public onAcquired(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquiredInternal(IIZ)V

    return-void
.end method

.method protected final onAcquiredInternal(IIZ)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getTargetUserId()I

    move-result v1

    invoke-super {p0, v0, p1, p2, v1}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->logOnAcquired(Landroid/content/Context;III)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Acquired: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", shouldSend: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Biometrics/AcquisitionClient"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->notifyUserActivity()V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getSensorId()I

    move-result v2

    invoke-virtual {v0, v2, p1, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onAcquired(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Failed to invoke sendAcquired"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_0
    return-void
.end method

.method public onError(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onErrorInternal(IIZ)V

    return-void
.end method

.method protected onErrorInternal(IIZ)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onErrorInternal code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", finish: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Biometrics/AcquisitionClient"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mShouldSendErrorToClient:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getTargetUserId()I

    move-result v3

    invoke-virtual {p0, v0, p1, p2, v3}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->logOnError(Landroid/content/Context;III)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mShouldSendErrorToClient:Z

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getSensorId()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getCookie()I

    move-result v4

    invoke-virtual {v0, v3, v4, p1, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Failed to invoke sendError"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    if-nez v0, :cond_2

    const-string v0, "Callback is null, perhaps the client hasn\'t been started yet?"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    invoke-interface {v0, p0, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onUserCanceled()V
    .locals 2

    const-string v0, "Biometrics/AcquisitionClient"

    const-string/jumbo v1, "onUserCanceled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onErrorInternal(IIZ)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->stopHalOperation()V

    return-void
.end method

.method protected abstract stopHalOperation()V
.end method

.method public unableToStart()V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getSensorId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getCookie()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Biometrics/AcquisitionClient"

    const-string v2, "Unable to send error"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method protected final vibrateError()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/server/biometrics/sensors/AcquisitionClient;->ERROR_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "::error"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/server/biometrics/sensors/AcquisitionClient;->VIBRATION_SONIFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/media/AudioAttributes;)V

    :cond_0
    return-void
.end method

.method protected final vibrateSuccess()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/server/biometrics/sensors/AcquisitionClient;->SUCCESS_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "::success"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/server/biometrics/sensors/AcquisitionClient;->VIBRATION_SONIFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/media/AudioAttributes;)V

    :cond_0
    return-void
.end method
