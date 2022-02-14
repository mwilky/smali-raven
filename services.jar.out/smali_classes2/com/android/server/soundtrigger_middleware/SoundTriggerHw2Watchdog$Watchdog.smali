.class Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;
.super Ljava/lang/Object;
.source "SoundTriggerHw2Watchdog.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Watchdog"
.end annotation


# instance fields
.field private final mException:Ljava/lang/Exception;

.field private final mTask:Lcom/android/server/soundtrigger_middleware/UptimeTimer$Task;

.field final synthetic this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;


# direct methods
.method constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->mException:Ljava/lang/Exception;

    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->access$000(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;)Lcom/android/server/soundtrigger_middleware/UptimeTimer;

    move-result-object p1

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/soundtrigger_middleware/UptimeTimer;->createTask(Ljava/lang/Runnable;J)Lcom/android/server/soundtrigger_middleware/UptimeTimer$Task;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->mTask:Lcom/android/server/soundtrigger_middleware/UptimeTimer$Task;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->mTask:Lcom/android/server/soundtrigger_middleware/UptimeTimer$Task;

    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/UptimeTimer$Task;->cancel()V

    return-void
.end method

.method public synthetic lambda$new$0$SoundTriggerHw2Watchdog$Watchdog()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->mException:Ljava/lang/Exception;

    const-string v1, "SoundTriggerHw2Watchdog"

    const-string v2, "HAL deadline expired. Rebooting."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->access$100()V

    return-void
.end method
