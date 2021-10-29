.class public Lcom/android/server/location/injector/SystemSettingsHelper;
.super Lcom/android/server/location/injector/SettingsHelper;
.source "SystemSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;,
        Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;,
        Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;,
        Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;,
        Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;,
        Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;,
        Lcom/android/server/location/injector/SystemSettingsHelper$IntegerSecureSetting;,
        Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;
    }
.end annotation


# static fields
.field private static final DEFAULT_BACKGROUND_THROTTLE_INTERVAL_MS:J = 0x1b7740L

.field private static final DEFAULT_BACKGROUND_THROTTLE_PROXIMITY_ALERT_INTERVAL_MS:J = 0x1b7740L

.field private static final DEFAULT_COARSE_LOCATION_ACCURACY_M:F = 2000.0f

.field private static final LOCATION_PACKAGE_BLACKLIST:Ljava/lang/String; = "locationPackagePrefixBlacklist"

.field private static final LOCATION_PACKAGE_WHITELIST:Ljava/lang/String; = "locationPackagePrefixWhitelist"


# instance fields
.field private final mBackgroundThrottleIntervalMs:Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;

.field private final mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;

.field private final mContext:Landroid/content/Context;

.field private final mGnssMeasurementFullTracking:Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;

.field private final mIgnoreSettingsPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

.field private final mLocationMode:Lcom/android/server/location/injector/SystemSettingsHelper$IntegerSecureSetting;

.field private final mLocationPackageBlacklist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

.field private final mLocationPackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/location/injector/SettingsHelper;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/location/injector/SystemSettingsHelper$IntegerSecureSetting;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-string/jumbo v2, "location_mode"

    invoke-direct {v0, p1, v2, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$IntegerSecureSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationMode:Lcom/android/server/location/injector/SystemSettingsHelper$IntegerSecureSetting;

    new-instance v0, Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-string/jumbo v2, "location_background_throttle_interval_ms"

    invoke-direct {v0, p1, v2, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottleIntervalMs:Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;

    new-instance v0, Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-string v2, "enable_gnss_raw_meas_full_tracking"

    invoke-direct {v0, p1, v2, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mGnssMeasurementFullTracking:Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;

    new-instance v0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-string/jumbo v2, "locationPackagePrefixBlacklist"

    invoke-direct {v0, p1, v2, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    new-instance v0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-string/jumbo v2, "locationPackagePrefixWhitelist"

    invoke-direct {v0, p1, v2, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    new-instance v0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;

    sget-object v1, Lcom/android/server/location/injector/SystemSettingsHelper$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/location/injector/SystemSettingsHelper$$ExternalSyntheticLambda0;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string/jumbo v3, "location_background_throttle_package_whitelist"

    invoke-direct {v0, p1, v3, v1, v2}, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/function/Supplier;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;

    new-instance v0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    sget-object v1, Lcom/android/server/location/injector/SystemSettingsHelper$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/location/injector/SystemSettingsHelper$$ExternalSyntheticLambda1;

    const-string v2, "ignore_settings_allowlist"

    invoke-direct {v0, v2, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    iput-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mIgnoreSettingsPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    return-void
.end method

.method static synthetic lambda$new$0()Landroid/util/ArraySet;
    .locals 1

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getAllowUnthrottledLocation()Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$new$1()Landroid/util/ArrayMap;
    .locals 1

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getAllowIgnoreLocationSettings()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addIgnoreSettingsAllowlistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mIgnoreSettingsPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    return-void
.end method

.method public addOnBackgroundThrottleIntervalChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottleIntervalMs:Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    return-void
.end method

.method public addOnBackgroundThrottlePackageWhitelistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    return-void
.end method

.method public addOnGnssMeasurementsFullTrackingEnabledChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mGnssMeasurementFullTracking:Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    return-void
.end method

.method public addOnLocationEnabledChangedListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationMode:Lcom/android/server/location/injector/SystemSettingsHelper$IntegerSecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$IntegerSecureSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    return-void
.end method

.method public addOnLocationPackageBlacklistChangedListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 10

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const-string v1, "Location Setting: "

    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->println()V

    array-length v1, v0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    aget v5, v0, v4

    const-string v6, "[u"

    invoke-virtual {p2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v6, "] "

    invoke-virtual {p2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/server/location/injector/SystemSettingsHelper;->isLocationEnabled(I)Z

    move-result v6

    invoke-virtual {p2, v6}, Landroid/util/IndentingPrintWriter;->println(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    aget v1, v0, v3

    invoke-virtual {p0, v1}, Lcom/android/server/location/injector/SystemSettingsHelper;->isLocationEnabled(I)Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    :cond_1
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v1, "Location Allow/Deny Packages:"

    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    array-length v1, v0

    const-string v4, "[allow] "

    const-string v5, "[deny] "

    if-le v1, v2, :cond_5

    array-length v1, v0

    :goto_1
    if-ge v3, v1, :cond_7

    aget v2, v0, v3

    iget-object v6, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v6, v2}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->getValueForUser(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_4

    :cond_2
    const-string/jumbo v7, "user "

    invoke-virtual {p2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v7, ":"

    invoke-virtual {p2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v7, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v7, v2}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->getValueForUser(I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v9}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->getValueForUser(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    iget-object v2, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->getValueForUser(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {v1}, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->getValue()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "Throttling Allow Packages:"

    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    :cond_8
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_9
    iget-object v2, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mIgnoreSettingsPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    invoke-virtual {v2}, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->getValue()Landroid/os/PackageTagsList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PackageTagsList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "Bypass Allow Packages:"

    invoke-virtual {p2, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v2, p2}, Landroid/os/PackageTagsList;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_a
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getBackgroundThrottleIntervalMs()J
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottleIntervalMs:Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;

    const-wide/32 v1, 0x1b7740

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;->getValue(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBackgroundThrottlePackageWhitelist()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->getValue()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundThrottleProximityAlertIntervalMs()J
    .locals 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "location_background_throttle_proximity_alert_interval_ms"

    const-wide/32 v4, 0x1b7740

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getCoarseLocationAccuracyM()F
    .locals 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    :try_start_0
    const-string/jumbo v3, "locationCoarseAccuracy"

    const/high16 v4, 0x44fa0000    # 2000.0f

    invoke-virtual {v2}, Landroid/content/ContentResolver;->getUserId()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getIgnoreSettingsAllowlist()Landroid/os/PackageTagsList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mIgnoreSettingsPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->getValue()Landroid/os/PackageTagsList;

    move-result-object v0

    return-object v0
.end method

.method public isGnssMeasurementsFullTrackingEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mGnssMeasurementFullTracking:Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;->getValue(Z)Z

    move-result v0

    return v0
.end method

.method public isLocationEnabled(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationMode:Lcom/android/server/location/injector/SystemSettingsHelper$IntegerSecureSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$IntegerSecureSetting;->getValueForUser(II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isLocationPackageBlacklisted(ILjava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->getValueForUser(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v1, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->getValueForUser(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v2

    :cond_1
    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x1

    return v2

    :cond_3
    goto :goto_1

    :cond_4
    return v2
.end method

.method public onSystemReady()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationMode:Lcom/android/server/location/injector/SystemSettingsHelper$IntegerSecureSetting;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemSettingsHelper$IntegerSecureSetting;->register()V

    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottleIntervalMs:Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;->register()V

    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->register()V

    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->register()V

    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->register()V

    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mIgnoreSettingsPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->register()V

    return-void
.end method

.method public removeIgnoreSettingsAllowlistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mIgnoreSettingsPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    return-void
.end method

.method public removeOnBackgroundThrottleIntervalChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottleIntervalMs:Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    return-void
.end method

.method public removeOnBackgroundThrottlePackageWhitelistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    return-void
.end method

.method public removeOnGnssMeasurementsFullTrackingEnabledChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mGnssMeasurementFullTracking:Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    return-void
.end method

.method public removeOnLocationEnabledChangedListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationMode:Lcom/android/server/location/injector/SystemSettingsHelper$IntegerSecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$IntegerSecureSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    return-void
.end method

.method public removeOnLocationPackageBlacklistChangedListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    return-void
.end method

.method public setLocationEnabled(ZI)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "location_mode"

    if-eqz p1, :cond_0

    const/4 v4, 0x3

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v2, v3, v4, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
