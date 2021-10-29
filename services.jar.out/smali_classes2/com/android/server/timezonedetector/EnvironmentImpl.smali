.class final Lcom/android/server/timezonedetector/EnvironmentImpl;
.super Ljava/lang/Object;
.source "EnvironmentImpl.java"

# interfaces
.implements Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "time_zone_detector"

.field private static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"


# instance fields
.field private mConfigChangeListener:Lcom/android/server/timezonedetector/ConfigurationChangeListener;

.field private final mContext:Landroid/content/Context;

.field private final mCr:Landroid/content/ContentResolver;

.field private final mHandler:Landroid/os/Handler;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private final mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/ServiceConfigAccessor;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mContext:Landroid/content/Context;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mCr:Landroid/content/ContentResolver;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mUserManager:Landroid/os/UserManager;

    const-class v2, Landroid/location/LocationManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mLocationManager:Landroid/location/LocationManager;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, p3

    check-cast v2, Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    iput-object v2, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.location.MODE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v3, Lcom/android/server/timezonedetector/EnvironmentImpl$1;

    invoke-direct {v3, p0}, Lcom/android/server/timezonedetector/EnvironmentImpl$1;-><init>(Lcom/android/server/timezonedetector/EnvironmentImpl;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    nop

    const-string v3, "auto_time_zone"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Lcom/android/server/timezonedetector/EnvironmentImpl$2;

    invoke-direct {v4, p0, v1}, Lcom/android/server/timezonedetector/EnvironmentImpl$2;-><init>(Lcom/android/server/timezonedetector/EnvironmentImpl;Landroid/os/Handler;)V

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    nop

    const-string v3, "location_time_zone_detection_enabled"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Lcom/android/server/timezonedetector/EnvironmentImpl$3;

    invoke-direct {v4, p0, v1}, Lcom/android/server/timezonedetector/EnvironmentImpl$3;-><init>(Lcom/android/server/timezonedetector/EnvironmentImpl;Landroid/os/Handler;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v3, v5, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/timezonedetector/EnvironmentImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/timezonedetector/EnvironmentImpl;->handleConfigChangeOnHandlerThread()V

    return-void
.end method

.method private handleConfigChangeOnHandlerThread()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mConfigChangeListener:Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    if-nez v0, :cond_0

    const-string v0, "time_zone_detector"

    const-string v1, "mConfigChangeListener is unexpectedly null"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mConfigChangeListener:Lcom/android/server/timezonedetector/ConfigurationChangeListener;

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

.method private isAutoDetectionEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mCr:Landroid/content/ContentResolver;

    const-string v1, "auto_time_zone"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private isGeoDetectionEnabled(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getGeoDetectionSettingEnabledOverride()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->isGeoDetectionEnabledForUsersByDefault()Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mCr:Landroid/content/ContentResolver;

    nop

    const-string v3, "location_time_zone_detection_enabled"

    invoke-static {v2, v3, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private isLocationEnabled(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mLocationManager:Landroid/location/LocationManager;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method private isUserConfigAllowed(I)Z
    .locals 3

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mUserManager:Landroid/os/UserManager;

    const-string v2, "no_config_date_time"

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private setAutoDetectionEnabledIfRequired(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/timezonedetector/EnvironmentImpl;->isAutoDetectionEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mCr:Landroid/content/ContentResolver;

    const-string v1, "auto_time_zone"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private setGeoDetectionEnabledIfRequired(IZ)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/timezonedetector/EnvironmentImpl;->isGeoDetectionEnabled(I)Z

    move-result v0

    if-eq v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mCr:Landroid/content/ContentResolver;

    nop

    const-string v1, "location_time_zone_detection_enabled"

    invoke-static {v0, v1, p2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getConfigurationInternal(I)Lcom/android/server/timezonedetector/ConfigurationInternal;
    .locals 2

    new-instance v0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    invoke-direct {v0, p1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->isTelephonyTimeZoneDetectionFeatureSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setTelephonyDetectionFeatureSupported(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->isGeoTimeZoneDetectionFeatureSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setGeoDetectionFeatureSupported(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/timezonedetector/EnvironmentImpl;->isAutoDetectionEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setAutoDetectionEnabled(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/server/timezonedetector/EnvironmentImpl;->isUserConfigAllowed(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setUserConfigAllowed(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/server/timezonedetector/EnvironmentImpl;->isLocationEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setLocationEnabled(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/server/timezonedetector/EnvironmentImpl;->isGeoDetectionEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setGeoDetectionEnabled(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->build()Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentUserId()I
    .locals 1

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    return v0
.end method

.method public getDeviceTimeZone()Ljava/lang/String;
    .locals 1

    const-string v0, "persist.sys.timezone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDeviceTimeZoneInitialized()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/EnvironmentImpl;->getDeviceTimeZone()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setConfigChangeListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    iput-object v0, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mConfigChangeListener:Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDeviceTimeZone(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    return-void
.end method

.method public storeConfiguration(ILandroid/app/time/TimeZoneConfiguration;)V
    .locals 2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->isAutoDetectionFeatureSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/app/time/TimeZoneConfiguration;->isAutoDetectionEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/timezonedetector/EnvironmentImpl;->setAutoDetectionEnabledIfRequired(Z)V

    iget-object v1, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getGeoDetectionSettingEnabledOverride()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->isGeoTimeZoneDetectionFeatureSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/app/time/TimeZoneConfiguration;->isGeoDetectionEnabled()Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/timezonedetector/EnvironmentImpl;->setGeoDetectionEnabledIfRequired(IZ)V

    :cond_0
    return-void
.end method
