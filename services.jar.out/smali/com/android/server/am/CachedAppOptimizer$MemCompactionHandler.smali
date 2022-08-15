.class public final Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;
.super Landroid/os/Handler;
.source "CachedAppOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CachedAppOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MemCompactionHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/CachedAppOptimizer;


# direct methods
.method public constructor <init>(Lcom/android/server/am/CachedAppOptimizer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object p1, p1, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const-wide/16 v3, 0x40

    const-wide/16 v5, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v2, v8, :cond_1

    if-eq v2, v7, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v1, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmSystemCompactionsPerformed(Lcom/android/server/am/CachedAppOptimizer;)J

    move-result-wide v7

    add-long/2addr v7, v5

    invoke-static {v1, v7, v8}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fputmSystemCompactionsPerformed(Lcom/android/server/am/CachedAppOptimizer;J)V

    const-string v1, "compactSystem"

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$mcompactSystem(Lcom/android/server/am/CachedAppOptimizer;)V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_5

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget v2, v1, Landroid/os/Message;->arg1:I

    iget v1, v1, Landroid/os/Message;->arg2:I

    iget-object v11, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v11}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcLock(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerGlobalLock;

    move-result-object v11

    monitor-enter v11

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    iget-object v12, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v12}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmPendingCompactionProcesses(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :cond_2
    :try_start_1
    iget-object v12, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v12}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmPendingCompactionProcesses(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ProcessRecord;

    iget-object v15, v12, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v15}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isForceCompact()Z

    move-result v14

    invoke-virtual {v15, v13}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setForceCompact(Z)V

    invoke-virtual {v15}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getReqCompactAction()I

    move-result v3

    invoke-virtual {v12}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    iget-object v7, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v15, v13}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setHasPendingCompact(Z)V

    invoke-virtual {v15}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactAction()I

    move-result v33

    invoke-virtual {v15}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactTime()J

    move-result-wide v34

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    iget-object v11, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v11}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcCompactionsRequested(Lcom/android/server/am/CachedAppOptimizer;)J

    move-result-wide v16

    move-wide/from16 v19, v9

    add-long v8, v16, v5

    invoke-static {v11, v8, v9}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fputmProcCompactionsRequested(Lcom/android/server/am/CachedAppOptimizer;J)V

    if-nez v4, :cond_3

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcCompactionsNoPidThrottled(Lcom/android/server/am/CachedAppOptimizer;)J

    move-result-wide v1

    add-long/2addr v1, v5

    invoke-static {v0, v1, v2}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fputmProcCompactionsNoPidThrottled(Lcom/android/server/am/CachedAppOptimizer;J)V

    return-void

    :cond_3
    if-nez v14, :cond_7

    invoke-virtual {v0, v12, v3}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->shouldOomAdjThrottleCompaction(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcCompactionsOomAdjThrottled(Lcom/android/server/am/CachedAppOptimizer;)J

    move-result-wide v1

    add-long/2addr v1, v5

    invoke-static {v0, v1, v2}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fputmProcCompactionsOomAdjThrottled(Lcom/android/server/am/CachedAppOptimizer;J)V

    return-void

    :cond_4
    move-wide/from16 v8, v19

    invoke-virtual {v0, v12, v8, v9, v3}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->shouldTimeThrottleCompaction(Lcom/android/server/am/ProcessRecord;JI)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcCompactionsTimeThrottled(Lcom/android/server/am/CachedAppOptimizer;)J

    move-result-wide v1

    add-long/2addr v1, v5

    invoke-static {v0, v1, v2}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fputmProcCompactionsTimeThrottled(Lcom/android/server/am/CachedAppOptimizer;J)V

    return-void

    :cond_5
    invoke-virtual {v0, v12, v1, v3}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->shouldThrottleMiscCompaction(Lcom/android/server/am/ProcessRecord;II)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcCompactionsMiscThrottled(Lcom/android/server/am/CachedAppOptimizer;)J

    move-result-wide v1

    add-long/2addr v1, v5

    invoke-static {v0, v1, v2}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fputmProcCompactionsMiscThrottled(Lcom/android/server/am/CachedAppOptimizer;J)V

    return-void

    :cond_6
    iget-object v10, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v10}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcessDependencies(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v10

    invoke-interface {v10, v4}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    move-result-object v10

    invoke-virtual {v0, v3, v4, v7, v10}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->shouldRssThrottleCompaction(IILjava/lang/String;[J)Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcCompactionsRSSThrottled(Lcom/android/server/am/CachedAppOptimizer;)J

    move-result-wide v1

    add-long/2addr v1, v5

    invoke-static {v0, v1, v2}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fputmProcCompactionsRSSThrottled(Lcom/android/server/am/CachedAppOptimizer;J)V

    return-void

    :cond_7
    move-wide/from16 v8, v19

    iget-object v10, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v10}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcessDependencies(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v10

    invoke-interface {v10, v4}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    move-result-object v10

    :cond_8
    const/4 v11, 0x4

    const/4 v14, 0x3

    const/4 v12, 0x1

    if-eq v3, v12, :cond_c

    const/4 v13, 0x2

    if-eq v3, v13, :cond_b

    if-eq v3, v14, :cond_a

    if-eq v3, v11, :cond_9

    goto :goto_0

    :cond_9
    iget-object v13, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v13}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmBfgsCompactionCount(Lcom/android/server/am/CachedAppOptimizer;)I

    move-result v16

    add-int/lit8 v11, v16, 0x1

    invoke-static {v13, v11}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fputmBfgsCompactionCount(Lcom/android/server/am/CachedAppOptimizer;I)V

    goto :goto_0

    :cond_a
    iget-object v11, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v11}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmPersistentCompactionCount(Lcom/android/server/am/CachedAppOptimizer;)I

    move-result v13

    add-int/2addr v13, v12

    invoke-static {v11, v13}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fputmPersistentCompactionCount(Lcom/android/server/am/CachedAppOptimizer;I)V

    goto :goto_0

    :cond_b
    iget-object v11, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v11}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmFullCompactionCount(Lcom/android/server/am/CachedAppOptimizer;)I

    move-result v13

    add-int/2addr v13, v12

    invoke-static {v11, v13}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fputmFullCompactionCount(Lcom/android/server/am/CachedAppOptimizer;I)V

    goto :goto_0

    :cond_c
    iget-object v11, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v11}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmSomeCompactionCount(Lcom/android/server/am/CachedAppOptimizer;)I

    move-result v13

    add-int/2addr v13, v12

    invoke-static {v11, v13}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fputmSomeCompactionCount(Lcom/android/server/am/CachedAppOptimizer;I)V

    :goto_0
    iget-object v11, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v11, v3}, Lcom/android/server/am/CachedAppOptimizer;->resolveCompactionAction(I)I

    move-result v13

    invoke-static {v13}, Lcom/android/server/am/CachedAppOptimizer;->compactActionIntToString(I)Ljava/lang/String;

    move-result-object v11

    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Compact "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ": "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-wide/16 v5, 0x40

    :try_start_3
    invoke-static {v5, v6, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v5, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v5}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcCompactionsPerformed(Lcom/android/server/am/CachedAppOptimizer;)J

    move-result-wide v21

    move v6, v13

    const-wide/16 v19, 0x1

    add-long v12, v21, v19

    invoke-static {v5, v12, v13}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fputmProcCompactionsPerformed(Lcom/android/server/am/CachedAppOptimizer;J)V

    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    move-result-wide v38

    iget-object v5, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v5}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcessDependencies(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v5

    invoke-interface {v5, v11, v4}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->performCompaction(Ljava/lang/String;I)V

    iget-object v5, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v5}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcessDependencies(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    sub-long v31, v13, v8

    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    move-result-wide v40

    const/4 v8, 0x0

    aget-wide v19, v5, v8

    aget-wide v21, v10, v8

    sub-long v19, v19, v21

    const/4 v8, 0x1

    aget-wide v21, v5, v8

    aget-wide v23, v10, v8

    sub-long v21, v21, v23

    const/4 v8, 0x2

    aget-wide v23, v5, v8

    aget-wide v25, v10, v8

    sub-long v23, v23, v25

    const/4 v8, 0x3

    aget-wide v25, v5, v8

    aget-wide v27, v10, v8

    sub-long v25, v25, v27

    const/16 v8, 0x756f

    const/16 v9, 0x12

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v27, 0x0

    aput-object v12, v9, v27

    const/4 v12, 0x1

    aput-object v7, v9, v12

    const/16 v18, 0x2

    aput-object v11, v9, v18

    aget-wide v28, v10, v27

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/16 v16, 0x3

    aput-object v11, v9, v16

    aget-wide v27, v10, v12

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x4

    aput-object v11, v9, v12

    const/4 v11, 0x5

    const/4 v12, 0x2

    aget-wide v27, v10, v12

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v9, v11

    const/4 v11, 0x6

    const/4 v12, 0x3

    aget-wide v27, v10, v12

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v9, v11

    const/4 v11, 0x7

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v9, v11

    const/16 v11, 0x8

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v9, v11

    const/16 v11, 0x9

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v9, v11

    const/16 v11, 0xa

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v9, v11

    const/16 v11, 0xb

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v9, v11

    const/16 v11, 0xc

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v11

    const/16 v11, 0xd

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v9, v11

    const/16 v11, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v11

    const/16 v11, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v11

    const/16 v11, 0x10

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v9, v11

    const/16 v11, 0x11

    sub-long v19, v40, v38

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v9, v11

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v8, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v8}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmRandom(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/Random;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v8

    iget-object v9, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget v9, v9, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_d

    const/16 v11, 0x73

    const/4 v8, 0x0

    aget-wide v19, v10, v8

    const/4 v8, 0x1

    aget-wide v21, v10, v8

    const/4 v8, 0x2

    aget-wide v23, v10, v8

    const/4 v8, 0x3

    aget-wide v9, v10, v8

    const/4 v8, 0x0

    aget-wide v25, v5, v8

    const/4 v8, 0x1

    aget-wide v27, v5, v8

    const/4 v8, 0x2

    aget-wide v29, v5, v8

    const/4 v8, 0x3

    aget-wide v36, v5, v8

    invoke-static {v1}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v1

    move v12, v4

    move-wide/from16 v42, v13

    move-object v13, v7

    move v14, v3

    move-object v3, v15

    move-wide/from16 v15, v19

    move-wide/from16 v17, v21

    move-wide/from16 v19, v23

    move-wide/from16 v21, v9

    move-wide/from16 v23, v25

    move-wide/from16 v25, v27

    move-wide/from16 v27, v29

    move-wide/from16 v29, v36

    move/from16 v36, v2

    move/from16 v37, v1

    invoke-static/range {v11 .. v41}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IJJJJJJJJJIJIIJJ)V

    goto :goto_1

    :cond_d
    move-wide/from16 v42, v13

    move-object v3, v15

    const/4 v8, 0x3

    :goto_1
    iget-object v1, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcLock(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerGlobalLock;

    move-result-object v1

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    move-wide/from16 v9, v42

    invoke-virtual {v3, v9, v10}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setLastCompactTime(J)V

    invoke-virtual {v3, v6}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setLastCompactAction(I)V

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    if-eq v6, v8, :cond_f

    const/4 v1, 0x2

    if-ne v6, v1, :cond_e

    goto :goto_3

    :cond_e
    :goto_2
    const-wide/16 v1, 0x40

    goto :goto_4

    :cond_f
    :goto_3
    iget-object v1, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v1, v1, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;

    invoke-direct {v2, v5}, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;-><init>([J)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_1
    move-exception v0

    move-wide v1, v5

    goto :goto_6

    :catchall_2
    move-exception v0

    const-wide/16 v1, 0x40

    goto :goto_6

    :catch_0
    move-exception v0

    :try_start_9
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occurred while compacting pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    const-wide/16 v1, 0x40

    :goto_4
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    :goto_5
    return-void

    :goto_6
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :catchall_3
    move-exception v0

    :try_start_a
    monitor-exit v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0
.end method

.method public final shouldOomAdjThrottleCompaction(Lcom/android/server/am/ProcessRecord;I)Z
    .locals 1

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 p0, 0x1

    if-eq p2, p0, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    :cond_0
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result p1

    const/16 p2, 0xc8

    if-gt p1, p2, :cond_1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldRssThrottleCompaction(IILjava/lang/String;[J)Z
    .locals 10

    const/4 p3, 0x2

    aget-wide v0, p4, p3

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v2, v2, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;

    const/4 v2, 0x0

    aget-wide v3, p4, v2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x3

    const/4 v7, 0x1

    if-nez v3, :cond_0

    aget-wide v8, p4, v7

    cmp-long v3, v8, v5

    if-nez v3, :cond_0

    aget-wide v8, p4, p3

    cmp-long v3, v8, v5

    if-nez v3, :cond_0

    aget-wide v8, p4, v4

    cmp-long v3, v8, v5

    if-nez v3, :cond_0

    return v7

    :cond_0
    if-eq p1, v4, :cond_1

    if-ne p1, p3, :cond_3

    :cond_1
    iget-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v8, p1, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    cmp-long p1, v8, v5

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v8, p1, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    cmp-long p1, v0, v8

    if-gez p1, :cond_2

    return v7

    :cond_2
    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v0, p1, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    cmp-long p1, v0, v5

    if-lez p1, :cond_3

    invoke-virtual {p2}, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;->getRssAfterCompaction()[J

    move-result-object p1

    aget-wide v0, p4, v7

    aget-wide v5, p1, v7

    sub-long/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    aget-wide v5, p4, p3

    aget-wide p2, p1, p3

    sub-long/2addr v5, p2

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2

    add-long/2addr v0, p2

    aget-wide p2, p4, v4

    aget-wide v3, p1, v4

    sub-long/2addr p2, v3

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    add-long/2addr v0, p1

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    cmp-long p0, v0, p0

    if-gtz p0, :cond_3

    return v7

    :cond_3
    return v2
.end method

.method public final shouldThrottleMiscCompaction(Lcom/android/server/am/ProcessRecord;II)Z
    .locals 0

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    return p1

    :cond_0
    if-nez p3, :cond_1

    return p1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldTimeThrottleCompaction(Lcom/android/server/am/ProcessRecord;JI)Z
    .locals 8

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactAction()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_7

    const/4 p1, 0x2

    const/4 v3, 0x1

    if-ne p4, v3, :cond_2

    if-ne v0, v3, :cond_0

    sub-long v4, p2, v1

    iget-object p4, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v6, p4, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    cmp-long p4, v4, v6

    if-ltz p4, :cond_1

    :cond_0
    if-ne v0, p1, :cond_7

    sub-long/2addr p2, v1

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    cmp-long p0, p2, p0

    if-gez p0, :cond_7

    :cond_1
    return v3

    :cond_2
    if-ne p4, p1, :cond_5

    if-ne v0, v3, :cond_3

    sub-long v4, p2, v1

    iget-object p4, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v6, p4, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    cmp-long p4, v4, v6

    if-ltz p4, :cond_4

    :cond_3
    if-ne v0, p1, :cond_7

    sub-long/2addr p2, v1

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    cmp-long p0, p2, p0

    if-gez p0, :cond_7

    :cond_4
    return v3

    :cond_5
    const/4 p1, 0x3

    if-ne p4, p1, :cond_6

    sub-long/2addr p2, v1

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottlePersistent:J

    cmp-long p0, p2, p0

    if-gez p0, :cond_7

    return v3

    :cond_6
    const/4 p1, 0x4

    if-ne p4, p1, :cond_7

    sub-long/2addr p2, v1

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleBFGS:J

    cmp-long p0, p2, p0

    if-gez p0, :cond_7

    return v3

    :cond_7
    const/4 p0, 0x0

    return p0
.end method
