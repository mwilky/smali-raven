.class final Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;
.super Landroid/os/Handler;
.source "CachedAppOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CachedAppOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MemCompactionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/CachedAppOptimizer;


# direct methods
.method private constructor <init>(Lcom/android/server/am/CachedAppOptimizer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object p1, p1, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/CachedAppOptimizer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 62

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const-wide/16 v3, 0x40

    packed-switch v0, :pswitch_data_0

    move-object v2, v1

    goto/16 :goto_f

    :pswitch_0
    const-string v0, "compactSystem"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$2600(Lcom/android/server/am/CachedAppOptimizer;)V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    move-object v2, v1

    goto/16 :goto_f

    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget v15, v2, Landroid/os/Message;->arg1:I

    iget v13, v2, Landroid/os/Message;->arg2:I

    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$1700(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerGlobalLock;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$1800(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v14, v0

    iget-object v0, v14, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getReqCompactAction()I

    move-result v0

    move v12, v0

    invoke-virtual {v14}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    move v10, v0

    iget-object v0, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v9, v0

    invoke-virtual {v11, v8}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setHasPendingCompact(Z)V

    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$1300(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    iget v3, v14, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v3}, Landroid/app/ActivityManagerInternal;->isPendingTopUid(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    if-eqz v0, :cond_0

    :try_start_1
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip compaction since UID is active for  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v1

    move/from16 v56, v13

    move/from16 v60, v15

    goto/16 :goto_e

    :cond_0
    const/4 v0, 0x1

    const/4 v3, 0x2

    if-eq v12, v0, :cond_1

    if-ne v12, v3, :cond_2

    :cond_1
    :try_start_2
    iget-object v4, v14, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_d

    const/16 v8, 0xc8

    if-gt v4, v8, :cond_2

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :cond_2
    :try_start_4
    invoke-virtual {v11}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactAction()I

    move-result v4

    invoke-virtual {v11}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactTime()J

    move-result-wide v17

    move-wide/from16 v38, v17

    iget-object v8, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v8, v8, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    if-nez v10, :cond_3

    return-void

    :cond_3
    const-wide/16 v7, 0x0

    cmp-long v17, v38, v7

    if-eqz v17, :cond_c

    if-ne v12, v0, :cond_7

    if-ne v4, v0, :cond_4

    sub-long v20, v5, v38

    iget-object v7, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    move-object/from16 v22, v9

    iget-wide v8, v7, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    cmp-long v7, v20, v8

    if-ltz v7, :cond_5

    goto :goto_0

    :cond_4
    move-object/from16 v22, v9

    :goto_0
    const/4 v7, 0x2

    if-ne v4, v7, :cond_6

    sub-long v7, v5, v38

    iget-object v9, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v0, v9, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    cmp-long v0, v7, v0

    if-gez v0, :cond_6

    :cond_5
    return-void

    :cond_6
    move-object/from16 v9, p0

    goto :goto_2

    :cond_7
    move-object/from16 v22, v9

    const/4 v0, 0x2

    if-ne v12, v0, :cond_a

    const/4 v0, 0x1

    if-ne v4, v0, :cond_8

    sub-long v0, v5, v38

    move-object/from16 v9, p0

    iget-object v7, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v7, v7, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    cmp-long v0, v0, v7

    if-ltz v0, :cond_9

    goto :goto_1

    :cond_8
    move-object/from16 v9, p0

    :goto_1
    const/4 v0, 0x2

    if-ne v4, v0, :cond_d

    sub-long v0, v5, v38

    iget-object v7, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v7, v7, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    cmp-long v0, v0, v7

    if-gez v0, :cond_d

    :cond_9
    return-void

    :cond_a
    move-object/from16 v9, p0

    const/4 v0, 0x3

    if-ne v12, v0, :cond_b

    sub-long v0, v5, v38

    iget-object v7, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v7, v7, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottlePersistent:J

    cmp-long v0, v0, v7

    if-gez v0, :cond_d

    return-void

    :cond_b
    const/4 v0, 0x4

    if-ne v12, v0, :cond_d

    sub-long v0, v5, v38

    iget-object v7, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v7, v7, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleBFGS:J

    cmp-long v0, v0, v7

    if-gez v0, :cond_d

    return-void

    :cond_c
    move-object/from16 v22, v9

    move-object v9, v1

    :cond_d
    :goto_2
    packed-switch v12, :pswitch_data_1

    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->access$1900()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    move-object v8, v0

    goto :goto_3

    :pswitch_2
    iget-object v0, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionFull:Ljava/lang/String;

    move-object v8, v0

    const/4 v1, 0x0

    goto :goto_3

    :pswitch_3
    iget-object v0, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionSome:Ljava/lang/String;

    move-object v8, v0

    const/4 v1, 0x0

    :goto_3
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->access$1900()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    iget-object v0, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    :cond_f
    iget-object v0, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$2000(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v0

    invoke-interface {v0, v10}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    move-result-object v1

    const/4 v0, 0x2

    aget-wide v40, v1, v0

    const/4 v7, 0x0

    aget-wide v24, v1, v7

    const-wide/16 v18, 0x0

    cmp-long v7, v24, v18

    if-nez v7, :cond_10

    const/4 v7, 0x1

    aget-wide v24, v1, v7

    cmp-long v7, v24, v18

    if-nez v7, :cond_10

    aget-wide v24, v1, v0

    cmp-long v0, v24, v18

    if-nez v0, :cond_10

    const/4 v0, 0x3

    aget-wide v24, v1, v0

    cmp-long v0, v24, v18

    if-nez v0, :cond_10

    return-void

    :cond_10
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->access$1900()[Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x3

    aget-object v0, v0, v7

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->access$1900()[Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x2

    aget-object v0, v0, v7

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_4

    :cond_11
    move-object/from16 v42, v3

    move/from16 v21, v13

    move-object/from16 v24, v14

    goto :goto_5

    :cond_12
    :goto_4
    iget-object v0, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    move/from16 v21, v13

    move-object/from16 v24, v14

    iget-wide v13, v0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    const-wide/16 v18, 0x0

    cmp-long v0, v13, v18

    if-lez v0, :cond_13

    iget-object v0, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v13, v0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    cmp-long v0, v40, v13

    if-gez v0, :cond_13

    return-void

    :cond_13
    if-eqz v3, :cond_14

    iget-object v0, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v13, v0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    const-wide/16 v18, 0x0

    cmp-long v0, v13, v18

    if-lez v0, :cond_14

    invoke-virtual {v3}, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;->getRssAfterCompaction()[J

    move-result-object v0

    const/4 v7, 0x1

    aget-wide v13, v1, v7

    aget-wide v18, v0, v7

    sub-long v13, v13, v18

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    const/4 v7, 0x2

    aget-wide v18, v1, v7

    aget-wide v25, v0, v7

    sub-long v18, v18, v25

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(J)J

    move-result-wide v18

    add-long v13, v13, v18

    const/4 v7, 0x3

    aget-wide v18, v1, v7

    aget-wide v25, v0, v7

    sub-long v18, v18, v25

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(J)J

    move-result-wide v18

    add-long v13, v13, v18

    iget-object v7, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    move-object/from16 v42, v3

    iget-wide v2, v7, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    cmp-long v2, v13, v2

    if-gtz v2, :cond_15

    return-void

    :cond_14
    move-object/from16 v42, v3

    :cond_15
    :goto_5
    packed-switch v12, :pswitch_data_2

    goto :goto_6

    :pswitch_4
    iget-object v0, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$2408(Lcom/android/server/am/CachedAppOptimizer;)I

    goto :goto_6

    :pswitch_5
    iget-object v0, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$2308(Lcom/android/server/am/CachedAppOptimizer;)I

    goto :goto_6

    :pswitch_6
    iget-object v0, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$2208(Lcom/android/server/am/CachedAppOptimizer;)I

    goto :goto_6

    :pswitch_7
    iget-object v0, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$2108(Lcom/android/server/am/CachedAppOptimizer;)I

    nop

    :goto_6
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_c

    :try_start_6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Compact "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_c

    const/4 v2, 0x1

    if-ne v12, v2, :cond_16

    :try_start_7
    const-string/jumbo v2, "some"
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v2, v9

    move/from16 v53, v10

    move/from16 v60, v15

    move/from16 v56, v21

    move-object/from16 v52, v22

    move-object/from16 v57, v24

    move/from16 v61, v12

    move-object v12, v8

    move-object v8, v11

    move/from16 v11, v61

    goto/16 :goto_b

    :catch_0
    move-exception v0

    move-object v2, v9

    move/from16 v53, v10

    move/from16 v60, v15

    move/from16 v56, v21

    move-object/from16 v52, v22

    move-object/from16 v57, v24

    const-wide/16 v9, 0x40

    move/from16 v61, v12

    move-object v12, v8

    move-object v8, v11

    move/from16 v11, v61

    goto/16 :goto_c

    :cond_16
    :try_start_8
    const-string v2, "full"

    :goto_7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_c

    move-object/from16 v2, v22

    :try_start_9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    const-wide/16 v13, 0x40

    :try_start_a
    invoke-static {v13, v14, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    :try_start_b
    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    move-result-wide v13

    move-wide/from16 v43, v13

    iget-object v0, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$2000(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v0

    invoke-interface {v0, v8, v10}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->performCompaction(Ljava/lang/String;I)V

    iget-object v0, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$2000(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v0

    invoke-interface {v0, v10}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    move-result-object v0

    move-object v3, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    sub-long v45, v13, v5

    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    move-result-wide v18

    move-wide/from16 v47, v18

    const/16 v0, 0x756f

    const/16 v7, 0x12

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v16, 0x0

    aput-object v18, v7, v16

    const/16 v18, 0x1

    aput-object v2, v7, v18

    const/16 v18, 0x2

    aput-object v8, v7, v18

    aget-wide v18, v1, v16

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const/16 v19, 0x3

    aput-object v18, v7, v19

    const/16 v18, 0x1

    aget-wide v25, v1, v18

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const/16 v17, 0x4

    aput-object v18, v7, v17

    const/16 v17, 0x5

    const/16 v18, 0x2

    aget-wide v25, v1, v18

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v7, v17

    const/16 v17, 0x6

    const/16 v18, 0x3

    aget-wide v25, v1, v18

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v7, v17

    const/16 v17, 0x7

    const/16 v16, 0x0

    aget-wide v18, v3, v16

    aget-wide v25, v1, v16

    sub-long v18, v18, v25

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v7, v17

    const/16 v17, 0x8

    const/16 v18, 0x1

    aget-wide v25, v3, v18

    aget-wide v27, v1, v18

    sub-long v25, v25, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v7, v17

    const/16 v17, 0x9

    const/16 v18, 0x2

    aget-wide v25, v3, v18

    aget-wide v27, v1, v18

    sub-long v25, v25, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v7, v17

    const/16 v17, 0xa

    const/16 v18, 0x3

    aget-wide v25, v3, v18

    aget-wide v27, v1, v18

    sub-long v25, v25, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v7, v17

    const/16 v17, 0xb

    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v7, v17

    const/16 v17, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v7, v17

    const/16 v17, 0xd

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v7, v17

    const/16 v17, 0xe

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v7, v17

    const/16 v17, 0xf

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v7, v17

    const/16 v17, 0x10

    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v7, v17

    const/16 v17, 0x11

    sub-long v18, v47, v43

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v7, v17

    invoke-static {v0, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v0, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$2500(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget-object v7, v9, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget v7, v7, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    cmpg-float v0, v0, v7

    if-gez v0, :cond_17

    const/16 v7, 0x73

    const/4 v0, 0x0

    :try_start_c
    aget-wide v17, v1, v0

    const/4 v0, 0x1

    aget-wide v25, v1, v0

    const/4 v0, 0x2

    aget-wide v27, v1, v0

    const/4 v0, 0x3

    aget-wide v29, v1, v0

    const/4 v0, 0x0

    aget-wide v31, v3, v0

    const/4 v0, 0x1

    aget-wide v33, v3, v0

    const/4 v0, 0x2

    aget-wide v35, v3, v0

    const/4 v0, 0x3

    aget-wide v49, v3, v0

    invoke-static/range {v21 .. v21}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v37
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move-object/from16 v51, v8

    move v8, v10

    move-object/from16 v52, v2

    move-object v2, v9

    move-object/from16 v9, v52

    move/from16 v53, v10

    move v10, v12

    move-object/from16 v54, v11

    move/from16 v55, v12

    move-wide/from16 v11, v17

    move-wide/from16 v58, v13

    move/from16 v56, v21

    move-object/from16 v57, v24

    move-wide/from16 v13, v25

    move/from16 v60, v15

    move-wide/from16 v15, v27

    move-wide/from16 v17, v29

    move-wide/from16 v19, v31

    move-wide/from16 v21, v33

    move-wide/from16 v23, v35

    move-wide/from16 v25, v49

    move-wide/from16 v27, v45

    move/from16 v29, v4

    move-wide/from16 v30, v38

    move/from16 v32, v60

    move/from16 v33, v37

    move-wide/from16 v34, v43

    move-wide/from16 v36, v47

    :try_start_d
    invoke-static/range {v7 .. v37}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IJJJJJJJJJIJIIJJ)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto/16 :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v12, v51

    move-object/from16 v8, v54

    move/from16 v11, v55

    goto/16 :goto_b

    :catch_1
    move-exception v0

    move-object/from16 v12, v51

    move-object/from16 v8, v54

    move/from16 v11, v55

    const-wide/16 v9, 0x40

    goto/16 :goto_c

    :catchall_3
    move-exception v0

    move-object/from16 v52, v2

    move-object v2, v9

    move/from16 v53, v10

    move/from16 v60, v15

    move/from16 v56, v21

    move-object/from16 v57, v24

    move/from16 v61, v12

    move-object v12, v8

    move-object v8, v11

    move/from16 v11, v61

    goto/16 :goto_b

    :catch_2
    move-exception v0

    move-object/from16 v52, v2

    move-object v2, v9

    move/from16 v53, v10

    move/from16 v60, v15

    move/from16 v56, v21

    move-object/from16 v57, v24

    const-wide/16 v9, 0x40

    move/from16 v61, v12

    move-object v12, v8

    move-object v8, v11

    move/from16 v11, v61

    goto/16 :goto_c

    :cond_17
    move-object/from16 v52, v2

    move-object/from16 v51, v8

    move-object v2, v9

    move/from16 v53, v10

    move-object/from16 v54, v11

    move/from16 v55, v12

    move-wide/from16 v58, v13

    move/from16 v60, v15

    move/from16 v56, v21

    move-object/from16 v57, v24

    const/4 v0, 0x3

    :goto_8
    :try_start_e
    iget-object v7, v2, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v7}, Lcom/android/server/am/CachedAppOptimizer;->access$1700(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerGlobalLock;

    move-result-object v7

    monitor-enter v7
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    :try_start_f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    move-object/from16 v8, v54

    move-wide/from16 v9, v58

    :try_start_10
    invoke-virtual {v8, v9, v10}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setLastCompactTime(J)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    move/from16 v11, v55

    :try_start_11
    invoke-virtual {v8, v11}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setLastCompactAction(I)V

    monitor-exit v7
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :try_start_12
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->access$1900()[Ljava/lang/String;

    move-result-object v7

    aget-object v0, v7, v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    move-object/from16 v12, v51

    :try_start_13
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->access$1900()[Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x2

    aget-object v0, v0, v7

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_18
    iget-object v0, v2, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v2, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v13, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;

    invoke-direct {v13, v3}, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;-><init>([J)V

    invoke-virtual {v0, v7, v13}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    :cond_19
    const-wide/16 v9, 0x40

    goto/16 :goto_d

    :catchall_4
    move-exception v0

    move-object/from16 v12, v51

    goto/16 :goto_b

    :catch_3
    move-exception v0

    move-object/from16 v12, v51

    const-wide/16 v9, 0x40

    goto/16 :goto_c

    :catchall_5
    move-exception v0

    move-object/from16 v12, v51

    goto :goto_9

    :catchall_6
    move-exception v0

    move-object/from16 v12, v51

    move/from16 v11, v55

    goto :goto_9

    :catchall_7
    move-exception v0

    move-object/from16 v12, v51

    move-object/from16 v8, v54

    move/from16 v11, v55

    move-wide/from16 v9, v58

    :goto_9
    :try_start_14
    monitor-exit v7
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    :try_start_15
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    :catchall_8
    move-exception v0

    goto/16 :goto_b

    :catch_4
    move-exception v0

    const-wide/16 v9, 0x40

    goto/16 :goto_c

    :catchall_9
    move-exception v0

    goto :goto_9

    :catchall_a
    move-exception v0

    move-object/from16 v12, v51

    move-object/from16 v8, v54

    move/from16 v11, v55

    goto/16 :goto_b

    :catch_5
    move-exception v0

    move-object/from16 v12, v51

    move-object/from16 v8, v54

    move/from16 v11, v55

    const-wide/16 v9, 0x40

    goto/16 :goto_c

    :catch_6
    move-exception v0

    move-object/from16 v52, v2

    move-object v2, v9

    move/from16 v53, v10

    move/from16 v60, v15

    move/from16 v56, v21

    move-object/from16 v57, v24

    move/from16 v61, v12

    move-object v12, v8

    move-object v8, v11

    move/from16 v11, v61

    move-wide v9, v13

    goto :goto_a

    :catchall_b
    move-exception v0

    move-object/from16 v52, v2

    move-object v2, v9

    move/from16 v53, v10

    move/from16 v60, v15

    move/from16 v56, v21

    move-object/from16 v57, v24

    move/from16 v61, v12

    move-object v12, v8

    move-object v8, v11

    move/from16 v11, v61

    goto :goto_b

    :catch_7
    move-exception v0

    move-object/from16 v52, v2

    move-object v2, v9

    move/from16 v53, v10

    move/from16 v60, v15

    move/from16 v56, v21

    move-object/from16 v57, v24

    move/from16 v61, v12

    move-object v12, v8

    move-object v8, v11

    move/from16 v11, v61

    const-wide/16 v9, 0x40

    :goto_a
    goto :goto_c

    :catch_8
    move-exception v0

    move-object v2, v9

    move/from16 v53, v10

    move/from16 v60, v15

    move/from16 v56, v21

    move-object/from16 v52, v22

    move-object/from16 v57, v24

    move/from16 v61, v12

    move-object v12, v8

    move-object v8, v11

    move/from16 v11, v61

    const-wide/16 v9, 0x40

    goto :goto_c

    :catchall_c
    move-exception v0

    move-object v2, v9

    move/from16 v53, v10

    move/from16 v60, v15

    move/from16 v56, v21

    move-object/from16 v52, v22

    move-object/from16 v57, v24

    move/from16 v61, v12

    move-object v12, v8

    move-object v8, v11

    move/from16 v11, v61

    :goto_b
    const-wide/16 v9, 0x40

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :catch_9
    move-exception v0

    move-object v2, v9

    move/from16 v53, v10

    move/from16 v60, v15

    move/from16 v56, v21

    move-object/from16 v52, v22

    move-object/from16 v57, v24

    const-wide/16 v9, 0x40

    move/from16 v61, v12

    move-object v12, v8

    move-object v8, v11

    move/from16 v11, v61

    :goto_c
    nop

    :goto_d
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    nop

    goto :goto_f

    :catchall_d
    move-exception v0

    move-object v2, v1

    move/from16 v56, v13

    move/from16 v60, v15

    :goto_e
    :try_start_16
    monitor-exit v7
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :catchall_e
    move-exception v0

    goto :goto_e

    :goto_f
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
