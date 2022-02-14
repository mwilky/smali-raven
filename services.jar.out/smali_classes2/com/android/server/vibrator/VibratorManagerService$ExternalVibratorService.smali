.class final Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;
.super Landroid/os/IExternalVibratorService$Stub;
.source "VibratorManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibratorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ExternalVibratorService"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService$ExternalVibrationDeathRecipient;
    }
.end annotation


# instance fields
.field mCurrentExternalDeathRecipient:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService$ExternalVibrationDeathRecipient;

.field final synthetic this$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-direct {p0}, Landroid/os/IExternalVibratorService$Stub;-><init>()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;Lcom/android/server/vibrator/Vibration$Status;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->stopExternalVibrateLocked(Lcom/android/server/vibrator/Vibration$Status;)V

    return-void
.end method

.method private hasExternalControlCapability()Z
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->access$1400(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->access$1400(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/android/server/vibrator/VibratorController;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private stopExternalVibrateLocked(Lcom/android/server/vibrator/Vibration$Status;)V
    .locals 4

    const-wide/32 v0, 0x800000

    const-string v2, "stopExternalVibrateLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v2}, Lcom/android/server/vibrator/VibratorManagerService;->access$1500(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v2}, Lcom/android/server/vibrator/VibratorManagerService;->access$1500(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/android/server/vibrator/VibratorManagerService;->access$1800(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;Lcom/android/server/vibrator/Vibration$Status;)V

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v2}, Lcom/android/server/vibrator/VibratorManagerService;->access$1500(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->mCurrentExternalDeathRecipient:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService$ExternalVibrationDeathRecipient;

    invoke-virtual {v2, v3}, Landroid/os/ExternalVibration;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->mCurrentExternalDeathRecipient:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService$ExternalVibrationDeathRecipient;

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v3, v2}, Lcom/android/server/vibrator/VibratorManagerService;->access$1502(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/vibrator/VibratorManagerService;->access$2100(Lcom/android/server/vibrator/VibratorManagerService;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method


# virtual methods
.method public onExternalVibrationStart(Landroid/os/ExternalVibration;)I
    .locals 9

    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->hasExternalControlCapability()Z

    move-result v0

    const/16 v1, -0x64

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "android.permission.VIBRATE"

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getUid()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "VibratorManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " tried to play externally controlled vibration without VIBRATE permission, ignoring."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v3}, Lcom/android/server/vibrator/VibratorManagerService;->access$100(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getUid()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/android/server/vibrator/VibratorManagerService;->access$1600(Lcom/android/server/vibrator/VibratorManagerService;ILjava/lang/String;Landroid/os/VibrationAttributes;)Lcom/android/server/vibrator/Vibration$Status;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    new-instance v4, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    iget-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-direct {v4, v7, p1, v6}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/ExternalVibration;Lcom/android/server/vibrator/VibratorManagerService$1;)V

    iput v1, v4, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:I

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1, v4, v5}, Lcom/android/server/vibrator/VibratorManagerService;->access$1800(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;Lcom/android/server/vibrator/Vibration$Status;)V

    iget v1, v4, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:I

    monitor-exit v3

    return v1

    :cond_2
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->access$1500(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->access$1500(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v1, p1}, Landroid/os/ExternalVibration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->access$1500(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v1

    iget v1, v1, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:I

    monitor-exit v3

    return v1

    :cond_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->access$1500(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->access$200(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationThread;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1, v6}, Lcom/android/server/vibrator/VibratorManagerService;->access$402(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/VibrationThread;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->access$200(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibrationThread;->cancelImmediately()V

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->access$200(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationThread;

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->access$1500(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v1}, Landroid/os/ExternalVibration;->mute()Z

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->access$1500(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v7

    sget-object v8, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED:Lcom/android/server/vibrator/Vibration$Status;

    invoke-static {v1, v7, v8}, Lcom/android/server/vibrator/VibratorManagerService;->access$1800(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;Lcom/android/server/vibrator/Vibration$Status;)V

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->access$1500(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v1

    move-object v0, v1

    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    new-instance v7, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    invoke-direct {v7, v1, p1, v6}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/ExternalVibration;Lcom/android/server/vibrator/VibratorManagerService$1;)V

    invoke-static {v1, v7}, Lcom/android/server/vibrator/VibratorManagerService;->access$1502(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    new-instance v1, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService$ExternalVibrationDeathRecipient;

    invoke-direct {v1, p0, v6}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService$ExternalVibrationDeathRecipient;-><init>(Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;Lcom/android/server/vibrator/VibratorManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->mCurrentExternalDeathRecipient:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService$ExternalVibrationDeathRecipient;

    invoke-virtual {p1, v1}, Landroid/os/ExternalVibration;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->access$1500(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v1

    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v6}, Lcom/android/server/vibrator/VibratorManagerService;->access$2000(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationScaler;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/vibrator/VibrationScaler;->getExternalVibrationScale(I)I

    move-result v6

    iput v6, v1, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:I

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->access$1500(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v1

    iget v1, v1, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:I

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_6

    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v5, "Interrupted while waiting for vibration to finish before starting external control"

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_1
    if-nez v0, :cond_7

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v3, v4}, Lcom/android/server/vibrator/VibratorManagerService;->access$2100(Lcom/android/server/vibrator/VibratorManagerService;Z)V

    :cond_7
    return v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onExternalVibrationStop(Landroid/os/ExternalVibration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->access$100(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->access$1500(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->access$1500(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v1, p1}, Landroid/os/ExternalVibration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/vibrator/Vibration$Status;->FINISHED:Lcom/android/server/vibrator/Vibration$Status;

    invoke-direct {p0, v1}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->stopExternalVibrateLocked(Lcom/android/server/vibrator/Vibration$Status;)V

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
