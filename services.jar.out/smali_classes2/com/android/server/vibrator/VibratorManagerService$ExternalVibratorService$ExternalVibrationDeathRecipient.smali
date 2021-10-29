.class Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService$ExternalVibrationDeathRecipient;
.super Ljava/lang/Object;
.source "VibratorManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExternalVibrationDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;


# direct methods
.method private constructor <init>(Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService$ExternalVibrationDeathRecipient;->this$1:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;Lcom/android/server/vibrator/VibratorManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService$ExternalVibrationDeathRecipient;-><init>(Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService$ExternalVibrationDeathRecipient;->this$1:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;

    iget-object v0, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->access$100(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService$ExternalVibrationDeathRecipient;->this$1:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;

    iget-object v1, v1, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->access$1500(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService$ExternalVibrationDeathRecipient;->this$1:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;

    sget-object v2, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED:Lcom/android/server/vibrator/Vibration$Status;

    invoke-static {v1, v2}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->access$2200(Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;Lcom/android/server/vibrator/Vibration$Status;)V

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
