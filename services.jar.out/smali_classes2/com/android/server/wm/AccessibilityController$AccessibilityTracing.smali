.class final Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AccessibilityTracing"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;
    }
.end annotation


# static fields
.field private static final BUFFER_CAPACITY:I = 0xc00000

.field private static final MAGIC_NUMBER_VALUE:J = 0x4341525459313141L

.field private static final TAG:Ljava/lang/String; = "AccessibilityTracing"

.field private static final TRACE_DIRECTORY:Ljava/lang/String; = "/data/misc/a11ytrace/"

.field private static final TRACE_FILENAME:Ljava/lang/String; = "/data/misc/a11ytrace/a11y_trace.pb"

.field private static sInstance:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;


# instance fields
.field private final mBuffer:Lcom/android/internal/util/TraceBuffer;

.field private volatile mEnabled:Z

.field private final mHandler:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;

.field private final mLock:Ljava/lang/Object;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTraceFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/a11ytrace/a11y_trace.pb"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mTraceFile:Ljava/io/File;

    new-instance v0, Lcom/android/internal/util/TraceBuffer;

    const/high16 v1, 0xc00000

    invoke-direct {v0, v1}, Lcom/android/internal/util/TraceBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AccessibilityTracing"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;-><init>(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mHandler:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;[Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->toStackTraceString([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)Lcom/android/server/wm/WindowManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)Lcom/android/internal/util/TraceBuffer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->writeTraceToFileInternal()V

    return-void
.end method

.method static getInstance(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;
    .locals 2

    invoke-static {}, Lcom/android/server/wm/AccessibilityController;->access$1900()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->sInstance:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-direct {v1, p0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    sput-object v1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->sInstance:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    :cond_0
    sget-object v1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->sInstance:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private log(Ljava/lang/String;Ljava/lang/String;[BI[Ljava/lang/StackTraceElement;JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object p8, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iput-object p9, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg8:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mHandler:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private toStackTraceString([Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_3

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private writeTraceToFileInternal()V
    .locals 5

    :try_start_0
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide v1, 0x10600000001L

    const-wide v3, 0x4341525459313141L    # 9.75119366241549E15

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/util/TraceBuffer;->writeTraceToFile(Ljava/io/File;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AccessibilityTracing"

    const-string v2, "Unable to write buffer to file"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    return v0
.end method

.method logState(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->logState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method logState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->logState(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method logState(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->logState(Ljava/lang/String;Ljava/lang/String;[BI)V

    return-void
.end method

.method logState(Ljava/lang/String;Ljava/lang/String;[BI)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->logState(Ljava/lang/String;Ljava/lang/String;[BI[Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method logState(Ljava/lang/String;Ljava/lang/String;[BI[Ljava/lang/StackTraceElement;)V
    .locals 11

    move-object v10, p0

    iget-boolean v0, v10, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->log(Ljava/lang/String;Ljava/lang/String;[BI[Ljava/lang/StackTraceElement;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method logState(Ljava/lang/String;Ljava/lang/String;[BI[Ljava/lang/StackTraceElement;JIJ)V
    .locals 11

    move-object v10, p0

    iget-boolean v0, v10, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    nop

    invoke-static/range {p8 .. p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p9 .. p10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->log(Ljava/lang/String;Ljava/lang/String;[BI[Ljava/lang/StackTraceElement;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method startTrace()V
    .locals 4

    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_0

    const-string v0, "AccessibilityTracing"

    const-string v1, "Error: Tracing is not supported on user builds."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "/data/misc/a11ytrace/"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    new-array v2, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AccessibilityTracing"

    const-string v3, "Error: Failed to create trace file."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method stopTrace()V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_0

    const-string v0, "AccessibilityTracing"

    const-string v1, "Error: Tracing is not supported on user builds."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    iget-boolean v1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    if-eqz v1, :cond_1

    const-string v1, "AccessibilityTracing"

    const-string v2, "Error: tracing enabled while waiting for flush."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->writeTraceToFile()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method writeTraceToFile()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mHandler:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->sendEmptyMessage(I)Z

    return-void
.end method
