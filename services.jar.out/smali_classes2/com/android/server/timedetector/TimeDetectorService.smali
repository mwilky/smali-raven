.class public final Lcom/android/server/timedetector/TimeDetectorService;
.super Landroid/app/timedetector/ITimeDetectorService$Stub;
.source "TimeDetectorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timedetector/TimeDetectorService$Lifecycle;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "time_detector"


# instance fields
.field private final mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timedetector/TimeDetectorStrategy;)V
    .locals 1

    sget-object v0, Lcom/android/server/timezonedetector/CallerIdentityInjector;->REAL:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/timedetector/TimeDetectorService;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timedetector/TimeDetectorStrategy;Lcom/android/server/timezonedetector/CallerIdentityInjector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timedetector/TimeDetectorStrategy;Lcom/android/server/timezonedetector/CallerIdentityInjector;)V
    .locals 1

    invoke-direct {p0}, Landroid/app/timedetector/ITimeDetectorService$Stub;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mHandler:Landroid/os/Handler;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p3

    check-cast v0, Lcom/android/server/timedetector/TimeDetectorStrategy;

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p4

    check-cast v0, Lcom/android/server/timezonedetector/CallerIdentityInjector;

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    return-void
.end method

.method private enforceManageTimeDetectorPermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_TIME_AND_ZONE_DETECTION"

    const-string v2, "manage time and time zone detection"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceSuggestExternalTimePermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SUGGEST_EXTERNAL_TIME"

    const-string v2, "suggest time from external source"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceSuggestGnssTimePermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SET_TIME"

    const-string v2, "suggest gnss time"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceSuggestManualTimePermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SUGGEST_MANUAL_TIME_AND_ZONE"

    const-string v2, "suggest manual time and time zone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceSuggestNetworkTimePermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SET_TIME"

    const-string v2, "set time"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceSuggestTelephonyTimePermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SUGGEST_TELEPHONY_TIME_AND_ZONE"

    const-string v2, "suggest telephony time and time zone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getTimeCapabilitiesAndConfig(I)Landroid/app/time/TimeCapabilitiesAndConfig;
    .locals 5

    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorService;->enforceManageTimeDetectorPermission()V

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {v2, p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->getConfigurationInternal(I)Lcom/android/server/timedetector/ConfigurationInternal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/timedetector/ConfigurationInternal;->capabilitiesAndConfig()Landroid/app/time/TimeCapabilitiesAndConfig;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {v4, v0, v1}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {v3, v0, v1}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->restoreCallingIdentity(J)V

    throw v2
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    const-string v1, "time_detector"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {v1, v0, p3}, Lcom/android/server/timedetector/TimeDetectorStrategy;->dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->flush()V

    return-void
.end method

.method public getCapabilitiesAndConfig()Landroid/app/time/TimeCapabilitiesAndConfig;
    .locals 2

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/timedetector/TimeDetectorService;->getTimeCapabilitiesAndConfig(I)Landroid/app/time/TimeCapabilitiesAndConfig;

    move-result-object v1

    return-object v1
.end method

.method public synthetic lambda$suggestExternalTime$3$TimeDetectorService(Landroid/app/time/ExternalTimeSuggestion;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {v0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->suggestExternalTime(Landroid/app/time/ExternalTimeSuggestion;)V

    return-void
.end method

.method public synthetic lambda$suggestGnssTime$2$TimeDetectorService(Landroid/app/timedetector/GnssTimeSuggestion;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {v0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->suggestGnssTime(Landroid/app/timedetector/GnssTimeSuggestion;)V

    return-void
.end method

.method public synthetic lambda$suggestNetworkTime$1$TimeDetectorService(Landroid/app/timedetector/NetworkTimeSuggestion;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {v0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->suggestNetworkTime(Landroid/app/timedetector/NetworkTimeSuggestion;)V

    return-void
.end method

.method public synthetic lambda$suggestTelephonyTime$0$TimeDetectorService(Landroid/app/timedetector/TelephonyTimeSuggestion;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {v0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->suggestTelephonyTime(Landroid/app/timedetector/TelephonyTimeSuggestion;)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    new-instance v0, Lcom/android/server/timedetector/TimeDetectorShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/timedetector/TimeDetectorShellCommand;-><init>(Lcom/android/server/timedetector/TimeDetectorService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/timedetector/TimeDetectorShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public suggestExternalTime(Landroid/app/time/ExternalTimeSuggestion;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorService;->enforceSuggestExternalTimePermission()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timedetector/TimeDetectorService;Landroid/app/time/ExternalTimeSuggestion;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public suggestGnssTime(Landroid/app/timedetector/GnssTimeSuggestion;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorService;->enforceSuggestGnssTimePermission()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timedetector/TimeDetectorService;Landroid/app/timedetector/GnssTimeSuggestion;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public suggestManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)Z
    .locals 3

    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorService;->enforceSuggestManualTimePermission()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {v2, p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->suggestManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public suggestNetworkTime(Landroid/app/timedetector/NetworkTimeSuggestion;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorService;->enforceSuggestNetworkTimePermission()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/timedetector/TimeDetectorService;Landroid/app/timedetector/NetworkTimeSuggestion;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public suggestTelephonyTime(Landroid/app/timedetector/TelephonyTimeSuggestion;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorService;->enforceSuggestTelephonyTimePermission()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/timedetector/TimeDetectorService;Landroid/app/timedetector/TelephonyTimeSuggestion;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateConfiguration(Landroid/app/time/TimeConfiguration;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorService;->enforceManageTimeDetectorPermission()V

    const/4 v0, 0x0

    return v0
.end method
