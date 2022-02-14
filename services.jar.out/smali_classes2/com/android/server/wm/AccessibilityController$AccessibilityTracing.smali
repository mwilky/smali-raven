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

.field private static final TRACE_FILENAME:Ljava/lang/String; = "/data/misc/a11ytrace/a11y_trace.winscope"

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

    const-string v1, "/data/misc/a11ytrace/a11y_trace.winscope"

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

.method static synthetic access$2100(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;[Ljava/lang/StackTraceElement;Ljava/util/Set;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->toStackTraceString([Ljava/lang/StackTraceElement;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)Lcom/android/server/wm/WindowManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)Lcom/android/internal/util/TraceBuffer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->writeTraceToFileInternal()V

    return-void
.end method

.method static getInstance(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;
    .locals 2

    invoke-static {}, Lcom/android/server/wm/AccessibilityController;->access$2000()Ljava/lang/Object;

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

.method private log(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;JLjava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "[BI[",
            "Ljava/lang/StackTraceElement;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v1, p1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object/from16 v2, p10

    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object/from16 v3, p11

    iput-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    move-object/from16 v4, p12

    iput-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    move-object/from16 v5, p4

    iput-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    move-object/from16 v6, p7

    iput-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg8:Ljava/lang/Object;

    move-object/from16 v7, p5

    iput-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg9:Ljava/lang/Object;

    move-object v8, p0

    iget-object v9, v8, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mHandler:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;

    const/4 v10, 0x1

    const/4 v11, 0x0

    move/from16 v12, p6

    invoke-virtual {v9, v10, v12, v11, v0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private toStackTraceString([Ljava/lang/StackTraceElement;Ljava/util/Set;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/StackTraceElement;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, -0x1

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_3

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aget-object v5, p1, v1

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v1

    goto :goto_2

    :cond_1
    goto :goto_1

    :cond_2
    :goto_2
    if-gez v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v3, v2

    array-length v4, p1

    if-ge v1, v4, :cond_7

    add-int/lit8 v1, v1, 0x1

    :goto_3
    array-length v4, p1

    if-ge v1, v4, :cond_7

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aget-object v6, p1, v1

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v3, v1

    goto :goto_5

    :cond_4
    goto :goto_4

    :cond_5
    :goto_5
    if-eq v3, v1, :cond_6

    goto :goto_6

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    :goto_6
    add-int/lit8 v1, v3, 0x1

    :goto_7
    array-length v4, p1

    if-ge v1, v4, :cond_8

    aget-object v4, p1, v1

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
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

.method logState(Ljava/lang/String;J)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, ""

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->logState(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method logState(Ljava/lang/String;JLjava/lang/String;)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->logState(Ljava/lang/String;JLjava/lang/String;[B)V

    return-void
.end method

.method logState(Ljava/lang/String;JLjava/lang/String;[B)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    new-instance v8, Ljava/util/HashSet;

    const-string v0, "logState"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->logState(Ljava/lang/String;JLjava/lang/String;[BILjava/util/Set;)V

    return-void
.end method

.method logState(Ljava/lang/String;JLjava/lang/String;[BILjava/util/Set;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "[BI",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v9, p0

    iget-boolean v0, v9, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v10

    const-string v0, "logState"

    move-object/from16 v11, p7

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v10

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->logState(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;Ljava/util/Set;)V

    return-void
.end method

.method logState(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;JIJLjava/util/Set;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "[BI[",
            "Ljava/lang/StackTraceElement;",
            "JIJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v13, p0

    iget-boolean v0, v13, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    nop

    invoke-static/range {p10 .. p10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p11 .. p12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move-object/from16 v12, p13

    invoke-direct/range {v0 .. v12}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->log(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;JLjava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method logState(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;Ljava/util/Set;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "[BI[",
            "Ljava/lang/StackTraceElement;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v13, p0

    iget-boolean v0, v13, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

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

    move-result-object v10

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

    move-result-object v11

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v12, p8

    invoke-direct/range {v0 .. v12}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->log(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;JLjava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method startTrace()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_0

    const-string v0, "AccessibilityTracing"

    const-string v1, "Error: Tracing is not supported on user builds."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
