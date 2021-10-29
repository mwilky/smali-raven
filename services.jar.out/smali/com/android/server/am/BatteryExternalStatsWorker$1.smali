.class Lcom/android/server/am/BatteryExternalStatsWorker$1;
.super Ljava/lang/Object;
.source "BatteryExternalStatsWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryExternalStatsWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BatteryExternalStatsWorker;


# direct methods
.method constructor <init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$000(Lcom/android/server/am/BatteryExternalStatsWorker;)I

    move-result v0

    move v10, v0

    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$100(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$200(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$200(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    :goto_0
    move-object v11, v0

    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$300(Lcom/android/server/am/BatteryExternalStatsWorker;)Z

    move-result v6

    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$400(Lcom/android/server/am/BatteryExternalStatsWorker;)Z

    move-result v7

    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$500(Lcom/android/server/am/BatteryExternalStatsWorker;)I

    move-result v8

    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$600(Lcom/android/server/am/BatteryExternalStatsWorker;)Z

    move-result v9

    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/4 v12, 0x0

    invoke-static {v0, v12}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$002(Lcom/android/server/am/BatteryExternalStatsWorker;I)I

    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$102(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$200(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0, v3}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$702(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$602(Lcom/android/server/am/BatteryExternalStatsWorker;Z)Z

    const/16 v13, 0x3f

    if-ne v10, v13, :cond_1

    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$800(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    :cond_1
    and-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->cancelCpuSyncDueToWakelockChange()V

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$900(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v3, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    move v5, v10

    invoke-static/range {v3 .. v9}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$1000(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;IZZIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    nop

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    and-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_3

    :try_start_4
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$1100(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->copyFromAllUidsCpuTimes()V

    :cond_3
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$1100(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v2

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    array-length v0, v11

    move v3, v12

    :goto_1
    if-ge v3, v0, :cond_4

    aget v5, v11, v3

    const/16 v14, 0x2b

    const/4 v15, -0x1

    invoke-static {v14, v15, v5, v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    iget-object v14, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v14}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$1100(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    move v15, v5

    invoke-virtual/range {v14 .. v19}, Lcom/android/internal/os/BatteryStatsImpl;->removeIsolatedUidLocked(IJJ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$1100(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->clearPendingRemovedUids()V

    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catchall_1
    move-exception v0

    nop

    :try_start_7
    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "BatteryExternalStatsWorker"

    const-string v3, "Error updating external stats: "

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    and-int/lit8 v0, v10, 0x3f

    if-ne v0, v13, :cond_5

    iget-object v2, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    monitor-enter v2

    :try_start_9
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-static {v0, v12, v13}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$1202(Lcom/android/server/am/BatteryExternalStatsWorker;J)J

    monitor-exit v2

    goto :goto_3

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    :cond_5
    :goto_3
    return-void

    :catchall_4
    move-exception v0

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v0
.end method
