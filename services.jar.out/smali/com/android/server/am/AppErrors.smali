.class Lcom/android/server/am/AppErrors;
.super Ljava/lang/Object;
.source "AppErrors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppErrors$BadProcessInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private mAppsNotReportingCrashes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBadProcessLock:Ljava/lang/Object;

.field private volatile mBadProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/server/am/AppErrors$BadProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mPackageWatchdog:Lcom/android/server/PackageWatchdog;

.field private final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field private final mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/PackageWatchdog;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->assertRuntimeOverlayThemable()V

    iput-object p2, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p2, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object p1, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/am/AppErrors;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    return-void
.end method

.method private crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;II)V
    .locals 24

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iget-object v10, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    iget-object v0, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    iget-object v9, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    if-eqz v10, :cond_0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_0

    :cond_0
    if-eqz v10, :cond_1

    move-object v0, v10

    move-object/from16 v16, v0

    goto :goto_0

    :cond_1
    move-object/from16 v16, v0

    :goto_0
    const/4 v0, 0x0

    if-eqz v12, :cond_3

    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPackageListWithVersionCode()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/PackageWatchdog;->onPackageFailure(Ljava/util/List;I)V

    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    if-eqz v13, :cond_2

    const-string v2, "Native crash"

    iget-object v3, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x5

    goto :goto_1

    :cond_2
    const/4 v2, 0x4

    :goto_1
    const-string v3, "crash"

    invoke-virtual {v1, v12, v2, v0, v3}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    :cond_3
    if-eqz v12, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->computeRelaunchReason()I

    move-result v1

    goto :goto_2

    :cond_4
    move v1, v0

    :goto_2
    move v7, v1

    new-instance v1, Lcom/android/server/am/AppErrorResult;

    invoke-direct {v1}, Lcom/android/server/am/AppErrorResult;-><init>()V

    move-object v8, v1

    iget-object v6, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v10

    move-object/from16 v5, v16

    move-object/from16 v17, v6

    move-object v6, v9

    move v13, v7

    move-object/from16 v18, v8

    move-wide v7, v14

    move-object/from16 v19, v9

    move/from16 v9, p3

    move-object/from16 v20, v10

    move/from16 v10, p4

    :try_start_1
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/AppErrors;->handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    if-eqz v1, :cond_5

    :try_start_2
    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v8, v18

    move/from16 v18, v13

    move-object/from16 v13, p2

    goto/16 :goto_d

    :cond_5
    const/4 v1, 0x2

    if-ne v13, v1, :cond_6

    :try_start_3
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_6
    if-eqz v12, :cond_7

    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v1

    if-eqz v1, :cond_7

    monitor-exit v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_7
    if-eqz v12, :cond_8

    :try_start_5
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/BatteryStatsService;->noteProcessCrash(Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_8
    :try_start_6
    new-instance v1, Lcom/android/server/am/AppErrorDialog$Data;

    invoke-direct {v1}, Lcom/android/server/am/AppErrorDialog$Data;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_a

    move-object v7, v1

    move-object/from16 v8, v18

    :try_start_7
    iput-object v8, v7, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    iput-object v12, v7, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v12, :cond_f

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    move-object/from16 v4, v16

    move-object/from16 v5, v19

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v1

    if-nez v1, :cond_9

    move/from16 v18, v13

    move-object/from16 v13, p2

    goto/16 :goto_c

    :cond_9
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    iget v2, v7, Lcom/android/server/am/AppErrorDialog$Data;->taskId:I

    move v9, v2

    iput-object v7, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    nop

    monitor-exit v17
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-virtual {v8}, Lcom/android/server/am/AppErrorResult;->get()I

    move-result v1

    const/4 v7, 0x0

    iget-object v2, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/16 v3, 0x13c

    invoke-static {v2, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    const/4 v2, 0x6

    if-eq v1, v2, :cond_b

    const/4 v2, 0x7

    if-ne v1, v2, :cond_a

    goto :goto_3

    :cond_a
    move v10, v1

    goto :goto_4

    :cond_b
    :goto_3
    const/4 v1, 0x1

    move v10, v1

    :goto_4
    packed-switch v10, :pswitch_data_0

    :pswitch_0
    move/from16 v18, v13

    move-object/from16 v13, p2

    goto/16 :goto_a

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move/from16 v18, v13

    move-object/from16 v13, p2

    goto/16 :goto_a

    :pswitch_2
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/AppErrors;->stopReportingCrashesLBp(Lcom/android/server/am/ProcessRecord;)V

    monitor-exit v1

    move/from16 v18, v13

    move-object/from16 v13, p2

    goto/16 :goto_a

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    :pswitch_3
    iget-object v6, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x4

    const-string v0, "crash"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object/from16 v2, p1

    move-object/from16 v17, v6

    move-object v6, v0

    :try_start_a
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z

    monitor-exit v17
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, -0x1

    if-eq v9, v0, :cond_c

    :try_start_b
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lcom/android/server/am/ActivityManagerService;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not restart taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    move/from16 v18, v13

    move-object/from16 v13, p2

    goto/16 :goto_a

    :cond_c
    move/from16 v18, v13

    move-object/from16 v13, p2

    goto/16 :goto_a

    :catchall_2
    move-exception v0

    move-object/from16 v17, v6

    :goto_6
    :try_start_c
    monitor-exit v17
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_6

    :pswitch_4
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v1

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    move/from16 v18, v13

    move-object/from16 v13, p2

    :try_start_e
    invoke-virtual {v11, v12, v14, v15, v13}, Lcom/android/server/am/AppErrors;->createAppErrorIntentLOSP(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    move-result-object v0

    move-object v7, v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_a

    :catchall_4
    move-exception v0

    goto :goto_7

    :catchall_5
    move-exception v0

    move/from16 v18, v13

    move-object/from16 v13, p2

    :goto_7
    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :pswitch_5
    move/from16 v18, v13

    move-object/from16 v13, p2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v21

    :try_start_10
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onHandleAppCrash(Lcom/android/server/wm/WindowProcessController;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v6, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    :try_start_11
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const-string v17, "crash"
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    move-object/from16 v2, p1

    move-object/from16 v23, v6

    move-object/from16 v6, v17

    :try_start_12
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z

    monitor-exit v23
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    :try_start_13
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    goto :goto_9

    :catchall_6
    move-exception v0

    move-object/from16 v23, v6

    :goto_8
    :try_start_14
    monitor-exit v23
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    :try_start_15
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    :catchall_7
    move-exception v0

    goto :goto_8

    :cond_d
    :goto_9
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_a

    :catchall_8
    move-exception v0

    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :goto_a
    if-eqz v7, :cond_e

    :try_start_16
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    iget v2, v12, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_16
    .catch Landroid/content/ActivityNotFoundException; {:try_start_16 .. :try_end_16} :catch_1

    goto :goto_b

    :catch_1
    move-exception v0

    const-string v1, "ActivityManager"

    const-string v2, "bug report receiver dissappeared"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    :goto_b
    return-void

    :cond_f
    move/from16 v18, v13

    move-object/from16 v13, p2

    :goto_c
    :try_start_17
    monitor-exit v17
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_9
    move-exception v0

    move/from16 v18, v13

    move-object/from16 v13, p2

    goto :goto_d

    :catchall_a
    move-exception v0

    move-object/from16 v8, v18

    move/from16 v18, v13

    move-object/from16 v13, p2

    goto :goto_d

    :catchall_b
    move-exception v0

    move-object/from16 v17, v6

    move/from16 v18, v7

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    :goto_d
    :try_start_18
    monitor-exit v17
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_c
    move-exception v0

    goto :goto_d

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createAppErrorReportLOSP(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;
    .locals 4

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getErrorReportReceiver()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->isCrashing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->isNotResponding()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->isForceCrashReport()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    new-instance v1, Landroid/app/ApplicationErrorReport;

    invoke-direct {v1}, Landroid/app/ApplicationErrorReport;-><init>()V

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getErrorReportReceiver()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    iput-wide p2, v1, Landroid/app/ApplicationErrorReport;->time:J

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, Landroid/app/ApplicationErrorReport;->systemApp:Z

    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->isCrashing()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->isForceCrashReport()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->isNotResponding()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x2

    iput v2, v1, Landroid/app/ApplicationErrorReport;->type:I

    new-instance v2, Landroid/app/ApplicationErrorReport$AnrInfo;

    invoke-direct {v2}, Landroid/app/ApplicationErrorReport$AnrInfo;-><init>()V

    iput-object v2, v1, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, v1, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getNotRespondingReport()Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/ApplicationErrorReport$AnrInfo;->activity:Ljava/lang/String;

    iget-object v2, v1, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getNotRespondingReport()Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/ApplicationErrorReport$AnrInfo;->cause:Ljava/lang/String;

    iget-object v2, v1, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getNotRespondingReport()Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/ApplicationErrorReport$AnrInfo;->info:Ljava/lang/String;

    goto :goto_2

    :cond_4
    :goto_1
    iput v3, v1, Landroid/app/ApplicationErrorReport;->type:I

    iput-object p4, v1, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    :cond_5
    :goto_2
    return-object v1
.end method

.method private handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z
    .locals 21

    move-object/from16 v10, p1

    if-eqz v10, :cond_0

    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    if-eqz v10, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    move v4, v0

    goto :goto_1

    :cond_1
    move/from16 v4, p8

    :goto_1
    if-eqz v10, :cond_2

    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move v9, v0

    goto :goto_2

    :cond_2
    move/from16 v9, p9

    :goto_2
    move-object/from16 v11, p0

    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-object/from16 v15, p2

    iget-object v14, v15, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    new-instance v20, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda0;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppErrors;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v13, v3

    move-object v0, v14

    move v14, v4

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-wide/from16 v17, p6

    move-object/from16 v19, v0

    invoke-virtual/range {v12 .. v20}, Lcom/android/server/wm/ActivityTaskManagerInternal;->handleAppCrashInActivityController(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method private handleAppCrashLSPB(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v2}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v2

    const-string v3, "anr_show_background"

    const/4 v11, 0x0

    invoke-static {v1, v3, v11, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v11

    :goto_0
    move v13, v1

    iget-object v14, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v15, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v6, v7, Lcom/android/server/am/ProcessRecord;->userId:I

    iget-boolean v5, v7, Lcom/android/server/am/ProcessRecord;->isolated:Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v4

    iget-object v2, v7, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    iget-boolean v1, v7, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, v14, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3, v14, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    move-object/from16 v17, v1

    move-object/from16 v18, v3

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    move-object v3, v1

    move-object/from16 v17, v1

    move-object/from16 v18, v3

    :goto_1
    iget-object v1, v7, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v1, v9, v10}, Lcom/android/server/am/ProcessServiceRecord;->incServiceCrashCountLocked(J)Z

    move-result v19

    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    sget v1, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    int-to-long v11, v1

    add-long v20, v20, v11

    cmp-long v1, v9, v20

    if-gez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    move v11, v1

    if-nez v11, :cond_7

    invoke-direct {v0, v7, v9, v10}, Lcom/android/server/am/AppErrors;->isProcOverCrashLimitLBp(Lcom/android/server/am/ProcessRecord;J)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v12, p2

    move-object/from16 v23, v2

    goto/16 :goto_3

    :cond_3
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-object/from16 v12, p2

    invoke-virtual {v1, v4, v12}, Lcom/android/server/wm/ActivityTaskManagerInternal;->finishTopCrashedActivities(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)I

    move-result v1

    if-eqz v8, :cond_4

    iput v1, v8, Lcom/android/server/am/AppErrorDialog$Data;->taskId:I

    :cond_4
    if-eqz v8, :cond_6

    if-eqz v18, :cond_6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    sget v3, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    move/from16 v22, v1

    move-object/from16 v23, v2

    int-to-long v1, v3

    add-long v20, v20, v1

    cmp-long v1, v9, v20

    if-gez v1, :cond_5

    const/4 v1, 0x1

    iput-boolean v1, v8, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    move/from16 v24, v5

    move-wide/from16 v25, v9

    move/from16 v20, v11

    move/from16 v21, v15

    move-object/from16 v11, v23

    move-object/from16 v23, v4

    move v9, v6

    goto/16 :goto_7

    :cond_5
    move/from16 v24, v5

    move-wide/from16 v25, v9

    move/from16 v20, v11

    move/from16 v21, v15

    move-object/from16 v11, v23

    move-object/from16 v23, v4

    move v9, v6

    goto/16 :goto_7

    :cond_6
    move/from16 v22, v1

    move-object/from16 v23, v2

    move/from16 v24, v5

    move-wide/from16 v25, v9

    move/from16 v20, v11

    move/from16 v21, v15

    move-object/from16 v11, v23

    move-object/from16 v23, v4

    move v9, v6

    goto/16 :goto_7

    :cond_7
    move-object/from16 v12, p2

    move-object/from16 v23, v2

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has crashed too many times, killing! Reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v11, :cond_8

    const-string v2, "crashed quickly"

    goto :goto_4

    :cond_8
    const-string/jumbo v2, "over process crash limit"

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x7550

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v3, v21

    const/16 v20, 0x1

    aput-object v14, v3, v20

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x2

    aput-object v20, v3, v21

    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onHandleAppCrash(Lcom/android/server/wm/WindowProcessController;)V

    if-nez v16, :cond_c

    const/16 v1, 0x753f

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v20, 0x0

    aput-object v3, v2, v20

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v20, 0x1

    aput-object v3, v2, v20

    aput-object v14, v2, v21

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    if-nez v5, :cond_9

    iget v2, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v3, Lcom/android/server/am/AppErrors$BadProcessInfo;

    move-object v1, v3

    move v12, v2

    move/from16 v20, v11

    move/from16 v21, v15

    move-object/from16 v11, v23

    move-object v15, v3

    move-wide v2, v9

    move-object/from16 v23, v4

    move-object/from16 v4, p3

    move/from16 v24, v5

    move-object/from16 v5, p4

    move-wide/from16 v25, v9

    move v9, v6

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppErrors$BadProcessInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v14, v12, v15}, Lcom/android/server/am/AppErrors;->markBadProcess(Ljava/lang/String;ILcom/android/server/am/AppErrors$BadProcessInfo;)V

    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget v2, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v14, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    iget v2, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v14, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    goto :goto_5

    :cond_9
    move/from16 v24, v5

    move-wide/from16 v25, v9

    move/from16 v20, v11

    move/from16 v21, v15

    move-object/from16 v11, v23

    move-object/from16 v23, v4

    move v9, v6

    :goto_5
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Lcom/android/server/am/ProcessErrorStateRecord;->setBad(Z)V

    invoke-virtual {v7, v1}, Lcom/android/server/am/ProcessRecord;->setRemoved(Z)V

    const-class v1, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/server/usage/AppStandbyInternal;

    if-eqz v10, :cond_b

    nop

    iget-object v1, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_a

    iget-object v1, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_6

    :cond_a
    move-object v1, v14

    :goto_6
    const/4 v2, 0x4

    invoke-interface {v10, v1, v9, v2}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;II)V

    :cond_b
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v3, 0x0

    const/4 v5, 0x4

    const-string v6, "crash"

    move-object/from16 v2, p1

    move/from16 v4, v19

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z

    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V

    if-nez v13, :cond_d

    return v2

    :cond_c
    move/from16 v24, v5

    move-wide/from16 v25, v9

    move/from16 v20, v11

    move/from16 v21, v15

    move-object/from16 v11, v23

    const/4 v2, 0x0

    move-object/from16 v23, v4

    move v9, v6

    :cond_d
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V

    :goto_7
    if-eqz v8, :cond_e

    if-eqz v19, :cond_e

    const/4 v1, 0x1

    iput-boolean v1, v8, Lcom/android/server/am/AppErrorDialog$Data;->isRestartableForService:Z

    :cond_e
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_f

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowProcessController;->clearPackagePreferredForHomeActivities()V

    :cond_f
    if-nez v24, :cond_10

    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move/from16 v3, v21

    invoke-virtual {v1, v14, v3, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v14, v3, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v1, v25

    invoke-direct {v0, v14, v3, v1, v2}, Lcom/android/server/am/AppErrors;->updateProcessCrashCountLBp(Ljava/lang/String;IJ)V

    goto :goto_8

    :cond_10
    move/from16 v3, v21

    move-wide/from16 v1, v25

    :goto_8
    invoke-virtual {v11}, Lcom/android/server/am/ProcessErrorStateRecord;->getCrashHandler()Ljava/lang/Runnable;

    move-result-object v4

    if-eqz v4, :cond_11

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessErrorStateRecord;->getCrashHandler()Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    :cond_11
    const/4 v4, 0x1

    return v4
.end method

.method private isProcOverCrashLimitLBp(Lcom/android/server/am/ProcessRecord;J)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-wide v3, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_RESET_INTERVAL:J

    add-long/2addr v1, v3

    cmp-long v1, p2, v1

    if-gez v1, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_LIMIT:I

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private killAppImmediateLSP(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Ljava/lang/String;)V
    .locals 10

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashing(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotRespondingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V

    iget-object v1, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    if-lez v1, :cond_0

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p4

    :try_start_0
    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/AppErrors;->handleAppCrashLSPB(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    invoke-virtual {p1, p5, p2, p3, v2}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_0
    :goto_0
    return-void
.end method

.method private makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashing(Z)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V

    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->startAppProblemLSP()V

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->stopFreezingActivities()V

    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v5, "force-crash"

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/AppErrors;->handleAppCrashLSPB(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return v3

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method private resetProcessCrashMapLBp(Landroid/util/SparseArray;ZII)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "*>;ZII)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_4

    const/4 v1, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    if-nez p2, :cond_1

    const/4 v3, -0x1

    if-ne p4, v3, :cond_0

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-ne v3, p3, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    invoke-static {p4, p3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p4, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private stopReportingCrashesLBp(Lcom/android/server/am/ProcessRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private updateProcessCrashCountLBp(Ljava/lang/String;IJ)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-wide v4, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_RESET_INTERVAL:J

    add-long/2addr v2, v4

    cmp-long v2, v2, p3

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/util/Pair;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v2, Landroid/util/Pair;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    :goto_1
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method clearBadProcess(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ProcessMap;->putAll(Lcom/android/internal/app/ProcessMap;)V

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method crashApplication(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/am/AppErrors;->crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method createAppErrorIntentLOSP(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppErrors;->createAppErrorReportLOSP(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.APP_ERROR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessErrorStateRecord;->getErrorReportReceiver()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v1
.end method

.method dumpDebugLPr(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;)V
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    iget-object v4, v1, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const-wide v9, 0x10300000001L

    invoke-virtual {v2, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v15

    const/16 v16, 0x0

    move/from16 v11, v16

    :goto_0
    if-ge v11, v15, :cond_5

    const-wide v9, 0x20b00000003L

    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v14

    move-wide/from16 v19, v7

    const-wide v7, 0x10900000001L

    invoke-virtual {v2, v7, v8, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v14, :cond_4

    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    move-object/from16 v16, v0

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getProcessNamesLOSP()Lcom/android/internal/app/ProcessMap;

    move-result-object v0

    invoke-virtual {v0, v12, v8}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_2

    if-eqz v0, :cond_1

    move-object/from16 v21, v4

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    move-wide/from16 v26, v5

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move/from16 v25, v14

    move/from16 v24, v15

    goto :goto_2

    :cond_1
    move-object/from16 v21, v4

    move-wide/from16 v26, v5

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move/from16 v25, v14

    move/from16 v24, v15

    goto :goto_2

    :cond_2
    move-object/from16 v21, v4

    :cond_3
    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppErrors$BadProcessInfo;

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move/from16 v25, v14

    move/from16 v24, v15

    const-wide v12, 0x20b00000002L

    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    const-wide v12, 0x10500000001L

    invoke-virtual {v2, v12, v13, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-wide v12, v4, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    move-wide/from16 v26, v5

    const-wide v5, 0x10300000002L

    invoke-virtual {v2, v5, v6, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v12, 0x10900000003L

    iget-object v5, v4, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v2, v12, v13, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v5, 0x10900000004L

    iget-object v12, v4, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    invoke-virtual {v2, v5, v6, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v5, 0x10900000005L

    iget-object v12, v4, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v2, v5, v6, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v2, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_2
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v16

    move-object/from16 v4, v21

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move/from16 v15, v24

    move/from16 v14, v25

    move-wide/from16 v5, v26

    goto/16 :goto_1

    :cond_4
    move-object/from16 v16, v0

    move-object/from16 v21, v4

    move-wide/from16 v26, v5

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move/from16 v25, v14

    move/from16 v24, v15

    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v7, v19

    goto/16 :goto_0

    :cond_5
    move-object/from16 v16, v0

    move-object/from16 v21, v4

    move-wide/from16 v26, v5

    move-wide/from16 v19, v7

    move/from16 v24, v15

    goto :goto_3

    :cond_6
    move-object/from16 v21, v4

    move-wide/from16 v26, v5

    move-wide/from16 v19, v7

    :goto_3
    iget-object v4, v1, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_b

    :try_start_1
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_a

    const-wide v7, 0x20b00000002L

    invoke-virtual {v2, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    move-wide v7, v9

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v11

    const-wide v12, 0x10900000001L

    invoke-virtual {v2, v12, v13, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v11, :cond_9

    invoke-virtual {v10, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    iget-object v12, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v12}, Lcom/android/server/am/ActivityManagerService;->getProcessNamesLOSP()Lcom/android/internal/app/ProcessMap;

    move-result-object v12

    invoke-virtual {v12, v9, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_8

    if-eqz v12, :cond_7

    invoke-virtual {v12}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    move-object v13, v0

    move-object/from16 v16, v9

    move-object/from16 v24, v10

    const-wide v9, 0x10300000002L

    goto :goto_6

    :cond_7
    move-object v13, v0

    move-object/from16 v16, v9

    move-object/from16 v24, v10

    const-wide v9, 0x10300000002L

    goto :goto_6

    :cond_8
    move-object v13, v0

    const-wide v0, 0x20b00000002L

    invoke-virtual {v2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v17

    move-wide/from16 v22, v17

    const-wide v0, 0x10500000001L

    invoke-virtual {v2, v0, v1, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual {v10, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-object/from16 v16, v9

    move-object/from16 v24, v10

    const-wide v9, 0x10300000002L

    invoke-virtual {v2, v9, v10, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_6
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    move-object v0, v13

    move-object/from16 v9, v16

    move-object/from16 v10, v24

    const-wide v12, 0x10900000001L

    goto :goto_5

    :cond_9
    move-object v13, v0

    move-object/from16 v16, v9

    move-object/from16 v24, v10

    const-wide v9, 0x10300000002L

    invoke-virtual {v2, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    move-object v0, v13

    goto/16 :goto_4

    :cond_a
    move-object v13, v0

    goto :goto_7

    :catchall_0
    move-exception v0

    move-wide/from16 v5, v26

    goto :goto_8

    :cond_b
    :goto_7
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-wide/from16 v5, v26

    invoke-virtual {v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void

    :catchall_1
    move-exception v0

    move-wide/from16 v5, v26

    :goto_8
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_8
.end method

.method dumpLPr(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/lang/String;)Z
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, v1, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-nez v0, :cond_7

    const/4 v0, 0x0

    :try_start_1
    iget-object v7, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v9, 0x0

    move v10, v9

    move/from16 v9, p3

    :goto_0
    if-ge v10, v8, :cond_6

    :try_start_2
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_5

    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    move-object/from16 v16, v7

    iget-object v7, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getProcessNamesLOSP()Lcom/android/internal/app/ProcessMap;

    move-result-object v7

    invoke-virtual {v7, v11, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_1

    if-eqz v7, :cond_0

    move/from16 v17, v8

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_3

    :cond_0
    move/from16 v17, v8

    goto :goto_3

    :cond_1
    move/from16 v17, v8

    :cond_2
    if-nez v0, :cond_4

    if-eqz v9, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_3
    const/4 v8, 0x1

    :try_start_3
    const-string v9, "  Time since processes crashed:"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-wide/from16 v17, v4

    move v9, v8

    goto/16 :goto_f

    :cond_4
    move v8, v9

    :goto_2
    :try_start_4
    const-string v9, "    Process "

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, " uid "

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(I)V

    const-string v9, ": last crashed "

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 p3, v7

    move v9, v8

    sub-long v7, v4, v18

    :try_start_5
    invoke-static {v7, v8, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v7, " ago"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_3
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v7, v16

    move/from16 v8, v17

    goto :goto_1

    :catchall_1
    move-exception v0

    move v9, v8

    move-wide/from16 v17, v4

    goto/16 :goto_f

    :cond_5
    move-object/from16 v16, v7

    move/from16 v17, v8

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v16, v7

    move/from16 v17, v8

    goto :goto_4

    :catchall_2
    move-exception v0

    move/from16 v9, p3

    move-wide/from16 v17, v4

    goto/16 :goto_f

    :cond_7
    move/from16 v9, p3

    :goto_4
    :try_start_6
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-nez v0, :cond_f

    const/4 v0, 0x0

    :try_start_7
    iget-object v7, v1, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v8, :cond_e

    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_6
    if-ge v14, v13, :cond_d

    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    move-object/from16 p3, v7

    iget-object v7, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getProcessNamesLOSP()Lcom/android/internal/app/ProcessMap;

    move-result-object v7

    invoke-virtual {v7, v11, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_9

    if-eqz v7, :cond_8

    move/from16 v16, v8

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    goto :goto_8

    :cond_8
    move/from16 v16, v8

    goto :goto_8

    :cond_9
    move/from16 v16, v8

    :cond_a
    if-nez v0, :cond_c

    if-eqz v9, :cond_b

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :cond_b
    const/4 v8, 0x1

    :try_start_8
    const-string v9, "  First time processes crashed and counts:"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v0, 0x1

    goto :goto_7

    :cond_c
    move v8, v9

    :goto_7
    :try_start_9
    const-string v9, "    Process "

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, " uid "

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(I)V

    const-string v9, ": first crashed "

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v17
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object/from16 v19, v7

    move v9, v8

    sub-long v7, v4, v17

    :try_start_a
    invoke-static {v7, v8, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v7, " ago; crashes since then: "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :goto_8
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v7, p3

    move/from16 v8, v16

    goto :goto_6

    :cond_d
    move-object/from16 p3, v7

    move/from16 v16, v8

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5

    :cond_e
    move-object/from16 p3, v7

    move/from16 v16, v8

    goto :goto_9

    :catchall_3
    move-exception v0

    move-wide/from16 v17, v4

    goto/16 :goto_f

    :cond_f
    :goto_9
    :try_start_b
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1b

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/4 v10, 0x0

    :goto_a
    if-ge v10, v8, :cond_1a

    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_b
    if-ge v14, v13, :cond_19

    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    move-object/from16 v16, v0

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getProcessNamesLOSP()Lcom/android/internal/app/ProcessMap;

    move-result-object v0

    invoke-virtual {v0, v11, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_11

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    :cond_10
    move-wide/from16 v17, v4

    goto/16 :goto_d

    :cond_11
    if-nez v6, :cond_13

    if-eqz v9, :cond_12

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_12
    const/4 v9, 0x1

    const-string v1, "  Bad processes:"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x1

    :cond_13
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppErrors$BadProcessInfo;

    move-object/from16 p3, v0

    const-string v0, "    Bad process "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " uid "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": crashed at time "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v17, v4

    iget-wide v3, v1, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    iget-object v0, v1, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    if-eqz v0, :cond_14

    const-string v0, "      Short msg: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_14
    iget-object v0, v1, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    if-eqz v0, :cond_15

    const-string v0, "      Long msg: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_15
    iget-object v0, v1, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    if-eqz v0, :cond_18

    const-string v0, "      Stack:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_c
    iget-object v4, v1, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_17

    iget-object v4, v1, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_16

    const-string v4, "        "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    sub-int v5, v3, v0

    invoke-virtual {v2, v4, v0, v5}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v0, v3, 0x1

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_17
    iget-object v3, v1, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_18

    const-string v3, "        "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_18
    :goto_d
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p4

    move-object/from16 v0, v16

    move-wide/from16 v4, v17

    goto/16 :goto_b

    :cond_19
    move-object/from16 v16, v0

    move-wide/from16 v17, v4

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p4

    goto/16 :goto_a

    :cond_1a
    move-object/from16 v16, v0

    move-wide/from16 v17, v4

    goto :goto_e

    :cond_1b
    move-object/from16 v16, v0

    move-wide/from16 v17, v4

    :goto_e
    return v9

    :catchall_4
    move-exception v0

    move-wide/from16 v17, v4

    goto :goto_f

    :catchall_5
    move-exception v0

    move-wide/from16 v17, v4

    move/from16 v9, p3

    :goto_f
    :try_start_c
    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    goto :goto_f
.end method

.method generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .locals 2

    new-instance v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$ProcessErrorStateInfo;-><init>()V

    iput p2, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    iput v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->uid:I

    iput-object p3, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    iput-object p4, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    iput-object p5, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    iput-object p6, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->stackTrace:Ljava/lang/String;

    return-object v0
.end method

.method handleShowAnrUi(Landroid/os/Message;)V
    .locals 16

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v4, p1

    iget-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/server/am/AppNotRespondingDialog$Data;

    iget-object v6, v5, Lcom/android/server/am/AppNotRespondingDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    if-nez v6, :cond_0

    const-string v0, "ActivityManager"

    const-string v7, "handleShowAnrUi: proc is null"

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v7, v1, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    iget-object v0, v6, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getPackageListWithVersionCode()Ljava/util/List;

    move-result-object v8

    move-object v2, v8

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/am/ErrorDialogController;->hasAnrDialogs()Z

    move-result v8

    const/16 v9, 0x13d

    if-eqz v8, :cond_2

    const-string v8, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "App already has anr dialog: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/4 v10, -0x2

    invoke-static {v8, v9, v10}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :cond_2
    :try_start_1
    iget-object v8, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "anr_show_background"

    iget-object v11, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v11}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v11

    const/4 v12, 0x0

    invoke-static {v8, v10, v12, v11}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_0

    :cond_3
    move v8, v12

    :goto_0
    iget-object v10, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v10}, Lcom/android/server/wm/ActivityTaskManagerInternal;->canShowErrorDialogs()Z

    move-result v10

    if-nez v10, :cond_5

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_4
    iget-object v10, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/4 v11, -0x1

    invoke-static {v10, v9, v11}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/am/ErrorDialogController;->getAnrController()Landroid/app/AnrController;

    move-result-object v9

    if-nez v9, :cond_6

    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/android/server/am/ErrorDialogController;->showAnrDialogs(Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    goto :goto_2

    :cond_6
    iget-object v10, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v11, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v9, v10, v11}, Landroid/app/AnrController;->onAnrDelayCompleted(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_7

    const-string v12, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ANR delay completed. Showing ANR dialog for package: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v12

    invoke-virtual {v12, v5}, Lcom/android/server/am/ErrorDialogController;->showAnrDialogs(Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    goto :goto_2

    :cond_7
    const-string v14, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ANR delay completed. Cancelling ANR dialog for package: "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v14, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotRespondingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V

    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/am/ErrorDialogController;->clearAnrDialogs()V

    :goto_2
    nop

    :goto_3
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    if-eqz v3, :cond_8

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;)V

    :cond_8
    if-eqz v2, :cond_9

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    const/4 v7, 0x4

    invoke-virtual {v0, v2, v7}, Lcom/android/server/PackageWatchdog;->onPackageFailure(Ljava/util/List;I)V

    :cond_9
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0
.end method

.method handleShowAppErrorUi(Landroid/os/Message;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/server/am/AppErrorDialog$Data;

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "anr_show_background"

    iget-object v5, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v5}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v0, v4, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_0
    move v5, v0

    iget-object v7, v1, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    iget-object v0, v3, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    move-object v8, v0

    iget-object v0, v3, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    move-object v9, v0

    if-nez v8, :cond_1

    const-string v0, "ActivityManager"

    const-string v4, "handleShowAppErrorUi: proc is null"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :cond_1
    :try_start_1
    iget-object v0, v8, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    move-object v10, v0

    iget v0, v8, Lcom/android/server/am/ProcessRecord;->userId:I

    move v11, v0

    invoke-virtual {v10}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ErrorDialogController;->hasCrashDialogs()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App already has crash dialog: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_2

    sget v0, Lcom/android/server/am/AppErrorDialog;->ALREADY_SHOWING:I

    invoke-virtual {v9, v0}, Lcom/android/server/am/AppErrorResult;->set(I)V

    :cond_2
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :cond_3
    :try_start_2
    iget v0, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v12, 0x2710

    if-lt v0, v12, :cond_4

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    sget v12, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v12, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v6

    :goto_1
    iget-object v12, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v12}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v12

    array-length v13, v12

    move v14, v0

    move v0, v6

    :goto_2
    if-ge v0, v13, :cond_6

    aget v15, v12, v0

    if-eq v11, v15, :cond_5

    const/16 v16, 0x1

    goto :goto_3

    :cond_5
    move/from16 v16, v6

    :goto_3
    and-int v14, v14, v16

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    if-eqz v14, :cond_8

    if-nez v5, :cond_8

    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping crash dialog of "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": background"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_7

    sget v0, Lcom/android/server/am/AppErrorDialog;->BACKGROUND_USER:I

    invoke-virtual {v9, v0}, Lcom/android/server/am/AppErrorResult;->set(I)V

    :cond_7
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :cond_8
    const/4 v12, 0x0

    :try_start_3
    iget-object v13, v1, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    iget-boolean v0, v8, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_9

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v15, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v4, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v15, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    move-object v12, v0

    :cond_9
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "show_first_crash_dialog"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_4

    :cond_a
    move v0, v6

    :goto_4
    iget-object v4, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v15, "show_first_crash_dialog_dev_option"

    iget-object v6, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v6}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v6

    const/4 v2, 0x0

    invoke-static {v4, v15, v2, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    goto :goto_5

    :cond_b
    move v4, v2

    :goto_5
    iget-object v6, v1, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    if-eqz v6, :cond_c

    iget-object v15, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const/4 v6, 0x1

    goto :goto_6

    :cond_c
    move v6, v2

    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v12, :cond_d

    :try_start_5
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    sget v15, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v21, v3

    int-to-long v2, v15

    add-long v19, v19, v2

    cmp-long v2, v17, v19

    if-gez v2, :cond_e

    const/16 v16, 0x1

    goto :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :cond_d
    move-object/from16 v21, v3

    :cond_e
    const/16 v16, 0x0

    :goto_7
    move/from16 v2, v16

    :try_start_6
    iget-object v3, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->canShowErrorDialogs()Z

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez v3, :cond_10

    if-eqz v5, :cond_f

    goto :goto_8

    :cond_f
    move/from16 v16, v0

    move/from16 v19, v2

    move-object/from16 v3, v21

    goto :goto_a

    :cond_10
    :goto_8
    if-nez v6, :cond_14

    if-nez v2, :cond_14

    if-nez v0, :cond_12

    if-nez v4, :cond_12

    move-object/from16 v3, v21

    :try_start_7
    iget-boolean v15, v3, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    if-eqz v15, :cond_11

    goto :goto_9

    :cond_11
    move/from16 v16, v0

    move/from16 v19, v2

    goto :goto_a

    :cond_12
    move-object/from16 v3, v21

    :goto_9
    invoke-virtual {v10}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v15

    invoke-virtual {v15, v3}, Lcom/android/server/am/ErrorDialogController;->showCrashDialogs(Lcom/android/server/am/AppErrorDialog$Data;)V

    iget-boolean v15, v8, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v15, :cond_13

    iget-object v15, v1, Lcom/android/server/am/AppErrors;->mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

    move/from16 v16, v0

    iget-object v0, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v1, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v19, v2

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_13
    move/from16 v16, v0

    move/from16 v19, v2

    goto :goto_b

    :cond_14
    move/from16 v16, v0

    move/from16 v19, v2

    move-object/from16 v3, v21

    :goto_a
    if-eqz v9, :cond_15

    sget v0, Lcom/android/server/am/AppErrorDialog;->CANT_SHOW:I

    invoke-virtual {v9, v0}, Lcom/android/server/am/AppErrorResult;->set(I)V

    :cond_15
    :goto_b
    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_1
    move-exception v0

    move-object/from16 v3, v21

    goto :goto_c

    :catchall_2
    move-exception v0

    :goto_c
    :try_start_9
    monitor-exit v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0
.end method

.method isBadProcess(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method killAppAtUserRequestLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 10

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    invoke-virtual {v0}, Lcom/android/server/am/ErrorDialogController;->hasDebugWaitingDialog()Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v1, 0xd

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/ErrorDialogController;->clearAllErrorDialogs()V

    const-string/jumbo v8, "user-terminated"

    const-string/jumbo v9, "user request after error"

    move-object v4, p0

    move-object v5, p1

    move v6, v1

    move v7, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/AppErrors;->killAppImmediateLSP(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v4
.end method

.method public synthetic lambda$handleAppCrashInActivityController$1$AppErrors(Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12

    move-object v0, p2

    move v7, p3

    move-object/from16 v8, p4

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v2, "ActivityManager"

    if-eqz v1, :cond_0

    move-object v9, p1

    iget-object v1, v9, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    const-string v3, "Native crash"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip killing native crashed app "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") during testing"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, p0

    move/from16 v10, p8

    goto :goto_0

    :cond_0
    move-object v9, p1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Force-killing crashed app "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at watcher\'s request"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_3

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x4

    const/4 v2, 0x1

    const-string v3, "crash"

    invoke-virtual {v8, v3, v1, v2}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IZ)V

    move-object v11, p0

    move/from16 v10, p8

    goto :goto_0

    :cond_2
    move-object v11, p0

    move/from16 v10, p8

    goto :goto_0

    :cond_3
    invoke-static {p3}, Landroid/os/Process;->killProcess(I)V

    move/from16 v10, p8

    invoke-static {v10, p3}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    move-object v11, p0

    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v6, "crash"

    move v2, p3

    move/from16 v3, p8

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->noteAppKill(IIIILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$scheduleAppCrashLocked$0$AppErrors(Lcom/android/server/am/ProcessRecord;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    const/16 v4, 0xd

    const/16 v5, 0xe

    const-string v6, "forced"

    const-string/jumbo v7, "killed for invalid state"

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/AppErrors;->killAppImmediateLSP(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method loadAppsNotReportingCrashesFromConfig(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    invoke-static {v2, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :goto_0
    return-void
.end method

.method markBadProcess(Ljava/lang/String;ILcom/android/server/am/AppErrors$BadProcessInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ProcessMap;->putAll(Lcom/android/internal/app/ProcessMap;)V

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resetProcessCrashTime(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resetProcessCrashTime(ZII)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    invoke-direct {p0, v3, p1, p2, p3}, Lcom/android/server/am/AppErrors;->resetProcessCrashMapLBp(Landroid/util/SparseArray;ZII)V

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    invoke-direct {p0, v4, p1, p2, p3}, Lcom/android/server/am/AppErrors;->resetProcessCrashMapLBp(Landroid/util/SparseArray;ZII)V

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetState()V
    .locals 2

    const-string v0, "ActivityManager"

    const-string v1, "Resetting AppErrors"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->clear()V

    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->clear()V

    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->clear()V

    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->clear()V

    new-instance v1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method scheduleAppCrashLocked(IILjava/lang/String;ILjava/lang/String;ZI)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService$PidMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    if-ltz p1, :cond_0

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v4, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    if-ne v4, p2, :cond_1

    move-object v0, v3

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-ltz p4, :cond_2

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, p4, :cond_3

    :cond_2
    move-object v0, v3

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_5

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "crashApplication: nothing for uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " initialPid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    invoke-virtual {v0, p5, p7}, Lcom/android/server/am/ProcessRecord;->scheduleCrashLocked(Ljava/lang/String;I)V

    if-eqz p6, :cond_6

    move-object v1, v0

    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v3, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1}, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/AppErrors;Lcom/android/server/am/ProcessRecord;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
