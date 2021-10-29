.class final Lcom/android/server/location/LocationManagerService$SystemInjector;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Lcom/android/server/location/injector/Injector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SystemInjector"
.end annotation


# instance fields
.field private final mAlarmHelper:Lcom/android/server/location/injector/AlarmHelper;

.field private final mAppForegroundHelper:Lcom/android/server/location/injector/SystemAppForegroundHelper;

.field private final mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceIdleHelper:Lcom/android/server/location/injector/SystemDeviceIdleHelper;

.field private final mDeviceStationaryHelper:Lcom/android/server/location/injector/SystemDeviceStationaryHelper;

.field private mEmergencyCallHelper:Lcom/android/server/location/injector/SystemEmergencyHelper;

.field private final mLocationAttributionHelper:Lcom/android/server/location/injector/LocationAttributionHelper;

.field private final mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

.field private final mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

.field private final mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

.field private final mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

.field private final mScreenInteractiveHelper:Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

.field private final mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

.field private mSystemReady:Z

.field private final mUserInfoHelper:Lcom/android/server/location/injector/UserInfoHelper;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/location/injector/UserInfoHelper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mUserInfoHelper:Lcom/android/server/location/injector/UserInfoHelper;

    new-instance v0, Lcom/android/server/location/settings/LocationSettings;

    invoke-direct {v0, p1}, Lcom/android/server/location/settings/LocationSettings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

    new-instance v0, Lcom/android/server/location/injector/SystemAlarmHelper;

    invoke-direct {v0, p1}, Lcom/android/server/location/injector/SystemAlarmHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAlarmHelper:Lcom/android/server/location/injector/AlarmHelper;

    new-instance v0, Lcom/android/server/location/injector/SystemAppOpsHelper;

    invoke-direct {v0, p1}, Lcom/android/server/location/injector/SystemAppOpsHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    new-instance v1, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    invoke-direct {v1, p1, v0}, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/AppOpsHelper;)V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    new-instance v1, Lcom/android/server/location/injector/SystemSettingsHelper;

    invoke-direct {v1, p1}, Lcom/android/server/location/injector/SystemSettingsHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    new-instance v1, Lcom/android/server/location/injector/SystemAppForegroundHelper;

    invoke-direct {v1, p1}, Lcom/android/server/location/injector/SystemAppForegroundHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppForegroundHelper:Lcom/android/server/location/injector/SystemAppForegroundHelper;

    new-instance v1, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

    invoke-direct {v1, p1}, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

    new-instance v1, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

    invoke-direct {v1, p1}, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mScreenInteractiveHelper:Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

    new-instance v1, Lcom/android/server/location/injector/SystemDeviceStationaryHelper;

    invoke-direct {v1}, Lcom/android/server/location/injector/SystemDeviceStationaryHelper;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mDeviceStationaryHelper:Lcom/android/server/location/injector/SystemDeviceStationaryHelper;

    new-instance v1, Lcom/android/server/location/injector/SystemDeviceIdleHelper;

    invoke-direct {v1, p1}, Lcom/android/server/location/injector/SystemDeviceIdleHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mDeviceIdleHelper:Lcom/android/server/location/injector/SystemDeviceIdleHelper;

    new-instance v1, Lcom/android/server/location/injector/LocationAttributionHelper;

    invoke-direct {v1, v0}, Lcom/android/server/location/injector/LocationAttributionHelper;-><init>(Lcom/android/server/location/injector/AppOpsHelper;)V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationAttributionHelper:Lcom/android/server/location/injector/LocationAttributionHelper;

    new-instance v0, Lcom/android/server/location/injector/LocationUsageLogger;

    invoke-direct {v0}, Lcom/android/server/location/injector/LocationUsageLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    return-void
.end method


# virtual methods
.method public getAlarmHelper()Lcom/android/server/location/injector/AlarmHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAlarmHelper:Lcom/android/server/location/injector/AlarmHelper;

    return-object v0
.end method

.method public getAppForegroundHelper()Lcom/android/server/location/injector/AppForegroundHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppForegroundHelper:Lcom/android/server/location/injector/SystemAppForegroundHelper;

    return-object v0
.end method

.method public getAppOpsHelper()Lcom/android/server/location/injector/AppOpsHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    return-object v0
.end method

.method public getDeviceIdleHelper()Lcom/android/server/location/injector/DeviceIdleHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mDeviceIdleHelper:Lcom/android/server/location/injector/SystemDeviceIdleHelper;

    return-object v0
.end method

.method public getDeviceStationaryHelper()Lcom/android/server/location/injector/DeviceStationaryHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mDeviceStationaryHelper:Lcom/android/server/location/injector/SystemDeviceStationaryHelper;

    return-object v0
.end method

.method public declared-synchronized getEmergencyHelper()Lcom/android/server/location/injector/EmergencyHelper;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mEmergencyCallHelper:Lcom/android/server/location/injector/SystemEmergencyHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/location/injector/SystemEmergencyHelper;

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/location/injector/SystemEmergencyHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mEmergencyCallHelper:Lcom/android/server/location/injector/SystemEmergencyHelper;

    iget-boolean v1, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSystemReady:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemEmergencyHelper;->onSystemReady()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mEmergencyCallHelper:Lcom/android/server/location/injector/SystemEmergencyHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLocationAttributionHelper()Lcom/android/server/location/injector/LocationAttributionHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationAttributionHelper:Lcom/android/server/location/injector/LocationAttributionHelper;

    return-object v0
.end method

.method public getLocationPermissionsHelper()Lcom/android/server/location/injector/LocationPermissionsHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    return-object v0
.end method

.method public getLocationPowerSaveModeHelper()Lcom/android/server/location/injector/LocationPowerSaveModeHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

    return-object v0
.end method

.method public getLocationSettings()Lcom/android/server/location/settings/LocationSettings;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

    return-object v0
.end method

.method public getLocationUsageLogger()Lcom/android/server/location/injector/LocationUsageLogger;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    return-object v0
.end method

.method public getScreenInteractiveHelper()Lcom/android/server/location/injector/ScreenInteractiveHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mScreenInteractiveHelper:Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

    return-object v0
.end method

.method public getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    return-object v0
.end method

.method public getUserInfoHelper()Lcom/android/server/location/injector/UserInfoHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mUserInfoHelper:Lcom/android/server/location/injector/UserInfoHelper;

    return-object v0
.end method

.method declared-synchronized onSystemReady()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemAppOpsHelper;->onSystemReady()V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->onSystemReady()V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemSettingsHelper;->onSystemReady()V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppForegroundHelper:Lcom/android/server/location/injector/SystemAppForegroundHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemAppForegroundHelper;->onSystemReady()V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->onSystemReady()V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mScreenInteractiveHelper:Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->onSystemReady()V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mDeviceStationaryHelper:Lcom/android/server/location/injector/SystemDeviceStationaryHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemDeviceStationaryHelper;->onSystemReady()V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mDeviceIdleHelper:Lcom/android/server/location/injector/SystemDeviceIdleHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->onSystemReady()V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mEmergencyCallHelper:Lcom/android/server/location/injector/SystemEmergencyHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemEmergencyHelper;->onSystemReady()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSystemReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
