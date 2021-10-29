.class Lcom/android/server/alarm/AlarmManagerService$ShellCmd;
.super Landroid/os/ShellCommand;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShellCmd"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/AlarmManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    return-void
.end method


# virtual methods
.method getBinderService()Landroid/app/IAlarmManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->access$4500(Lcom/android/server/alarm/AlarmManagerService;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v0

    return-object v0
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 6

    if-nez p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "set-timezone"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "set-time"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :sswitch_2
    const-string v2, "get-config-version"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :goto_0
    move v2, v1

    :goto_1
    packed-switch v2, :pswitch_data_0

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;->getBinderService()Landroid/app/IAlarmManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IAlarmManager;->getConfigVersion()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    return v3

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;->getBinderService()Landroid/app/IAlarmManager;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/app/IAlarmManager;->setTimeZone(Ljava/lang/String;)V

    return v3

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;->getBinderService()Landroid/app/IAlarmManager;

    move-result-object v2

    invoke-interface {v2, v4, v5}, Landroid/app/IAlarmManager;->setTime(J)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    move v1, v3

    :cond_2
    return v1

    :goto_2
    return v1

    :catch_0
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return v1

    :sswitch_data_0
    .sparse-switch
        -0x7e64175c -> :sswitch_2
        0x519f2558 -> :sswitch_1
        0x7895dd04 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Alarm manager service (alarm) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  set-time TIME"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Set the system clock time to TIME where TIME is milliseconds"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    since the Epoch."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  set-timezone TZ"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Set the system timezone to TZ where TZ is an Olson id."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  get-config-version"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Returns an integer denoting the version of device_config keys the service is sync\'ed to. As long as this returns the same version, the values of the config are guaranteed to remain the same."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
