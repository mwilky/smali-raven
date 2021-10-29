.class Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "LocationTimeZoneManagerShellCommand.java"


# instance fields
.field private final mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    return-void
.end method

.method private static convertProviderStateEnumToProtoEnum(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown stateEnum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x6

    return v0

    :pswitch_1
    const/4 v0, 0x5

    return v0

    :pswitch_2
    const/4 v0, 0x4

    return v0

    :pswitch_3
    const/4 v0, 0x3

    return v0

    :pswitch_4
    const/4 v0, 0x2

    return v0

    :pswitch_5
    const/4 v0, 0x1

    return v0

    :pswitch_6
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createTestCommandFromNextShellArg()Lcom/android/server/timezonedetector/location/TestCommand;
    .locals 1

    invoke-static {p0}, Lcom/android/server/timezonedetector/location/TestCommand;->createFromShellCommandArgs(Landroid/os/ShellCommand;)Lcom/android/server/timezonedetector/location/TestCommand;

    move-result-object v0

    return-object v0
.end method

.method private static parseProviderIndex(Ljava/lang/String;)I
    .locals 2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private reportError(Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private runDumpControllerState()I
    .locals 12

    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->getStateForTests()Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const-string v3, "--proto"

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    new-instance v4, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v5, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v5, v3}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    move-object v3, v4

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v4, Landroid/util/IndentingPrintWriter;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    const-string v6, "  "

    invoke-direct {v4, v5, v6}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    :goto_0
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->getLastSuggestion()Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->getLastSuggestion()Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    move-result-object v4

    const-wide v5, 0x10b00000001L

    const-string v7, "last_suggestion"

    invoke-virtual {v3, v7, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->getZoneIds()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-wide v9, 0x20900000001L

    const-string v11, "zone_ids"

    invoke-virtual {v3, v11, v9, v10, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->getDebugInfo()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-wide v9, 0x20900000002L

    const-string v11, "debug_info"

    invoke-virtual {v3, v11, v9, v10, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    :cond_4
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->getPrimaryProviderStates()Ljava/util/List;

    move-result-object v4

    const-wide v5, 0x20b00000002L

    const-string v7, "primary_provider_states"

    invoke-static {v3, v4, v7, v5, v6}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->writeProviderStates(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/util/List;Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->getSecondaryProviderStates()Ljava/util/List;

    move-result-object v4

    const-wide v5, 0x20b00000003L

    const-string v7, "secondary_provider_states"

    invoke-static {v3, v4, v7, v5, v6}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->writeProviderStates(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/util/List;Ljava/lang/String;J)V

    invoke-virtual {v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->flush()V

    return v1

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->reportError(Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    return v1
.end method

.method private runRecordProviderStates()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move v1, v2

    nop

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting provider state recording to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_1
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->setProviderStateRecordingEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    const/4 v2, 0x0

    return v2

    :catch_0
    move-exception v2

    invoke-direct {p0, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->reportError(Ljava/lang/Throwable;)V

    const/4 v3, 0x2

    return v3

    :catch_1
    move-exception v1

    invoke-direct {p0, v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->reportError(Ljava/lang/Throwable;)V

    const/4 v2, 0x1

    return v2
.end method

.method private runSendProviderTestCommand()I
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->parseProviderIndex(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->createTestCommandFromNextShellArg()Lcom/android/server/timezonedetector/location/TestCommand;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Injecting testCommand="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to providerIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_1
    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->handleProviderTestCommand(ILcom/android/server/timezonedetector/location/TestCommand;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    const/4 v3, 0x0

    return v3

    :catch_0
    move-exception v3

    invoke-direct {p0, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->reportError(Ljava/lang/Throwable;)V

    const/4 v4, 0x2

    return v4

    :catch_1
    move-exception v1

    invoke-direct {p0, v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->reportError(Ljava/lang/Throwable;)V

    const/4 v2, 0x1

    return v2
.end method

.method private runStart()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Service started"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->reportError(Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    return v1
.end method

.method private runStop()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Service stopped"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->reportError(Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    return v1
.end method

.method private static writeProviderStates(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/util/List;Ljava/lang/String;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/dump/DualDumpOutputStream;",
            "Ljava/util/List<",
            "Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide v4, 0x10e00000001L

    iget v6, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    invoke-static {v6}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->convertProviderStateEnumToProtoEnum(I)I

    move-result v6

    const-string v7, "state"

    invoke-virtual {p0, v7, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v1, "send_provider_test_command"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "dump_state"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_2
    const-string v1, "start"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_3
    const-string v1, "stop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "record_provider_states"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->runDumpControllerState()I

    move-result v0

    return v0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->runRecordProviderStates()I

    move-result v0

    return v0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->runSendProviderTestCommand()I

    move-result v0

    return v0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->runStop()I

    move-result v0

    return v0

    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->runStart()I

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x17bb9bde -> :sswitch_4
        0x360802 -> :sswitch_3
        0x68ac462 -> :sswitch_2
        0x38381a86 -> :sswitch_1
        0x45ffa6b5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp()V
    .locals 13

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "location_time_zone_manager"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Location Time Zone Manager (%s) commands for tests:\n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "  help\n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "    Print this help text.\n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "start"

    aput-object v3, v2, v4

    const-string v5, "  %s\n"

    invoke-virtual {v0, v5, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v6, "    Starts the service, creating location time zone providers.\n"

    invoke-virtual {v0, v6, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "stop"

    aput-object v6, v2, v4

    invoke-virtual {v0, v5, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v7, "    Stops the service, destroying location time zone providers.\n"

    invoke-virtual {v0, v7, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v7, "record_provider_states"

    aput-object v7, v2, v4

    const-string v7, "  %s (true|false)\n"

    invoke-virtual {v0, v7, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v7, "dump_state"

    aput-object v7, v2, v4

    const-string v8, "    Enables / disables provider state recording mode. See also %s. The default state is always \"false\".\n"

    invoke-virtual {v0, v8, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v8, "    Note: When enabled, this mode consumes memory and it is only intended for testing.\n"

    invoke-virtual {v0, v8, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v8, "    It should be disabled after use, or the device can be rebooted to reset the mode to disabled.\n"

    invoke-virtual {v0, v8, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v8, "    Disabling (or enabling repeatedly) clears any existing stored states.\n"

    invoke-virtual {v0, v8, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 v2, 0x2

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v7, v8, v4

    const-string v7, "--proto"

    aput-object v7, v8, v1

    const-string v7, "  %s [%s]\n"

    invoke-virtual {v0, v7, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v7, v4, [Ljava/lang/Object;

    const-string v8, "    Dumps service state for tests as text or binary proto form.\n"

    invoke-virtual {v0, v8, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v7, v4, [Ljava/lang/Object;

    const-string v8, "    See the LocationTimeZoneManagerServiceStateProto definition for details.\n"

    invoke-virtual {v0, v8, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v7, v1, [Ljava/lang/Object;

    const-string v8, "send_provider_test_command"

    aput-object v8, v7, v4

    const-string v9, "  %s <provider index> <test command>\n"

    invoke-virtual {v0, v9, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v7, v4, [Ljava/lang/Object;

    const-string v9, "    Passes a test command to the named provider.\n"

    invoke-virtual {v0, v9, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    new-array v7, v4, [Ljava/lang/Object;

    const-string v9, "<provider index> = 0 (primary), 1 (secondary)\n"

    invoke-virtual {v0, v9, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v8, v7, v4

    const-string v8, "%s details:\n"

    invoke-virtual {v0, v8, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    new-array v7, v4, [Ljava/lang/Object;

    const-string v8, "Provider <test command> encoding:\n"

    invoke-virtual {v0, v8, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    invoke-static {v0}, Lcom/android/server/timezonedetector/location/TestCommand;->printShellCommandEncodingHelp(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    new-array v7, v4, [Ljava/lang/Object;

    const-string v8, "Simulated provider mode can be used to test the system server behavior or to reproduce bugs without the complexity of using real providers.\n"

    invoke-virtual {v0, v8, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    new-array v7, v4, [Ljava/lang/Object;

    const-string v8, "The test commands for simulated providers are:\n"

    invoke-virtual {v0, v8, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-static {v0}, Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy;->printTestCommandShellHelp(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    new-array v7, v4, [Ljava/lang/Object;

    const-string v8, "Test commands cannot currently be passed to real provider implementations.\n"

    invoke-virtual {v0, v8, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    new-array v7, v1, [Ljava/lang/Object;

    const-string v8, "system_time"

    aput-object v8, v7, v4

    const-string v8, "This service is also affected by the following device_config flags in the %s namespace:\n"

    invoke-virtual {v0, v8, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v7, v1, [Ljava/lang/Object;

    const-string v8, "primary_location_time_zone_provider_mode_override"

    aput-object v8, v7, v4

    invoke-virtual {v0, v5, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Object;

    const-string v9, "disabled"

    aput-object v9, v8, v4

    const-string v10, "enabled"

    aput-object v10, v8, v1

    const-string v11, "simulated"

    aput-object v11, v8, v2

    const-string v12, "    Overrides the mode of the primary provider. Values=%s|%s|%s\n"

    invoke-virtual {v0, v12, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v8, v1, [Ljava/lang/Object;

    const-string v12, "secondary_location_time_zone_provider_mode_override"

    aput-object v12, v8, v4

    invoke-virtual {v0, v5, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v9, v7, v4

    aput-object v10, v7, v1

    aput-object v11, v7, v2

    const-string v8, "    Overrides the mode of the secondary provider. Values=%s|%s|%s\n"

    invoke-virtual {v0, v8, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v7, v1, [Ljava/lang/Object;

    const-string v8, "location_time_zone_detection_uncertainty_delay_millis"

    aput-object v8, v7, v4

    invoke-virtual {v0, v5, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v7, v4, [Ljava/lang/Object;

    const-string v8, "    Sets the amount of time the service waits when uncertain before making an \'uncertain\' suggestion to the time zone detector.\n"

    invoke-virtual {v0, v8, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v7, v1, [Ljava/lang/Object;

    const-string v8, "ltpz_init_timeout_millis"

    aput-object v8, v7, v4

    invoke-virtual {v0, v5, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v7, v4, [Ljava/lang/Object;

    const-string v8, "    Sets the initialization time passed to the providers.\n"

    invoke-virtual {v0, v8, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v7, v1, [Ljava/lang/Object;

    const-string v8, "ltpz_init_timeout_fuzz_millis"

    aput-object v8, v7, v4

    invoke-virtual {v0, v5, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v5, v4, [Ljava/lang/Object;

    const-string v7, "    Sets the amount of extra time added to the providers\' initialization time.\n"

    invoke-virtual {v0, v7, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v4

    aput-object v3, v2, v1

    const-string v3, "Typically, use \'%s\' to stop the service before setting individual flags and \'%s\' after to restart it.\n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "See \"adb shell cmd device_config\" for more information on setting flags.\n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "time_zone_detector"

    aput-object v2, v1, v4

    const-string v2, "Also see \"adb shell cmd %s help\" for higher-level location time zone commands / settings.\n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method
