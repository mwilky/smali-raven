.class public Lcom/android/server/devicestate/DeviceStateManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "DeviceStateManagerShellCommand.java"


# static fields
.field private static sLastRequest:Landroid/hardware/devicestate/DeviceStateRequest;


# instance fields
.field private final mClient:Landroid/hardware/devicestate/DeviceStateManager;

.field private final mService:Lcom/android/server/devicestate/DeviceStateManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mClient:Landroid/hardware/devicestate/DeviceStateManager;

    return-void
.end method

.method private printState(Ljava/io/PrintWriter;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getCommittedState()Ljava/util/Optional;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v1}, Lcom/android/server/devicestate/DeviceStateManagerService;->getBaseState()Ljava/util/Optional;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v2}, Lcom/android/server/devicestate/DeviceStateManagerService;->getOverrideState()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Committed state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->toString(Ljava/util/Optional;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "----------------------"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Base state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->toString(Ljava/util/Optional;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Override state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private runPrintStates(Ljava/io/PrintWriter;)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getSupportedStates()[Lcom/android/server/devicestate/DeviceState;

    move-result-object v0

    const-string v1, "Supported states: [\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.method private runState(Ljava/io/PrintWriter;)I
    .locals 10

    const-string v0, ""

    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->printState(Ljava/io/PrintWriter;)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v2}, Lcom/android/server/devicestate/DeviceStateManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.CONTROL_DEVICE_STATE"

    const-string v4, "Permission required to request device state."

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/4 v5, -0x1

    :try_start_0
    const-string/jumbo v6, "reset"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->sLastRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    if-eqz v6, :cond_3

    iget-object v8, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mClient:Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v8, v6}, Landroid/hardware/devicestate/DeviceStateManager;->cancelRequest(Landroid/hardware/devicestate/DeviceStateRequest;)V

    sput-object v7, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->sLastRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Landroid/hardware/devicestate/DeviceStateRequest;->newBuilder(I)Landroid/hardware/devicestate/DeviceStateRequest$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/hardware/devicestate/DeviceStateRequest$Builder;->build()Landroid/hardware/devicestate/DeviceStateRequest;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mClient:Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v9, v8, v7, v7}, Landroid/hardware/devicestate/DeviceStateManager;->requestState(Landroid/hardware/devicestate/DeviceStateRequest;Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateRequest$Callback;)V

    sget-object v7, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->sLastRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    if-eqz v7, :cond_2

    iget-object v9, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mClient:Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v9, v7}, Landroid/hardware/devicestate/DeviceStateManager;->cancelRequest(Landroid/hardware/devicestate/DeviceStateRequest;)V

    :cond_2
    sput-object v8, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->sLastRequest:Landroid/hardware/devicestate/DeviceStateRequest;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v6

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    const-string v8, "-------------------"

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    const-string v8, "Run:"

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    const-string v8, "    print-states"

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v7, "to get the list of currently supported device states"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    const-string v7, "Error: requested state should be an integer"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private static toString(Ljava/util/Optional;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/server/devicestate/DeviceState;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicestate/DeviceState;

    invoke-virtual {v0}, Lcom/android/server/devicestate/DeviceState;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "(none)"

    :goto_0
    return-object v0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "print-states"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->runPrintStates(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->runState(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x439a66de -> :sswitch_1
        0x68ac491 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Device state manager (device_state) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  state [reset|OVERRIDE_DEVICE_STATE]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Return or override device state."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  print-states"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Return list of currently supported device states."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
