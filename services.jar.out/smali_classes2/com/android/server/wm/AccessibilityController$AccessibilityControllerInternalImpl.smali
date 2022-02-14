.class final Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;
.super Ljava/lang/Object;
.source "AccessibilityController.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AccessibilityControllerInternalImpl"
.end annotation


# static fields
.field private static sInstance:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;


# instance fields
.field private volatile mEnabledTracingFlags:J

.field private final mTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->getInstance(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mEnabledTracingFlags:J

    return-void
.end method

.method static getInstance(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;
    .locals 2

    invoke-static {}, Lcom/android/server/wm/AccessibilityController;->access$2000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->sInstance:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    invoke-direct {v1, p0}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    sput-object v1, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->sInstance:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    :cond_0
    sget-object v1, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->sInstance:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public isAccessibilityTracingEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->isEnabled()Z

    move-result v0

    return v0
.end method

.method isTracingEnabled(J)Z
    .locals 4

    iget-wide v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mEnabledTracingFlags:J

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method logTrace(Ljava/lang/String;J)V
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method logTrace(Ljava/lang/String;JLjava/lang/String;)V
    .locals 8

    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;[BI)V

    return-void
.end method

.method logTrace(Ljava/lang/String;JLjava/lang/String;[BI)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    new-instance v7, Ljava/util/HashSet;

    const-string v1, "logTrace"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->logState(Ljava/lang/String;JLjava/lang/String;[BILjava/util/Set;)V

    return-void
.end method

.method public logTrace(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;JIJLjava/util/Set;)V
    .locals 15
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

    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move-wide/from16 v12, p11

    move-object/from16 v14, p13

    invoke-virtual/range {v1 .. v14}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->logState(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;JIJLjava/util/Set;)V

    return-void
.end method

.method public logTrace(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;Ljava/util/Set;)V
    .locals 10
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

    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->logState(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;Ljava/util/Set;)V

    return-void
.end method

.method public startTrace(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mEnabledTracingFlags:J

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->startTrace()V

    return-void
.end method

.method public stopTrace()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->stopTrace()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mEnabledTracingFlags:J

    return-void
.end method
