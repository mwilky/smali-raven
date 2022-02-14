.class public Lcom/android/server/accessibility/AccessibilityTraceManager;
.super Ljava/lang/Object;
.source "AccessibilityTraceManager.java"

# interfaces
.implements Landroid/accessibilityservice/AccessibilityTrace;


# static fields
.field private static sInstance:Lcom/android/server/accessibility/AccessibilityTraceManager;


# instance fields
.field private final mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

.field private final mA11yMSLock:Ljava/lang/Object;

.field private mEnabledLoggingFlags:J

.field private final mService:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/accessibility/AccessibilityTraceManager;->sInstance:Lcom/android/server/accessibility/AccessibilityTraceManager;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yMSLock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mEnabledLoggingFlags:J

    return-void
.end method

.method static getInstance(Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;)Lcom/android/server/accessibility/AccessibilityTraceManager;
    .locals 1

    sget-object v0, Lcom/android/server/accessibility/AccessibilityTraceManager;->sInstance:Lcom/android/server/accessibility/AccessibilityTraceManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/accessibility/AccessibilityTraceManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityTraceManager;-><init>(Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/accessibility/AccessibilityTraceManager;->sInstance:Lcom/android/server/accessibility/AccessibilityTraceManager;

    :cond_0
    sget-object v0, Lcom/android/server/accessibility/AccessibilityTraceManager;->sInstance:Lcom/android/server/accessibility/AccessibilityTraceManager;

    return-object v0
.end method

.method private needToNotifyClients(J)Z
    .locals 4

    iget-wide v0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mEnabledLoggingFlags:J

    const-wide/32 v2, 0x44030

    and-long/2addr v0, v2

    and-long/2addr v2, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getTraceStateForAccessibilityManagerClientState()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yMSLock:Ljava/lang/Object;

    monitor-enter v1

    const-wide/16 v2, 0x10

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit16 v0, v0, 0x100

    :cond_0
    const-wide/16 v2, 0x20

    invoke-virtual {p0, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v2

    if-eqz v2, :cond_1

    or-int/lit16 v0, v0, 0x200

    :cond_1
    const-wide/32 v2, 0x40000

    invoke-virtual {p0, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v2

    if-eqz v2, :cond_2

    or-int/lit16 v0, v0, 0x400

    :cond_2
    const-wide/16 v2, 0x4000

    invoke-virtual {p0, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v2

    if-eqz v2, :cond_3

    or-int/lit16 v0, v0, 0x800

    :cond_3
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isA11yTracingEnabled()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yMSLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mEnabledLoggingFlags:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isA11yTracingEnabledForTypes(J)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yMSLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mEnabledLoggingFlags:J

    and-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public logTrace(JLjava/lang/String;JLjava/lang/String;IJI[Ljava/lang/StackTraceElement;Ljava/util/Set;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "IJI[",
            "Ljava/lang/StackTraceElement;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v14, p4

    invoke-virtual {v0, v14, v15}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    if-nez p12, :cond_0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v16, v2

    goto :goto_0

    :cond_0
    move-object/from16 v16, p12

    :goto_0
    move-object/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move/from16 v7, p10

    move-object/from16 v8, p11

    move-wide/from16 v9, p1

    move/from16 v11, p7

    move-wide/from16 v12, p8

    move-object/from16 v14, v16

    invoke-interface/range {v1 .. v14}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;->logTrace(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;JIJLjava/util/Set;)V

    :cond_1
    return-void
.end method

.method public logTrace(Ljava/lang/String;J)V
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public logTrace(Ljava/lang/String;JLjava/lang/String;)V
    .locals 10

    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    new-instance v9, Ljava/util/HashSet;

    const-string/jumbo v0, "logTrace"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-interface/range {v1 .. v9}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;->logTrace(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method onHelp(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "  start-trace [-t LOGGING_TYPE [LOGGING_TYPE...]]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Start the debug tracing. If no option is present, full trace will be"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    generated. Options are:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      -t: Only generate tracing for the logging type(s) specified here."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "          LOGGING_TYPE can be any one of below:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "            IAccessibilityServiceConnection"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "            IAccessibilityServiceClient"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "            IAccessibilityManager"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "            IAccessibilityManagerClient"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "            IAccessibilityInteractionConnection"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "            IAccessibilityInteractionConnectionCallback"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "            IRemoteMagnificationAnimationCallback"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "            IWindowMagnificationConnection"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "            IWindowMagnificationConnectionCallback"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "            WindowManagerInternal"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "            WindowsForAccessibilityCallback"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "            MagnificationCallbacks"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "            InputFilter"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "            Gesture"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "            AccessibilityService"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "            PMBroadcastReceiver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "            UserBroadcastReceiver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "            FingerprintGesture"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  stop-trace"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Stop the debug tracing."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method onShellCommand(Ljava/lang/String;Landroid/os/ShellCommand;)I
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "stop-trace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "start-trace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :goto_0
    move v0, v1

    :goto_1
    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityTraceManager;->stopTrace()V

    return v2

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-wide/16 v3, -0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->startTrace(J)V

    return v2

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    :cond_2
    goto :goto_3

    :pswitch_2
    const-string v4, "-t"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_4

    :goto_3
    move v4, v1

    :goto_4
    packed-switch v4, :pswitch_data_2

    invoke-virtual {p2}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: option not recognized "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityTraceManager;->stopTrace()V

    return v1

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    :goto_5
    if-eqz v4, :cond_3

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_3
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-static {v3}, Landroid/accessibilityservice/AccessibilityTrace;->getLoggingFlagsFromNames(Ljava/util/List;)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/server/accessibility/AccessibilityTraceManager;->startTrace(J)V

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x4fec781a -> :sswitch_1
        0x6ebe83ba -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5e7
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public startTrace(J)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yMSLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mEnabledLoggingFlags:J

    iput-wide p1, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mEnabledLoggingFlags:J

    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->needToNotifyClients(J)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserState()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUpdateClientsIfNeededLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;->startTrace(J)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public stopTrace()V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yMSLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabled()Z

    move-result v2

    move v0, v2

    iget-wide v2, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mEnabledLoggingFlags:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mEnabledLoggingFlags:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->needToNotifyClients(J)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserState()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUpdateClientsIfNeededLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;->stopTrace()V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
