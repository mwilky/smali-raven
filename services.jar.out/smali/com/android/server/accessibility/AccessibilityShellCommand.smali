.class final Lcom/android/server/accessibility/AccessibilityShellCommand;
.super Landroid/os/ShellCommand;
.source "AccessibilityShellCommand.java"


# instance fields
.field final mService:Lcom/android/server/accessibility/AccessibilityManagerService;

.field final mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

.field final mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/SystemActionPerformer;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    return-void
.end method

.method private parseUserId()Ljava/lang/Integer;
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "--user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method private runCallSystemAction()I
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_0

    const/16 v2, 0x7d0

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    invoke-virtual {v3, v1}, Lcom/android/server/accessibility/SystemActionPerformer;->performSystemAction(I)Z

    const/4 v3, 0x0

    return v3

    :cond_1
    return v1
.end method

.method private runGetBindInstantServiceAllowed()I
    .locals 4

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->parseUserId()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getBindInstantServiceAllowed(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.method private runSetBindInstantServiceAllowed()I
    .locals 5

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->parseUserId()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: no true/false specified"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->setBindInstantServiceAllowed(IZ)V

    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "stop-trace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "call-system-action"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "start-trace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "set-bind-instant-service-allowed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "get-bind-instant-service-allowed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    move v0, v1

    :goto_1
    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->onShellCommand(Ljava/lang/String;)I

    move-result v0

    return v0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->runCallSystemAction()I

    move-result v0

    return v0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->runSetBindInstantServiceAllowed()I

    move-result v0

    return v0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->runGetBindInstantServiceAllowed()I

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x333457d5 -> :sswitch_4
        0x2f0ea69f -> :sswitch_3
        0x4fec781a -> :sswitch_2
        0x683ce265 -> :sswitch_1
        0x6ebe83ba -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Accessibility service (accessibility) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  set-bind-instant-service-allowed [--user <USER_ID>] true|false "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Set whether binding to services provided by instant apps is allowed."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  get-bind-instant-service-allowed [--user <USER_ID>]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Get whether binding to services provided by instant apps is allowed."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  call-system-action <ACTION_ID>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Calls the system action with the given action id."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityShellCommand;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/AccessibilityTraceManager;->onHelp(Ljava/io/PrintWriter;)V

    return-void
.end method
