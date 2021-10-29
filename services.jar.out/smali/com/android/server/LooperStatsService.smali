.class public Lcom/android/server/LooperStatsService;
.super Landroid/os/Binder;
.source "LooperStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LooperStatsService$LooperShellCommand;,
        Lcom/android/server/LooperStatsService$SettingsObserver;,
        Lcom/android/server/LooperStatsService$Lifecycle;
    }
.end annotation


# static fields
.field private static final DEBUG_SYS_LOOPER_STATS_ENABLED:Ljava/lang/String; = "debug.sys.looper_stats_enabled"

.field private static final DEFAULT_ENABLED:Z = true

.field private static final DEFAULT_ENTRIES_SIZE_CAP:I = 0x5dc

.field private static final DEFAULT_SAMPLING_INTERVAL:I = 0x3e8

.field private static final DEFAULT_TRACK_SCREEN_INTERACTIVE:Z = false

.field private static final LOOPER_STATS_SERVICE_NAME:Ljava/lang/String; = "looper_stats"

.field private static final SETTINGS_ENABLED_KEY:Ljava/lang/String; = "enabled"

.field private static final SETTINGS_IGNORE_BATTERY_STATUS_KEY:Ljava/lang/String; = "ignore_battery_status"

.field private static final SETTINGS_SAMPLING_INTERVAL_KEY:Ljava/lang/String; = "sampling_interval"

.field private static final SETTINGS_TRACK_SCREEN_INTERACTIVE_KEY:Ljava/lang/String; = "track_screen_state"

.field private static final TAG:Ljava/lang/String; = "LooperStatsService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mIgnoreBatteryStatus:Z

.field private final mStats:Lcom/android/internal/os/LooperStats;

.field private mTrackScreenInteractive:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/os/LooperStats;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LooperStatsService;->mEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/LooperStatsService;->mTrackScreenInteractive:Z

    iput-boolean v0, p0, Lcom/android/server/LooperStatsService;->mIgnoreBatteryStatus:Z

    iput-object p1, p0, Lcom/android/server/LooperStatsService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/internal/os/LooperStats;Lcom/android/server/LooperStatsService$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/LooperStatsService;-><init>(Landroid/content/Context;Lcom/android/internal/os/LooperStats;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/LooperStatsService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/LooperStatsService;->initFromSettings()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/LooperStatsService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/LooperStatsService;->setEnabled(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/LooperStatsService;)Lcom/android/internal/os/LooperStats;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/LooperStatsService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/LooperStatsService;->setSamplingInterval(I)V

    return-void
.end method

.method private initFromSettings()V
    .locals 4

    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/LooperStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "looper_stats"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "LooperStatsService"

    const-string v3, "Bad looper_stats settings"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/16 v1, 0x3e8

    const-string/jumbo v2, "sampling_interval"

    invoke-virtual {v0, v2, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/LooperStatsService;->setSamplingInterval(I)V

    nop

    const-string/jumbo v1, "track_screen_state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/LooperStatsService;->setTrackScreenInteractive(Z)V

    nop

    const-string v1, "ignore_battery_status"

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/LooperStatsService;->setIgnoreBatteryStatus(Z)V

    const/4 v1, 0x1

    const-string v2, "enabled"

    invoke-virtual {v0, v2, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "debug.sys.looper_stats_enabled"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/LooperStatsService;->setEnabled(Z)V

    return-void
.end method

.method static synthetic lambda$dump$0(Lcom/android/internal/os/LooperStats$ExportedEntry;)Ljava/lang/Integer;
    .locals 1

    iget v0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->workSourceUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$dump$1(Lcom/android/internal/os/LooperStats$ExportedEntry;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->threadName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$dump$2(Lcom/android/internal/os/LooperStats$ExportedEntry;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->handlerClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$dump$3(Lcom/android/internal/os/LooperStats$ExportedEntry;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageName:Ljava/lang/String;

    return-object v0
.end method

.method private setEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/LooperStatsService;->mEnabled:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/server/LooperStatsService;->mEnabled:Z

    iget-object v0, p0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    invoke-virtual {v0}, Lcom/android/internal/os/LooperStats;->reset()V

    iget-object v0, p0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/LooperStats;->setAddDebugEntries(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/os/Looper;->setObserver(Landroid/os/Looper$Observer;)V

    :cond_1
    return-void
.end method

.method private setIgnoreBatteryStatus(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/LooperStatsService;->mIgnoreBatteryStatus:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/LooperStats;->setIgnoreBatteryStatus(Z)V

    iput-boolean p1, p0, Lcom/android/server/LooperStatsService;->mIgnoreBatteryStatus:Z

    iget-object v0, p0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    invoke-virtual {v0}, Lcom/android/internal/os/LooperStats;->reset()V

    :cond_0
    return-void
.end method

.method private setSamplingInterval(I)V
    .locals 2

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/LooperStats;->setSamplingInterval(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignored invalid sampling interval (value must be positive): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LooperStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setTrackScreenInteractive(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/LooperStatsService;->mTrackScreenInteractive:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/LooperStatsService;->mTrackScreenInteractive:Z

    iget-object v0, p0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    invoke-virtual {v0}, Lcom/android/internal/os/LooperStats;->reset()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/server/LooperStatsService;->mContext:Landroid/content/Context;

    const-string v3, "LooperStatsService"

    invoke-static {v2, v3, v1}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/internal/os/AppIdToPackageMap;->getSnapshot()Lcom/android/internal/os/AppIdToPackageMap;

    move-result-object v2

    const-string v3, "Start time: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    invoke-virtual {v3}, Lcom/android/internal/os/LooperStats;->getStartTimeMillis()J

    move-result-wide v3

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v5, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v3, "On battery time (ms): "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    invoke-virtual {v3}, Lcom/android/internal/os/LooperStats;->getBatteryTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    iget-object v3, v0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    invoke-virtual {v3}, Lcom/android/internal/os/LooperStats;->getEntries()Ljava/util/List;

    move-result-object v3

    sget-object v4, Lcom/android/server/LooperStatsService$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/LooperStatsService$$ExternalSyntheticLambda0;

    invoke-static {v4}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v4

    sget-object v5, Lcom/android/server/LooperStatsService$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/LooperStatsService$$ExternalSyntheticLambda1;

    invoke-interface {v4, v5}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v4

    sget-object v5, Lcom/android/server/LooperStatsService$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/LooperStatsService$$ExternalSyntheticLambda2;

    invoke-interface {v4, v5}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v4

    sget-object v5, Lcom/android/server/LooperStatsService$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/server/LooperStatsService$$ExternalSyntheticLambda3;

    invoke-interface {v4, v5}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    const-string/jumbo v5, "work_source_uid"

    const-string/jumbo v6, "thread_name"

    const-string v7, "handler_class"

    const-string/jumbo v8, "message_name"

    const-string/jumbo v9, "is_interactive"

    const-string/jumbo v10, "message_count"

    const-string/jumbo v11, "recorded_message_count"

    const-string/jumbo v12, "total_latency_micros"

    const-string/jumbo v13, "max_latency_micros"

    const-string/jumbo v14, "total_cpu_micros"

    const-string/jumbo v15, "max_cpu_micros"

    const-string/jumbo v16, "recorded_delay_message_count"

    const-string/jumbo v17, "total_delay_millis"

    const-string/jumbo v18, "max_delay_millis"

    const-string v19, "exception_count"

    filled-new-array/range {v5 .. v19}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v5, ","

    invoke-static {v5, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/LooperStats$ExportedEntry;

    iget-object v7, v6, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageName:Ljava/lang/String;

    const-string v8, "__DEBUG_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    const/16 v7, 0xf

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, v6, Lcom/android/internal/os/LooperStats$ExportedEntry;->workSourceUid:I

    invoke-virtual {v2, v9}, Lcom/android/internal/os/AppIdToPackageMap;->mapUid(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, v6, Lcom/android/internal/os/LooperStats$ExportedEntry;->threadName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, v6, Lcom/android/internal/os/LooperStats$ExportedEntry;->handlerClassName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, v6, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    iget-boolean v9, v6, Lcom/android/internal/os/LooperStats$ExportedEntry;->isInteractive:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget-wide v9, v6, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageCount:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    iget-wide v9, v6, Lcom/android/internal/os/LooperStats$ExportedEntry;->recordedMessageCount:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x7

    iget-wide v9, v6, Lcom/android/internal/os/LooperStats$ExportedEntry;->totalLatencyMicros:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x8

    iget-wide v9, v6, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxLatencyMicros:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x9

    iget-wide v9, v6, Lcom/android/internal/os/LooperStats$ExportedEntry;->cpuUsageMicros:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xa

    iget-wide v9, v6, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxCpuUsageMicros:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xb

    iget-wide v9, v6, Lcom/android/internal/os/LooperStats$ExportedEntry;->recordedDelayMessageCount:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xc

    iget-wide v9, v6, Lcom/android/internal/os/LooperStats$ExportedEntry;->delayMillis:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xd

    iget-wide v9, v6, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxDelayMillis:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xe

    iget-wide v9, v6, Lcom/android/internal/os/LooperStats$ExportedEntry;->exceptionCount:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const-string v8, "%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s\n"

    invoke-virtual {v1, v8, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    new-instance v0, Lcom/android/server/LooperStatsService$LooperShellCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/LooperStatsService$LooperShellCommand;-><init>(Lcom/android/server/LooperStatsService;Lcom/android/server/LooperStatsService$1;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/LooperStatsService$LooperShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method
