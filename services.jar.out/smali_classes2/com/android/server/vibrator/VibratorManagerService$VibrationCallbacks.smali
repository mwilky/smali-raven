.class final Lcom/android/server/vibrator/VibratorManagerService$VibrationCallbacks;
.super Ljava/lang/Object;
.source "VibratorManagerService.java"

# interfaces
.implements Lcom/android/server/vibrator/VibrationThread$VibrationCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibratorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VibrationCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService$VibrationCallbacks;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    return-void
.end method


# virtual methods
.method public cancelSyncedVibration()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->access$800(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->cancelSynced()V

    return-void
.end method

.method public onVibrationCompleted(JLcom/android/server/vibrator/Vibration$Status;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->access$100(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->access$200(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationThread;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->access$200(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibrationThread;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/server/vibrator/Vibration;->id:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1, p3}, Lcom/android/server/vibrator/VibratorManagerService;->access$900(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/Vibration$Status;)V

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

.method public onVibratorsReleased()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->access$100(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/vibrator/VibratorManagerService;->access$202(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/VibrationThread;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->access$400(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationThread;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->access$400(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationThread;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v3, v2}, Lcom/android/server/vibrator/VibratorManagerService;->access$402(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/VibrationThread;

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v2, v1}, Lcom/android/server/vibrator/VibratorManagerService;->access$1000(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/Vibration$Status;

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

.method public prepareSyncedVibration(J[I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->access$700(Lcom/android/server/vibrator/VibratorManagerService;)J

    move-result-wide v0

    and-long/2addr v0, p1

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->access$800(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->prepareSynced([I)Z

    move-result v0

    return v0
.end method

.method public triggerSyncedVibration(J)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->access$800(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->triggerSynced(J)Z

    move-result v0

    return v0
.end method
