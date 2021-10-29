.class final Lcom/android/server/vibrator/VibrationThread$FinishVibrateStep;
.super Lcom/android/server/vibrator/VibrationThread$Step;
.source "VibrationThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibrationThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FinishVibrateStep"
.end annotation


# instance fields
.field public final startedStep:Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;

.field final synthetic this$0:Lcom/android/server/vibrator/VibrationThread;


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibrationThread;Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationThread$FinishVibrateStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    const-wide v0, 0x7fffffffffffffffL

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/vibrator/VibrationThread$Step;-><init>(Lcom/android/server/vibrator/VibrationThread;J)V

    iput-object p2, p0, Lcom/android/server/vibrator/VibrationThread$FinishVibrateStep;->startedStep:Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;

    return-void
.end method


# virtual methods
.method public cancel()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/VibrationThread$Step;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationThread$FinishVibrateStep;->cancelImmediately()V

    invoke-static {}, Lcom/android/server/vibrator/VibrationThread;->access$300()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public cancelImmediately()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread$FinishVibrateStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationThread;->access$800(Lcom/android/server/vibrator/VibrationThread;)V

    return-void
.end method

.method public isCleanUp()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public play()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/VibrationThread$Step;",
            ">;"
        }
    .end annotation

    const-wide/32 v0, 0x800000

    const-string v2, "FinishVibrateStep"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread$FinishVibrateStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v2}, Lcom/android/server/vibrator/VibrationThread;->access$800(Lcom/android/server/vibrator/VibrationThread;)V

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread$FinishVibrateStep;->startedStep:Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;

    invoke-static {v2}, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->access$900(Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;)Lcom/android/server/vibrator/VibrationThread$Step;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/server/vibrator/VibrationThread;->access$300()Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/server/vibrator/VibrationThread$Step;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method
