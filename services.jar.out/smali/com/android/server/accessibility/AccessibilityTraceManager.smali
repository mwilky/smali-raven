.class Lcom/android/server/accessibility/AccessibilityTraceManager;
.super Ljava/lang/Object;
.source "AccessibilityTraceManager.java"

# interfaces
.implements Lcom/android/server/accessibility/AccessibilityTrace;


# instance fields
.field private final mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

.field private final mService:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    return-void
.end method


# virtual methods
.method public isA11yTracingEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;->isAccessibilityTracingEnabled()Z

    move-result v0

    return v0
.end method

.method public logTrace(JLjava/lang/String;Ljava/lang/String;IJI[Ljava/lang/StackTraceElement;)V
    .locals 13

    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;->isAccessibilityTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p8

    move-object/from16 v7, p9

    move-wide v8, p1

    move/from16 v10, p5

    move-wide/from16 v11, p6

    invoke-interface/range {v2 .. v12}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;->logTrace(Ljava/lang/String;Ljava/lang/String;[BI[Ljava/lang/StackTraceElement;JIJ)V

    :cond_0
    return-void
.end method

.method public logTrace(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logTrace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;->logTrace(Ljava/lang/String;Ljava/lang/String;[BI[Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method onHelp(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "  start-trace"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Start the debug tracing."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  stop-trace"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Stop the debug tracing."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method onShellCommand(Ljava/lang/String;)I
    .locals 3

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
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityTraceManager;->startTrace()V

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
.end method

.method public startTrace()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;->isAccessibilityTracingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;->startTrace()V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserState()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUpdateClientsIfNeeded(Lcom/android/server/accessibility/AccessibilityUserState;)V

    :cond_0
    return-void
.end method

.method public stopTrace()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;->isAccessibilityTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;->stopTrace()V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserState()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUpdateClientsIfNeeded(Lcom/android/server/accessibility/AccessibilityUserState;)V

    :cond_0
    return-void
.end method
