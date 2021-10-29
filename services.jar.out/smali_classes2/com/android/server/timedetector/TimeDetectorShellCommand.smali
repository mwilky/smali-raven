.class Lcom/android/server/timedetector/TimeDetectorShellCommand;
.super Landroid/os/ShellCommand;
.source "TimeDetectorShellCommand.java"


# instance fields
.field private final mInterface:Lcom/android/server/timedetector/TimeDetectorService;


# direct methods
.method constructor <init>(Lcom/android/server/timedetector/TimeDetectorService;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/timedetector/TimeDetectorShellCommand;->mInterface:Lcom/android/server/timedetector/TimeDetectorService;

    return-void
.end method

.method private runIsAutoDetectionEnabled()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorShellCommand;->mInterface:Lcom/android/server/timedetector/TimeDetectorService;

    invoke-virtual {v1}, Lcom/android/server/timedetector/TimeDetectorService;->getCapabilitiesAndConfig()Landroid/app/time/TimeCapabilitiesAndConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/time/TimeCapabilitiesAndConfig;->getTimeConfiguration()Landroid/app/time/TimeConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/time/TimeConfiguration;->isAutoDetectionEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_1
    goto :goto_0

    :pswitch_0
    const-string v1, "is_auto_detection_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_1

    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorShellCommand;->runIsAutoDetectionEnabled()I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch -0x4e7e5c54
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public onHelp()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "time_detector"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Time Detector (%s) commands:\n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "  help\n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "    Print this help text.\n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "is_auto_detection_enabled"

    aput-object v3, v2, v4

    const-string v3, "  %s\n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v5, "    Prints true/false according to the automatic time detection setting.\n"

    invoke-virtual {v0, v5, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "system_time"

    aput-object v5, v2, v4

    const-string v5, "This service is also affected by the following device_config flags in the %s namespace:\n"

    invoke-virtual {v0, v5, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "time_detector_lower_bound_millis_override"

    aput-object v5, v2, v4

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v5, "    The lower bound used to validate time suggestions when they are received.\n"

    invoke-virtual {v0, v5, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v5, "    Specified in milliseconds since the start of the Unix epoch.\n"

    invoke-virtual {v0, v5, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "time_detector_origin_priorities_override"

    aput-object v2, v1, v4

    invoke-virtual {v0, v3, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "    A comma separated list of origins. See TimeDetectorStrategy for details.\n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "See \"adb shell cmd device_config\" for more information on setting flags.\n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method
