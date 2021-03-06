.class final Lcom/android/server/timedetector/EnvironmentImpl;
.super Ljava/lang/Object;
.source "EnvironmentImpl.java"

# interfaces
.implements Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "time_detector"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mConfigChangeListener:Lcom/android/server/timezonedetector/ConfigurationChangeListener;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mServiceConfigAccessor:Lcom/android/server/timedetector/ServiceConfigAccessor;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$H9NtT9tLMwyofCpiDPLlDw83ais(Lcom/android/server/timedetector/EnvironmentImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/timedetector/EnvironmentImpl;->handleAutoTimeDetectionChangedOnHandlerThread()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timedetector/ServiceConfigAccessor;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mHandler:Landroid/os/Handler;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p3

    check-cast v1, Lcom/android/server/timedetector/ServiceConfigAccessor;

    iput-object v1, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timedetector/ServiceConfigAccessor;

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    nop

    const/4 v3, 0x1

    const-string v4, "time_detector"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v4, Landroid/os/PowerManager$WakeLock;

    iput-object v4, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-class v4, Landroid/app/AlarmManager;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v4, Landroid/app/AlarmManager;

    iput-object v4, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mAlarmManager:Landroid/app/AlarmManager;

    const-class v4, Landroid/os/UserManager;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v4, Landroid/os/UserManager;

    iput-object v4, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    nop

    const-string v5, "auto_time"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Lcom/android/server/timedetector/EnvironmentImpl$1;

    invoke-direct {v6, p0, v0}, Lcom/android/server/timedetector/EnvironmentImpl$1;-><init>(Lcom/android/server/timedetector/EnvironmentImpl;Landroid/os/Handler;)V

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v0, Lcom/android/server/timedetector/EnvironmentImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/timedetector/EnvironmentImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timedetector/EnvironmentImpl;)V

    invoke-virtual {v1, v0}, Lcom/android/server/timedetector/ServiceConfigAccessor;->addListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/timedetector/EnvironmentImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/timedetector/EnvironmentImpl;->handleAutoTimeDetectionChangedOnHandlerThread()V

    return-void
.end method

.method private checkWakeLockHeld()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WakeLock "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not held"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "time_detector"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private handleAutoTimeDetectionChangedOnHandlerThread()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mConfigChangeListener:Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    if-nez v0, :cond_0

    const-string v0, "time_detector"

    const-string v1, "mConfigChangeListener is unexpectedly null"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mConfigChangeListener:Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/ConfigurationChangeListener;->onChange()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isUserConfigAllowed(I)Z
    .locals 3

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mUserManager:Landroid/os/UserManager;

    const-string v2, "no_config_date_time"

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method


# virtual methods
.method public acquireWakeLock()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WakeLock "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " already held"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "time_detector"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method public autoOriginPriorities()[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timedetector/ServiceConfigAccessor;

    invoke-virtual {v0}, Lcom/android/server/timedetector/ServiceConfigAccessor;->getOriginPriorities()[I

    move-result-object v0

    return-object v0
.end method

.method public autoTimeLowerBound()Ljava/time/Instant;
    .locals 1

    iget-object v0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timedetector/ServiceConfigAccessor;

    invoke-virtual {v0}, Lcom/android/server/timedetector/ServiceConfigAccessor;->autoTimeLowerBound()Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public configurationInternal(I)Lcom/android/server/timedetector/ConfigurationInternal;
    .locals 2

    new-instance v0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;

    invoke-direct {v0, p1}, Lcom/android/server/timedetector/ConfigurationInternal$Builder;-><init>(I)V

    invoke-direct {p0, p1}, Lcom/android/server/timedetector/EnvironmentImpl;->isUserConfigAllowed(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->setUserConfigAllowed(Z)Lcom/android/server/timedetector/ConfigurationInternal$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/timedetector/EnvironmentImpl;->isAutoTimeDetectionEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->setAutoDetectionEnabled(Z)Lcom/android/server/timedetector/ConfigurationInternal$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->build()Lcom/android/server/timedetector/ConfigurationInternal;

    move-result-object v0

    return-object v0
.end method

.method public elapsedRealtimeMillis()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public isAutoTimeDetectionEnabled()Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "auto_time"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method public synthetic lambda$new$0$EnvironmentImpl()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/timedetector/EnvironmentImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/timedetector/EnvironmentImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timedetector/EnvironmentImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public releaseWakeLock()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/timedetector/EnvironmentImpl;->checkWakeLockHeld()V

    iget-object v0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public setConfigChangeListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    iput-object v0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mConfigChangeListener:Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSystemClock(J)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/timedetector/EnvironmentImpl;->checkWakeLockHeld()V

    iget-object v0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/AlarmManager;->setTime(J)V

    return-void
.end method

.method public systemClockMillis()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public systemClockUpdateThresholdMillis()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timedetector/ServiceConfigAccessor;

    invoke-virtual {v0}, Lcom/android/server/timedetector/ServiceConfigAccessor;->systemClockUpdateThresholdMillis()I

    move-result v0

    return v0
.end method
