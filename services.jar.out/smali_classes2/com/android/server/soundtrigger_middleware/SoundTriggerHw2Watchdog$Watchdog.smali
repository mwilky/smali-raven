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

.field private final mTask:Ljava/util/TimerTask;

.field final synthetic this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;


# direct methods
.method constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->mException:Ljava/lang/Exception;

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog$1;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;)V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->mTask:Ljava/util/TimerTask;

    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->access$200(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;)Ljava/util/Timer;

    move-result-object p1

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;)Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->mException:Ljava/lang/Exception;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->mTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    return-void
.end method
