.class public Lcom/android/server/wm/AnrController$1;
.super Ljava/lang/Thread;
.source "AnrController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/AnrController;->preDumpIfLockTooSlow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/AnrController;

.field public final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic val$monitor:Ljava/lang/Runnable;

.field public final synthetic val$name:Ljava/lang/String;

.field public final synthetic val$now:J

.field public final synthetic val$shouldDumpSf:[Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AnrController;Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/AnrController$1;->this$0:Lcom/android/server/wm/AnrController;

    iput-object p2, p0, Lcom/android/server/wm/AnrController$1;->val$monitor:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/server/wm/AnrController$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-wide p4, p0, Lcom/android/server/wm/AnrController$1;->val$now:J

    iput-object p6, p0, Lcom/android/server/wm/AnrController$1;->val$name:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/wm/AnrController$1;->val$shouldDumpSf:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/AnrController$1;->val$monitor:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/server/wm/AnrController$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/AnrController$1;->val$now:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/android/server/wm/AnrController;->-$$Nest$sfgetPRE_DUMP_MONITOR_TIMEOUT_MS()J

    move-result-wide v2

    cmp-long v2, v0, v2

    const-string v3, "WindowManager"

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pre-dump acquired "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/AnrController$1;->val$name:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AnrController$1;->val$name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/AnrController$1;->val$shouldDumpSf:[Z

    const/4 v0, 0x0

    aput-boolean v0, p0, v0

    :cond_1
    :goto_0
    return-void
.end method
