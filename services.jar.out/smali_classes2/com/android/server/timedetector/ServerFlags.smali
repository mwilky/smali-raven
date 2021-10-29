.class public final Lcom/android/server/timedetector/ServerFlags;
.super Ljava/lang/Object;
.source "ServerFlags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timedetector/ServerFlags$DeviceConfigKey;
    }
.end annotation


# static fields
.field public static final KEY_LOCATION_TIME_ZONE_DETECTION_FEATURE_SUPPORTED:Ljava/lang/String; = "location_time_zone_detection_feature_supported"

.field public static final KEY_LOCATION_TIME_ZONE_DETECTION_SETTING_ENABLED_DEFAULT:Ljava/lang/String; = "location_time_zone_detection_setting_enabled_default"

.field public static final KEY_LOCATION_TIME_ZONE_DETECTION_SETTING_ENABLED_OVERRIDE:Ljava/lang/String; = "location_time_zone_detection_setting_enabled_override"

.field public static final KEY_LOCATION_TIME_ZONE_DETECTION_UNCERTAINTY_DELAY_MILLIS:Ljava/lang/String; = "location_time_zone_detection_uncertainty_delay_millis"

.field public static final KEY_LOCATION_TIME_ZONE_PROVIDER_INITIALIZATION_TIMEOUT_FUZZ_MILLIS:Ljava/lang/String; = "ltpz_init_timeout_fuzz_millis"

.field public static final KEY_LOCATION_TIME_ZONE_PROVIDER_INITIALIZATION_TIMEOUT_MILLIS:Ljava/lang/String; = "ltpz_init_timeout_millis"

.field public static final KEY_PRIMARY_LOCATION_TIME_ZONE_PROVIDER_MODE_OVERRIDE:Ljava/lang/String; = "primary_location_time_zone_provider_mode_override"

.field public static final KEY_SECONDARY_LOCATION_TIME_ZONE_PROVIDER_MODE_OVERRIDE:Ljava/lang/String; = "secondary_location_time_zone_provider_mode_override"

.field public static final KEY_TIME_DETECTOR_LOWER_BOUND_MILLIS_OVERRIDE:Ljava/lang/String; = "time_detector_lower_bound_millis_override"

.field public static final KEY_TIME_DETECTOR_ORIGIN_PRIORITIES_OVERRIDE:Ljava/lang/String; = "time_detector_origin_priorities_override"

.field private static final OPTIONAL_FALSE:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final OPTIONAL_TRUE:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final SLOCK:Ljava/lang/Object;

.field private static sInstance:Lcom/android/server/timedetector/ServerFlags;


# instance fields
.field private final mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/timezonedetector/ConfigurationChangeListener;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$6XJt9MGapm8VhYC1XARTcmuAVLY(Lcom/android/server/timedetector/ServerFlags;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/timedetector/ServerFlags;->handlePropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sput-object v0, Lcom/android/server/timedetector/ServerFlags;->OPTIONAL_TRUE:Ljava/util/Optional;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sput-object v0, Lcom/android/server/timedetector/ServerFlags;->OPTIONAL_FALSE:Ljava/util/Optional;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/timedetector/ServerFlags;->SLOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/timedetector/ServerFlags;->mListeners:Landroid/util/ArrayMap;

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/timedetector/ServerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/timedetector/ServerFlags$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timedetector/ServerFlags;)V

    const-string v2, "system_time"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/timedetector/ServerFlags;
    .locals 2

    sget-object v0, Lcom/android/server/timedetector/ServerFlags;->SLOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/timedetector/ServerFlags;->sInstance:Lcom/android/server/timedetector/ServerFlags;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/timedetector/ServerFlags;

    invoke-direct {v1, p0}, Lcom/android/server/timedetector/ServerFlags;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/timedetector/ServerFlags;->sInstance:Lcom/android/server/timedetector/ServerFlags;

    :cond_0
    sget-object v1, Lcom/android/server/timedetector/ServerFlags;->sInstance:Lcom/android/server/timedetector/ServerFlags;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handlePropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/timedetector/ServerFlags;->mListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/timedetector/ServerFlags;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/timedetector/ServerFlags;->intersects(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    invoke-interface {v3}, Lcom/android/server/timezonedetector/ConfigurationChangeListener;->onChange()V

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static intersects(Ljava/util/Set;Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static parseOptionalBoolean(Ljava/lang/String;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/timedetector/ServerFlags;->OPTIONAL_TRUE:Ljava/util/Optional;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/server/timedetector/ServerFlags;->OPTIONAL_FALSE:Ljava/util/Optional;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/timezonedetector/ConfigurationChangeListener;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/timedetector/ServerFlags;->mListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/timedetector/ServerFlags;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    const-string v0, "system_time"

    invoke-static {v0, p1, p2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDurationFromMillis(Ljava/lang/String;Ljava/time/Duration;)Ljava/time/Duration;
    .locals 4

    const-string v0, "system_time"

    const-wide/16 v1, -0x1

    invoke-static {v0, p1, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    return-object p2

    :cond_0
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v2

    return-object v2
.end method

.method public getOptionalBoolean(Ljava/lang/String;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "system_time"

    invoke-static {v0, p1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/timedetector/ServerFlags;->parseOptionalBoolean(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public getOptionalInstant(Ljava/lang/String;)Ljava/util/Optional;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/time/Instant;",
            ">;"
        }
    .end annotation

    const-string v0, "system_time"

    invoke-static {v0, p1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v1

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    return-object v2
.end method

.method public getOptionalString(Ljava/lang/String;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "system_time"

    invoke-static {v0, p1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public getOptionalStringArray(Ljava/lang/String;)Ljava/util/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/ServerFlags;->getOptionalString(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method
