.class Lcom/android/server/alarm/AlarmManagerService$5;
.super Landroid/app/IAlarmManager$Stub;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Landroid/app/IAlarmManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public canScheduleExactAlarms(Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->access$000(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/alarm/AlarmManagerService;->access$1200(Lcom/android/server/alarm/AlarmManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v2

    if-ne v0, v2, :cond_3

    invoke-static {p1, v1}, Lcom/android/server/alarm/AlarmManagerService;->access$600(Ljava/lang/String;I)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    return v5

    :cond_0
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromExactAlarmPermission(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v4, p1, v2}, Lcom/android/server/alarm/AlarmManagerService;->hasScheduleExactAlarmInternal(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v3, v5

    :cond_2
    return v3

    :cond_3
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " cannot query canScheduleExactAlarms for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public currentNetworkTimeMillis()J
    .locals 5

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime$TimeResult;->currentTimeMillis()J

    move-result-wide v2

    return-wide v2

    :cond_0
    new-instance v2, Landroid/os/ParcelableException;

    new-instance v3, Ljava/time/DateTimeException;

    const-string v4, "Missing NTP fix"

    invoke-direct {v3, v4}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AlarmManager"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/jobs/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v0, p3

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget-object v0, p3, v0

    const-string v1, "--proto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/alarm/AlarmManagerService;->dumpProto(Ljava/io/FileDescriptor;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    new-instance v1, Landroid/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v1, p2, v2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->dumpImpl(Landroid/util/IndentingPrintWriter;)V

    :goto_0
    return-void
.end method

.method public getConfigVersion()I
    .locals 3

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    const-string v2, "getConfigVersion"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Constants;->getVersion()I

    move-result v0

    return v0
.end method

.method public getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 9

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->access$1400(Lcom/android/server/alarm/AlarmManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "getNextAlarmClock"

    const/4 v8, 0x0

    move v4, p1

    invoke-virtual/range {v1 .. v8}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/alarm/AlarmManagerService;->getNextAlarmClockImpl(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNextWakeFromIdleTime()J
    .locals 2

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService;->getNextWakeFromIdleTimeImpl()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasScheduleExactAlarm(Ljava/lang/String;I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->access$000(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eq v1, p2, :cond_0

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v3, "hasScheduleExactAlarm"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/alarm/AlarmManagerService;->access$1200(Lcom/android/server/alarm/AlarmManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    if-eq v0, v1, :cond_2

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " cannot query hasScheduleExactAlarm for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_0
    if-lez v1, :cond_3

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/alarm/AlarmManagerService;->hasScheduleExactAlarmInternal(Ljava/lang/String;I)Z

    move-result v2

    :cond_3
    return v2
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;-><init>(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/AlarmManagerService$1;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .locals 3

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const-string v0, "AlarmManager"

    const-string/jumbo v1, "remove() with no intent or listener"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/alarm/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public set(Ljava/lang/String;IJJJILandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/alarm/AlarmManagerService;->access$000(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCallingUid()I

    move-result v14

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/alarm/AlarmManagerService;->access$1200(Lcom/android/server/alarm/AlarmManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v15, v2, v13}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    if-ne v14, v1, :cond_19

    const-wide/16 v3, 0x0

    cmp-long v1, p7, v3

    if-eqz v1, :cond_1

    if-nez p11, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Repeating alarms cannot use AlarmReceivers"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    if-eqz p13, :cond_2

    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    const-string v6, "android.permission.UPDATE_DEVICE_STATS"

    const-string v7, "AlarmManager.set"

    invoke-virtual {v1, v6, v5, v14, v7}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    :cond_2
    and-int/lit8 v1, p9, 0x10

    if-eqz v1, :cond_4

    const/16 v1, 0x3e8

    if-eq v14, v1, :cond_3

    and-int/lit8 v1, p9, -0x11

    move-wide/from16 v5, p5

    goto :goto_1

    :cond_3
    const-wide/16 v5, 0x0

    move/from16 v1, p9

    goto :goto_1

    :cond_4
    move-wide/from16 v5, p5

    move/from16 v1, p9

    :goto_1
    and-int/lit8 v1, v1, -0x2b

    if-eqz p14, :cond_5

    or-int/lit8 v1, v1, 0x2

    const-wide/16 v5, 0x0

    move-wide/from16 v19, v5

    goto :goto_2

    :cond_5
    if-nez p13, :cond_7

    invoke-static {v14}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v7, v7, Lcom/android/server/alarm/AlarmManagerService;->mSystemUiUid:I

    invoke-static {v14, v7}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v7}, Lcom/android/server/alarm/AlarmManagerService;->access$1300(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/AppStateTrackerImpl;

    move-result-object v7

    if-eqz v7, :cond_7

    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v7}, Lcom/android/server/alarm/AlarmManagerService;->access$1300(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/AppStateTrackerImpl;

    move-result-object v7

    invoke-virtual {v7, v14}, Lcom/android/server/AppStateTrackerImpl;->isUidPowerSaveUserExempt(I)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    or-int/lit8 v1, v1, 0x8

    and-int/lit8 v1, v1, -0x45

    move-wide/from16 v19, v5

    goto :goto_2

    :cond_7
    move-wide/from16 v19, v5

    :goto_2
    and-int/lit8 v5, v1, 0x4

    const/4 v6, 0x1

    if-eqz v5, :cond_8

    move v5, v6

    goto :goto_3

    :cond_8
    move v5, v2

    :goto_3
    move/from16 v21, v5

    cmp-long v3, v19, v3

    if-nez v3, :cond_9

    move v3, v6

    goto :goto_4

    :cond_9
    move v3, v2

    :goto_4
    move/from16 v22, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    and-int/lit8 v7, v1, 0x40

    if-eqz v7, :cond_a

    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const-string v7, "android.permission.SCHEDULE_PRIORITIZED_ALARM"

    const-string v8, "AlarmManager.setPrioritized"

    invoke-virtual {v2, v7, v6, v14, v8}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    and-int/lit8 v1, v1, -0x5

    move/from16 v23, v3

    move/from16 v24, v4

    move-object/from16 v25, v5

    goto/16 :goto_a

    :cond_a
    if-nez v22, :cond_c

    if-eqz v21, :cond_b

    goto :goto_5

    :cond_b
    move/from16 v23, v3

    move/from16 v24, v4

    move-object/from16 v25, v5

    goto/16 :goto_a

    :cond_c
    :goto_5
    invoke-static {v15, v13}, Lcom/android/server/alarm/AlarmManagerService;->access$600(Ljava/lang/String;I)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_f

    move/from16 v7, v22

    if-nez v22, :cond_d

    move v2, v6

    :cond_d
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    if-eqz v22, :cond_e

    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgs:Landroid/app/BroadcastOptions;

    goto :goto_6

    :cond_e
    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithoutFgs:Landroid/app/BroadcastOptions;

    :goto_6
    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    move-object v5, v6

    goto :goto_8

    :cond_f
    const/4 v2, 0x1

    const/4 v7, 0x0

    move/from16 v4, v21

    if-eqz v21, :cond_10

    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgs:Landroid/app/BroadcastOptions;

    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    goto :goto_7

    :cond_10
    move-object v6, v8

    :goto_7
    move-object v5, v6

    move/from16 v30, v4

    move v4, v2

    move/from16 v2, v30

    :goto_8
    if-eqz v7, :cond_14

    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v6, v15, v14}, Lcom/android/server/alarm/AlarmManagerService;->hasScheduleExactAlarmInternal(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_14

    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v6, v14}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromExactAlarmPermission(I)Z

    move-result v6

    if-nez v6, :cond_12

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Caller "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " needs to hold "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "android.permission.SCHEDULE_EXACT_ALARM"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " to set exact alarms."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v9, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v9, v9, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-boolean v9, v9, Lcom/android/server/alarm/AlarmManagerService$Constants;->CRASH_NON_CLOCK_APPS:Z

    if-nez v9, :cond_11

    const-string v9, "AlarmManager"

    invoke-static {v9, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_11
    new-instance v8, Ljava/lang/SecurityException;

    invoke-direct {v8, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_12
    const/4 v3, 0x1

    :goto_9
    if-eqz v21, :cond_13

    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithoutFgs:Landroid/app/BroadcastOptions;

    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    :cond_13
    move-object v5, v8

    move/from16 v2, v21

    :cond_14
    if-eqz v2, :cond_15

    and-int/lit8 v1, v1, -0x5

    or-int/lit8 v1, v1, 0x20

    move/from16 v23, v3

    move/from16 v24, v4

    move-object/from16 v25, v5

    goto :goto_a

    :cond_15
    move/from16 v23, v3

    move/from16 v24, v4

    move-object/from16 v25, v5

    :goto_a
    if-eqz v22, :cond_18

    or-int/lit8 v1, v1, 0x1

    if-eqz v24, :cond_16

    const/4 v2, 0x2

    move/from16 v26, v1

    move/from16 v27, v2

    goto :goto_b

    :cond_16
    if-eqz v23, :cond_17

    const/4 v2, 0x1

    move/from16 v26, v1

    move/from16 v27, v2

    goto :goto_b

    :cond_17
    const/4 v2, 0x0

    move/from16 v26, v1

    move/from16 v27, v2

    goto :goto_b

    :cond_18
    const/4 v2, -0x1

    move/from16 v26, v1

    move/from16 v27, v2

    :goto_b
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, v19

    move-wide/from16 v7, p7

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move/from16 v12, v26

    move/from16 v28, v13

    move-object/from16 v13, p13

    move/from16 v29, v14

    move-object/from16 v14, p14

    move-object v0, v15

    move/from16 v15, v29

    move-object/from16 v16, p1

    move-object/from16 v17, v25

    move/from16 v18, v27

    invoke-virtual/range {v1 .. v18}, Lcom/android/server/alarm/AlarmManagerService;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V

    return-void

    :cond_19
    move/from16 v29, v14

    move-object v0, v15

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not belong to the calling uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setTime(J)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SET_TIME"

    const-string/jumbo v2, "setTime"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->setTimeImpl(J)Z

    move-result v0

    return v0
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SET_TIME_ZONE"

    const-string/jumbo v2, "setTimeZone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/alarm/AlarmManagerService;->setTimeZoneImpl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
